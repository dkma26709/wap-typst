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


# --- the pages --------------------------------------------------------------

# One card is one thing a reader can open: an army, one version of it, or one
# edition. `href` is page-relative, so each page states its own prefix once and
# no card has to know where it sits.
CARD = """      <li class="book"{data}>
        <a href="{href}">{thumb}</a>
        <div>
          <h2><a href="{href}">{title}</a></h2>
          <p>{meta}</p>
        </div>
      </li>"""

HEAD = """      <li class="head" data-align="{align}">
        <h2>{title}</h2><span>{count} books</span>
      </li>"""

BUTTON = ('      <button data-group="{group}" data-value="{value}" '
          'aria-pressed="{pressed}">{label}</button>')

SET = """    <div class="set" role="group" aria-label="{label}">
{buttons}
    </div>"""

# Re-orders and filters the army grid, which only the overview has. The page is
# built grouped and in source order, so with this switched off it still reads
# correctly - which is why the controls are revealed here rather than being
# present in the markup. There is no edition control any more: an army's
# versions are on its own page and the editions have a shelf of their own.
SCRIPT = """<script>
const grid = document.getElementById('armies');
const controls = document.getElementById('controls');
const cards = [...grid.querySelectorAll('.book')];
const heads = [...grid.querySelectorAll('.head')];
const alpha = [...cards].sort((a, b) => a.dataset.name.localeCompare(b.dataset.name));
const state = { align: 'all', sort: 'grouped' };

function apply() {
  for (const card of cards) {
    card.hidden = !(state.align === 'all' || card.dataset.align === state.align);
    card.style.order = '';
  }
  // A head is dropped when its group has nothing left to show. Its count
  // follows the filter too, since a band reading "14 books" above four of them
  // is worse than no count at all.
  for (const head of heads) {
    const shown = cards.filter(
      card => !card.hidden && card.dataset.align === head.dataset.align).length;
    head.hidden = state.sort === 'alpha' || shown === 0;
    head.querySelector('span').textContent = shown + (shown === 1 ? ' book' : ' books');
  }
  if (state.sort === 'alpha') alpha.forEach((card, i) => { card.style.order = i + 1; });
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
</script>
"""

FOOTER = """    <p>
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
    <p>Built from Typst sources. Not for sale.</p>"""

PAGE = """<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title}</title>
<style>
{css}</style>
</head>
<body>
<main>
{body}
  <hr>

  <footer>
{footer}
  </footer>
</main>
{script}</body>
</html>
"""


def button_set(label: str, group: str, options: list[tuple[str, str]]) -> str:
    buttons = "\n".join(
        BUTTON.format(group=group, value=value, label=html.escape(text),
                      pressed="true" if n == 0 else "false")
        for n, (value, text) in enumerate(options)
    )
    return SET.format(label=label, buttons=buttons)


def controls() -> str:
    sets = [button_set("Filter by allegiance", "align",
                       [("all", "All")] + [(s, short) for s, _, _, short in ALIGNMENTS]),
            button_set("Order", "sort",
                       [("grouped", "Grouped"), ("alpha", "A-Z")])]
    return ('  <div class="controls" id="controls" hidden>\n'
            + "\n".join(sets) + "\n  </div>")


def sort_name(book: dict) -> str:
    """`The Empire` files under E, as it would on a shelf."""
    return book["army"].casefold().removeprefix("the ")


def version_key(version: str) -> tuple:
    """Newest first, comparing dotted parts as numbers.

    A string sort puts 3.11 below 3.1, which is wrong for exactly the versions
    this corpus holds. A part that is not a number sorts below one that is,
    rather than stopping the build over a version nobody has published yet.
    """
    return tuple((int(p), "") if p.isdigit() else (-1, p)
                 for p in version.split("."))


def label_of(book: dict) -> str:
    """What a version calls itself. Ours are not versions of anybody's book."""
    return "Original book" if book.get("authored") else f"Version {book['version']}"


