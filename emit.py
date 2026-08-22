"""Build the landing page and the render list from the books themselves.

src/ is the catalogue. Each book declares what it is in its own `#book-meta`,
counts its own entries, and an edition names the book it derives from, so this
reads the books with `typst eval` rather than a manifest that could fall out of
step with them. The editions' labels and tallies come from editions/, the only
place they are written down.

Nothing here generates a book: every one is owned by hand and imported once by
extract/to_book.py.
"""

from __future__ import annotations

import argparse
import html
import json
import os
import subprocess
import tomllib
import re
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent


def lit(text: str) -> str:
    return '"' + text.replace("\\", "\\\\").replace('"', '\\"') + '"'


# --- alignment --------------------------------------------------------------

# Read from the rulebook rather than kept here as a second list, so the site
# follows the rules. `cue` matches the sentence introducing each list.
ALIGNMENTS = (
    ("order", "Forces of Order", "forces of order", "Order"),
    ("destruction", "Forces of Destruction", "forces of destruction", "Destruction"),
    ("neutral", "Non-Aligned Forces", "non-aligned", "Non-aligned"),
)

# Two armies are named in that list in a shorter or longer form than the book
# they belong to carries on its cover. Matching is otherwise exact: `Dwarfs` is
# a substring of `Chaos Dwarfs`, so anything looser would misfile an army.
ALIASES = {
    "cathay": "grandcathay",
    "zombiepiratesofthevampirecoast": "zombiepirates",
}


def army_key(name: str) -> str:
    key = re.sub(r"[^a-z]", "", name.casefold().removeprefix("the "))
    return ALIASES.get(key, key)


def read_alignments(rulebook: Path) -> dict[str, str]:
    data = json.loads(rulebook.read_text(encoding="utf-8"))
    entries = [e for c in data["chapters"] for e in c["entries"]
               if e["name"] == "ALLIANCE & ALIGNMENT"]
    if len(entries) != 1:
        raise SystemExit("emit: the rulebook has no ALLIANCE & ALIGNMENT section")

    out: dict[str, str] = {}
    slug = None
    for block in entries[0]["blocks"]:
        if block["type"] == "para":
            lowered = block["text"].casefold()
            slug = next((s for s, _, cue, _ in ALIGNMENTS if cue in lowered), None)
        elif block["type"] == "list" and slug:
            for item in block["items"]:
                out[army_key(item["text"])] = slug
            slug = None
    return out


BASE_COLOPHON = """(
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    {army}*, version {version} — written and freely distributed by Mathias
    Eliasson.
  ],
  [
    All rules text, army design and points values remain the work of their
    author. This edition changes only the typesetting; the content is
    reproduced from the freely distributed PDF.
  ],
  [
    Warhammer, Warhammer Fantasy Battle and all associated names, races and
    places are trademarks of Games Workshop Limited. This document is
    unofficial and unaffiliated, and no challenge to their status is intended.
  ],
  [Typeset with Typst. Not for sale.],
)"""

# An authored book is the opposite claim to the one above: the rules, army
# design and points are ours, not Eliasson's, and the colophon must say so
# rather than credit him with work he never did. {extra} takes an optional
# further paragraph (the proposal note), or an empty string.
AUTHORED_COLOPHON = """(
  [
    An original, unofficial army book written for use with the *Warhammer
    Armies Project*, Mathias Eliasson's freely distributed fan ruleset. This
    book is not his work: its rules, army design and points values are our
    own house material, version {version}.
  ],{extra}
  [
    Warhammer, Warhammer Fantasy Battle, Warhammer 40,000 and all associated
    names, races and places are trademarks of Games Workshop Limited. This
    document is unofficial and unaffiliated, and no challenge to their status
    is intended.
  ],
  [Typeset with Typst. Not for sale.],
)"""

AUTHORED_PROPOSAL_NOTE = """
  [
    The whole book stands as a proposal: it is being played and argued at our
    table, and nothing in it — rules or points — is settled yet.
  ],"""


