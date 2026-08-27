"""Emit memory nodes for the JARVIS memory graph: one per WAP special rule,
one per named sub-rule, and one per troop type.

Zero-LLM by design, in the same spirit as jarvis/hooks/memory-graph.py: the
rulebook already declares every rule, its text, its sub-rules and (via the
TROOP TYPES chapter) which troop types issue what. So the skeleton is a parse,
not a reconstruction, and it can be regenerated whenever rulebook.typ changes.

What is generated:  name, one-line effect, full text, source line, sub-rules,
                    issuing troop types, rider/mount transfer status, and edges
                    to every other rule the text names.
What is hand-written: the `## Traps` section, which the generator reads back out
                    of the existing file and preserves across regeneration.
                    That split is the whole point -- the facts cannot drift from
                    the rulebook, and the judgement is never overwritten.

    python extract/rule_nodes.py --out <dir>          # write/refresh nodes
    python extract/rule_nodes.py --out <dir> --dry    # report only
"""
import argparse
import os
import re
import sys

RULEBOOK = "src/rulebook.typ"
TRAPS_RE = re.compile(r"\n## Traps\n(.*?)(?=\n## |\Z)", re.S)
NAMECOST = re.compile(r'^#namecost\("([^"]+)",\s*""\)\s*$')
PLACEHOLDER = "_None recorded. Add one the first time this rule surprises you._"

# `== NAME` headings inside SPECIAL RULES that are sub-chapter titles, not rules.
SUBCHAPTER = {"DEPLOYMENT SPECIAL", "FORMATION SPECIAL", "RULES"}


def slug(name):
    return re.sub(r"[^a-z0-9]+", "_", name.lower()).strip("_")


def _flush(cur, rules):
    if cur and (cur["body"] or cur["subs"]):
        rules.append(cur)


def load_rules(path):
    """Special rules, each with its prose and any named sub-rules.

    Rule headings are `=== NAME`. TERROR was `== TERROR` until 2026-08-27, so
    both levels are accepted -- a future slip must not silently drop a rule
    out of the graph the way that one did.
    """
    lines = open(path, encoding="utf-8").read().split("\n")
    start = next(i for i, l in enumerate(lines) if l.startswith("= SPECIAL RULES"))
    end = next(i for i, l in enumerate(lines) if l.startswith("= TROOP TYPES"))
    rules, cur, sub = [], None, None
    for i in range(start, end):
        line = lines[i]
        m = re.match(r"^==+ ([A-Z][A-Z '&\-]+)$", line)
        if m and m.group(1).strip() in SUBCHAPTER:
            m = None
        if m:
            _flush(cur, rules)
            cur, sub = {"name": m.group(1).strip(), "line": i + 1,
                        "body": [], "subs": []}, None
            continue
        if cur is None:
            continue
        ms = NAMECOST.match(line.strip())
        if ms:
            sub = {"name": ms.group(1).strip(), "line": i + 1, "body": []}
            cur["subs"].append(sub)
            continue
        if line.strip() and not line.startswith("=="):
            (sub["body"] if sub else cur["body"]).append(line.strip())
    _flush(cur, rules)
    return rules


