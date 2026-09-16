# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Warhammer Armies Revamped (WAR): a new edition of Warhammer fantasy battles,
built on the Warhammer Armies Project army books, which were re-typeset from
their published PDFs into Typst and are published to GitHub Pages. The site
leads with our own editions and holds the Armies Project entire under
`/library/`. `README.md` states the edition's purpose and its tenets; this
file covers what you need to work in the repo without re-deriving it.

## Commands

Requires the `typst` CLI on `PATH` (or `TYPST=` pointing at it) and, for
anything under `extract/`, Python 3.11+ with `pymupdf`. There is no package
manifest and no test suite; the verification scripts below are the tests.

```bash
# Compile the corpus: every book on build/render.json, in parallel, into out/.
# It is what CI does, with the same two flags, so a local render is the one
# that will publish. A compile error stops it with the diagnostic, exit 1.
python build.py
python build.py skaven/3.0 dwarfs/3.11   # two books, by id
python build.py --site                   # and assemble _site/ for check_site.py

# Compile one book by hand. Both flags matter: --ignore-system-fonts makes the
# local render byte-identical to CI's, --root . resolves the /assets paths.
typst compile --ignore-system-fonts --root . src/lizardmen/3.0.typ out/lizardmen.pdf

# Rebuild the site's pages and build/render.json from the books in src/.
# Run this after adding, removing or renaming a book, or changing its
# #book-meta — CI walks render.json and compiles nothing that is not in it.
python emit.py

# Export the whole edition as one JSON file for the army builder
# (dkma26709/Warhammer_Calculator_Edition), into build/war.json. --check is
# its gate: every record the source declares is in the file, every string
# field is byte-identical to the source, and every line of exported text is
# on the rendered page in out/ (so build first). Needs pymupdf for --check.
python export.py --check

# The bundle ships by copy, on a release, not from here: build/ is gitignored
# and the builder commits its copy so its tests run against the file it ships.
# The file's `source` field is the commit it came from. One command, so the
# gate always runs before the file moves:
python export.py --check --out ../Warhammer_Calculator_Edition/Warhammer/wwwroot/data/war/war.json

# Import a new book (one-off, needs the source PDF; see "Never re-import").
python extract/batch.py "path/to/Rules" "path/to/Warhammer - Lizardmen 3.0.pdf"
python extract/to_book.py lizardmen
# to_book.py writes the #entry/#field sequence form. These rewrite it as
# records: the unit entries first, then the faction-upgrade chapter if the book
# has one. Both keep every word, so the check is render_text.py either side.
python extract/to_records.py src/lizardmen/3.0.typ
python extract/to_upgrades.py lizardmen/3.0

# The three verification gates. Zero tolerance on all of them.
python extract/coverage.py "path/to/book.pdf" build/lizardmen.json   # words lost
python extract/welds.py build/lizardmen.json                         # words welded
python extract/roundtrip.py lizardmen --source "path/to/book.pdf"    # rendered PDF vs source
# Edition promises, checked against rendered PDFs (compile both first).
# A House edition must write every change up in its TOML, against the base book
# it derives from. (--identical-body has no caller since the Proposals forks
# were retired; it still works if an edition ever promises an untouched body.)
python extract/check_editions.py out/lizardmen/3.0-house.pdf out/lizardmen/3.0.pdf

# The edition as one JSON for an army builder, and its own check.
python export.py --check

# Did a change move anything it should not have? These read only two renders -
# no source PDFs - so unlike the three gates above, anyone can run them. Render
# the corpus before and after the change into two directories, then:
python extract/render_text.py out-before out-after     # no word lost or gained
python extract/render_glyphs.py out-before out-after   # no glyph moved at all
python extract/render_artefacts.py out-after/*/*.pdf --against out-before
```

`batch.py` skips a book whose JSON is newer than its PDF; `--force` re-extracts.

## Architecture

**`src/<army>/<version>.typ` is the source of truth and nothing regenerates
it.** Each book is one self-contained Typst file — front matter, metadata,
colophon, every entry — importing `src/template.typ`. The army is the folder
and the version is the file, so `src/lizardmen/1.6.typ` and
`src/lizardmen/3.0.typ` are two books of one army, and an edition sits beside
its base as `3.0-house.typ`. A book's **id** is that path without the suffix —
`lizardmen/3.0` — and is what render.json, the PDF and the site all use. There
is no intermediate representation to keep in step, no manifest listing the
books, and no generator to re-run. Adding a unit means copying the entry above
it and editing the values.

