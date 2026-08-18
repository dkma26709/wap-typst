"""Apply an edition's changes to the extracted books, and render them.

An *edition* is a book plus an ordered set of changes. The upstream extraction is
the edition with no changes; a house edition is one with them. Nothing under
`build/<slug>.json` or `src/content/<slug>.typ` is written here, so the faithful
reproduction stays exactly as it was extracted and keeps its own place on the
site.

An edition may name another in `derives_from`, in which case it patches that
edition's text rather than the original — a proposal is written against the rules
as they are actually played, and its book carries both changelogs. The parent is
always built first, even when only the child was asked for.

Beside `[[change]]`, a file may carry `[[proposal]]`: a change described rather
than made. It anchors on nothing and alters nothing, and is set out at the back
of the book as what it would change, why, and what it would look like at the
table — the argument to have before anybody writes it into the rules.

Every change anchors on the text it acts upon, quoted verbatim from the book. If
that text later moves or is reworded upstream, the anchor stops matching and the
run fails — loudly, and naming the change — rather than landing a house rule on
the wrong paragraph, which is the kind of fault you would discover mid-game.

    python patch.py              # every edition under editions/
    python patch.py --check      # verify anchors, write nothing
"""

from __future__ import annotations

import argparse
import copy
import json
import re
import sys
import tomllib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent / "extract"))
import to_typst  # noqa: E402

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent
EDITIONS = ROOT / "editions"
BUILD = ROOT / "build"


class PatchError(Exception):
    """A change that could not be applied. Always fatal — see module docstring."""


# --- matching ---------------------------------------------------------------

# The books set dashes and quotes as their typographic forms, but a change is
# written by hand in a text editor. Both sides are folded to the plain ASCII
# forms so an anchor typed with a hyphen still matches an en dash in the source.
FOLD = {
    "‐": "-", "‑": "-", "‒": "-", "–": "-", "—": "-",
    "―": "-", "−": "-", "‘": "'", "’": "'", "“": '"',
    "”": '"', " ": " ",
}


def norm(text: str) -> str:
    """The comparable form of a piece of text: folded punctuation, collapsed
    whitespace, case-insensitive. Used for matching only — the changelog quotes
    the book itself, never the anchor as it was typed."""
    return " ".join("".join(FOLD.get(c, c) for c in text).split()).casefold()


def rows_of(block: dict) -> list[dict]:
    """A profile's value rows. The extraction only ever produces one, so it
    writes `row`; an authored profile writes `rows` and may have several."""
    return block.get("rows") or [block["row"]]


def block_text(block: dict) -> str:
    kind = block["type"]
    if kind == "para":
        return block["text"]
    if kind == "namecost":
        return block["name"]
    if kind == "field":
        return f"{block['label']}: {block['value']}".strip(": ")
    if kind == "list":
        return " ".join(it["text"] for it in block["items"])
    if kind == "chart":
        return " ".join(cell for row in block["rows"] for cell in row)
    if kind == "minitable":
        return " ".join(r.get(c, "") for r in rows_of(block)
                        for c in block["columns"])
    if kind == "statblock":
        return block.get("label", "Profile")
    return ""


def display(block: dict) -> str:
    """A block as the changelog quotes it. The same as `block_text`, except that
    a weapon profile names its columns: a bare row of values cannot be read
    against the row it replaced once the columns themselves have changed."""
    if block["type"] == "minitable":
        return " / ".join(
            " · ".join(f"{c} {r.get(c, '')}".strip() for c in block["columns"])
            for r in rows_of(block))
    return block_text(block)


# --- authoring --------------------------------------------------------------

MARKUP = re.compile(r"\*\*(.+?)\*\*|\*(.+?)\*", re.S)


def make_runs(text: str) -> list[dict]:
    """`**bold**` and `*italic*`, which is as much inline markup as rules text
    has ever needed. Everything else crosses into Typst as a string literal."""
    runs, pos = [], 0
    for m in MARKUP.finditer(text):
        if m.start() > pos:
            runs.append({"emph": "", "text": text[pos:m.start()]})
        if m.group(1) is not None:
            runs.append({"emph": "bold", "text": m.group(1)})
        else:
            runs.append({"emph": "italic", "text": m.group(2)})
        pos = m.end()
    if pos < len(text):
        runs.append({"emph": "", "text": text[pos:]})
    return runs or [{"emph": "", "text": ""}]


