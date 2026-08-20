"""Compile an authored army book into the extraction schema.

The extracted books come out of PDFs; an authored book is written by hand in
authored/<slug>.toml and compiled by this script into build/<slug>.json in the
same shape, after which extract/to_typst.py and emit.py treat it like any other
book. The manifest entry is merged into build/books.json carrying
`authored: true` (so batch.py never prunes it) and its own `align`, since the
rulebook's alignment lists cannot know an army that Eliasson never wrote.
"""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
import tomllib
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent

STAT_COLUMNS = ["M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Points"]

# Field labels in the order the extracted books carry them.
FIELD_ORDER = ("unit_size", "troop_type", "base_size", "equipment",
               "special_rules")
FIELD_LABELS = {
    "unit_size": "UNIT SIZE",
    "troop_type": "TROOP TYPE",
    "base_size": "BASE SIZE",
    "equipment": "EQUIPMENT",
    "special_rules": "SPECIAL RULES",
}

BOOK_KEYS = {"slug", "army", "version", "align", "shelf"}
CHAPTER_KEYS = {"title", "intro", "rules", "entries"}
RULE_KEYS = {"name", "cost", "text", "items"}
ENTRY_KEYS = {"name", "profile", "unit_size", "troop_type", "base_size",
              "equipment", "special_rules", "options", "notes", "rules",
              "text"}
OPTION_KEYS = {"text", "sub"}


def fail(message: str) -> None:
    raise SystemExit(f"author: {message}")


def check_keys(mapping: dict, allowed: set[str], where: str) -> None:
    unknown = set(mapping) - allowed
    if unknown:
        fail(f"unknown key(s) {sorted(unknown)} in {where}")


def para(text: str, style: str = "body") -> dict:
    return {"type": "para", "style": style, "text": text,
            "runs": [{"emph": "", "text": text}]}


def item(text: str, sub: list[str] | None = None) -> dict:
    return {"runs": [{"emph": "", "text": text}], "text": text,
            "sub": [{"runs": [{"emph": "", "text": s}], "text": s}
                    for s in (sub or [])]}


def listing(items: list[dict]) -> dict:
    return {"type": "list", "items": items}


def field(label: str, value: str) -> dict:
    return {"type": "field", "label": label, "value": value}


def namecost_blocks(rule: dict, where: str) -> list[dict]:
    check_keys(rule, RULE_KEYS, where)
    blocks: list[dict] = [{"type": "namecost", "name": rule["name"],
                           "cost": rule.get("cost", "")}]
    blocks.extend(para(t) for t in rule.get("text", []))
    if rule.get("items"):
        blocks.append(listing([item(i) for i in rule["items"]]))
    return blocks


def statblock(profile: list[list[str]], where: str) -> dict:
    rows = []
    for line in profile:
        if len(line) != len(STAT_COLUMNS) + 1:
            fail(f"{where}: a profile row needs a name plus "
                 f"{len(STAT_COLUMNS)} values, got {line}")
        rows.append({"name": line[0],
                     "values": dict(zip(STAT_COLUMNS, line[1:]))})
    return {"type": "statblock", "label": "Profile",
            "columns": STAT_COLUMNS, "rows": rows}


def entry_blocks(entry: dict, where: str) -> list[dict]:
    check_keys(entry, ENTRY_KEYS, where)
    if "profile" not in entry:
        fail(f"{where}: every entry needs a profile")
    # Flavour text reads ahead of the profile, in italics, as the classic
    # army books set it — the rules follow the creature, not the reverse.
    blocks: list[dict] = [para(t, "italic") for t in entry.get("text", [])]
    blocks.append(statblock(entry["profile"], where))
    for key in FIELD_ORDER:
        if key in entry:
            blocks.append(field(FIELD_LABELS[key], entry[key]))
    for label, rows in (("OPTIONS", entry.get("options")),
                        ("NOTES", entry.get("notes"))):
        if rows:
            blocks.append(field(label, ""))
            items = []
            for row in rows:
                check_keys(row, OPTION_KEYS, f"{where} {label.lower()}")
                items.append(item(row["text"], row.get("sub")))
            blocks.append(listing(items))
    for rule in entry.get("rules", []):
        blocks.extend(namecost_blocks(rule, f"{where} rule"))
    return blocks