Four things read *out* of that, none write back into it:

- **`emit.py`** runs `typst eval` against every book, querying its
  `<book-meta>` and counting its own headings, and writes the site's pages and
  `build/render.json`. Those pages are **generated output** — edit `emit.py`
  and `site/style.css` (which it inlines), never the HTML. The front page is
  our own editions; `/library/` is the Armies Project entire; and each army has
  a page of its own listing every version. Books declare their own allegiance,
  so emit fails loudly on a book with no `align:` rather than silently filing
  it nowhere.
- **`.github/workflows/publish.yml`** walks `build/render.json` on push to
  `main` and compiles each id with the same two flags as above. It has only the
  Typst compiler — no Python, and never the source PDFs — so anything Python
  produces must be committed before it can ship.
- **`extract/rule_nodes.py` / `item_nodes.py`** parse `src/rulebook/*.typ` into
  memory-graph nodes for an external consumer. They preserve hand-written
  `## Traps` sections across regeneration — don't clobber those.
- **`export.py`** runs `typst eval` against every book and writes the edition
  as one JSON file for the army builder. It parses no Typst: every record
  (`unit`, `magic-item`, `upgrade`, `spell`, a `namecost` head) drops a
  `<meta>` metadata element as it renders, and `balanced-columns` and
  `two-columns` drop their body, so the chapters with no record form (an
  army's special rules, the rulebook's prose) are cut at their heads from
  that. The template is the schema: a new `UNIT_FIELDS` key is exported
  without touching the script. The metadata is invisible on the page, and
  a template change there must stay so — prove it with `render_glyphs.py`.

**`extract/`** is the one-way import path: `extract.py` recovers structure from
the PDFs, `batch.py` orchestrates extract → coverage → welds into `build/`, and
`to_book.py` is the separate deliberate step that writes Typst, escaping the PDF
prose as it goes.

**Editions** are forks kept in git: `src/lizardmen/3.0-house.typ` beside
`src/lizardmen/3.0.typ`, so a change is a `git diff` and an upstream release is
a three-way merge. `editions/<slug>/edition.toml` holds the edition's identity
and colophon; `editions/<slug>/<army>/<version>.toml` records each change and
why. Those TOMLs are what the site's tallies are read from, and they are the
only place the reasoning is written down — the books themselves no longer carry
a changelog chapter, so a change is stated in the record and applied in the
body, and nowhere else.

There is one edition. **House** is the rules we play, and its colophon warns
that the body has been altered and the alterations are not marked; its parent is
the base book it derives from. `extract/check_editions.py` holds it to that
promise: every word a House book adds to or removes from its base must appear in
its TOML. The record is the only place a change is written down now, so a change
made and not recorded fails there.

**Proposals are a document, not an edition.** `src/proposals/<version>.typ` holds
all of them, a chapter per book they are about, and it forks nothing — a proposal
alters no book, so there is no body to keep in step and no gate needed to police
one. Each is a `#proposal(..)` record. Only the summary is required — it is the
record's body — and `why`, `against`, `cost` and `examples` print in that order
whichever order they are written, each only if given. The four are the shape a
proposal usually wants rather than a form to fill in: it is read whole, so a
section carrying nothing reads worse than its absence. It declares
`kind: "document"`, which is what keeps it off the library page and gives it a
card on the front page, and emit counts its proposals off its own records. When
one is agreed it is written into a House edition as a `[[change]]` and **struck
from the document** — leaving it standing is how the book comes to argue for
what it already does.

**A proposal may carry an extended page.** `page: "initiative"` on the record
prints the address of `pages/initiative.typ`, published at
`/proposals/initiative/`, and is where the working that would swamp the
proposal goes — the survey a claim was measured from, the per-book tables.
A page comes in two kinds and `emit.py` takes both. A **`.typ` page** is
written in the project's own language and made to look like the rest of the
site: `typst --features html --format html` renders it, only the `<body>` is
kept, and that is wrapped in the site's shell. A **`.html` page** is a finished
document that arrived with its own typography — `pages/initiative-ladder.html`
is one — and publishes as itself, unwrapped; its `<title>` is what names it in
the listing. `site/proposals/` is wholly generated and is pruned, so renaming
a page's source removes its old address rather than publishing it for ever.

