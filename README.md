# wap-typst

Re-typesets [Warhammer Armies Project](https://www.warhammerarmiesproject.com/)
army books from their published PDFs into [Typst](https://typst.app), and
publishes the result to GitHub Pages.

The point is the *book*: proper stat tables, styled headings, real paragraph
structure — not a scrape. Extraction is verified against the source word by
word, so a dropped rule cannot pass unnoticed.

## Attribution

Unofficial and non-commercial. All rules text, army design and points values are
the work of **Mathias Eliasson**, who writes and freely distributes the Warhammer
Armies Project books. Only the typesetting differs here.

Warhammer, Warhammer Fantasy Battle and all associated names, races and places
are trademarks of Games Workshop Limited. This project is unaffiliated with both
and no challenge to their status is intended. Not for sale.

## Pipeline

```
source PDF  ──►  build/<book>.json  ──►  src/content/<book>.typ  ──►  PDF
             extract.py           to_typst.py                 typst
```

The JSON intermediate is committed, so the source PDFs are never needed in CI
and the render can be re-run without re-parsing.

```bash
# Extract, verify coverage, and generate Typst source
python build.py "path/to/Warhammer - Lizardmen 3.0.pdf" --slug lizardmen

# Compile. Bundled fonts only, so this matches the CI render exactly.
typst compile --ignore-system-fonts --root . src/book.typ out/lizardmen.pdf
```

## How the extraction works

The books are digitally authored, so structure is recoverable without guessing:

| Signal | Meaning |
|---|---|
| PDF bookmark TOC | chapters and named entries, with page numbers |
| `CaslonAntique` 36pt / 16pt / 12pt | chapter · entry · field label or run-in name |
| `TimesNewRoman` 10pt (+Bold/Italic) | body text and inline emphasis |
| stable x-coordinates | stat-table columns, recovered by snapping to header anchors |
| blank lines | paragraph separators |

Two details cost the most effort and are worth knowing about:

- **PyMuPDF splits a text line at every wide horizontal gap**, which is exactly
  how a stat table is laid out — each cell becomes its own "line". `merged_lines`
  re-joins lines sharing a baseline, inserting a space wherever the gap it
  closed stood for one. Without that, prose in positioned columns welds
  together (`direct damage` + `area spell` → `damagearea`).
- **Text reaches Typst as string literals, never markup**, so no source text can
  be reinterpreted as syntax and there is no escaping table to get wrong.

## Verification

Two gates, because they catch different failures. `extract/coverage.py` compares
the word multiset of the source PDF against the generated JSON and fails above a
0.1% tolerance. `extract/welds.py` then looks for words *welded together* by a
lost space — `damagearea`, `(6),Natural` — which a word count cannot see, since
a weld removes a space rather than a word:

```bash
python extract/coverage.py "path/to/book.pdf" build/lizardmen.json
python extract/welds.py build/lizardmen.json
```

For Lizardmen 3.0 this reports 2 missing words out of 12,212 (0.02%), both from
`Sotek's` — the source splits the apostrophe across two spans and this pipeline
rejoins it, so the difference is in the checker's tokenisation, not the content.

Deliberately dropped: the cover and the book's own contents page, recorded in
the JSON as `front_matter_pages`. The rendered book generates its own outline
from the headings.

## Known gaps

- **Artwork is not carried over.** The illustrations are vector drawings, not
  raster images — 13,708 drawing operations across Lizardmen 3.0, of which only
  the parchment background and the cover are extractable images. Re-exporting
  the vector regions is not implemented.
- `SACRIFICIAL HEART` in Lizardmen 3.0 has no description. That is a defect in
  the source PDF, faithfully reproduced.

## Layout

**Every entry opens its own page** — each unit, character and magic-item section
— so nothing straddles the space left over by whatever preceded it. The one
exception is an entry consisting of *only* a stat line and a few fields, such as
a character mount: a page of its own would be almost entirely empty, so these
share one, set unbreakable so none of them straddles a boundary either.

Entries containing stat blocks are single-column, since an eleven-column table
cannot survive an 8cm measure and floating it would sever it from its unit.
Entries above 3,000 characters of prose get two-column setting; shorter ones stay
single-column so the second column is never left stranded empty. The column
choice is made per entry rather than per chapter, because each entry now has a
full page of column height to fill or waste.
