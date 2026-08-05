# wap-typst

Re-typesets the [Warhammer Armies Project](https://www.warhammerarmiesproject.com/)
army books from their published PDFs into [Typst](https://typst.app), and
publishes the result to GitHub Pages.

**30 army books · 1,746 unit entries · 1,972 typeset pages**

The point is the *book*: proper stat tables, styled headings, real paragraph
structure — not a scrape. Extraction is verified against the source word by word,
and every one of the thirty books currently extracts with **no missing words at
all**.

## Attribution

Unofficial and non-commercial. All rules text, army design and points values are
the work of **Mathias Eliasson**, who writes and freely distributes the Warhammer
Armies Project books. Only the typesetting differs here.

Warhammer, Warhammer Fantasy Battle and all associated names, races and places
are trademarks of Games Workshop Limited. This project is unaffiliated with both
and no challenge to their status is intended. Not for sale.

## Pipeline

```
source PDFs ─► build/<slug>.json ─► src/content/<slug>.typ ─► src/<slug>.typ ─► PDF
            batch.py            to_typst.py              emit.py           typst
                └─► build/books.json ──────────────────────┘
```

`build/books.json` is the manifest, and it is the gate: `batch.py` writes a book
into it only after that book has passed both checks, and everything downstream —
the Typst wrappers, the landing page, the publish workflow — is generated from
it. A book that fails cannot reach the site.

The JSON intermediates and generated Typst are committed, so CI needs only the
Typst compiler and never the source PDFs.

```bash
# Extract, verify and generate Typst content for a directory of books
python extract/batch.py "path/to/Rules" "path/to/Warhammer - Lizardmen 3.0.pdf"

# Generate the per-book Typst documents and the landing page from the manifest
python emit.py

# Compile one. Bundled fonts only, so this matches the CI render exactly.
typst compile --ignore-system-fonts --root . src/lizardmen.typ out/lizardmen.pdf
```

`batch.py` skips a book whose JSON is newer than its PDF, so re-runs are cheap;
pass `--force` to re-extract everything.

## How the extraction works

The books are digitally authored, so structure is recoverable without guessing:

| Signal | Meaning |
|---|---|
| PDF bookmark TOC | chapters and named entries, with page numbers |
| `CaslonAntique` 36pt / 16pt / 12pt | chapter · entry · field label or run-in name |
| `TimesNewRoman` 10pt (+Bold/Italic) | body text and inline emphasis |
| stable x-coordinates | stat-table columns, recovered by snapping to header anchors |
| blank lines | paragraph separators |

No army-specific code: the same parser handles all thirty books, from Halflings
(38 entries) to Warriors of Chaos (125).

Three details cost the most effort and are worth knowing about:

- **PyMuPDF splits a text line at every wide horizontal gap**, which is exactly
  how a stat table is laid out — each cell becomes its own "line". `merged_lines`
  re-joins lines sharing a baseline, inserting a space wherever the gap it closed
  stood for one. Without that, prose in positioned columns welds together
  (`direct damage` + `area spell` → `damagearea`).
- **Whitespace is never classified by font.** The books occasionally set an
  inter-word space in the display face; treating that as a field label files it
  on the wrong side of a `LABEL: value` split and welds the value's words.
- **Text reaches Typst as string literals, never markup**, so no source text can
  be reinterpreted as syntax and there is no escaping table to get wrong.

## Verification

Two gates, because they catch different failures.

`extract/coverage.py` compares the word multiset of the source PDF against the
generated JSON. It defaults to a **zero** tolerance — all thirty books extract
with no missing words, so anything above zero is worth reading rather than
tolerating. Apostrophes are tokenised identically on both sides, because the
source routinely sets a possessive or infix as its own span (`Sotek` + `'s`,
`K` + `'daai`) which this pipeline rejoins correctly.

`extract/welds.py` looks for words *welded together* by a lost space —
`damagearea`, `(6),Natural` — which a word count cannot see, since a weld removes
a space rather than a word. Three separate instances of this bug reached the
rendered page before the check existed.

```bash
python extract/coverage.py "path/to/book.pdf" build/lizardmen.json
python extract/welds.py build/lizardmen.json
```

Deliberately dropped: each book's cover and its own contents page, recorded in
the JSON as `front_matter_pages`. The rendered books generate their own outline
from the headings.

## Known gaps

- **Interior artwork is not carried over.** The illustrations are vector
  drawings, not raster images — 13,708 drawing operations in Lizardmen 3.0 alone
  — of which only the parchment background and the cover are extractable images.
  Re-exporting the vector regions is not implemented. Covers *are* carried, into
  `assets/covers/`, where they serve as both Typst cover art and landing-page
  thumbnails.
- **The core rulebook is not included.** *The Game of Fantasy Battles 9th Edition*
  is prose-heavy with no unit entries, so it does not inherit the army-book
  structure and needs its own work.
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
choice is made per entry rather than per chapter, because each entry has a full
page of column height to fill or waste.