Two consequences worth knowing before writing a `.typ` one:

- **HTML export has no layout.** A page uses only the semantic part of the
  template — headings, prose, lists, `minitable`. No `book()`, no `page()`, no
  columns. Typst itself warns the exporter is incomplete on every run.
- **`SITE_URL` in `template.typ` is the one place this project's address is
  written down**, because a PDF has no relative base. It was read off the
  repository's Pages settings, not derived. No gate can check it: `check_site.py`
  walks the built tree and can verify a path, never a host. If a custom domain
  is ever set, that line moves with it or every proposal prints a 404.

Both directions are gated. `emit.py` fails if a proposal names a page that is
not in `pages/`, and if a page in `pages/` is named by no proposal;
`check_site.py` fails if any page on the site is linked from nowhere.

## Invariants worth not breaking

- **IMPORTANT: never run `to_book.py` against a slug that already has a file in
  `src/`.** It overwrites, and a book is hand-owned from the moment it is
  imported, so re-importing silently throws away every edit since — including
  the edition forks derived from it.
- **A book states what it is in records, not in markup.** Units, magic items,
  spells, faction upgrades, army special rules, weapons, scenarios and troop
  types are all record calls that publish a `<meta>` marker and let the template
  decide how they look. `#namecost` remains the head primitive those records are
  drawn with, and a book calls it directly only for prose sub-headings — the
  rulebook's four hundred. Reaching for it where a record exists puts the thing
  on the page and outside every query.
- **Smart quotes stay off** (`set smartquote(enabled: false)` in `book()`), and
  hyphens before digits are handled at import. Typst would otherwise curl every
  apostrophe and turn `-1` into a minus sign in text the colophon promises is
  reproduced. The gates cannot catch this: they see a word *lost*, never a word
  *changed*, and are blind to punctuation entirely.
- **`build/` is gitignored except `render.json`.** Extraction JSON is not
  committed — keeping it would be keeping a second copy of a book that nothing
  reads. Source PDFs are never committed.
- **LF line endings** (`.gitattributes`): the publish workflow uses backslash
  continuations in a bash `run:` block and a stray CR breaks them. On Windows,
  `emit.py` writes CRLF, so `git status` flags `site/index.html` and
  `build/render.json` as modified even when the content is unchanged; git
  normalizes on commit, so check `git diff` before assuming a real change.

## After an edit, verify

There is no test suite, so verification is per-change and must be run, not
assumed:

- Changed a book or `template.typ` → `python build.py` and confirm exit 0. A
  template change affects all 64 books, and the whole corpus takes seconds, so
  build all of it rather than the one book you touched.
- Restated something without meaning to change it → render the corpus before and
  after, then `render_text.py` on the two directories. It is the gate that has
  caught every real loss in this repo: an item dropped, a heading gone from the
  contents page, a chapter title lost. Blind to pagination by design.
- Restructured a chapter — markup to records, or records to other records → the
  page is *meant* to move, so `render_text` is the wrong instrument and
  `render_glyphs` more so. What matters is that nothing left the book: compare
  the `<meta>` inventory `typst query` reads out of the two renders. A gate that
  cannot see the new shape reports a clean conversion as a loss, so widen the
  gate before believing it.
- Changed extracted prose or any escaping → `render_artefacts.py --against` the
  previous render. Without `--against` it reports the corpus's own footnote
  asterisks and teaches you to ignore it.
- Changed `#book-meta`, added/removed/renamed a book **or an entry, or edited
  an `editions/*/<army>/<version>.toml`** → `python emit.py`, then
  `python build.py --site && python check_site.py _site`, and commit the
  resulting pages and `build/render.json`. The pages count entries out of the
  books and change tallies out of those TOMLs, so both move with no book added.
- Changed an edition's body → recompile it and its base book and run
  `check_editions.py`; every change also needs its record in
  `editions/house/<army>/<version>.toml`.
- Changed `src/proposals/` or anything under `pages/` → compile it and run
  `emit.py`, since the front page's proposal tally is counted out of the
  document itself and the extended pages are rendered from `pages/`. Then
  `python build.py --site && python check_site.py _site`. Promoted a
  proposal into a House edition → strike it from the document in the same
  change, and re-read the proposals beside it for numbers the promotion aged.
