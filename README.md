# Warhammer Armies Revamped

**Warhammer Armies Revamped (WAR)** is a new edition of Warhammer Fantasy
Battles, built on version 3 of the
[Warhammer Armies Project](https://www.warhammerarmiesproject.com/) army books.
Its purpose is to realign the game on what makes Warhammer Fantasy Battles
great to play.

## Tenets

**Balance is a tool for fun, not the end goal.** A balanced game is worth
having because a lopsided one stops being fun. But a change that makes the
game flatter, safer or more samey has not earned its place just because the
numbers come out even.

**Factions should feel unique.** An army should play like the people who field
it: Dwarfs should feel like Dwarfs, Skaven like Skaven.

## The books

Sixty-four books, published as PDFs to GitHub Pages: thirty-three armies and
the core rulebook, most of them in more than one version, and eleven editions
of our own.

The site leads with those eleven — the **house rules** we play and the
**proposals** we are still arguing about — because they are what the project
is for. The Armies Project itself is a click away under `/library/`, every
army and every version we hold of it, re-typeset and otherwise untouched: the
same rules, army lists and points values, in a new layout with new cover art.

Which a reader is holding is never a guess. A book that reproduces its source
says so in its colophon; one that departs from it says that instead, and names
the version of the source it builds on.

## Attribution

Unofficial and non-commercial. The rules text, army design and points values
descend from the Warhammer Armies Project, written and freely distributed by
**Mathias Eliasson**, and are used with gratitude. Where this edition departs
from his work, the changes are its own and not his.

Warhammer, Warhammer Fantasy Battle and all associated names, races and places
are trademarks of Games Workshop Limited. This project is unaffiliated with
both, and no challenge to their status is intended. Not for sale.

The code is MIT and the books are CC BY-NC-SA 4.0; see [LICENSE](LICENSE) for
the split and what each grant covers.

## Working on the books

Each book is one [Typst](https://typst.app) file at `src/<army>/<version>.typ`,
importing the shared template. Editing a rule or a points value means editing
that file and recompiling; nothing generates it and nothing else holds a copy.
An edition sits beside the book it derives from — `src/lizardmen/3.0-house.typ`
next to `src/lizardmen/3.0.typ` — so a change is a `git diff`.

```bash
python build.py                # compile every book into out/
python build.py skaven/3.0     # or one, by its id
python build.py --site         # and assemble _site/ as the workflow does
python emit.py                 # rebuild the pages and build/render.json
python check_site.py _site     # every link resolves, every book reachable
```

[CLAUDE.md](CLAUDE.md) documents the template, the import pipeline and the
verification gates in full.
