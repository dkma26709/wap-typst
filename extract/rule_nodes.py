"""Emit one memory node per WAP special rule, for the JARVIS memory graph.

Zero-LLM by design, in the same spirit as jarvis/hooks/memory-graph.py: the
rulebook already declares every rule, its text, and (via the TROOP TYPES
chapter) which troop types issue it. So the skeleton is a parse, not a
reconstruction, and it can be regenerated whenever rulebook.typ changes.

What is generated:  name, one-line effect, full rule text, source line,
                    which troop types grant it, which other rules it names.
What is hand-written: the `## Traps` section, which the generator preserves
                    across regeneration by reading it back out of the existing
                    file. That is the whole point of the split -- the facts
                    cannot drift from the rulebook, and the judgement is never
                    overwritten by a rebuild.

    python extract/rule_nodes.py --out <dir>          # write/refresh nodes
    python extract/rule_nodes.py --out <dir> --dry    # report only
"""
import argparse
import os
import re
import sys

RULEBOOK = "src/rulebook.typ"
TRAPS_RE = re.compile(r"\n## Traps\n(.*?)(?=\n## |\Z)", re.S)


def slug(name):
    return re.sub(r"[^a-z0-9]+", "_", name.lower()).strip("_")


def load_rules(path):
    """Every `=== RULE NAME` heading inside the SPECIAL RULES chapter."""
    lines = open(path, encoding="utf-8").read().split("\n")
    start = next(i for i, l in enumerate(lines) if l.startswith("= SPECIAL RULES"))
    end = next(i for i, l in enumerate(lines) if l.startswith("= TROOP TYPES"))
    # Rule headings are `=== NAME`, except TERROR which was `== TERROR` until
    # 2026-08-27. Accept both levels so a future slip cannot silently drop a
    # rule from the graph -- but skip the two wrapped sub-chapter headings.
    SUBCHAPTER = {"DEPLOYMENT SPECIAL", "FORMATION SPECIAL", "RULES"}
    rules, cur = [], None
    for i in range(start, end):
        m = re.match(r"^==+ ([A-Z][A-Z '&\-]+)$", lines[i])
        if m and m.group(1).strip() in SUBCHAPTER:
            m = None
        if m:
            if cur:
                rules.append(cur)
            cur = {"name": m.group(1).strip(), "line": i + 1, "body": []}
        elif cur is not None and lines[i].strip() and not lines[i].startswith("=="):
            cur["body"].append(lines[i].strip())
    if cur:
        rules.append(cur)
    return [r for r in rules if r["body"]]


def load_troop_grants(path):
    """troop type -> [rules it issues], plus the rider/mount transfer list.

    Two bulleted lists live in this chapter and they mean opposite things. A
    list under "X are subject to the following special rules:" is a GRANT. The
    list under Cavalry's "if either the rider or the mount has one of the
    following ... then the whole model has it" is a TRANSFER list -- those rules
    are not granted to anybody, they merely cross the rider/mount boundary.
    Conflating the two is what put Fear on Infantry in the first draft.
    """
    lines = open(path, encoding="utf-8").read().split("\n")
    start = next(i for i, l in enumerate(lines) if l.startswith("= TROOP TYPES"))
    grants, transfers, cur, mode, pending = {}, [], None, None, None
    for i in range(start, len(lines)):
        l = lines[i].strip()
        if lines[i].startswith("= ") and not lines[i].startswith("= TROOP"):
            break
        m = re.match(r"^== ([A-Z][A-Z ]+)$", lines[i])
        if m:
            nm = m.group(1).strip()
            # Headings wrap across two source lines ("== MONSTROUS" then
            # "== CAVALRY"). Detect that by looking ahead rather than by
            # guessing from the previous section, which produced the
            # "CAVALRY MONSTROUS CAVALRY" concatenation in the first draft.
            nxt = next((lines[j] for j in range(i + 1, len(lines))
                        if lines[j].strip()), "")
            if re.match(r"^== [A-Z]", nxt):
                pending = nm
                continue
            if pending:
                nm = (pending + " " + nm).strip()
                pending = None
            cur, mode = nm, None
            grants.setdefault(cur, [])
            continue
        if re.search(r"subject to the following special rules", l, re.I):
            mode = "grant"
        elif re.search(r"then the whole model has it", l, re.I):
            mode = "transfer"
        elif l and not l.startswith("- "):
            if mode and not re.match(r"^[A-Z].*:$", l):
                pass  # prose between preamble and list; keep the mode
        if re.match(r"^- [A-Z]", l):
            item = re.sub(r"^- ", "", l).strip()
            if mode == "grant" and cur:
                grants[cur].append(item)
            elif mode == "transfer":
                transfers.append(item)
    return {k: v for k, v in grants.items() if v}, transfers


