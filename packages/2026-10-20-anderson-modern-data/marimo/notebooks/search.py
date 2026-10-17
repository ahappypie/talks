import marimo

__generated_with = "0.25.1"
app = marimo.App(width="medium")


@app.cell
def _():
    from html.parser import HTMLParser
    from pathlib import Path

    import duckdb
    import marimo as mo
    import polars as pl

    return HTMLParser, Path, duckdb, mo, pl


@app.cell
def _(mo):
    mo.md("""
    # From web pages to a search index

    - **Bronze:** keep what we collected.
    - **Silver:** turn HTML into consistent page–keyword records.
    - **Gold:** turn keywords into lists of matching pages.

    Each transformation is a separate cell. Open the dependency graph to see
    the pipeline. This notebook reads the completed download; it makes no
    network requests and never changes the source database.
    """)
    return


@app.cell
def _(Path):
    source_database = Path(__file__).resolve().parent.parent / "data" / "raw_pages.duckdb"
    return (source_database,)


@app.cell
def _(mo):
    mo.md("""
    ## Bronze · What did we collect?

    One row per URL, with the original HTML. We can rebuild every downstream
    step without downloading the pages again.
    """)
    return


@app.cell
def _(duckdb, source_database):
    if not source_database.is_file():
        raise FileNotFoundError("Finish running prep.py before opening this notebook.")
    with duckdb.connect(str(source_database), read_only=True) as _source:
        bronze_pages = _source.sql("""
            SELECT link, raw_html
            FROM raw_pages
        """).pl()
    return (bronze_pages,)


@app.cell
def _(mo):
    mo.md("""
    ## Silver · What is on each page?

    Extract text, standardize it, split it into words, remove common words,
    then count each keyword on each page. HTML parsing is the small Python
    exception; the remaining transformations are SQL.
    """)
    return


@app.cell
def _(HTMLParser):
    class PageTextParser(HTMLParser):
        """Best-effort content extraction, not a browser or a perfect article parser."""

        ignored_tags = frozenset({"script", "style", "noscript", "nav", "header", "footer", "svg", "template"})

        def __init__(self):
            super().__init__(convert_charrefs=True)
            self.parts = []
            self.hidden_tags = []

        def handle_starttag(self, tag, attrs):
            if tag in self.ignored_tags:
                self.hidden_tags.append(tag)

        def handle_endtag(self, tag):
            if self.hidden_tags and tag == self.hidden_tags[-1]:
                self.hidden_tags.pop()

        def handle_startendtag(self, tag, attrs):
            pass

        def handle_data(self, data):
            if not self.hidden_tags:
                self.parts.append(data)

    def extract_page_text(raw_html):
        parser = PageTextParser()
        parser.feed(raw_html)
        parser.close()
        return " ".join(parser.parts)

    return (extract_page_text,)


@app.cell
def _(bronze_pages, extract_page_text, pl):
    silver_page_text = bronze_pages.select(
        "link",
        pl.col("raw_html").map_elements(extract_page_text, return_dtype=pl.String).alias("page_text"),
    )
    return (silver_page_text,)


@app.cell
def _(mo, silver_page_text):
    # Deliberately simple: lowercase English words, no punctuation or numbers.
    silver_normalized = mo.sql(
        f"""
        SELECT
            link,
            trim(regexp_replace(lower(page_text), '[^a-z]+', ' ', 'g')) AS normalized_text
        FROM silver_page_text
        """
    )
    return (silver_normalized,)


@app.cell
def _(mo, silver_normalized):
    # One row per word occurrence. Repeated words are still repeated rows.
    silver_tokens = mo.sql(
        f"""
        SELECT link, unnest(string_split(normalized_text, ' ')) AS term
        FROM silver_normalized
        """
    )
    return (silver_tokens,)


@app.cell
def _(pl):
    # A short, inspectable teaching list rather than a comprehensive dictionary.
    stop_words = pl.DataFrame({"term": [
        "the", "and", "for", "that", "this", "with", "from", "are", "was",
        "were", "will", "you", "your", "our", "has", "have", "had", "not",
        "but", "can", "all", "more", "about", "into", "its", "their", "they",
        "there", "these", "those", "who", "what", "when", "where", "how",
    ]})
    return


@app.cell
def _(mo, silver_tokens):
    silver_keywords = mo.sql(
        f"""
        SELECT tokens.link, tokens.term
        FROM silver_tokens AS tokens
        ANTI JOIN stop_words USING (term)
        WHERE length(tokens.term) >= 3
        """
    )
    return (silver_keywords,)


@app.cell
def _(mo, silver_keywords):
    # The page-to-keywords view: one row per page and distinct keyword.
    silver_page_terms = mo.sql(
        f"""
        SELECT link, term, count(*) AS term_count
        FROM silver_keywords
        GROUP BY link, term
        """
    )
    return (silver_page_terms,)


@app.cell
def _(mo):
    mo.md("""
    ## Gold · Which pages mention this keyword?

    **Invert the relationship:** group by keyword, rather than by page.
    Each keyword gets a list of URLs, ordered by how often it occurs on the
    page. This frequency is our simple relevance signal—not Google's ranking.
    """)
    return


@app.cell
def _(mo, silver_page_terms):
    gold_inverted_index = mo.sql(
        f"""
        SELECT
            term,
            count(*) AS page_count,
            list(link ORDER BY term_count DESC, link) AS pages
        FROM silver_page_terms
        GROUP BY term
        """
    )
    return (gold_inverted_index,)


@app.cell
def _(gold_inverted_index, mo):
    gold_preview = mo.sql(
        f"""
        SELECT term, page_count, list_slice(pages, 1, 3) AS first_three_pages
        FROM gold_inverted_index
        ORDER BY page_count DESC, term
        LIMIT 10
        """
    )
    return


@app.cell
def _(mo):
    search_term = mo.ui.text(value="technology", label="Search for one keyword")
    search_term
    return (search_term,)


@app.cell
def _(gold_inverted_index, mo, search_term):
    # Parameter binding keeps user input separate from SQL code.
    search = mo.sql(
        f"""
        SELECT unnest(pages) AS link
        FROM gold_inverted_index
        WHERE term = lower(trim('{search_term.value}'))
        """
    )
    return


@app.cell
def _(mo):
    mo.md("""
    ### Same idea, bigger infrastructure

    Here, the index fits on one machine. At Internet scale, we can split it
    across machines by keyword. The logical workflow stays the same.

    **Simplifications:** one keyword at a time, English-only tokenization,
    no stemming, no link-based authority score, and approximate HTML cleanup.
    All derived tables here are in-memory dataframes; only the downloaded
    bronze source is stored on disk.
    """)
    return


if __name__ == "__main__":
    app.run()
