// The working behind "The Slann return to their generations", in the Lizardmen
// chapter of the proposals document. Probabilities are exact, computed over the
// full dice space rather than simulated. Measured against the magic rules in
// src/rulebook/3.11.typ and the Disciplines chapter in src/lizardmen/3.0.typ.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= The Slann generations, measured

== The ladder is already in the book, taken apart

The Disciplines of the Old Ones are thirteen upgrades, 10 to 30 points, bought
out of the Slann's hundred-point allowance. Four of them are the 6th edition
generation ladder, disassembled and given prices:

#minitable(
  ("6th edition generation", "Sold in the book today as", "Price"),
  ("5th - combine spells across the lores it has access to", "Wandering Deliberations", "25",
   "4th - cannot miscast", "Soul of Stone, and only a plus or minus one nudge", "25",
   "2nd - a free die on every casting attempt", "The Focused Rumination, and only once per phase", "30",
   "3rd - shutting down enemy magic", "Becalming Cogitation and Harmonic Alignment, between them", "25 and 30"),
)

The first line is the one that matters most. A wizard in this edition selects
one Lore of Magic and stays in it -- the rulebook is explicit, and it is how
every wizard in every book works. Combining spells across lores is not
standard and never was here; it is a 25-point purchase with a penalty
attached, and it is the thing that made an ordinary Slann a Slann.

== Why a ladder is the only way to make them the best casters

Wizard Level is a hard ceiling. Across the thirty-three books there are 163
Level 4 wizards and nothing above, and the ceiling is structural rather than
conventional: the rulebook numbers spells from 1 to 4 and lets a wizard take
spells of their own level or lower, so a Level 5 would have nothing to reach
for.

Nor is the Slann the most expensive caster on the shelf. Among generic Level
4 wizards:

#minitable(
  ("Points", "Wizard"),
  ("190", "Grey Seer",
   "250", "Daemon Prince",
   "290", "Liche Lord",
   "360", "Slann Mage-Priest",
   "400", "Greater Daemons",
   "450", "Verminlord"),
)

And its +1 to cast and dispel is not unique either -- Grand Cathay and
Kingdoms of Ind both print the same bonus. So the Slann cannot be made the
best caster in the setting by level, by price, or by the bonus it already
carries. What no other book can answer is a Level 4 caster available in four
grades, each better than the last, with the best of them priced beyond what
an ordinary game can hold.

== The power pool is what actually limits a Slann

The Winds of Magic are rolled by the size of the game, not by what was spent
on wizards:

#minitable(
  ("Points played", "Dice rolled", "Power dice"),
  ("under 2,000", "2D3", "2 to 6, average 4",
   "2,000 to 2,999", "4D3", "4 to 12, average 8",
   "3,000 to 3,999", "6D3", "6 to 18, average 12"),
)

A lone Level 4 Slann channels a D6 per Wizard Level and gains a die on each
5+, which is another 1.33 expected. So it sees about nine power dice a phase
at 2,000 points, and around five below that.

Now count what it has room for. A Wizard may use Wizard Level plus two dice on
a spell, so six; it knows four spells; and each may be attempted once a turn.
Twenty-four dice of appetite against nine of supply, and four and a half times
its supply in a game under 2,000 points.

That is the whole of the diminishing return, and it has two consequences the
ladder is built on. Paying more for a caster in this edition buys *quality per
cast* and never *more casts*, which is why the Slann at 360 reads dear beside
a Grey Seer at 190 who is also Level 4 and also combines his lores -- the
extra 170 buys a ward, three Leadership and seven more lores, not throughput.
And it is why the rungs are not worth what their abilities suggest in
isolation: the second generation is the only one that adds dice, and adding
three or four to a pool of nine is a 32% to 43% increase in the army's entire
magic phase. The others improve casts the Slann was making anyway.

== The fourth generation: ignoring the first 1

A miscast in this edition is two or more unmodified 1s among the dice rolled,
counting every die however it was granted. Ignoring the first die that shows a
1 therefore means three are needed. Computed exactly over the whole dice
space:

#minitable(
  ("Dice thrown", "Miscast today", "Ignoring the first 1", "Change"),
  ("2", "2.8%", "0%", "gone",
   "3", "7.4%", "0.5%", "-94%",
   "4", "13.2%", "1.6%", "-88%",
   "5", "19.6%", "3.5%", "-82%",
   "6", "26.3%", "6.2%", "-76%"),
)

This is better than the flat immunity the 6th edition rule granted, and the
table is why. Immunity deletes the decision: a Slann that cannot miscast
throws six dice at everything for the rest of its life. Ignoring one 1 leaves
the Slann safe at two and three dice, where it will spend most of the game,
and hands back a real 6.2% when it reaches for six. The risk returns exactly
when the Slann gets greedy, which is the only place a miscast rule is
interesting.

Soul of Stone is not made redundant by it. That discipline acts on the
miscast you do suffer, by shifting the result on the table, so it remains
worth buying and remains a different thing. It should cost less than 25 now
that the generation has taken the commoner half of its job.

== The third generation: suppressing Ultimate Power

Ultimate Power grants a free extra die for every natural 6, when casting and
again when dispelling. Suppressing it inside 24" costs an enemy wizard the
following:

#minitable(
  ("Dice they throw", "Free dice denied", "Casting value lost"),
  ("2", "0.33", "1.2",
   "3", "0.50", "1.8",
   "4", "0.67", "2.3",
   "5", "0.83", "2.9",
   "6", "1.00", "3.5"),
)

It taxes commitment, which is the right shape for a mind that suppresses
magic by being present rather than by rolling against it: the harder they
push, the more it costs them, and on a four-dice cast 2.3 is roughly the
difference between landing a level 3 spell reliably and not.

There is a small gift travelling the other way, and it should be known rather
than discovered at the table. Free dice count toward miscasts, so denying
them also spares the enemy wizard some risk:

#minitable(
  ("Dice they throw", "Their miscast risk normally", "Suppressed", "Spared"),
  ("2", "3.3%", "2.8%", "0.5%",
   "4", "15.4%", "13.2%", "2.2%",
   "6", "30.0%", "26.3%", "3.7%"),
)

At six dice they lose 3.5 of casting value and are spared 3.7 points of
miscast chance. Clearly a net loss to them, but not a pure one.

The radius is 24", and no convention is strained by it. The corpus uses three
radii for magic effects and uses all of them freely -- 12" appears 150 times,
18" forty-seven and 24" forty-four -- so the choice is not between a standard
and a departure from it.

What settles it is the deployment rule. Units are placed more than 12" from
the centre line, so the two armies begin *24" apart*. A 12" bubble carried by
a model with Movement 4 would spend the opening turns of the game unable to
reach anything at all, and an 18" one is still 6" short at the start. 24" is
the distance at which the enemy army begins, and it is also the standard reach
of a hex in this edition -- Melkoth's Mystifying Miasma, which reduces the
very characteristics a Slann cares about, goes exactly that far.

Even at 24" it is not a free hit. An enemy wizard deliberately sheltering
behind its own line sits nearer 30" from the Slann's deployment zone, so the
suppression has to be advanced into. That is the correct amount of work for it
to cost.

== The second generation: a free die on every attempt

#minitable(
  ("Option", "Adds to the casting roll"),
  ("a free die on every attempt", "+3.5",
   "a further +1 to cast and dispel", "+1.0",
   "channelling on 4+ rather than 5+", "+0.67 dice per phase, about +2.3 spread across all casts"),
)

These are not the same order of magnitude, and the channelling route cannot
carry a top tier on its own: even channelling on a 3+ reaches only +1.33 dice
a phase against the free die's fourteen points of casting value across four
attempts.

Two things make the free die defensible at the top of the ladder rather than
merely strong.

It cannot be spammed. The rulebook states that each Wizard may only attempt to
cast each spell once per turn, and a Level 4 knows four spells. The attempts
are hard-capped at four, and they must be four different spells. The free die
makes four casts substantially better; it does not buy a dozen cheap ones.

And its danger is answered by the rung below it. An extra die carries a
one-in-six chance of another 1, which is the thing that turns a large throw
into a miscast -- and the second generation inherits the fourth's rule, which
eats the first 1. The two tiers were built for each other, and the ladder
being cumulative is what delivers the antidote before the poison.

== What it costs, and why nothing else needs to

The 6th edition ladder balanced itself with two things this edition does not
have: character slots, and a flat bounty of victory points on the Slann's
head. WAP has neither. Its composition rules are percentages -- a minimum of
25% on Core, up to 35% on Characters, and no single character or unit costing
more than 25% of the army -- and victory points are proportional to what a
model cost rather than flat.

That 25% cap is the gate, and it is a harder one than the bounty ever was. At
2,000 points no character may cost more than 500, so the upper generations
are illegal in an ordinary game and legal in a large one, without a word being
written to say so. And the opportunity cost bites before the game starts: a
hundred victory points in a 2,000-point game is 5% of the total, while a
hundred extra points of Slann is a hundred points of Saurus that were never
bought, paid whether or not the Slann is ever threatened.

Nothing else should be taken from it. The obvious currency would be combat
power, and the Slann has none to spend -- its profile reads Attacks 0. The
next obvious is presence, and that runs backwards: Lizardmen venerate the
Slann, and the older the spawning the more fiercely, so an elder Slann
commands more rather than less. The proposal therefore only adds, and the
price list is the whole of the counterweight.

== Prices, and the reasoning behind them

Priced off the book's own worked examples -- the Disciplines each generation
absorbs -- rather than by adding up what the abilities do:

#minitable(
  ("Generation", "Points", "What the step buys", "Anchored on"),
  ("5th", "340", "the Slann as printed, with lore-combining made innate", "below today's 360 - see the power pool, above",
   "4th", "375", "ignores the first die showing a 1", "Soul of Stone at 25, for a much stronger effect",
   "3rd", "440", "enemy wizards within 24\" lose Ultimate Power", "Becalming Cogitation and Harmonic Alignment, 55 together",
   "2nd", "560", "a free die on every casting attempt", "the only rung that adds dice - see above"),
)

Every one of these is arguable and none is measured. What is measured is that
the 2nd generation at 560 needs a 2,240-point game to be legal, and the 3rd at
440 is legal from 1,760 -- which is the intended shape rather than an
accident.