def one_line(body):
    first = body[0]
    first = re.sub(r"\s+", " ", first)
    return first if len(first) <= 240 else first[:237].rsplit(" ", 1)[0] + "..."


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", required=True)
    ap.add_argument("--dry", action="store_true")
    a = ap.parse_args()

    rules = load_rules(RULEBOOK)
    grants, transfers = load_troop_grants(RULEBOOK)
    names = {r["name"] for r in rules}

    def base_of(s):
        return re.sub(r"\s*\(.*", "", s).replace("\\", "").strip().upper()

    granted_by = {}
    for tt, rl in grants.items():
        for r in rl:
            if base_of(r) in names:
                granted_by.setdefault(base_of(r), []).append(tt.title())

    transfer_set = {base_of(t) for t in transfers}
    unmatched = transfer_set - names
    if unmatched:
        print("note: transfer entries with no rule node: %s"
              % ", ".join(sorted(unmatched)), file=sys.stderr)

    if not a.dry:
        os.makedirs(a.out, exist_ok=True)

    written = kept = 0
    for r in rules:
        text = " ".join(r["body"])
        # edges: other rules named in this rule's text
        refs = sorted({n for n in names if n != r["name"]
                       and re.search(r"\b%s\b" % re.escape(n.title()), text, re.I)})
        path = os.path.join(a.out, "rule_%s.md" % slug(r["name"]))
        traps = ""
        if os.path.exists(path):
            m = TRAPS_RE.search(open(path, encoding="utf-8").read())
            if m and m.group(1).strip():
                traps = m.group(1).strip()
                # Count only real judgement, not the placeholder -- a diagnostic
                # that flatters itself is worse than none.
                if not traps.startswith("_None recorded"):
                    kept += 1

        title = r["name"].title()
        doc = ["---",
               "name: rule_%s" % slug(r["name"]),
               "description: %s — %s" % (title, one_line(r["body"])),
               "type: reference",
               "---",
               "",
               "> **Bucket:** `references/wap-typst/rules/` · "
               "**Hub:** [[wap_rules_gotchas]] · "
               "**Source:** `src/rulebook.typ:%d` — generated, do not hand-edit "
               "above the Traps heading." % r["line"],
               "",
               "# %s" % title,
               ""]
        doc += r["body"]
        doc.append("")
        if granted_by.get(r["name"]):
            doc.append("**Issued by troop type:** " +
                       ", ".join(sorted(set(granted_by[r["name"]]))))
            doc.append("")
        doc.append("**Rider and mount:** " + (
            "transfers — if either the rider or the mount has this, the whole "
            "model has it."
            if r["name"] in transfer_set else
            "does **not** transfer — on a Cavalry, Monstrous Cavalry or Ridden "
            "Monster model this applies to the **rider only**, unless the entry "
            "names the mount."))
        doc.append("")
        if refs:
            doc.append("**Names these rules:** " +
                       " · ".join("[[rule_%s]]" % slug(n) for n in refs))
            doc.append("")
        doc.append("## Traps")
        doc.append("")
        doc.append(traps if traps else
                   "_None recorded. Add one the first time this rule surprises you._")
        doc.append("")

        if a.dry:
            written += 1
        else:
            open(path, "w", encoding="utf-8", newline="").write("\n".join(doc))
            written += 1

    print("rules parsed:       %d" % len(rules))
    print("troop types parsed: %d" % len(grants))
    print("nodes %s:      %d  (hand-written Traps preserved: %d)"
          % ("would write" if a.dry else "written", written, kept))
    granted = sum(1 for r in rules if granted_by.get(r["name"]))
    print("rules issued by a troop type: %d" % granted)


if __name__ == "__main__":
    main()