def compile_book(source: Path) -> dict:
    spec = tomllib.loads(source.read_text(encoding="utf-8"))
    check_keys(spec, {"book", "chapters"}, source.name)
    check_keys(spec["book"], BOOK_KEYS, f"{source.name} [book]")

    chapters = []
    for chapter in spec.get("chapters", []):
        title = chapter.get("title") or fail(f"{source.name}: untitled chapter")
        check_keys(chapter, CHAPTER_KEYS, f"chapter {title}")
        intro: list[dict] = [para(t) for t in chapter.get("intro", [])]
        for rule in chapter.get("rules", []):
            intro.extend(namecost_blocks(rule, f"chapter {title} rule"))
        entries = [{"name": e["name"], "page": 0, "band": "entry", "level": 2,
                    "blocks": entry_blocks(e, f"{title} / {e.get('name', '?')}")}
                   for e in chapter.get("entries", [])]
        chapters.append({"title": title, "page": 0, "entries": entries,
                         "intro": intro})

    if not chapters:
        fail(f"{source.name}: no chapters")
    if not any(c["entries"] for c in chapters):
        fail(f"{source.name}: no unit entries — nothing to typeset")

    return {
        "source": {"file": source.name, "pages": 0, "sha256": "",
                   "toc_entries": 0},
        "slug": spec["book"]["slug"],
        "image_dir": "",
        "cover": None,
        "background": None,
        "images": {},
        "front_matter_pages": [],
        "chapters": chapters,
        # Carried through to the manifest by this script, below.
        "book": spec["book"],
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("sources", nargs="*", type=Path,
                    default=sorted((ROOT / "authored").glob("*.toml")),
                    help="authored .toml books (default: authored/*.toml)")
    args = ap.parse_args()
    if not args.sources:
        fail("nothing to compile — authored/ holds no .toml books")

    manifest_path = ROOT / "build" / "books.json"
    books = json.loads(manifest_path.read_text(encoding="utf-8"))["books"]

    for source in args.sources:
        data = compile_book(source)
        meta = data.pop("book")
        slug = meta["slug"]
        entries = sum(len(c["entries"]) for c in data["chapters"])

        target = ROOT / "build" / f"{slug}.json"
        target.write_text(json.dumps(data, ensure_ascii=False, indent=1) + "\n",
                          encoding="utf-8")

        proc = subprocess.run(
            [sys.executable, str(ROOT / "extract" / "to_typst.py"), str(target),
             "-o", str(ROOT / "src" / "content" / f"{slug}.typ"),
             "--layout", "army"],
            capture_output=True, text=True, encoding="utf-8", errors="replace")
        if proc.returncode:
            fail(f"to_typst failed for {slug}\n{proc.stdout}{proc.stderr}")

        record = {
            "slug": slug,
            "army": meta["army"],
            "version": meta["version"],
            "source": source.name,
            "source_pages": 0,
            "entries": entries,
            "chapters": len(data["chapters"]),
            "cover": None,
            "layout": "army",
            "figures": 0,
            "authored": True,
            "align": meta["align"],
        }
        # An authored book may file itself on an edition shelf of the site's
        # edition filter (e.g. "proposal") instead of the base WAP shelf.
        if meta.get("shelf"):
            record["shelf"] = meta["shelf"]
        books = [b for b in books if b["slug"] != slug] + [record]
        print(f"{meta['army']:<24} {meta['version']:<6} {entries:>7} entries, "
              f"{len(data['chapters'])} chapters -> {target.name}")

    books.sort(key=lambda b: b["army"].lower())
    manifest_path.write_text(
        json.dumps({"books": books}, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8")
    print(f"{len(books)} books in manifest -> {manifest_path}")


if __name__ == "__main__":
    main()
