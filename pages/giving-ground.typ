// The working behind "Losing a fight should not always cost the unit", in the
// rulebook chapter of the proposals document.
//
// Every WAP rule quoted here is read from the House rulebook,
// src/rulebook/3.11-house.typ, which is the edition we play.
//
// The imported rules come from Warhammer: The Old World, which is NOT in this
// repository. They were read from tow.whfb.app, a community rules index that
// cites the rulebook's own page numbers (p. 134 for Give Ground and Fall Back
// in Good Order, p. 156 for Follow Up), and from Games Workshop's published FAQ.
// Some of what came back was quoted and some was paraphrased by that index, so
// the mechanisms below are reliable and the exact clauses are not guaranteed
// verbatim. Where this document differs from the source it says so.
//
// All corpus figures are measured over 32 books, bounding every entry at
// ^#unit( and reading the House edition where one exists.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= Giving ground, and the cliff at the bottom of the Break test

The Break test is the most decisive roll in the game and it has two outcomes.
A unit holds, or it flees and is very probably run down. The rulebook prints
the cliff explicitly:

#quote[
  Note that in case the penalty to the losing unit's Leadership is equal to or
  greater than their modified Leadership value, no test is taken and the unit
  will automatically break and flee from combat.
]

So a Leadership 7 regiment that loses a round by seven is gone. No dice are
rolled. It was at full strength a moment earlier and it is off the table now,
and the only thing that happened was arithmetic.

This page is the working behind replacing that with three outcomes, and the
measurements that decided each piece of it.

== The change in one line

Today the combat result difference is subtracted from Leadership. The proposal
adds it to the roll instead, and then reads the dice twice:

- natural roll greater than Leadership: the unit *Breaks* and flees
- natural roll within Leadership, modified result over it: the unit *Falls Back
  in Good Order*
- modified result within Leadership, or a natural double 1: the unit *Gives
  Ground*

For pass-or-fail the two forms are arithmetically identical. Reading the dice
twice is what produces the middle rungs, and it needs both a natural and a
modified number to compare, which is why the modifier has to move.

== What moving it actually does

The break decision now rests on the natural roll, and no modifier touches the
natural roll. The margin by which a unit lost stops affecting whether it routs.

#minitable(
  ("Leadership 7, lost by", "Breaks today", "Breaks", "Falls back", "Gives ground"),
  ("1", "58.3%", "41.7%", "16.7%", "41.7%",
   "3", "83.3%", "41.7%", "41.7%", "16.7%",
   "5", "97.2%", "41.7%", "55.6%", "2.8%",
   "7", "100% (no test)", "41.7%", "55.6%", "2.8%"),
)

That third column is flat all the way down. A regiment losing by seven breaks
exactly as often as one losing by one, and the margin decides only how far it
is pushed.

This is the largest single consequence of the import and the strongest argument
against it. Combat resolution is what a flank charge, a standard, an extra rank
and Fear all pay out in. Under the proposal those still win the round and still
push the enemy back, and they no longer decide whether the enemy survives it.

== Where the change lands, and where it does not

The obvious reading is that this rescues big blocks. It does not: a Steadfast
unit's break chance is *identical* before and after, because Steadfast already
tests on unmodified Leadership and the new form already ignores the modifier on
the break line. Leadership 7 with ranks breaks 41.7% of the time it loses,
under either set of rules.

What changes is what happens when a unit loses Steadfast.

#minitable(
  ("Leadership 7 block, flanked and disrupted, losing by 5", "Breaks"),
  ("today", "97.2%",
   "proposed", "41.7%",
   "proposed, within 12\" of the General", "27.8%"),
)

A flanked regiment today is not really taking a test. It is being removed, and
the dice are a formality. Afterwards the flank charge wins the round, inflicts
the casualties and shoves the block backwards, and the block is still on the
table to be finished off properly.

Monsters gain the same relief on the break line and stay fragile all the same,
because what kills a monster is wounds. Five of them and no rank-and-file to
spend means damage does the work that a failed Break test used to do, which is
the honest way for a large expensive model to die.

== Steadfast: three readings, two of which fail

Steadfast today reads:

#quote[
  If a defeated unit has a higher number of complete ranks after the first than
  all individual enemy units in base contact, it takes its Break test on its
  unmodified Leadership.
]