def front_matter(book: dict, edition: dict | None) -> str:
    """Title, cover, colophon and outline. Shared with the whole-book emitter in
    extract/to_book.py, so the attribution wording has exactly one home."""
    # Root-relative, because `image()` consumes it inside template.typ.
    art = f'"/assets/{book["cover"]}"' if book["cover"] else "none"
    army, version = book["army"], book["version"]
    rules = book.get("layout") == "rules"
    # The rulebook is set in one column, so it takes a wider margin to keep the
    # line length readable, and its outline runs one level deeper.
    side = ", side: 3.1cm" if rules else ""
    depth = 3 if rules else 2

    if edition is None and book.get("authored"):
        proposal = book.get("shelf") == "proposal"
        title = f"{army} {version} — an original army book"
        subtitle = ("An original army book · a proposal" if proposal
                    else "An original army book · for Warhammer Armies Project")
        colophon = AUTHORED_COLOPHON.format(
            version=version,
            extra=AUTHORED_PROPOSAL_NOTE if proposal else "")
    elif edition is None:
        title = f"Warhammer Armies Project — {army} {version}"
        subtitle = f"Warhammer Armies Project · {version}"
        colophon = BASE_COLOPHON.format(army=army, version=version)
    else:
        # An edition's own version names the set of changes; the book's names the
        # text they were applied to, so the subtitle carries both.
        stamp = f" {edition['version']}" if edition["version"] else ""
        title = f"{army} — {edition['label']}{stamp}"
        subtitle = f"{edition['label']}{stamp} · after Warhammer Armies Project {version}"
        # These arrive from edition.toml as plain strings, so they cross into
        # Typst as literals for the same reason the book's own text does.
        body = ",\n  ".join(lit(line) for line in edition["colophon"])
        colophon = f"(\n  {body},\n)"

    return f'''#show: book.with(title: {lit(title)}{side})

#cover(
  title: {lit(army)},
  subtitle: {lit(subtitle)},
  art: {art},
)

#colophon({colophon})

#outline(title: [Contents], depth: {depth})
'''


# The books' own text is an edition like any other, so that it can be the thing
# selected rather than the absence of a selection.
BASE = {"slug": "wap", "label": "WAP v3"}

CARD = """      <li class="book"{data}>
        <a href="{id}.pdf">{thumb}</a>
        <div>
          <h2><a href="{id}.pdf">{army}</a></h2>
          <p>{meta}</p>
        </div>
      </li>"""

HEAD = """      <li class="head" data-align="{align}">
        <h2>{title}</h2><span>{count} books</span>
      </li>"""

# Re-orders and filters the army grid. The page is built grouped and in source
# order, so with this switched off it still reads correctly — which is why the
# controls are revealed here rather than being present in the markup.
SCRIPT = """
const grid = document.getElementById('armies');
const controls = document.getElementById('controls');
const core = document.getElementById('core');
const cards = [...grid.querySelectorAll('.book')];
const heads = [...grid.querySelectorAll('.head')];
const coreCards = core ? [...core.querySelectorAll('.book')] : [];
const alpha = [...cards].sort((a, b) => a.dataset.name.localeCompare(b.dataset.name));
const state = { align: 'all', edition: 'wap', sort: 'grouped' };

function apply() {
  for (const card of cards) {
    card.hidden = !((state.align === 'all' || card.dataset.align === state.align)
                    && card.dataset.edition === state.edition);
    card.style.order = '';
  }
  // A head is dropped when its group has nothing left to show, rather than when
  // the alignment filter excludes it — two filters can empty a group between them.
  // Its count follows the filter too, since a band reading "14 books" above four
  // of them is worse than no count at all.
  for (const head of heads) {
    const shown = cards.filter(
      card => !card.hidden && card.dataset.align === head.dataset.align).length;
    head.hidden = state.sort === 'alpha' || shown === 0;
    head.querySelector('span').textContent = shown + (shown === 1 ? ' book' : ' books');
  }
  if (state.sort === 'alpha') alpha.forEach((card, i) => { card.style.order = i + 1; });

  // The rulebook has no allegiance, so only the edition filter reaches it.
  for (const card of coreCards) card.hidden = card.dataset.edition !== state.edition;
  if (core) core.hidden = coreCards.every(card => card.hidden);
}

for (const button of controls.querySelectorAll('button')) {
  button.addEventListener('click', () => {
    state[button.dataset.group] = button.dataset.value;
    for (const sibling of button.parentElement.children) {
      sibling.setAttribute('aria-pressed', String(sibling === button));
    }
    apply();
  });
}
controls.hidden = false;
apply();
"""