def para(text: str, style: str = "body") -> dict:
    runs = make_runs(text)
    return {
        "type": "para", "style": style, "runs": runs,
        "text": "".join(r["text"] for r in runs),
    }


def quote(text: str, style: str = "body") -> dict:
    """A paragraph of the book's own words, for the changelog. Unlike `para`,
    nothing in it is read as markup — a weapon profile's footnote asterisks are
    part of the rule, not emphasis around it."""
    return {"type": "para", "style": style,
            "runs": [{"emph": "", "text": text}], "text": text}


def parse_body(source: str) -> list[dict]:
    """Blank lines separate blocks. A block of `- ` lines is a list, a lone
    `## NAME` line is a run-in heading, `@LABEL: value` is a profile field, two
    `|`-delimited lines are a weapon profile, `> ` lines are the indented italic
    note the books set beneath a profile, and anything else is a paragraph."""
    blocks: list[dict] = []
    for chunk in re.split(r"\n\s*\n", source.strip()):
        lines = [ln.strip() for ln in chunk.splitlines() if ln.strip()]
        if not lines:
            continue
        if lines[0].startswith("|"):
            table = [[c.strip() for c in ln.strip("|").split("|")] for ln in lines]
            if len(table) < 2:
                raise PatchError("a weapon profile is a line of `|` headings "
                                 "followed by at least one line of values")
            columns, values = table[0], table[1:]
            for row in values:
                if len(row) != len(columns):
                    raise PatchError(f"the weapon profile has {len(columns)} "
                                     f"headings but a row of {len(row)} values")
            blocks.append({"type": "minitable", "columns": columns,
                           "rows": [dict(zip(columns, r)) for r in values]})
        elif lines[0].startswith("@"):
            label, colon, value = " ".join(lines)[1:].partition(":")
            if not colon:
                raise PatchError(f"the field {label[:40]!r} has no colon; write "
                                 f"it as `@LABEL: value`")
            blocks.append({"type": "field", "label": label.strip(),
                           "value": value.strip()})
        elif all(ln.startswith("> ") for ln in lines):
            blocks.append(para(" ".join(ln[2:].strip() for ln in lines),
                               style="italic"))
        elif all(ln.startswith("- ") for ln in lines):
            items = []
            for ln in lines:
                runs = make_runs(ln[2:].strip())
                items.append({
                    "runs": runs,
                    "text": "".join(r["text"] for r in runs),
                    "sub": [],
                })
            blocks.append({"type": "list", "items": items})
        elif len(lines) == 1 and lines[0].startswith("## "):
            blocks.append({"type": "namecost", "name": lines[0][3:].strip(),
                           "cost": ""})
        else:
            blocks.append(para(" ".join(lines)))
    return blocks


# --- locating ---------------------------------------------------------------

def scope(data: dict, change: dict) -> tuple[list[dict], str]:
    """The block list a change addresses, and a readable name for it."""
    title = change["chapter"]
    hits = [c for c in data["chapters"] if norm(c["title"]) == norm(title)]
    if len(hits) != 1:
        known = ", ".join(c["title"] for c in data["chapters"])
        raise PatchError(f"chapter {title!r} matched {len(hits)} chapters. "
                         f"The book has: {known}")
    chapter = hits[0]

    name = change.get("entry")
    if name is None:
        return chapter.setdefault("intro", []), chapter["title"]

    found = [e for e in chapter["entries"] if norm(e["name"]) == norm(name)]
    if len(found) != 1:
        known = ", ".join(repr(e["name"]) for e in chapter["entries"])
        raise PatchError(f"entry {name!r} matched {len(found)} entries in "
                         f"{chapter['title']!r}. That chapter has: {known}")
    return found[0]["blocks"], f"{chapter['title']} · {found[0]['name']}"


