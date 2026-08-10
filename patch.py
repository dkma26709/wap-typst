"""Apply an edition's changes to the extracted books, and render them.

An *edition* is a book plus an ordered set of changes. The upstream extraction is
the edition with no changes; a house edition is one with them. Nothing under
`build/<slug>.json` or `src/content/<slug>.typ` is written here, so the faithful
reproduction stays exactly as it was extracted and keeps its own place on the
site.

Every change anchors on the text it acts upon, quoted verbatim from the book. If
that text later moves or is reworded upstream, the anchor stops matching and the
run fails — loudly, and naming the change — rather than landing a house rule on
the wrong paragraph, which is the kind of fault you would discover mid-game.

    python patch.py              # every edition under editions/
    python patch.py --check      # verify anchors, write nothing
"""

from __future__ import annotations

import argparse
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
        return " ".join(block["row"].get(c, "") for c in block["columns"])
    if kind == "statblock":
        return block.get("label", "Profile")
    return ""


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


def parse_body(source: str) -> list[dict]:
    """Blank lines separate blocks. A block of `- ` lines is a list, a lone
    `## NAME` line is a run-in heading, `@LABEL: value` is a profile field, two
    `|`-delimited lines are a weapon profile, and anything else is a paragraph."""
    blocks: list[dict] = []
    for chunk in re.split(r"\n\s*\n", source.strip()):
        lines = [ln.strip() for ln in chunk.splitlines() if ln.strip()]
        if not lines:
            continue
        if lines[0].startswith("|"):
            rows = [[c.strip() for c in ln.strip("|").split("|")] for ln in lines]
            if len(rows) != 2:
                raise PatchError(f"a weapon profile is two `|` lines, headings "
                                 f"then values; this one has {len(rows)}")
            columns, values = rows
            if len(columns) != len(values):
                raise PatchError(f"the weapon profile has {len(columns)} headings "
                                 f"but {len(values)} values")
            blocks.append({"type": "minitable", "columns": columns,
                           "row": dict(zip(columns, values))})
        elif lines[0].startswith("@"):
            label, colon, value = " ".join(lines)[1:].partition(":")
            if not colon:
                raise PatchError(f"the field {label[:40]!r} has no colon; write "
                                 f"it as `@LABEL: value`")
            blocks.append({"type": "field", "label": label.strip(),
                           "value": value.strip()})
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
    was = [block_text(b) for b in blocks[start:stop]]

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
        "now": [block_text(b) for b in fresh],
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
            intro.extend(para(t, style="italic") for t in r["was"])
        if r["now"]:
            label = "Now" if r["op"] == "replace" else VERB[r["op"]]
            intro.append({"type": "field", "label": label, "value": ""})
            intro.extend(para(t) for t in r["now"])
    return {"title": title, "page": 0, "intro": intro, "entries": []}


# --- driving ----------------------------------------------------------------

def load_edition(directory: Path) -> dict:
    meta = tomllib.loads((directory / "edition.toml").read_text(encoding="utf-8"))
    meta.setdefault("slug", directory.name)
    meta.setdefault("label", directory.name.title())
    meta.setdefault("changelog_title", "CHANGES FROM THE ORIGINAL")
    meta["dir"] = directory
    return meta


def build_book(meta: dict, patch_file: Path, manifest: dict,
               check: bool) -> dict | None:
    spec = tomllib.loads(patch_file.read_text(encoding="utf-8"))
    slug = spec.get("book", patch_file.stem)

    base = manifest.get(slug)
    if base is None:
        raise PatchError(f"{patch_file.name}: {slug!r} is not in build/books.json")

    data = json.loads((BUILD / f"{slug}.json").read_text(encoding="utf-8"))

    records = []
    for n, change in enumerate(spec.get("change", []), 1):
        if "id" not in change:
            raise PatchError(f"{patch_file.name}: change {n} has no id")
        try:
            records.append(apply(data, change))
        except PatchError as exc:
            raise PatchError(f"{patch_file.name} [{change['id']}]: {exc}") from None

    if not records:
        raise PatchError(f"{patch_file.name}: no changes")

    print(f"  {slug}: {len(records)} change(s) applied")
    for r in records:
        print(f"    {r['op']:<13} {r['where']}")
    if check:
        return None

    data["chapters"].append(changelog(records, meta["changelog_title"]))

    ident = f"{slug}-{meta['slug']}"
    # Figures are shared with the book this edition is derived from.
    to_typst.FIGURE_PREFIX = f"/assets/figures/{slug}"
    render = to_typst.render_rules if base["layout"] == "rules" else to_typst.render
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

    editions, books = [], []
    dirs = sorted(d for d in args.editions_dir.iterdir()
                  if (d / "edition.toml").exists())
    for directory in dirs:
        meta = load_edition(directory)
        if args.edition and meta["slug"] != args.edition:
            continue
        print(f"{meta['label']} ({meta['slug']})")
        built = []
        for patch_file in sorted(directory.glob("*.toml")):
            if patch_file.name == "edition.toml":
                continue
            record = build_book(meta, patch_file, manifest, args.check)
            if record:
                built.append(record)
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
