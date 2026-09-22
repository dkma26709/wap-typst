// The working behind "Stone is not armour a man could take off", in the Tomb
// Kings chapter of the proposals document. Tomb Kings has no House edition, so
// every profile is read from src/tomb-kings/3.1.typ; every rule is read from
// the House rulebook, src/rulebook/3.11-house.typ.
//
// Durability figures are the number of hits needed to kill one model, averaged
// over Strength 3 to 8, computed on the To Wound chart as printed - including
// its 6+/X two-roll boxes - and the save modifier table beside it.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= Stone, and what it is worth

A Tomb Kings army is mostly things that were carved rather than born. The book
knows this and says so constantly -- Ushabti are statues of the gods walking,
the sphinxes are quarried whole, the Necrolith Colossus is a monument that got
up -- and then half of those entries buy armour from the same list a Skeleton
Warrior does.

That is the whole of the complaint, and the whole of the proposal is to finish
a conversion the book has already started.

== The book is already half-converted

Ten entries in the army are made of stone or metal rather than flesh. They do
not agree with each other about what that means.

#minitable(
  ("Entry", "Troop type", "Armour today"),
  ("Tomb Scorpion", "Monstrous Creature", "Natural Armour (5+)",
   "Necroserpent", "Monstrous Beast", "Natural Armour (5+)",
   "Necropolis Knights", "Monstrous Cavalry", "Natural Armour (5+) and light armour",
   "Khemric Titan", "Monster", "Natural Armour (5+)",
   "Ushabti", "Monstrous Infantry", "Light armour",
   "Sepulchral Stalkers", "Monstrous Beast", "Medium armour",
   "Khemrian Warsphinx", "Monster", "Medium armour",
   "Necrosphinx", "Monster", "Medium armour",
   "Necrolith Colossus", "Monster", "Light armour",
   "Hierotitan", "Monster", "None at all"),
)

Four of them already do it the right way. Five wear armour like men. Two have
nothing whatever, and one of those two is a Monster with six Wounds walking
about with no save at all.

The Necropolis Knights are the entry to copy, because they are the only one
that got the composition right: the stone serpent carries Natural Armour and
the skeleton riding it wears light armour on top, and the two stack. That is
exactly the shape the rest of the book wants.

Nor is this a Tomb Kings habit. The Amazons arrived at the same answer
independently -- Ancient Sentinels are `Animated Construct, Natural Armour (4+)`
and carry no equipment but a hand weapon. The Dwarfs went the other way and put
*heavy armour* on a rune-carved statue.

== The rule

One line, and it borrows its wording from the rulebook, where Seamless Armour
already says a save cannot be reduced below a stated value.

*Stone Construct.* This model's armour is Natural Armour and may not be removed
or replaced. Its armour save can never be reduced below 6+, whatever the
Strength of the attack.

What that does is unusually easy to state, because it does exactly one thing:

#minitable(
  ("Khemrian Warsphinx, T7, Natural Armour 5+", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10"),
  ("Wounds per hit, as now", "0.074", "0.116", "0.167", "0.333", "0.500", "0.667", "0.833", "0.833",
   "Wounds per hit, floored at 6+", "0.074", "0.116", "0.139", "0.278", "0.417", "0.556", "0.694", "0.694",
   "Change", "--", "--", "\-17%", "\-17%", "\-17%", "\-17%", "\-17%", "\-17%"),
)

Nothing at all below Strength 5, because below Strength 5 the save was never
being stripped in the first place. A flat sixth off everything above it. A
spear was never going to matter; a greatsword now chips the stone rather than
shattering it, and so does a cannonball.

== Why not Toughness 8

The first draft of this made every stone construct Toughness 8 with Natural
Armour 5+, on the grounds that a statue ought to be harder to hurt than a man.
Measured, that was a much larger change than it read as, and it was aimed in
the wrong direction.

#minitable(
  ("Hits to kill, averaged over S3-S8", "Today", "At T8 with Natural 5+", "Change"),
  ("Hierotitan", "28.7", "47.0", "+64%",
   "Necrolith Colossus", "30.5", "47.0", "+54%",
   "Khemrian Warsphinx", "34.6", "47.0", "+36%",
   "Necrosphinx", "34.6", "47.0", "+36%"),
)

Three things went wrong with it.

*The premise did not survive the chart.* The stated worry was that low-Strength
attacks are too effective against stone. They are not: Strength 3 against a
Toughness 7 construct with a 5+ needs a 6 followed by a 3, which is 7.4% a hit
and *eighty-one hits* to kill a Warsphinx. The To Wound chart's two-roll boxes
had already flattened the bottom of the range, so there was nothing left to fix
there -- and every candidate instrument therefore did its work at the top
instead. Toughness 8 halves what Strength 6 achieves, and Strength 6 is heroes,
other monsters, and any Strength 4 troops holding great weapons.

*The armour half did nothing.* A Natural Armour 5+ is stripped entirely at
Strength 5 and above, so on a Toughness 8 body it contributes against chaff and
nothing else. The whole effect was the Toughness step wearing an armour
costume.

*And Toughness 8 is not a value this game hands out.* Across all thirty-two
books there are four mobile models at Toughness 8, and every one of them is
ten Wounds and around three hundred and fifty points:

#minitable(
  ("Every Toughness 8 model in the corpus", "T", "W", "Points"),
  ("Bonegrinder Giant (Albion)", "8", "10", "380",
   "Bonegrinder Giant (Orcs and Goblins)", "8", "10", "385",
   "Khemric Titan (Tomb Kings)", "8", "10", "320",
   "Vorgaroth the Scarred (Warriors of Chaos)", "8", "10", "-"),
)

