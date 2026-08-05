"""Extract a Warhammer Armies Project army book into structured JSON.

The WAP books are digitally authored, which means structure is recoverable
without heuristics guessing at it:

  * the PDF bookmark TOC gives chapters (level 1) and entries (level 2)
  * CaslonAntique at 36pt/16pt/12pt marks chapter / entry / field label
  * TimesNewRoman 10pt is body text, with -Bold and -Italic variants
  * stat blocks are positioned text on stable x-coordinates, so columns
    are recovered by snapping each value to the nearest header anchor

Output is a single JSON document plus deduplicated PNGs for the artwork.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

# --- layout constants, measured from the 3.x books (A4, 595x842pt) ---
COL_SPLIT = 297.0          # page midpoint; blocks straddling it are full-width
NAME_COL_LIMIT = 240.0     # stat-row label column ends here
FOOTER_Y = 770.0           # page numbers live below this
HEADER_Y = 115.0           # running chapter title lives above this

DISPLAY_FONT = "CaslonAntique"
SIZE_CHAPTER = 24.0        # and above: chapter titles / cover type
SIZE_ENTRY = 15.0          # 16pt nominal
SIZE_FIELD = 11.5          # 12pt nominal

STAT_TOKENS = {
    "M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Sv",
    "Points", "Pts", "Cost",
}

# A stat value: digits, dashes, dice expressions, saves, wound-linked markers.
STAT_VALUE = re.compile(r"^(?:[-*]|=?\d*[Dd]?\d*\+?|\d+[-/]\d+|=W)$")


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def span_role(span: dict) -> str:
    """Classify a span by font family and size."""
    font, size = span["font"], span["size"]
    if DISPLAY_FONT in font:
        if size >= SIZE_CHAPTER:
            return "chapter"
        if size >= SIZE_ENTRY:
            return "entry"
        if size >= SIZE_FIELD:
            return "field"
        return "display"
    if "Bold" in font:
        return "bold"
    if "Italic" in font:
        return "italic"
    if "Symbol" in font:
        return "symbol"
    return "body"


BASELINE_TOL = 2.0


def merged_lines(block: dict) -> list[dict]:
    """PyMuPDF splits a text line wherever there is a wide horizontal gap,
    which is precisely how a stat table is laid out — every cell becomes its
    own "line". Re-join lines that share a baseline so a stat row arrives as
    one record with all its cells."""
    raw = sorted(block["lines"], key=lambda l: (l["bbox"][3], l["bbox"][0]))
    groups: list[list[dict]] = []
    for line in raw:
        if groups and abs(line["bbox"][3] - groups[-1][-1]["bbox"][3]) <= BASELINE_TOL:
            groups[-1].append(line)
        else:
            groups.append([line])

    out = []
    for group in groups:
        spans = sorted(
            (s for line in group for s in line["spans"]),
            key=lambda s: s["bbox"][0],
        )
        # Re-joining spans across a horizontal gap has to restore the space the
        # gap stood for, or prose laid out in positioned columns welds together
        # ("direct damage" + "area spell" -> "damagearea"). Stat cells are
        # unaffected: an all-whitespace span strips to nothing and is skipped by
        # every structural parser below.
        joined: list[dict] = []
        for span in spans:
            if joined:
                prev = joined[-1]
                gap = span["bbox"][0] - prev["bbox"][2]
                if (gap > 0.8 and not prev["text"].endswith((" ", "\t"))
                        and not span["text"].startswith((" ", "\t"))):
                    joined.append({
                        **span, "text": " ", "font": "TimesNewRomanPSMT",
                    })
            joined.append(span)
        out.append(line_of(joined))
    return out


def line_of(spans: list[dict]) -> dict:
    """Collapse a PDF line into a role-annotated record."""
    kept = [s for s in spans if s["text"].strip()]
    text = "".join(s["text"] for s in spans)
    roles = [span_role(s) for s in kept]
    return {
        # `spans` drops whitespace so the structural parsers can index cells;
        # `flow` keeps it so inline runs retain their inter-word spacing.
        "spans": kept,
        "flow": spans,
        "text": re.sub(r"\s+", " ", text).strip(),
        "roles": roles,
        "role": max(set(roles), key=roles.count) if roles else "blank",
        "x0": min((s["bbox"][0] for s in kept), default=0.0),
        "y0": min((s["bbox"][1] for s in kept), default=0.0),
    }


def line_runs(line: dict) -> list[tuple[str, str]]:
    """Emphasis runs within a line, as (emphasis, text) pairs."""
    runs: list[tuple[str, str]] = []
    for span in line["flow"]:
        role = span_role(span)
        if role in ("bold", "italic"):
            emph = role
        elif role in ("field", "display"):
            # Display-face text without a colon is a rule or item name set as a
            # run-in heading, not a field label.
            emph = "label"
        else:
            emph = ""
        if runs and runs[-1][0] == emph:
            runs[-1] = (emph, runs[-1][1] + span["text"])
        else:
            runs.append((emph, span["text"]))
    return runs


def coalesce(runs: list[tuple[str, str]]) -> list[dict]:
    """Normalise whitespace and drop empty runs, merging neighbours that end up
    sharing an emphasis after the empties are removed."""
    out: list[dict] = []
    for emph, text in runs:
        text = re.sub(r"\s+", " ", text)
        if not text.strip():
            # Carry a whitespace-only run onto its predecessor rather than
            # dropping it, or two same-emphasis neighbours either side of it
            # weld together ("direct damage" + "area" -> "damagearea").
            if out and not out[-1]["text"].endswith(" "):
                out[-1]["text"] += " "
            continue
        if out and out[-1]["emph"] == emph:
            out[-1]["text"] += text
        else:
            out.append({"emph": emph, "text": text})
    # Whitespace belongs outside emphasis: "**Ancient: **" -> "**Ancient:** ".
    for k, run in enumerate(out):
        if not run["emph"]:
            continue
        body = run["text"].rstrip()
        trail = run["text"][len(body):]
        if trail and k + 1 < len(out):
            run["text"] = body
            out[k + 1]["text"] = trail + out[k + 1]["text"]
        body = run["text"].lstrip()
        lead = run["text"][:len(run["text"]) - len(body)]
        if lead and k:
            run["text"] = body
            out[k - 1]["text"] += lead

    out = [r for r in out if r["text"].strip() or r["text"] == " "]
    if out:
        out[0]["text"] = out[0]["text"].lstrip()
        out[-1]["text"] = out[-1]["text"].rstrip()
    return [r for r in out if r["text"]]


def is_furniture(line: dict) -> bool:
    # Blank lines are kept: the PDF uses them as paragraph separators, which is
    # more reliable than guessing paragraph breaks from vertical gaps.
    if line["role"] == "blank":
        return False
    if line["y0"] > FOOTER_Y and re.fullmatch(r"\d+", line["text"]):
        return True
    # The chapter title repeats as a running head on every page; the TOC is
    # the authority for chapter names, so drop it wherever it appears.
    if line["role"] == "chapter":
        return True
    return False


def block_column(bbox: tuple[float, ...]) -> str:
    x0, _, x1, _ = bbox
    if x0 < COL_SPLIT - 10 and x1 > COL_SPLIT + 10:
        return "full"
    return "left" if (x0 + x1) / 2 < COL_SPLIT else "right"


def ordered_blocks(blocks: list[dict]) -> list[dict]:
    """Reading order: full-width blocks split the page into bands, and inside
    each band the left column is read before the right."""
    ordered: list[dict] = []
    band: list[tuple[str, dict]] = []

    def flush() -> None:
        ordered.extend(b for k, b in band if k == "left")
        ordered.extend(b for k, b in band if k == "right")
        band.clear()

    for blk in sorted(blocks, key=lambda b: b["bbox"][1]):
        kind = block_column(blk["bbox"])
        if kind == "full":
            flush()
            ordered.append(blk)
        else:
            band.append((kind, blk))
    flush()
    return ordered


def stat_header(line: dict) -> list[tuple[float, str]] | None:
    """If this line is a stat-block header, return its (x_centre, token) anchors."""
    anchors = []
    for span in line["spans"]:
        token = span["text"].strip()
        if token in STAT_TOKENS:
            x0, _, x1, _ = span["bbox"]
            anchors.append(((x0 + x1) / 2, token))
    return anchors if len(anchors) >= 5 else None


def stat_row(line: dict, anchors: list[tuple[float, str]]) -> dict | None:
    """Snap a line's values onto the header anchors. Returns None if the line
    does not look like a stat row."""
    label_parts, values = [], []
    for span in line["spans"]:
        text = span["text"].strip()
        if not text:
            continue
        x0, _, x1, _ = span["bbox"]
        centre = (x0 + x1) / 2
        if centre < NAME_COL_LIMIT:
            label_parts.append(text)
        elif STAT_VALUE.match(text):
            nearest = min(anchors, key=lambda a: abs(a[0] - centre))
            if abs(nearest[0] - centre) <= 18:
                values.append((nearest[1], text))
        else:
            return None  # prose in the value area: not a stat row
    if len(values) < 4:
        return None
    return {"name": " ".join(label_parts).strip(), "values": dict(values)}


def field_label(line: dict) -> tuple[str, str] | None:
    """Split a `LABEL: value` line where the label is set in the display font."""
    labels, rest = [], []
    for span in line["spans"]:
        text = span["text"]
        if span_role(span) == "field":
            labels.append(text)
        else:
            rest.append(text)
    label = "".join(labels).strip()
    if not label.endswith(":"):
        return None
    return label.rstrip(":").strip(), re.sub(r"\s+", " ", "".join(rest)).strip()


BULLET = "•"
# A field value that wraps onto the next line ends mid-clause.
UNFINISHED = re.compile(r"(?:[,;/]|\b(?:or|and|the|a|of|to|with)) *$", re.IGNORECASE)
# Sub-item hyphen. The uppercase lookahead keeps negative modifiers intact:
# "suffer -1 Initiative" must not split, "following: -Giant blowpipes" must.
SUB_ITEM = re.compile(r"(?<=\S)\s+-\s*(?=[A-Z])")
# Magic items and upgrades set their cost flush right on the name's baseline.
COST = re.compile(r"^\s*\d+\s*points?\s*$", re.IGNORECASE)
# The cost is often set in the same display face as the name, so the two arrive
# as one run and have to be separated again.
COST_TAIL = re.compile(r"^(.*?)[\s.]+(\d+\s*points?)$", re.IGNORECASE | re.DOTALL)


def name_cost(line: dict) -> dict | None:
    """A run-in heading: a display-face name, optionally with its points cost
    set to the right on the same baseline."""
    parts = coalesce(line_runs(line))
    if not parts or parts[0]["emph"] != "label":
        return None
    if len(parts) == 1:
        tail = COST_TAIL.match(parts[0]["text"].strip())
        if tail:
            return {
                "type": "namecost",
                "name": tail.group(1).strip(),
                "cost": tail.group(2).strip(),
            }
        return {"type": "namecost", "name": parts[0]["text"].strip(), "cost": ""}
    if len(parts) == 2 and COST.match(parts[1]["text"]):
        return {
            "type": "namecost",
            "name": parts[0]["text"].strip(),
            "cost": parts[1]["text"].strip(),
        }
    return None


def mini_header(line: dict) -> list[tuple[float, str]] | None:
    """Weapon and war-machine profiles are small tables headed by two or more
    bold `Label:` cells (Range: / Strength: / Special Rules:)."""
    anchors = []
    for span in line["spans"]:
        text = span["text"].strip()
        if text.endswith(":") and len(text) <= 20 and span_role(span) == "bold":
            anchors.append((span["bbox"][0], text.rstrip(":")))
    return anchors if len(anchors) >= 2 else None


def mini_row(line: dict, anchors: list[tuple[float, str]]) -> dict:
    """Snap a value line onto mini-table anchors by left edge — these columns
    hold prose, so they are left-aligned rather than centred."""
    cells: dict[str, list[str]] = {name: [] for _, name in anchors}
    for span in line["spans"]:
        text = span["text"].strip()
        if not text:
            continue
        nearest = min(anchors, key=lambda a: abs(a[0] - span["bbox"][0]))
        cells[nearest[1]].append(text)
    return {name: " ".join(parts).strip() for name, parts in cells.items()}


def split_runs(parts: list[dict], pattern: str) -> list[list[dict]]:
    """Split a run list on a separator, keeping each piece's emphasis.

    The separator is matched against the flattened text and mapped back onto
    the runs, because a separator routinely straddles a run boundary — WAP sets
    the sub-item hyphen in bold while its text stays roman.
    """
    text = "".join(p["text"] for p in parts)
    extent: list[tuple[int, int, str]] = []
    pos = 0
    for part in parts:
        extent.append((pos, pos + len(part["text"]), part["emph"]))
        pos += len(part["text"])

    segments: list[tuple[int, int]] = []
    last = 0
    for match in re.finditer(pattern, text):
        segments.append((last, match.start()))
        last = match.end()
    segments.append((last, len(text)))

    groups = []
    for start, end in segments:
        runs = [
            (emph, text[max(start, s):min(end, e)])
            for s, e, emph in extent
            if max(start, s) < min(end, e)
        ]
        groups.append(coalesce(runs))
    return groups


def bullet_items(parts: list[dict]) -> tuple[list[dict], list[dict]] | None:
    """Split a run-on paragraph into bullet items, promoting ` - ` runs to
    sub-items. Spaced hyphens are safe to split on; WAP writes compound words
    and dice ranges unspaced (Cold-blooded, 9/18", 10-30)."""
    if not any(BULLET in p["text"] for p in parts):
        return None
    groups = split_runs(parts, re.escape(BULLET))
    items = []
    for group in groups[1:]:
        if not group:
            continue
        pieces = split_runs(group, SUB_ITEM)
        items.append({
            "runs": pieces[0],
            "text": plain(pieces[0]),
            "sub": [{"runs": p, "text": plain(p)} for p in pieces[1:] if p],
        })
    if not items:
        return None
    return groups[0], items


def plain(runs: list[dict]) -> str:
    return "".join(r["text"] for r in runs).strip()


def parse_lines(lines: list[dict]) -> list[dict]:
    """Turn a run of classified lines into content blocks."""
    out: list[dict] = []
    i = 0
    while i < len(lines):
        line = lines[i]

        anchors = stat_header(line)
        if anchors:
            rows = []
            j = i + 1
            while j < len(lines):
                row = stat_row(lines[j], anchors)
                if row is None:
                    break
                rows.append(row)
                j += 1
            if rows:
                label = " ".join(
                    s["text"].strip() for s in line["spans"]
                    if (s["bbox"][0] + s["bbox"][2]) / 2 < NAME_COL_LIMIT
                ).strip()
                out.append({
                    "type": "statblock",
                    "label": label or "Profile",
                    "columns": [tok for _, tok in anchors],
                    "rows": rows,
                })
                i = j
                continue

        mini = mini_header(line)
        if mini and i + 1 < len(lines):
            row = mini_row(lines[i + 1], mini)
            last = mini[-1][1]
            j = i + 2
            # The final column carries prose and routinely wraps. Absorb the
            # continuation rather than leaving it stranded under the table.
            while (j < len(lines)
                   and lines[j]["role"] in ("body", "bold", "italic")
                   and not lines[j]["text"].startswith(BULLET)
                   and lines[j]["x0"] >= mini[-1][0] - 8
                   and not stat_header(lines[j]) and not field_label(lines[j])
                   and not mini_header(lines[j]) and not name_cost(lines[j])):
                row[last] = f"{row[last]} {lines[j]['text']}".strip()
                j += 1
            out.append({
                "type": "minitable",
                "columns": [name for _, name in mini],
                "row": row,
            })
            i = j
            continue

        field = field_label(line)
        if field:
            label, value = field
            # Absorb wrapped continuation lines onto the field value.
            j = i + 1
            while (value and UNFINISHED.search(value) and j < len(lines)
                   and lines[j]["role"] in ("body", "bold", "italic")
                   and not lines[j]["text"].startswith(BULLET)
                   and not stat_header(lines[j]) and not field_label(lines[j])
                   and not mini_header(lines[j])):
                value = f"{value} {lines[j]['text']}".strip()
                j += 1
            out.append({"type": "field", "label": label, "value": value})
            i = j
            continue

        if line["role"] == "entry":
            out.append({"type": "entry", "name": line["text"]})
            i += 1
            continue

        if line["role"] == "blank":
            i += 1
            continue

        head = name_cost(line)
        if head:
            # A cost that fell onto its own baseline belongs to the name above.
            if (not head["cost"] and COST.match(head["name"])
                    and out and out[-1]["type"] == "namecost"
                    and not out[-1]["cost"]):
                out[-1]["cost"] = head["name"].strip()
                i += 1
                continue
            # A name too long for its column wraps onto the next line, which
            # carries the cost. Two cost-less names in a row are separate
            # entries, so requiring a cost here keeps them apart.
            if not head["cost"] and i + 1 < len(lines):
                nxt = name_cost(lines[i + 1])
                if nxt and nxt["cost"]:
                    head["name"] = f"{head['name']} {nxt['name']}".strip()
                    head["cost"] = nxt["cost"]
                    out.append(head)
                    i += 2
                    continue
            out.append(head)
            i += 1
            continue

        # Accumulate lines up to the next blank line or structural element.
        # Emphasis is tracked per run so bold run-in rule names survive inside
        # the surrounding prose.
        runs = line_runs(line)
        j = i + 1
        while j < len(lines):
            nxt = lines[j]
            if nxt["role"] not in ("body", "bold", "italic", "symbol"):
                break
            if stat_header(nxt) or field_label(nxt) or mini_header(nxt):
                break
            runs.append(("", " "))
            runs.extend(line_runs(nxt))
            j += 1
        i = j

        parts = coalesce(runs)
        if not parts:
            continue

        bullets = bullet_items(parts)
        if bullets:
            lead, items = bullets
            if lead:
                out.append({"type": "para", "runs": lead, "text": plain(lead)})
            out.append({"type": "list", "items": items})
        else:
            style = "italic" if all(p["emph"] == "italic" for p in parts) else "body"
            out.append({
                "type": "para", "style": style,
                "runs": parts, "text": plain(parts),
            })
    return out


def extract_images(doc: pymupdf.Document, outdir: Path) -> dict[int, dict]:
    """Save each distinct image once. Full-page images are flagged as page
    furniture (the parchment backgrounds) rather than content."""
    outdir.mkdir(parents=True, exist_ok=True)
    seen: dict[int, dict] = {}
    for pno, page in enumerate(doc, start=1):
        pw, ph = page.rect.width, page.rect.height
        for info in page.get_image_info(xrefs=True):
            xref = info.get("xref", 0)
            if not xref or xref in seen:
                continue
            x0, y0, x1, y1 = info["bbox"]
            covers_page = (x1 - x0) > 0.92 * pw and (y1 - y0) > 0.92 * ph
            name = f"img-{xref:04d}.png"
            try:
                pix = pymupdf.Pixmap(doc, xref)
                if pix.n - pix.alpha >= 4:       # CMYK -> RGB
                    pix = pymupdf.Pixmap(pymupdf.csRGB, pix)
                pix.save(outdir / name)
            except Exception as exc:             # noqa: BLE001 - report and skip
                print(f"  ! image xref {xref} failed: {exc}")
                continue
            seen[xref] = {
                "file": name,
                "first_page": pno,
                "background": covers_page,
                "width": pix.width,
                "height": pix.height,
            }
    return seen


def build(pdf: Path, outdir: Path) -> dict:
    doc = pymupdf.open(pdf)
    toc = doc.get_toc()

    chapter_start = {pg: title for lvl, title, pg in toc if lvl == 1}
    entry_names = defaultdict(list)
    for lvl, title, pg in toc:
        if lvl == 2:
            entry_names[pg].append(title)

    images = extract_images(doc, outdir / "images")
    content_pages = {}

    for pno, page in enumerate(doc, start=1):
        blocks = [b for b in page.get_text("dict")["blocks"] if b["type"] == 0]
        lines: list[dict] = []
        for blk in ordered_blocks(blocks):
            lines.extend(l for l in merged_lines(blk) if not is_furniture(l))
        content_pages[pno] = parse_lines(lines)

    # Fold pages into chapters, and chapters into named entries.
    chapters: list[dict] = []
    current: dict | None = None
    front_matter: list[int] = []
    for pno in sorted(content_pages):
        if pno in chapter_start:
            current = {"title": chapter_start[pno], "page": pno, "entries": []}
            chapters.append(current)
        if current is None:
            # Cover and the book's own contents page. Deliberately dropped: the
            # rendered book generates its own outline from the headings.
            front_matter.append(pno)
            continue
        for block in content_pages[pno]:
            if block["type"] == "entry":
                current["entries"].append({
                    "name": block["name"], "page": pno, "blocks": [],
                })
            elif current["entries"]:
                current["entries"][-1]["blocks"].append(block)
            else:
                current.setdefault("intro", []).append(block)

    return {
        "source": {
            "file": pdf.name,
            "pages": doc.page_count,
            "sha256": sha256(pdf),
            "toc_entries": len(toc),
        },
        "images": {str(k): v for k, v in images.items()},
        "front_matter_pages": front_matter,
        "chapters": chapters,
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("pdf", type=Path)
    ap.add_argument("-o", "--outdir", type=Path, default=Path("build"))
    args = ap.parse_args()

    args.outdir.mkdir(parents=True, exist_ok=True)
    data = build(args.pdf, args.outdir)

    target = args.outdir / (args.pdf.stem.replace(" ", "-").lower() + ".json")
    target.write_text(json.dumps(data, indent=2, ensure_ascii=False), encoding="utf-8")

    stats = sum(
        1 for ch in data["chapters"] for e in ch["entries"]
        for b in e["blocks"] if b["type"] == "statblock"
    )
    fields = sum(
        1 for ch in data["chapters"] for e in ch["entries"]
        for b in e["blocks"] if b["type"] == "field"
    )
    entries = sum(len(ch["entries"]) for ch in data["chapters"])
    print(f"wrote {target}")
    print(f"  chapters={len(data['chapters'])} entries={entries} "
          f"statblocks={stats} fields={fields} images={len(data['images'])}")


if __name__ == "__main__":
    main()