def load_troop_types(path):
    """Troop types: prose, the rules each GRANTS, and the rider/mount transfer
    list.

    Two bulleted lists live in this chapter and they mean opposite things. A
    list under "X are subject to the following special rules:" is a GRANT. The
    list under Cavalry's "if either the rider or the mount has one of the
    following ... then the whole model has it" is a TRANSFER list -- those
    rules are not granted to anybody, they merely cross the rider/mount
    boundary. Conflating the two put Fear on Infantry in the first draft.
    """
    lines = open(path, encoding="utf-8").read().split("\n")
    start = next(i for i, l in enumerate(lines) if l.startswith("= TROOP TYPES"))
    types, transfers, cur, mode, pending = [], [], None, None, None
    for i in range(start, len(lines)):
        line, l = lines[i], lines[i].strip()
        if line.startswith("= ") and not line.startswith("= TROOP"):
            break
        m = re.match(r"^== ([A-Z][A-Z ]+)$", line)
        if m:
            nm = m.group(1).strip()
            # Headings wrap across two source lines ("== MONSTROUS" then
            # "== CAVALRY"). Look ahead rather than guessing from the previous
            # section, which produced "Cavalry Monstrous Cavalry" once.
            nxt = next((lines[j] for j in range(i + 1, len(lines))
                        if lines[j].strip()), "")
            if re.match(r"^== [A-Z]", nxt):
                pending = nm
                continue
            if pending:
                nm, pending = (pending + " " + nm).strip(), None
            cur = {"name": nm, "line": i + 1, "body": [], "grants": []}
            types.append(cur)
            mode = None
            continue
        if re.search(r"subject to the following special rules", l, re.I):
            mode = "grant"
        elif re.search(r"then the whole model has it", l, re.I):
            mode = "transfer"
        if re.match(r"^- [A-Z]", l):
            item = re.sub(r"^- ", "", l).strip()
            if mode == "grant" and cur:
                cur["grants"].append(item)
            elif mode == "transfer":
                transfers.append(item)
            continue
        if cur is not None and l and not NAMECOST.match(l):
            cur["body"].append(l)
    return types, transfers


def one_line(body, limit=240):
    if not body:
        return "(no prose)"
    first = re.sub(r"\s+", " ", body[0])
    return first if len(first) <= limit else first[:limit - 3].rsplit(" ", 1)[0] + "..."


def read_traps(path):
    if not os.path.exists(path):
        return ""
    m = TRAPS_RE.search(open(path, encoding="utf-8").read())
    if not m:
        return ""
    t = m.group(1).strip()
    return "" if t.startswith("_None recorded") else t