Adding four more at six Wounds and 205 to 250 points would have taken one army
from one Toughness 8 model to five, at roughly half the going rate, and taken
the crown off the Khemric Titan in its own book.

== Why not Toughness 6 for the Ushabti

The second draft kept Toughness for the rank stone -- Ushabti and the Dwarfs'
Rune Guardians to Toughness 6 -- on the better argument that Monstrous Infantry
is a badly compressed band and stone belongs at the top of it.

The compression is real, and worse than it looks. Of 58 non-character Monstrous
Infantry entries in the corpus:

#minitable(
  ("Toughness", "Entries", "Share"),
  ("6", "1", "1.7%",
   "5", "13", "22.4%",
   "4", "44", "75.9%"),
)

Three-quarters of everything on one rung, which is how a Troll, a Minotaur, an
Irongut and a plain Ogre Bull all came to have the same Toughness. And the
constructs are already pressed against the ceiling: five of the eight sit at
Toughness 5, with a mean of 4.62 against flesh's 4.20. They are distinguished
as far as the scale allows and it is not far enough.

But the rung above is taken. Toughness 6 is where *Monsters* live -- 104 of 185
Monster profiles, 56% of every monster in the corpus -- and the tiers already
step 3-4 for Infantry, 4-5 for Monstrous Infantry, 5 for Monstrous Creatures,
6 for Monsters. Putting a unit of nine Ushabti on the Monster rung makes them
exactly as hard to wound as a Carnosaur, which does not open room so much as
move the crowding up a floor into the band that is already fullest.

The measured comparison settled it, because the two instruments turn out to
cost the same:

#minitable(
  ("The Ushabti body, W3, 42 points at a 6+", "Hits to kill", "Change", "Fair price"),
  ("Today: T5, light armour 6+", "8.0", "--", "42",
   "T5, Natural 6+ that cannot be stripped", "8.9", "+11%", "45",
   "T6, light armour 6+", "11.2", "+39%", "58",
   "T5, Natural 5+ that cannot be stripped", "11.2", "+39%", "58",
   "T6, Natural 5+", "12.8", "+60%", "67"),
)

Rows three and four are the same number. An unstrippable save is not the weaker
instrument, it is the same instrument pointed somewhere else -- and where it
points matters. Toughness 6 says *small blows bounce and big ones land as
before*. An unstrippable save says *it chips at the same rate however hard you
swing*, which is the more granite thing to say, and it collides with nothing,
because no troop type owns it.

What remains true is that Monstrous Infantry wants respreading. That is a
better proposal than this one and a larger one, it belongs to the rulebook
rather than to Nehekhara, and it does not need a stone rule to justify it.
Worth recording in passing that Monstrous Creature is worse still: 52 of its
56 entries share one Toughness value.

== What it costs

Every entry keeps the save value it has today. What changes is that the save
is part of the model rather than strapped to it, and that it has a floor.

#minitable(
  ("Entry", "Today", "Becomes", "Durability", "Points"),
  ("Ushabti", "Light armour 6+", "Natural Armour (6+)", "+11%", "42 to 45",
   "Sepulchral Stalkers", "Medium armour 5+", "Natural Armour (5+)", "+8%", "48 to 50",
   "Necropolis Knights", "Natural 5+ and light armour", "unchanged, floored", "+5%", "50, unchanged",
   "Tomb Scorpion", "Natural Armour (5+)", "unchanged, floored", "+6%", "100 to 105",
   "Necrolith Colossus", "Light armour 6+", "Natural Armour (6+)", "+13%", "210 to 235",
   "Hierotitan", "None at all", "Natural Armour (6+)", "+20%", "205 to 245",
   "Khemrian Warsphinx", "Medium armour 5+", "Natural Armour (5+)", "+7%", "225, unchanged",
   "Necrosphinx", "Medium armour 5+", "Natural Armour (5+)", "+7%", "250 to 210",
   "Khemric Titan", "Natural Armour (5+)", "unchanged, floored", "+8%", "320 to 345",
   "Sehenesmet", "None at all", "Natural Armour (6+)", "+20%", "425, unchanged"),
)

Two of those rows are not settled by this proposal alone and should be read
with that in mind. The *Necrosphinx* falls forty points because the companion
proposal takes its flight and most of its Stomp; the defensive gain here is the
only thing pushing the other way. *Sehenesmet* stays at 425 because a special
character is priced for his rules -- Master Stone Shaper and The Stone Host of
Quatar -- and not for a 6+, and running the arithmetic on him mechanically
produced 510, which is plainly wrong.

The *Hierotitan* is the largest mover and the one that most deserves it. It is
the only Monster in the book with six Wounds and no armour save whatsoever, and
the proposal gives it the same 6+ the Colossus has. Forty points for a save it
should never have been without.

== What this does not do

It does not touch Toughness anywhere. It does not touch the Skeletons, the Tomb
Guard, the Mummies or any of the chariots, none of which are stone. It does not
change how armour saves stack, and the Necropolis Knights keep their existing
arrangement untouched -- the serpent's natural save has a floor and the rider's
worn armour does not, which is the correct answer and needs no extra wording.

And it does not make anything unkillable. A Dread Saurian, at Strength 8 with
six Attacks and Multiple Wounds (D3), still kills any of the four Toughness 7
constructs in under two rounds -- and the Khemric Titan, which has ten Wounds
rather than six, in four. Heroic Killing Blow still ignores armour entirely and
is therefore the built-in counter to all of it. And a cannonball still averages
better than half a Wound a hit against a Warsphinx.