- Changed a record's metadata in `template.typ`, or `export.py` → `python
  export.py --check` after the build, and confirm `check: ok`.
- Changed anything under `extract/` → the gates need the source PDFs, which are
  not in the repo. If you don't have them, say so rather than reporting the
  change as verified.

## Working in a book

`src/template.typ` is the whole API and is heavily commented; read the relevant
section before hand-writing markup. It validates rather than trusting: unknown
`#book-meta` keys are an error, `magic-item` takes an integer cost (not
`"45 points"`) and checks the type against the vocabulary for its category, and
the six categories are exposed as named functions (`magic-weapon`, `talisman`,
…) so a book states its category by the function it calls. A faction's own
purchases — Virtues, Gifts, Honours, Knightly Orders, runes — are an
`upgrade-chapter` of `upgrade` records, the same shape as a magic item without
a category: `cost:` is an integer, `none`, a tuple like `(5, 35, 55)` for a
tiered rune, or `(who, price)` pairs for a per-model price list, and `group`
is the run-in heading inside the chapter (the gods, the bloodlines) — a level-2
heading the contents lists, with no page break.

A unit entry is one `#unit(NAME, ..)` call: `profiles:` rows of the ten
characteristics as dictionaries, then the entry's fields as named arguments —
`troop-type:`, `equipment:`, `special-rules:` and the rest, listed in
`UNIT_FIELDS`. **The vocabulary is closed**: an unknown field is a compile error
naming the entry, which is what keeps EQIPMENT and HANDLER/HANDLERS from drifting
back in. Fields render in `UNIT_FIELDS` order whatever order they are written.

A field's value says by its type what shape it takes. A string is the label with
its value on the same line. A list of `rule("Name")[body]` records is the label
over named bullets; a list of `opt(..)`/`optgroup(..)` is the label over priced
option lines. Markup content is the label over that content verbatim. A field
needing both — SPECIAL RULES naming four rules inline and then explaining a fifth
— passes the string and puts the block in the companion `<field>-body`.

Four escape hatches, each used deliberately and each greppable: `subtitle:` for
the run-in line under a special character's name; `order:` for the ~98 entries
whose source genuinely deviates from the canonical field order; `labels:` where
the source misprints a label and the book reproduces it (Daemons of Chaos heads
four entries EQIPMENT); `before:`/`after:` for prose that sits outside the
fields. `#entry`/`#field` remain as primitives for the prose and design-notes
chapters, where a field is a bare mini-heading rather than a unit field.

Layout is derived, not configured: a book with stat blocks is an army book and
one without is the rulebook, and `magic-item-section` measures whether the
material fills two columns rather than counting characters. Prefer fixing a rule
in the template over writing an override into a book.

An army special rules chapter is `#balanced-columns(whole: true)[..]`: each
rule - its `#namecost` head and everything to the next head - is one record
kept on one column, so a rule that does not fit moves whole to the top of the
next column or page rather than splitting. Only a rule taller than a column
still breaks. A magic-item section or lore is balanced without `whole:` and its
records run on as before.

**How an entry meets the page** is the entry's own declaration, and there are
three answers. By default it **flows**: entries run one after another down the
page and a new page starts when the last one is full, in an unbreakable block so
an entry that does not fit moves whole rather than straddling. `solo: true` gives
it a page of its own — every entry under `= SPECIAL CHARACTERS`, where the entry
is the spread. `compact: true` is the character mount, a stat line and two fields
that would leave a page of its own empty. An entry taller than a page has to
break somewhere, and the template finds those by measuring: such an entry opens
a page of its own and breaks where that page ends, instead of overflowing and
losing its tail silently. There is no `breakable:` flag to write — it used to
exist, went stale as the measure changed, and is now a compile error. A
magic-item section decides for itself the same way: one that fits on a page is
set as one unbreakable block that the page places where there is room, with
`SECTION_GAP` above it, and one longer than a page opens a page. Nothing in a
book says which.

## Commits

Messages are a plain declarative sentence describing what changed, sometimes
two clauses joined by "and" — "The Cohort gets its Kroxigor back, and only two
words had to change". No conventional-commit prefixes, no bullet lists.