def write_node(out, fname, front, header, body_lines, fields, dry):
    path = os.path.join(out, fname)
    traps = read_traps(path)
    doc = ["---"] + front + ["---", "", header, ""]
    doc += body_lines + [""]
    doc += fields
    doc += ["## Traps", "", traps if traps else PLACEHOLDER, ""]
    if not dry:
        open(path, "w", encoding="utf-8", newline="").write("\n".join(doc))
    return bool(traps)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", required=True)
    ap.add_argument("--dry", action="store_true")
    a = ap.parse_args()

    rules = load_rules(RULEBOOK)
    types, transfers = load_troop_types(RULEBOOK)
    names = {r["name"] for r in rules}

    def base_of(s):
        return re.sub(r"\s*\(.*", "", s).replace("\\", "").strip().upper()

    granted_by = {}
    for t in types:
        for g in t["grants"]:
            if base_of(g) in names:
                granted_by.setdefault(base_of(g), []).append(t["name"].title())

    # Sub-rules are linkable targets too: the Cavalry transfer list names
    # "Berserk Rage (see Frenzy)", which lives under Frenzy rather than having
    # a heading of its own.
    sub_index = {s["name"].upper(): "rule_%s__%s" % (slug(r["name"]), slug(s["name"]))
                 for r in rules for s in r["subs"]}

    def link_for(raw):
        b = base_of(raw)
        if b in names:
            return "[[rule_%s]]" % slug(b)
        if b in sub_index:
            return "[[%s]]" % sub_index[b]
        return raw

    transfer_set = {base_of(t) for t in transfers}
    unmatched = transfer_set - names - set(sub_index)
    if unmatched:
        print("note: transfer entries with no rule node: %s"
              % ", ".join(sorted(unmatched)), file=sys.stderr)

    if not a.dry:
        os.makedirs(a.out, exist_ok=True)

    kept = 0
    counts = {"rule": 0, "sub": 0, "troop": 0}

    def edges(text, exclude):
        refs = sorted({n for n in names if n != exclude
                       and re.search(r"\b%s\b" % re.escape(n.title()), text, re.I)})
        return ("**Names these rules:** "
                + " · ".join("[[rule_%s]]" % slug(n) for n in refs)) if refs else None

    for r in rules:
        text = " ".join(r["body"] + [b for s in r["subs"] for b in s["body"]])
        title = r["name"].title()
        body = list(r["body"])
        for s in r["subs"]:
            body += ["", "### %s" % s["name"], ""] + s["body"]

        fields = []
        if granted_by.get(r["name"]):
            fields += ["**Issued by troop type:** "
                       + ", ".join("[[troop_%s]]" % slug(t)
                                   for t in sorted(set(granted_by[r["name"]]))), ""]
        fields += ["**Rider and mount:** " + (
            "transfers — if either the rider or the mount has this, the whole "
            "model has it."
            if r["name"] in transfer_set else
            "does **not** transfer — on a Cavalry, Monstrous Cavalry or Ridden "
            "Monster model this applies to the **rider only**, unless the entry "
            "names the mount."), ""]
        if r["subs"]:
            fields += ["**Sub-rules:** " + " · ".join(
                "[[rule_%s__%s]]" % (slug(r["name"]), slug(s["name"]))
                for s in r["subs"]), ""]
        e = edges(text, r["name"])
        if e:
            fields += [e, ""]

        kept += write_node(
            a.out, "rule_%s.md" % slug(r["name"]),
            ["name: rule_%s" % slug(r["name"]),
             "description: %s — %s" % (title, one_line(r["body"] or
                                                       (r["subs"][0]["body"] if r["subs"] else []))),
             "type: reference"],
            "> **Bucket:** `references/wap-typst/rules/` · **Hub:** "
            "[[wap_rules_gotchas]] · **Source:** `src/rulebook.typ:%d` — "
            "generated, do not hand-edit above the Traps heading.\n\n# %s"
            % (r["line"], title),
            body, fields, a.dry)
        counts["rule"] += 1

        for s in r["subs"]:
            sname = "rule_%s__%s" % (slug(r["name"]), slug(s["name"]))
            se = edges(" ".join(s["body"]), r["name"])
            sf = ["**Part of:** [[rule_%s]] (%s)" % (slug(r["name"]), title), ""]
            if se:
                sf += [se, ""]
            kept += write_node(
                a.out, "%s.md" % sname,
                ["name: %s" % sname,
                 "description: %s (part of %s) — %s"
                 % (s["name"], title, one_line(s["body"])),
                 "type: reference"],
                "> **Bucket:** `references/wap-typst/rules/` · **Hub:** "
                "[[wap_rules_gotchas]] · **Source:** `src/rulebook.typ:%d` — "
                "generated, do not hand-edit above the Traps heading.\n\n# %s"
                % (s["line"], s["name"]),
                s["body"], sf, a.dry)
            counts["sub"] += 1

    for t in types:
        title = t["name"].title()
        fields = []
        if t["grants"]:
            fields += ["**Issues these rules to every model of this type:** "
                       + " · ".join(link_for(g) for g in t["grants"]), ""]
        if "CAVALRY" in t["name"] or "MONSTER" in t["name"]:
            fields += ["**Split profile:** a listed special rule applies to the "
                       "**rider only** unless it names the mount, or unless it "
                       "is one of the fourteen that transfer: "
                       + " · ".join(link_for(x) for x in transfers) + ".", ""]
        kept += write_node(
            a.out, "troop_%s.md" % slug(t["name"]),
            ["name: troop_%s" % slug(t["name"]),
             "description: Troop type %s — %s" % (title, one_line(t["body"])),
             "type: reference"],
            "> **Bucket:** `references/wap-typst/rules/` · **Hub:** "
            "[[wap_rules_gotchas]] · **Source:** `src/rulebook.typ:%d` — "
            "generated, do not hand-edit above the Traps heading.\n\n"
            "# Troop type: %s" % (t["line"], title),
            t["body"], fields, a.dry)
        counts["troop"] += 1

    print("rules %d · sub-rules %d · troop types %d  (total %d nodes)"
          % (counts["rule"], counts["sub"], counts["troop"], sum(counts.values())))
    print("hand-written Traps preserved: %d" % kept)


if __name__ == "__main__":
    main()