BUTTON = ('      <button data-group="{group}" data-value="{value}" '
          'aria-pressed="{pressed}">{label}</button>')

SET = """    <div class="set" role="group" aria-label="{label}">
{buttons}
    </div>"""


def button_set(label: str, group: str, options: list[tuple[str, str]]) -> str:
    buttons = "\n".join(
        BUTTON.format(group=group, value=value, label=html.escape(text),
                      pressed="true" if n == 0 else "false")
        for n, (value, text) in enumerate(options)
    )
    return SET.format(label=label, buttons=buttons)


def controls(editions: list[dict]) -> str:
    sets = [button_set("Filter by allegiance", "align",
                       [("all", "All")] + [(s, short) for s, _, _, short in ALIGNMENTS])]
    # Only worth offering once there is more than the books' own text to choose.
    if editions:
        sets.append(button_set(
            "Filter by edition", "edition",
            [(BASE["slug"], BASE["label"])]
            + [(e["slug"], e["label"]) for e in editions]))
    sets.append(button_set("Order", "sort",
                           [("grouped", "Grouped"), ("alpha", "A–Z")]))
    return ('  <div class="controls" id="controls" hidden>\n'
            + "\n".join(sets) + "\n  </div>")


def sort_name(book: dict) -> str:
    """`The Empire` files under E, as it would on a shelf."""
    return book["army"].casefold().removeprefix("the ")


def card(book: dict, edition: str, ident: str, meta: str,
         align: str | None) -> str:
    """One card is one book in one edition. Exactly one edition is always
    selected, so a card never has to describe more than the one it is."""
    army = html.escape(book["army"])
    # An edition shares the cover of the book it derives from, of which the site
    # holds one copy. Images are copied without re-encoding, so the extension
    # follows the source rather than being assumed.
    thumb = '<span class="nothumb"></span>'
    if book["cover"]:
        ext = Path(book["cover"]).suffix
        thumb = (f'<img src="{book["id"]}-cover{ext}" '
                 f'alt="{army} cover" loading="lazy">')
    data = f' data-edition="{edition}"'
    if align:
        data += (f' data-align="{align}"'
                 f' data-name="{html.escape(sort_name(book), quote=True)}"')
    return CARD.format(id=ident, army=army, thumb=thumb, data=data,
                       meta=html.escape(meta))


def cards_for(book: dict, derived: dict[str, list[dict]],
              align: str | None) -> list[str]:
    # An authored book's card must not present it as Eliasson's work, and it
    # may file itself on an edition shelf (e.g. the proposals) rather than
    # presenting as part of the base WAP text.
    label = "Original book" if book.get("authored") else f"Version {book['version']}"
    out = [card(book, book.get("shelf") or BASE["slug"], book["id"],
                f"{label} · {book['entries']} entries", align)]
    for e in derived.get(book["id"], []):
        stamp = f" {e['edition_version']}" if e["edition_version"] else ""
        # An edition may change the rules, propose changes to them, or both.
        tally = " · ".join(f"{e[k]} {noun}" + ("s" if e[k] != 1 else "")
                           for k, noun in (("changes", "change"),
                                           ("proposals", "proposal"))
                           if e.get(k))
        out.append(card(book, e["edition"], e["id"],
                        f"{e['edition_label']}{stamp} · {tally}", align))
    return out