def locate(blocks: list[dict], anchor: str, occurrence: int | None) -> int:
    want = norm(anchor)
    hits = [i for i, b in enumerate(blocks) if norm(block_text(b)) == want]
    if not hits:
        near = [block_text(b) for b in blocks
                if want[:40] and norm(block_text(b)).startswith(want[:40])]
        hint = f" Nearest by opening: {near[0]!r}" if near else ""
        raise PatchError(f"no block matches the anchor {anchor[:70]!r}.{hint}")
    if len(hits) > 1:
        if occurrence is None:
            raise PatchError(
                f"the anchor {anchor[:70]!r} matches {len(hits)} blocks here; "
                f"set occurrence = 1..{len(hits)} to choose one")
        if not 1 <= occurrence <= len(hits):
            raise PatchError(f"occurrence {occurrence} is out of range 1..{len(hits)}")
        return hits[occurrence - 1]
    return hits[0]


def span(blocks: list[dict], change: dict) -> tuple[int, int]:
    """The half-open range a change acts on. `until` extends the anchor over
    several consecutive blocks, for a rule that runs to more than one paragraph."""
    start = locate(blocks, change["original"], change.get("occurrence"))
    if "until" not in change:
        return start, start + 1
    want = norm(change["until"])
    for j in range(start, len(blocks)):
        if norm(block_text(blocks[j])) == want:
            return start, j + 1
    raise PatchError(f"the `until` anchor {change['until'][:70]!r} does not "
                     f"appear after the opening anchor")


# --- applying ---------------------------------------------------------------

OPS = ("replace", "insert-after", "insert-before", "delete")


def apply(data: dict, change: dict) -> dict:
    op = change.get("op", "replace")
    if op not in OPS:
        raise PatchError(f"unknown op {op!r}; expected one of {', '.join(OPS)}")

    blocks, where = scope(data, change)
    start, stop = span(blocks, change)
    was = [display(b) for b in blocks[start:stop]]

    if op == "delete":
        if "new" in change:
            raise PatchError("a delete cannot carry `new` text")
        fresh: list[dict] = []
        del blocks[start:stop]
    else:
        if not change.get("new", "").strip():
            raise PatchError(f"a {op} needs `new` text")
        fresh = parse_body(change["new"])
        for block in fresh:
            block["house"] = change["id"]
        if op == "replace":
            blocks[start:stop] = fresh
        elif op == "insert-after":
            blocks[stop:stop] = fresh
        else:
            blocks[start:start] = fresh

    return {
        "id": change["id"],
        "title": change.get("title", change["id"].replace("-", " ").title()),
        "where": where,
        "why": change.get("why", ""),
        "op": op,
        # The book's own words, not the anchor as it was typed.
        "was": was if op in ("replace", "delete") else [],
        "now": [display(b) for b in fresh],
    }


# --- the changelog ----------------------------------------------------------

OPENING = (
    "This edition is the Warhammer Armies Project text with the changes below "
    "applied to it. Everything not listed here is unchanged. Each entry gives "
    "the rule as it was written, the rule as it now stands, and why it was "
    "changed."
)

VERB = {
    "replace": "Replaced",
    "insert-after": "Added after",
    "insert-before": "Added before",
    "delete": "Removed",
}


def changelog(records: list[dict], title: str) -> dict:
    intro: list[dict] = [para(OPENING)]
    for r in records:
        intro.append({"type": "namecost", "name": r["title"], "cost": r["where"]})
        if r["why"]:
            intro.append(para(r["why"]))
        if r["was"]:
            label = "Removed" if r["op"] == "delete" else "Was"
            intro.append({"type": "field", "label": label, "value": ""})
            # Set as a quotation: the superseded wording is here for reference,
            # and should not be mistaken for a rule still in force.
            intro.extend(quote(t, style="italic") for t in r["was"])
        if r["now"]:
            label = "Now" if r["op"] == "replace" else VERB[r["op"]]
            intro.append({"type": "field", "label": label, "value": ""})
            intro.extend(quote(t) for t in r["now"])
    return {"title": title, "page": 0, "intro": intro, "entries": []}


# --- the prospectus ---------------------------------------------------------

