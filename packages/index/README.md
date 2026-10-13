# Talks index

A static Astro site linking to the workspace's Slidev presentations.

- `pnpm --filter index dev` — start the development server.
- `pnpm --filter index build-web` — build the static index.
- `pnpm --filter index preview` — preview the production index.
- `pnpm build-web` (from the workspace root) — build the index and all presentations.

`src/pages/index.astro` reads each package's `package.json` at build time and
uses its `name` as the presentation slug. Packages with `watershed` metadata
are grouped by `watershed.series`, with `watershed.title` as the link text.
Talks are sorted by the date in their slug ascending within each series;
series are ordered by their earliest talk. The index package is excluded.
No generated manifest or manual list is needed; rebuild after adding a talk.

Presentation links use `/<package-name>/`, matching each Slidev package's
`build-web` base path. Astro's local preview only includes the index, not the
sibling slide decks.