def page(books: list[dict], derived: dict[str, list[dict]],
         align: dict[str, str], editions: list[dict], css: str) -> str:
    rules = [b for b in books if b.get("layout") == "rules"]
    armies = sorted((b for b in books if b.get("layout") != "rules"), key=sort_name)

    # Built grouped and in source order, so the page is correct before the
    # script runs; A–Z is a re-ordering of what is already here.
    rows = []
    for slug, title, _, _ in ALIGNMENTS:
        group = [b for b in armies if align[b["id"]] == slug]
        rows.append(HEAD.format(align=slug, title=title, count=len(group)))
        for b in group:
            rows.extend(cards_for(b, derived, slug))

    # The rulebook's entries are sections of prose, not units, so they are not
    # added to a count the line below calls unit entries.
    total = sum(b["entries"] for b in armies)
    count = sum(len(v) for v in derived.values())
    note = ""
    if count:
        note = ("""
  <p class="note">
    Some books exist in more than one edition alongside the original: the
    <strong>house rules</strong> we play, and the <strong>proposals</strong> we
    are still arguing about. Switch between them with the edition control. What
    an edition changed — and what it only proposes — is set out in the back of
    it.
  </p>""")

    core = ""
    if rules:
        core = f"""
  <section id="core">
  <h2 class="section">The Rules</h2>
  <ul class="books core">
{chr(10).join(c for b in rules for c in cards_for(b, derived, None))}
  </ul>
  </section>
"""

    return f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warhammer Armies Project — typeset editions</title>
<style>
{css}</style>
</head>
<body>
<main>
  <h1>Warhammer Armies Project</h1>
  <p class="sub">{len(armies)} army books and the core rulebook, {total:,} unit entries, re-typeset with Typst.</p>
{note}
{core}
  <h2 class="section">The Armies</h2>
{controls(editions)}
  <ul class="books" id="armies">
{chr(10).join(rows)}
  </ul>

  <hr>

  <footer>
    <p>
      These are unofficial, non-commercial re-typesettings of the
      <strong>Warhammer Armies Project</strong> army books, written and freely
      distributed by Mathias Eliasson. All rules text, army design and points
      values remain the work of their author; only the typesetting differs.
    </p>
    <p>
      Editions marked as modified are the exception: those alter the rules text
      itself. The alterations are ours, not the author's, and each book lists
      them in full.
    </p>
    <p>
      Warhammer, Warhammer Fantasy Battle and all associated names, races and
      places are trademarks of Games Workshop Limited. This site is unofficial
      and unaffiliated, and no challenge to their status is intended.
    </p>
    <p>Built from Typst sources. Not for sale.</p>
  </footer>