def plural(n: int, one: str, many: str = "") -> str:
    """`entrys` reached the page before this took the plural as an argument."""
    return f"{n} {one if n == 1 else (many or one + 's')}"


def card(href: str, title: str, meta: str, cover: str | None,
         prefix: str = "", data: str = "", alt: str = "") -> str:
    """`cover` is an id, which is also where its art sits beside its PDF.

    `alt` describes the art, which is the army's, and so is not always what the
    card is titled - an edition's card is headed by the edition.
    """
    thumb = '<span class="nothumb"></span>'
    if cover:
        thumb = (f'<img src="{prefix}{cover}" '
                 f'alt="{html.escape(alt or title)} cover" loading="lazy">')
    return CARD.format(href=f"{prefix}{href}", title=html.escape(title),
                       meta=html.escape(meta), thumb=thumb, data=data)


def cover_of(book: dict) -> str | None:
    """The art beside a book's PDF, which CI copies as `<id>-cover<ext>`."""
    if not book.get("cover"):
        return None
    return f'{book["id"]}-cover{Path(book["cover"]).suffix}'


def edition_label(book: dict) -> str:
    """An edition's own version names the set of changes, not the text."""
    stamp = f" {book['edition_version']}" if book["edition_version"] else ""
    return f"{book['edition_label']}{stamp}"


def edition_tally(book: dict) -> str:
    """An edition may change the rules, propose changes to them, or both."""
    return " · ".join(plural(book[k], noun)
                      for k, noun in (("changes", "change"),
                                      ("proposals", "proposal"))
                      if book.get(k))


def shell(title: str, body: str, css: str, script: str = "") -> str:
    return PAGE.format(title=title, body=body, css=css, footer=FOOTER,
                       script=script)


def overview(armies: dict[str, list[dict]], rules: dict[str, list[dict]],
             align: dict[str, str], derived: dict[str, list[dict]],
             css: str) -> str:
    """One card per army, whatever number of versions we hold of it.

    Which is the current one is read from the version numbers rather than
    declared, so a newly imported book takes its place without being announced.
    """
    rows = []
    for slug, title, _, _ in ALIGNMENTS:
        group = sorted((v for v in armies.values() if align[v[0]["id"]] == slug),
                       key=lambda v: sort_name(v[0]))
        rows.append(HEAD.format(align=slug, title=title, count=len(group)))
        for versions in group:
            current = versions[0]
            meta = (f"{label_of(current)} · "
                    f"{plural(current['entries'], 'entry', 'entries')}")
            if len(versions) > 1:
                meta += f" · {plural(len(versions), 'version')}"
            rows.append(card(
                f"{current['slug']}/", current["army"], meta, cover_of(current),
                data=f' data-align="{slug}"'
                     f' data-name="{html.escape(sort_name(current), quote=True)}"'))

    core = ""
    if rules:
        cards = []
        for versions in rules.values():
            current = versions[0]
            meta = f"{label_of(current)} · {plural(current['entries'], 'section')}"
            if len(versions) > 1:
                meta += f" · {plural(len(versions), 'version')}"
            cards.append(card(f"{current['slug']}/", current["army"], meta,
                              cover_of(current)))
        core = f"""
  <section id="core">
  <h2 class="section">The Rules</h2>
  <ul class="books core">
{chr(10).join(cards)}
  </ul>
  </section>
"""

    ours = sum(len(v) for v in derived.values())
    shelf = ""
    if ours:
        shelf = f"""
  <p class="note">
    Some books have an edition of our own beside the original: the
    <strong>house rules</strong> we play, and the <strong>proposals</strong> we
    are still arguing about. There are {ours} of them, on
    <a href="house/">a shelf of their own</a>. What an edition changed - and
    what it only proposes - is set out in the back of it.
  </p>"""

    held = sum(len(v) for v in list(armies.values()) + list(rules.values()))
    entries = sum(v[0]["entries"] for v in armies.values())
    body = f"""  <h1>Warhammer Armies Project</h1>
  <p class="sub">{len(armies)} armies and the core rulebook, {held} books
  between them, {entries:,} unit entries, re-typeset with Typst.</p>
{shelf}
{core}
  <h2 class="section">The Armies</h2>
{controls()}
  <ul class="books" id="armies">
{chr(10).join(rows)}
  </ul>
"""
    return shell("Warhammer Armies Project — typeset editions", body, css,
                 SCRIPT)