Once the modifier sits on the roll there is no negative Leadership modifier for
that sentence to ignore, so it has to be re-expressed. Three readings were
measured at Leadership 7.

#minitable(
  ("Reading of Steadfast", "Breaks", "Verdict"),
  ("Ignores modifiers to the roll", "41.7%", "Adopted",
   "Improve the outcome one step on the ladder", "0.0%", "Unbreakable in disguise",
   "Re-roll a failed Break test", "17.4%", "Duplicates the Battle Standard"),
)

The middle one is worth recording because it is the tempting one. Expressing
Steadfast as a move up the ladder -- Break becomes Fall Back, Fall Back becomes
Give Ground -- speaks the new grammar and needs no arithmetic. The ladder has
three rungs and Break is the bottom one, so shifting every result up by one
means no roll can ever land on Break at all. It is not a weak Steadfast. It is
Unbreakable with the name filed off.

The Old World hit the same wall and bounded its way out: its Stubborn may
decline a Break test and Fall Back automatically, *once per battle*. That limit
is what stops it being Unbreakable. This edition keeps Stubborn permanent and
always-on, so the bounded form is unavailable and the first reading is the only
one left standing.

Which leaves Steadfast doing a narrower and more accurate job. Give Ground is
two inches and still in the fight; Fall Back in Good Order is disengaging and
leaving the position. A Steadfast unit never does the second. It holds its
ground or it breaks, which is what having more ranks than the enemy ought to
mean.

*Stubborn needs no change whatever.* Its text already reads "a Stubborn unit is
always Steadfast, whether or not they have more ranks than their enemy or are
disrupted", and that sentence survives the redefinition intact. All 114 entries
across 27 books that buy it are untouched in print.

== The General, and why a bonus beats a substitution

Inspiring Presence today lets a unit use the General's Leadership in place of
its own. That is fine while the combat result erodes it -- a Leadership 9
General is worth 6 to a unit that lost by three, so his bubble degrades exactly
when it is needed. Move the modifier onto the roll and his Leadership arrives
intact however badly the unit lost.

#minitable(
  ("Form of Inspiring Presence", "Breaks", "Expected lost rounds before breaking"),
  ("None, bare Leadership 7", "41.7%", "2.4",
   "+1 Leadership", "27.8%", "3.6",
   "Use his Leadership 9", "16.7%", "6.0",
   "Use his Leadership 10", "8.3%", "12.0"),
)

The proposal takes the flat +1. The argument for it is not the arithmetic,
which merely says the substitution is strong. It is that a Goblin standing near
his General should be braver than he was, and a substitution makes him as brave
as an Orc. Bravery borrowed from a commander is a nudge, not a transplant.

Two things fall out of the choice for free. The qualifier "unless specified
(such as having to use their own unmodified Leadership)" can go, because a +1 is
not a Leadership substitution and never collides with Steadfast. And the
General's own Leadership characteristic leaves the bubble entirely: a Leadership
10 General and a Leadership 7 General both grant +1. His characteristic still
matters where he stands, through the highest-in-the-unit rule, and his presence
is worth the same either way.

The rule stops being cumulative. Two sources of Inspiring Presence grant +1, not
+2.

== The Battle Standard, and the only two levers there are

Hold Your Ground re-rolls a failed Break test. Today that re-rolls a test already
taken at a Leadership eaten down to 4, which is worth almost nothing -- 1.20
expected rounds becomes 1.44. Under the proposal it re-rolls an un-eroded
number, and squaring a small probability is a much better trade.

#minitable(
  ("Leadership 7, lost by 3", "Breaks", "Over 2 lost rounds", "Over 3", "Over 4"),
  ("bare", "41.7%", "66.0%", "80.2%", "88.4%",
   "+1 from the General", "27.8%", "47.8%", "62.3%", "72.8%",
   "+1 and the re-roll", "7.7%", "14.8%", "21.4%", "27.5%"),
)

Expected-rounds figures overstate this badly -- the re-roll reads as worth nine
extra rounds, and nothing fights for nine rounds. Over a realistic grind it is
large and not absurd, and it sits alongside a broken unit no longer usually
being a dead one.

Two alternatives were considered for flattening it and both were withdrawn for
the same reason. Letting the Battle Standard reduce the combat result difference
within range does nothing to anyone's break chance, because the difference never
touches the natural roll. Letting it stop units Falling Back has the same defect
and is useless to precisely the Steadfast troops that already never fall back.