PROSPECTUS_OPENING = (
    "What follows is not rules. Nothing here has been agreed, nothing here is "
    "played, and the rules text of this book is untouched by all of it. Each "
    "proposal sets out what it would change, why it is worth changing, and what "
    "it would look like at the table — enough to be argued over, and no more. "
    "Only once one is settled is it written into the book, and it will appear "
    "under Our Changes when it is."
)


def prospectus(proposals: list[dict], title: str, where: str) -> dict:
    """A chapter of changes described rather than made."""
    intro: list[dict] = [para(PROSPECTUS_OPENING)]
    for n, p in enumerate(proposals, 1):
        if "id" not in p:
            raise PatchError(f"{where}: proposal {n} has no id")
        if not p.get("summary", "").strip():
            raise PatchError(f"{where} [{p['id']}]: a proposal needs a `summary` "
                             f"saying what it would change")
        intro.append({
            "type": "namecost",
            "name": p.get("title", p["id"].replace("-", " ").capitalize()),
            "cost": p.get("status", ""),
        })
        intro.extend(parse_body(p["summary"]))
        for key, label in (("why", "Why"),
                           ("against", "The argument against"),
                           ("cost", "What it would take")):
            if p.get(key, "").strip():
                intro.append({"type": "field", "label": label, "value": ""})
                intro.extend(parse_body(p[key]))
        examples = p.get("examples", [])
        if examples:
            intro.append({"type": "field", "label": "For example", "value": ""})
            for example in examples:
                intro.extend(parse_body(example))
    return {"title": title, "page": 0, "intro": intro, "entries": []}


# --- driving ----------------------------------------------------------------

def load_edition(directory: Path) -> dict:
    meta = tomllib.loads((directory / "edition.toml").read_text(encoding="utf-8"))
    meta.setdefault("slug", directory.name)
    meta.setdefault("label", directory.name.title())
    meta.setdefault("changelog_title", "CHANGES FROM THE ORIGINAL")
    meta.setdefault("proposals_title", "PROPOSALS")
    meta.setdefault("derives_from", "")
    meta["dir"] = directory
    return meta


def in_build_order(metas: dict[str, dict]) -> list[dict]:
    """The editions, each preceded by the one it derives from."""
    order: list[dict] = []
    done: set[str] = set()

    def visit(slug: str, trail: list[str]) -> None:
        if slug in done:
            return
        if slug in trail:
            raise PatchError("these editions derive from one another in a "
                             "circle: " + " -> ".join(trail[trail.index(slug):]
                                                      + [slug]))
        meta = metas[slug]
        parent = meta["derives_from"]
        if parent:
            if parent not in metas:
                raise PatchError(f"{slug!r} derives from {parent!r}, which is "
                                 f"not an edition. There is: "
                                 f"{', '.join(sorted(metas))}")
            visit(parent, trail + [slug])
        done.add(slug)
        order.append(meta)

    for slug in sorted(metas):
        visit(slug, [])
    return order


