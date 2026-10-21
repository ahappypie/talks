import marimo

__generated_with = "0.25.1"
app = marimo.App(width="medium")


@app.cell
def _():
    import xml.etree.ElementTree as ET
    from concurrent.futures import ThreadPoolExecutor
    from http.client import HTTPException
    from pathlib import Path
    from threading import Lock
    from time import monotonic, sleep
    from urllib.request import Request, urlopen
    from urllib.robotparser import RobotFileParser

    import duckdb
    import marimo as mo
    import polars as pl

    return (
        ET,
        HTTPException,
        Lock,
        Path,
        Request,
        RobotFileParser,
        ThreadPoolExecutor,
        duckdb,
        mo,
        monotonic,
        pl,
        sleep,
        urlopen,
    )


@app.cell
def _(Path):
    SITEMAP_URL = "https://www.anderson.ucla.edu/sitemap.xml"
    MAX_PAGES = None  # All allowed sitemap links; set to 2 for a smoke test.
    MAX_WORKERS = 2
    REQUEST_INTERVAL_SECONDS = 1.0
    USER_AGENT = "AndersonTeachingDemo/0.1"
    database_path = Path(__file__).resolve().parent.parent / "data" / "raw_pages.duckdb"
    return (
        MAX_PAGES,
        MAX_WORKERS,
        REQUEST_INTERVAL_SECONDS,
        SITEMAP_URL,
        USER_AGENT,
        database_path,
    )


@app.cell
def _(mo):
    # One explicit gate prevents accidental downloads when opening the notebook.
    # At ~2,200 links and one request/second, allow at least 37 minutes.
    # Successful HTML pages replace raw_pages in ./data/raw_pages.duckdb.
    # Failed URLs are reported separately; other database tables are untouched.
    run_download = mo.ui.run_button(label="Download full sitemap and save to DuckDB")
    run_download
    return (run_download,)


@app.cell
def _(
    Lock,
    REQUEST_INTERVAL_SECONDS,
    Request,
    USER_AGENT,
    monotonic,
    sleep,
    urlopen,
):
    # Shared by robots, sitemaps, and all HTML download workers.
    _request_lock = Lock()
    _last_request = [None]

    def fetch_text(url, *, expect_html=False):
        with _request_lock:
            if _last_request[0] is not None:
                sleep(max(0, REQUEST_INTERVAL_SECONDS - (monotonic() - _last_request[0])))
            _last_request[0] = monotonic()

        # Release the lock during I/O so slow responses can overlap.
        request = Request(url, headers={"User-Agent": USER_AGENT})
        with urlopen(request, timeout=30) as response:
            content_type = response.headers.get_content_type()
            if expect_html and content_type not in ("text/html", "application/xhtml+xml"):
                raise ValueError(f"Expected HTML, received {content_type}")
            encoding = response.headers.get_content_charset() or "utf-8"
            return response.read().decode(encoding, errors="replace")

    return (fetch_text,)


@app.cell
def _(
    ET,
    MAX_PAGES,
    RobotFileParser,
    SITEMAP_URL,
    USER_AGENT,
    fetch_text,
    mo,
    run_download,
):
    mo.stop(not run_download.value)
    _robots = RobotFileParser()
    _robots.parse(fetch_text("https://www.anderson.ucla.edu/robots.txt").splitlines())
    _namespace = {"sm": "http://www.sitemaps.org/schemas/sitemap/0.9"}
    if not _robots.can_fetch(USER_AGENT, SITEMAP_URL):
        raise ValueError("robots.txt does not allow fetching the sitemap index")
    _index = ET.fromstring(fetch_text(SITEMAP_URL))
    _sitemap_urls = [
        node.text.strip()
        for node in _index.findall("sm:sitemap/sm:loc", _namespace)
        if node.text
    ]
    if not _sitemap_urls:
        raise ValueError("No child sitemaps found in the sitemap index")

    _links = []
    for _url in _sitemap_urls:
        if not _robots.can_fetch(USER_AGENT, _url):
            raise ValueError(f"robots.txt does not allow {_url}")
        _sitemap = ET.fromstring(fetch_text(_url))
        _links.extend(
            node.text.strip()
            for node in _sitemap.findall("sm:url/sm:loc", _namespace)
            if node.text
        )
    _unique_links = list(dict.fromkeys(_links))
    page_links = [
        link for link in _unique_links if _robots.can_fetch(USER_AGENT, link)
    ][:MAX_PAGES]
    if not page_links:
        raise ValueError("No allowed page links found; database will not be replaced")
    print(
        f"{len(_sitemap_urls)} sitemaps; {len(_unique_links):,} unique links; "
        f"{len(page_links):,} pages selected for download."
    )
    return (page_links,)


@app.cell
def _(
    HTTPException,
    MAX_WORKERS,
    ThreadPoolExecutor,
    fetch_text,
    mo,
    page_links,
    pl,
):
    def download_page(link):
        try:
            return {"link": link, "raw_html": fetch_text(link, expect_html=True)}, None
        except (OSError, HTTPException, ValueError) as error:
            # Keep going on HTTP errors, timeouts, or non-HTML documents.
            return None, {"link": link, "error": f"{type(error).__name__}: {error}"}

    _rows, _errors = [], []
    with ThreadPoolExecutor(max_workers=MAX_WORKERS) as _pool:
        for _row, _error in mo.status.progress_bar(
            _pool.map(download_page, page_links),
            total=len(page_links),
            title="Downloading HTML",
        ):
            if _row is not None:
                _rows.append(_row)
            else:
                _errors.append(_error)

    raw_pages = pl.DataFrame(_rows, schema={"link": pl.String, "raw_html": pl.String})
    download_errors = pl.DataFrame(_errors, schema={"link": pl.String, "error": pl.String})
    print(f"Downloaded {raw_pages.height:,} pages; {download_errors.height:,} failures.")
    return download_errors, raw_pages


@app.cell
def _(database_path, download_errors, duckdb, raw_pages):
    if raw_pages.is_empty():
        raise ValueError("No HTML downloaded; existing database left unchanged")
    database_path.parent.mkdir(parents=True, exist_ok=True)
    with duckdb.connect(str(database_path)) as _connection:
        _connection.register("downloaded_pages", raw_pages.to_arrow())
        _connection.execute("""
            CREATE OR REPLACE TABLE raw_pages AS
            SELECT
                CAST(link AS VARCHAR) AS link,
                CAST(raw_html AS VARCHAR) AS raw_html
            FROM downloaded_pages
        """)

    with duckdb.connect(str(database_path), read_only=True) as _reader:
        _saved = _reader.execute("SELECT link, raw_html FROM raw_pages").pl()
        _schema = _reader.execute("DESCRIBE raw_pages").fetchall()
    if not _saved.sort("link").equals(raw_pages.sort("link")):
        raise ValueError("DuckDB round-trip verification failed")
    if [(row[0], row[1]) for row in _schema] != [
        ("link", "VARCHAR"), ("raw_html", "VARCHAR")
    ]:
        raise ValueError("Unexpected DuckDB schema")
    print(f"Saved and verified {raw_pages.height:,} pages in {database_path}")
    if download_errors.height:
        print("WARNING: This is a partial crawl. Review download_errors below.")
    return


@app.cell
def _(download_errors):
    # Failure details stay out of the two-column raw_pages dataset.
    download_errors
    return


@app.cell
def _():
    return


if __name__ == "__main__":
    app.run()