</main>
<script>
{SCRIPT}</script>
</body>
</html>
"""


# --- reading the books ------------------------------------------------------

TYPST = os.environ.get("TYPST", "typst")

# One query per book, answering both questions the landing page has: what the
# book says it is, and how many entries it holds. Counting headings rather than
# the markers `entry` drops keeps it layout-agnostic - the rulebook's sections
# are headings and drop no marker - and it is the book's own tally either way,
# rather than a number recorded elsewhere and hoped to still be true.
PROBE = ('(meta: query(<book-meta>).first().value, '
         'entries: query(heading).filter(h => h.level >= 2).len())')


def read_book(path: Path) -> dict:
    out = subprocess.run([TYPST, "eval", PROBE, "--in", str(path),
                          "--root", str(ROOT)],
                         capture_output=True, text=True, cwd=ROOT)
    if out.returncode != 0:
        raise SystemExit(f"emit: could not read {path.name}: "
                         f"{out.stderr.strip().splitlines()[:1]}")
    probed = json.loads(out.stdout)
    book = dict(probed["meta"])
    book["entries"] = probed["entries"]
    book.setdefault("id", book["slug"])
    if not book.get("id"):
        book["id"] = book["slug"]
    return book


def read_books() -> tuple[list[dict], dict[str, list[dict]]]:
    """Every book in src/, and which of them are editions of which.

    src/ is the catalogue now. A book that exists is a book that ships, so there
    is no manifest to fall out of step with what is on disk.
    """
    books, derived = [], {}
    for path in sorted(ROOT.glob("src/*.typ")):
        if path.name == "template.typ":
            continue
        book = read_book(path)
        if book.get("edition"):
            derived.setdefault(book["base"], []).append(book)
        else:
            books.append(book)
    books.sort(key=lambda b: b["army"].casefold())
    for group in derived.values():
        group.sort(key=lambda b: (b["edition"], b["id"]))
    return books, derived


def read_editions() -> dict[str, dict]:
    """The editions' own identity, from the files that are its only source.

    An edition's colophon is set into its books at import time, so only what the
    landing page shows is read back here: the label, the version, and how many
    changes or proposals it makes to each book.
    """
    editions: dict[str, dict] = {}
    for meta in sorted(ROOT.glob("editions/*/edition.toml")):
        data = tomllib.loads(meta.read_text(encoding="utf-8"))
        counts = {}
        for book in sorted(meta.parent.glob("*.toml")):
            if book.name == "edition.toml":
                continue
            entry = tomllib.loads(book.read_text(encoding="utf-8"))
            counts[book.stem] = {
                "changes": len(entry.get("change", [])),
                "proposals": len(entry.get("proposal", [])),
            }
        editions[data["slug"]] = {
            "slug": data["slug"],
            "label": data["label"],
            "version": data.get("version", ""),
            "blurb": data.get("blurb", ""),
            "derives_from": data.get("derives_from"),
            "counts": counts,
        }
    return editions


def main() -> None:
    argparse.ArgumentParser(description=__doc__).parse_args()

    books, derived = read_books()
    editions = read_editions()

    # Carry the edition's label, version and tallies onto each derived book, so
    # the card code sees one record per book-in-an-edition as it always has.
    for base, group in derived.items():
        for book in group:
            edition = editions.get(book["edition"])
            if edition is None:
                raise SystemExit(f"emit: {book['id']} claims edition "
                                 f"'{book['edition']}', which no editions/ "
                                 f"directory defines")
            counted = edition["counts"].get(base, {})
            book["edition_label"] = edition["label"]
            book["edition_version"] = edition["version"]
            book["changes"] = counted.get("changes", 0)
            book["proposals"] = counted.get("proposals", 0)

    # A shelf that no edition defines would leave the card invisible under
    # every filter setting, so it fails loudly here instead.
    for book in books:
        # A book that is simply itself says shelf "base"; the shelf of the
        # books' own text is spelled differently here, so normalise before
        # checking that any other shelf is one an edition actually defines.
        if book.get("shelf") in (None, "", "base"):
            book["shelf"] = None
        shelf = book.get("shelf")
        if shelf and shelf not in editions:
            raise SystemExit(f"emit: {book['slug']} files itself on unknown "
                             f"shelf '{shelf}' — known: {sorted(editions)}")

    # Each book declares its own allegiance, baked in when it was imported from
    # the rulebook's Alliance & Alignment lists. Reading it here rather than
    # re-deriving it means the site no longer depends on the rulebook's
    # extraction JSON, which no longer exists.
    valid = {s for s, _, _, _ in ALIGNMENTS}
    align, unaligned = {}, []
    for book in books:
        if book.get("layout") == "rules":
            continue
        slug = book.get("align")
        if slug not in valid:
            unaligned.append(book["army"])
            slug = None
        align[book["id"]] = slug
    if unaligned:
        raise SystemExit(
            f"emit: no allegiance declared by: {', '.join(sorted(unaligned))}. "
            f"Add `align:` to the book's #book-meta - one of {sorted(valid)}.")

    css = (ROOT / "site" / "style.css").read_text(encoding="utf-8")

    written, render, owned = [], [], []
    for book in books + [b for base in sorted(derived) for b in derived[base]]:
        # src/ is the catalogue: a book that is there is a book that ships.
        owned.append(book["id"])
        # An edition shares the cover art of the book it derives from, which
        # the site already has, so it lists none of its own.
        render.append({"id": book["id"],
                       "cover": "" if book.get("edition") else book.get("cover")})

    # No prune here, deliberately. It existed to clear away wrappers emit.py
    # had generated and no longer would; now that every book in src/ is owned
    # by hand, a prune can only ever delete somebody's book. It did exactly
    # that once, to nine editions, before this comment replaced it.

    (ROOT / "site" / "index.html").write_text(page(books, derived, align, list(editions.values()), css),
                                              encoding="utf-8")
    (ROOT / "build" / "render.json").write_text(
        json.dumps(render, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")

    count = sum(len(v) for v in derived.values())
    print(f"{len(owned)} book(s) own their own Typst and were left alone "
          f"({len(books)} books, {count} derived editions)")
    print("wrote site/index.html and build/render.json")


if __name__ == "__main__":
    main()