def build_book(meta: dict, patch_file: Path, manifest: dict,
               patched: dict[tuple[str, str], dict], write: bool) -> dict:
    spec = tomllib.loads(patch_file.read_text(encoding="utf-8"))
    slug = spec.get("book", patch_file.stem)

    base = manifest.get(slug)
    if base is None:
        raise PatchError(f"{patch_file.name}: {slug!r} is not in build/books.json")

    # A derived edition starts from its parent's text — but only for the books
    # the parent actually touches; for the rest the original is the parent.
    inherited = patched.get((meta["derives_from"], slug))
    if inherited is None:
        data = json.loads((BUILD / f"{slug}.json").read_text(encoding="utf-8"))
    else:
        data = copy.deepcopy(inherited)

    records = []
    for n, change in enumerate(spec.get("change", []), 1):
        if "id" not in change:
            raise PatchError(f"{patch_file.name}: change {n} has no id")
        try:
            records.append(apply(data, change))
        except PatchError as exc:
            raise PatchError(f"{patch_file.name} [{change['id']}]: {exc}") from None

    proposals = spec.get("proposal", [])
    if not records and not proposals:
        raise PatchError(f"{patch_file.name}: no changes and no proposals")

    print(f"  {slug}: {len(records)} change(s) applied, "
          f"{len(proposals)} proposal(s)")
    for r in records:
        print(f"    {r['op']:<13} {r['where']}")
    for pr in proposals:
        print(f"    {'proposed':<13} {pr.get('title', pr.get('id', '?'))}")

    if records:
        data["chapters"].append(changelog(records, meta["changelog_title"]))
    if proposals:
        data["chapters"].append(
            prospectus(proposals, meta["proposals_title"], patch_file.name))
    # Kept even when nothing is written, so that --check tests a derived
    # edition's anchors against the text it will really be applied to.
    patched[(meta["slug"], slug)] = data

    ident = f"{slug}-{meta['slug']}"
    if write:
        # Figures are shared with the book this edition is derived from.
        to_typst.FIGURE_PREFIX = f"/assets/figures/{slug}"
        render = (to_typst.render_rules if base["layout"] == "rules"
                  else to_typst.render)
        out = ROOT / "src" / "content" / f"{ident}.typ"
        out.write_text(render(data, "../template.typ"), encoding="utf-8")

        (BUILD / "editions" / meta["slug"]).mkdir(parents=True, exist_ok=True)
        (BUILD / "editions" / meta["slug"] / f"{slug}.json").write_text(
            json.dumps(data, ensure_ascii=False, indent=1), encoding="utf-8")

    return {
        **base,
        "id": ident,
        "base": slug,
        "edition": meta["slug"],
        "edition_label": meta["label"],
        "edition_version": meta.get("version", ""),
        "changes": len(records),
        "proposals": len(proposals),
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--check", action="store_true",
                    help="verify every anchor still matches; write nothing")
    ap.add_argument("--edition", help="only this edition")
    ap.add_argument("--editions-dir", type=Path, default=EDITIONS,
                    help="where the edition directories live")
    args = ap.parse_args()

    manifest = {b["slug"]: b for b in
                json.loads((BUILD / "books.json").read_text(encoding="utf-8"))["books"]}

    metas: dict[str, dict] = {}
    for directory in sorted(d for d in args.editions_dir.iterdir()
                            if (d / "edition.toml").exists()):
        meta = load_edition(directory)
        if meta["slug"] in metas:
            raise PatchError(f"{metas[meta['slug']]['dir'].name}/ and "
                             f"{directory.name}/ both call themselves "
                             f"{meta['slug']!r}")
        metas[meta["slug"]] = meta

    if args.edition and args.edition not in metas:
        raise PatchError(f"no edition {args.edition!r} under {args.editions_dir}. "
                         f"There is: {', '.join(sorted(metas))}")

    # An edition asked for by name still needs the ones it derives from built,
    # since they are the text it is applied to — but they are not reported, and
    # nothing of theirs is written.
    report = {args.edition} if args.edition else set(metas)
    needed = set()
    for slug in report:
        while slug:
            needed.add(slug)
            slug = metas[slug]["derives_from"]

    editions, books = [], []
    patched: dict[tuple[str, str], dict] = {}
    for meta in in_build_order(metas):
        if meta["slug"] not in needed:
            continue
        wanted = meta["slug"] in report
        print(f"{meta['label']} ({meta['slug']})"
              + ("" if wanted else "  — base only"))
        built = []
        for patch_file in sorted(meta["dir"].glob("*.toml")):
            if patch_file.name == "edition.toml":
                continue
            built.append(build_book(meta, patch_file, manifest, patched,
                                    write=wanted and not args.check))
        if not wanted:
            continue
        books.extend(built)
        editions.append({
            "slug": meta["slug"],
            "label": meta["label"],
            "version": meta.get("version", ""),
            "blurb": meta.get("blurb", ""),
            "colophon": meta.get("colophon", []),
            "books": [b["id"] for b in built],
        })

    if args.check:
        print("\nall anchors match")
        return

    (BUILD / "editions.json").write_text(
        json.dumps({"editions": editions, "books": books},
                   ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
    print(f"\nwrote build/editions.json: {len(books)} book(s) "
          f"across {len(editions)} edition(s)")


if __name__ == "__main__":
    try:
        main()
    except PatchError as exc:
        sys.exit(f"patch failed: {exc}")