That turns out to be structural. Once the modifier sits on the roll, *only two
levers reach the break line*: change the Leadership it is compared against, or
roll the dice again. Everything else lands on the Give Ground and Fall Back
boundary. So the two rules take one lever each -- the General makes a unit
harder to break, the Battle Standard insures it against the one bad roll -- and
if the Battle Standard proves too strong the lever to reach for is a usage
limit, not a narrower effect.

== Panic, and a threshold measured in the wrong currency

The import splits a failed Panic test by how much of the unit is left: above
half it Falls Back in Good Order, at half or less it flees. Since Falling Back
rallies automatically, most failed Panic tests stop leaving a fleeing unit on
the table at all.

The source counts models. This edition counts Unit Strength, and the troop types
chapter is the reason:

#minitable(
  ("Troop type", "Unit Strength"),
  ("Monsters", "double their original starting number of Wounds",
   "Chariots and Shrines", "equal to their starting number of Wounds",
   "Monstrous Creatures", "4",
   "War machines", "equal to their current number of crew"),
)

Every one of those but the last is a *starting* value that never degrades. A
Dragon on its last wound still has the Unit Strength it deployed with, so a
threshold measured in Unit Strength would never fire for it, and one measured in
models would never fire either -- a Lone Model is permanently one of one. That
exemption would have reached 231 entries: 161 whose troop type names Monster and
70 naming Chariot, against 69 war machines the rulebook already excuses from
fleeing.

Hence the split rule. Units measure Unit Strength; a Lone Model measures Wounds,
and a Lone Model with a split profile measures its mount's. Rally carries the
identical defect at its own 25% threshold and takes the identical fix.

== What happens to the chain

Two of the four Panic triggers stop firing on their own. *Nearby Friend Breaks*
needs a unit to break, and one that falls back has not broken. *Fled Through*
needs fleeing friends, and this edition's Give Ground states that a unit which
gives ground is not a fleeing unit.

A Fall Back move does still trigger it, and the test that follows resolves under
the same threshold, so a healthy unit fled through falls back in its turn rather
than routing. The cascade survives and degrades one step at a time instead of
unzipping a battle line. The rulebook currently calls this "the most destructive
form of panic", which it will no longer be.

== The battlefield edge

The Old World destroys a unit pushed off the table while Giving Ground, and
leaves a unit that simply cannot move where it stands with no penalty at all.
The first half is harsh in a way the rest of the import is not: a unit backed
against the edge would die for losing a combat by one, having passed its Break
test.

This edition replaces the edge rule outright, for fleeing and falling back as
well as giving ground. A unit driven off the edge is destroyed if half or less
of its starting Unit Strength remains, and otherwise stops at the edge and takes
one Wound per inch it would have travelled beyond. Losing your back to the table
edge still costs, and it costs in casualties rather than in one removal.

== What this touches in the books

#minitable(
  ("Rule named in the entry", "Entries", "Books"),
  ("Immunity (Psychology)", "126", "29",
   "Stubborn", "114", "27",
   "Unbreakable", "52", "19",
   "Inspiring Presence", "51", "24",
   "Unstable", "31", "15",
   "Hold Your Ground", "18", "13",
   "Steadfast", "8", "7"),
)

Steadfast's 8 is not a measure of its importance. It is granted by having more
ranks than the enemy in front of you, so it is a comparison rather than a trait,
and the only reason an entry has to name it is to change how the ranks are
counted. That is what all eight do: Ogres and their several mercenary cousins
count one rank more than they have in a turn they charge, Norsemen count each
rank double, and Bretonnian Men-at-Arms count more ranks than they actually
have. None of them is affected by this proposal, because the eligibility test
those rules modify is the one part of Steadfast that does not move.

The reassuring number is Stubborn's 114, because its printed text is unchanged.
The rules that need rewriting are all in the rulebook: the Break test, Steadfast,
Reforming from Defeat, Inspiring Presence, Panic, Rally, Fled Through, Unbreakable
and the battlefield edge, plus three new entries for Give Ground, Fall Back in
Good Order and Follow Up. One printed worked example, under Inspiring Presence,
is written wholly in subtract-from-Leadership arithmetic and has to go.