def army_page(versions: list[dict], derived: dict[str, list[dict]],
              css: str) -> str:
    """Every version of one army, newest first, and our editions of them."""
    army = versions[0]["army"]
    kind = (("section", "sections") if versions[0].get("layout") == "rules"
            else ("entry", "entries"))
    cards = [card(f'{v["id"]}.pdf', label_of(v), plural(v["entries"], *kind),
                  cover_of(v), prefix="../", alt=army)
             for v in versions]

    ours = []
    for v in versions:
        for e in derived.get(v["id"], []):
            after = f" · after {label_of(v).lower()}" if len(versions) > 1 else ""
            # An edition shares the cover of the book it derives from, of which
            # the site holds one copy.
            ours.append(card(f'{e["id"]}.pdf', edition_label(e),
                             edition_tally(e) + after, cover_of(v),
                             prefix="../", alt=army))
    editions = ""
    if ours:
        editions = f"""
  <h2 class="section">Ours</h2>
  <ul class="books core">
{chr(10).join(ours)}
  </ul>
"""

    order = ", newest first" if len(versions) > 1 else ""
    body = f"""  <p class="back"><a href="../">All books</a></p>
  <h1>{html.escape(army)}</h1>
  <p class="sub">{plural(len(versions), 'version')} re-typeset with Typst{order}.</p>

  <h2 class="section">Versions</h2>
  <ul class="books core">
{chr(10).join(cards)}
  </ul>
{editions}"""
    return shell(f"{army} — Warhammer Armies Project", body, css)


def house_page(derived: dict[str, list[dict]], bases: dict[str, dict],
               editions: list[dict], css: str) -> str:
    """Our own editions, on the one page, because they are what we play from.

    A shelf is a section here rather than a filter: there is one version of each
    of these, so nothing about them wants choosing between.
    """
    by_shelf: dict[str, list[tuple[dict, dict]]] = {}
    for base, group in derived.items():
        for book in group:
            by_shelf.setdefault(book["edition"], []).append((book, bases[base]))

    sections = []
    total = 0
    for edition in editions:
        group = sorted(by_shelf.get(edition["slug"], []),
                       key=lambda pair: sort_name(pair[0]))
        if not group:
            continue
        total += len(group)
        blurb = f'\n  <p class="note">{html.escape(edition["blurb"])}</p>' if edition.get("blurb") else ""
        # An edition shares the cover of the book it derives from.
        cards = [card(f'{b["id"]}.pdf', b["army"],
                      f"{edition_label(b)} · {edition_tally(b)}",
                      cover_of(base), prefix="../", alt=b["army"])
                 for b, base in group]
        sections.append(f"""
  <h2 class="section">{html.escape(edition["label"])}</h2>{blurb}
  <ul class="books core">
{chr(10).join(cards)}
  </ul>
""")

    body = f"""  <p class="back"><a href="../">All books</a></p>
  <h1>Ours</h1>
  <p class="sub">{plural(total, 'book')} we have altered or proposed altering.
  Everything else on this site reproduces its source exactly.</p>
{"".join(sections)}"""
    return shell("Ours — Warhammer Armies Project", body, css)


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
    # A book's identity is where it sits: the army is the folder and the version
    # is the file, so `src/lizardmen/3.0-house.typ` is `lizardmen/3.0-house`.
    # The publish workflow compiles `src/<id>.typ` and the site links `<id>.pdf`,
    # both of which this already was for every book; taking it from the path
    # rather than the metadata leaves nothing to disagree with the filesystem.
    book["id"] = path.relative_to(ROOT / "src").with_suffix("").as_posix()
    return book


def read_books() -> tuple[list[dict], dict[str, list[dict]]]:
    """Every book in src/, and which of them are editions of which.

    src/ is the catalogue now. A book that exists is a book that ships, so there
    is no manifest to fall out of step with what is on disk.
    """
    books, derived = [], {}
    for path in sorted(ROOT.glob("src/**/*.typ")):
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
        # A record is keyed by the book it is about, which is that book's id -
        # `lizardmen/3.0` - so the record sits at `lizardmen/3.0.toml` and the
        # two are the same string by construction rather than by convention.
        for book in sorted(meta.parent.rglob("*.toml")):
            if book.name == "edition.toml":
                continue
            entry = tomllib.loads(book.read_text(encoding="utf-8"))
            counts[book.relative_to(meta.parent).with_suffix("").as_posix()] = {
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

    # An edition names the book it derives from, and a base naming no book would
    # not fail of its own accord: the card code nests an edition beneath its
    # base, so the edition would simply never be rendered anywhere. Both of
    # these cross-references are ids, which are paths, so a book that moves
    # without them is exactly the mistake worth catching here.
    known = {b["id"] for b in books}
    for base, group in sorted(derived.items()):
        if base not in known:
            raise SystemExit(
                f"emit: {', '.join(b['id'] for b in group)} derives from "
                f"'{base}', which is no book in src/")

    # Carry the edition's label, version and tallies onto each derived book, so
    # the card code sees one record per book-in-an-edition as it always has.
    for base, group in derived.items():
        for book in group:
            edition = editions.get(book["edition"])
            if edition is None:
                raise SystemExit(f"emit: {book['id']} claims edition "
                                 f"'{book['edition']}', which no editions/ "
                                 f"directory defines")
            # A missing record reads as nought changes, which is a claim on the
            # page rather than an absence of one, so it is not tolerated.
            if base not in edition["counts"]:
                raise SystemExit(
                    f"emit: {book['id']} is an edition of '{base}' but "
                    f"editions/{book['edition']}/{base}.toml does not exist, "
                    f"so the page would say it changes nothing")
            counted = edition["counts"][base]
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

    # An army is the unit the site presents, and a version of it is one book on
    # that army's own page. Which version is current is read from the numbers
    # rather than declared, so an imported book takes its place unannounced.
    armies: dict[str, list[dict]] = {}
    rules: dict[str, list[dict]] = {}
    for book in books:
        shelf = rules if book.get("layout") == "rules" else armies
        shelf.setdefault(book["slug"], []).append(book)
    for group in list(armies.values()) + list(rules.values()):
        group.sort(key=lambda b: version_key(b["version"]), reverse=True)

    # A book's own record, by id, so an edition's card can borrow its cover.
    bases = {b["id"]: b for b in books}

    render, owned = [], []
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

    # One page per army, at the folder its books already publish into, so
    # /lizardmen/ sits beside /lizardmen/3.0.pdf and the URL says what it holds.
    pages = {Path("index.html"): overview(armies, rules, align, derived, css)}
    for group in list(armies.values()) + list(rules.values()):
        pages[Path(group[0]["slug"]) / "index.html"] = army_page(group, derived, css)
    if derived:
        pages[Path("house") / "index.html"] = house_page(
            derived, bases, list(editions.values()), css)

    # An army called `house` would take the shelf's own address. None is, and
    # this is the only place that could go unnoticed.
    clash = set(armies) & {"house"}
    if clash:
        raise SystemExit(f"emit: {clash.pop()} collides with the editions shelf "
                         f"at /house/ - one of them needs a different slug")

    for path, text in pages.items():
        target = ROOT / "site" / path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(text, encoding="utf-8", newline="\n")

    (ROOT / "build" / "render.json").write_text(
        json.dumps(render, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")

    count = sum(len(v) for v in derived.values())
    print(f"{len(owned)} book(s) own their own Typst and were left alone "
          f"({len(books)} books, {count} derived editions)")
    print(f"wrote {len(pages)} page(s) under site/ and build/render.json")


if __name__ == "__main__":
    main()
