// The working behind "Rebuild Weapon Skill as two numbers and a gap", in the
// rulebook chapter of the proposals document. Measured against the newest
// version of each of the 33 books in src/ - 2,007 profiles that carry a Weapon
// Skill - and against the To Hit chart in src/rulebook/3.11.typ.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= Melee skill, measured

Three claims sit behind the proposal, and each of them is a number rather
than an opinion. This page is where the numbers are.

Everything here is measured across the newest version of each of the
thirty-three books in the edition, which between them carry 2,007 profiles
with a Weapon Skill, and against the To Hit chart printed in the rulebook.
Where a figure is weighted, it is weighted by how common each Weapon Skill
actually is in that corpus, so that a matchup between two Weapon Skill 3
troops counts for as much as it happens.

== What the ladder looks like now

Weapon Skill is better spread than Initiative is. All ten rungs are
occupied, and the top half carries real weight rather than a handful of
named characters.

#minitable(
  ("Weapon Skill", "Profiles", "Share"),
  ("1", "6", "0.3%",
   "2", "158", "7.9%",
   "3", "700", "34.9%",
   "4", "491", "24.5%",
   "5", "273", "13.6%",
   "6", "213", "10.6%",
   "7", "102", "5.1%",
   "8", "50", "2.5%",
   "9", "11", "0.5%",
   "10", "3", "0.1%"),
)

The bottom is where the crowding is. Weapon Skill 1 holds six profiles in
two thousand -- two Zombie entries, the Corpse Cart's Restless Dead, a
Slann carried on a palanquin, the Empire's Mechanical Steed and Kairos
Fateweaver. The rung does not mean _fights badly_; it means _does not
fight_, and it is reserved for the dead, the borne and the mechanical.

That leaves exactly one rung between not fighting at all and being an
ordinary soldier, and Weapon Skill 2 is carrying six different ideas at
once: peasants, militia and slaves; Halflings; war machine crews; Skinks;
and, at the other end of the scale entirely, the Cygor, the Dread Maw and
the Arcanadon. A stitched corpse and a blind Beastmen monster share a rung
because there is nowhere else for either of them to stand.

== What one rung of it is worth

The chart is the reason the spread does not pay. Weighted across the
corpus, moving a model one rung changes the roll in two matchups out of
five, and changes nothing at all in the other three.

#minitable(
  ("Moving a model one rung", "Changes nothing in"),
  ("as the defender", "59% of matchups",
   "as the attacker", "60% of matchups"),
)

That is not an average hiding a few flat spots. It is the shape of the
chart. Read along any row and the results run in long identical stretches:

#minitable(
  ("Attacker", "Distinct results across all ten targets", "Its longest flat run"),
  ("Weapon Skill 3", "5", "hits WS3, 4, 5 and 6 all on 4+",
   "Weapon Skill 4", "4", "hits WS4 through WS8 all on 4+",
   "Weapon Skill 5", "3", "hits WS5 through WS10 all on 4+",
   "Weapon Skill 6", "3", "hits WS6 through WS10 all on 4+"),
)

A swordmaster at Weapon Skill 6 hits a militiaman's captain, a Chaos Lord
and a Phoenix King with precisely the same roll. Ten rungs resolve into
five results, and most of the resolution is at the bottom of the chart
where almost nothing stands.

== Why the ladder cannot simply be respread

The obvious repair is to move the profiles rather than the chart: shift the
standard soldier up to Weapon Skill 4 and open the bottom rungs for degrees
of the untrained. It does not work, for a reason that is easy to miss.

The chart is irregular. The same advantage is priced differently depending
on where on the ladder it is taken. Two rungs of advantage is a 2+ at the
bottom of the chart, a 3+ in the middle, and a 3+ at the top:

#minitable(
  ("A two-rung advantage", "To Hit"),
  ("Weapon Skill 3 against 1", "2+",
   "Weapon Skill 5 against 3", "3+",
   "Weapon Skill 8 against 6", "3+",
   "Weapon Skill 10 against 8", "3+"),
)

So a respread cannot be reasoned about. Move a profile up a rung and what
happens to it depends on which boundary it happens to land on, not on any
stated rule. Bump every profile in the corpus up one rung and 7% of
matchups change -- a small number, but an arbitrary one, arrived at by no
principle and explicable to nobody.

The chart has to be fixed before the ladder can be.

== The chart proposed

Subtract the defender's Melee Defence from the attacker's Melee Attack.
Read the difference:

#minitable(
  ("Melee Attack minus Melee Defence", "To Hit"),
  ("+4 or more", "2+",
   "+2 or +3", "3+",
   "-1, 0 or +1", "4+",
   "-2 or -3", "5+",
   "-4 or less", "6+"),
)

That is the whole chart. A hundred cells become five rows, and the five
rows can be held in the head, which the hundred cells never could.

It is symmetric by construction, because it reads nothing but the gap. The
grid it generates, for comparison with the one it replaces:

#minitable(
  ("MA \\ MD", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"),
  ("1", "4+", "4+", "5+", "5+", "6+", "6+", "6+", "6+", "6+", "6+",
   "2", "4+", "4+", "4+", "5+", "5+", "6+", "6+", "6+", "6+", "6+",
   "3", "3+", "4+", "4+", "4+", "5+", "5+", "6+", "6+", "6+", "6+",
   "4", "3+", "3+", "4+", "4+", "4+", "5+", "5+", "6+", "6+", "6+",
   "5", "2+", "3+", "3+", "4+", "4+", "4+", "5+", "5+", "6+", "6+",
   "6", "2+", "2+", "3+", "3+", "4+", "4+", "4+", "5+", "5+", "6+",
   "7", "2+", "2+", "2+", "3+", "3+", "4+", "4+", "4+", "5+", "5+",
   "8", "2+", "2+", "2+", "2+", "3+", "3+", "4+", "4+", "4+", "5+",
   "9", "2+", "2+", "2+", "2+", "2+", "3+", "3+", "4+", "4+", "4+",
   "10", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "3+", "4+", "4+"),
)

Two clamps are doing work in that grid and both are deliberate. Unclamped,
the formula asks for an automatic hit wherever the gap reaches six -- 0.6%
of matchups as the corpus stands. The rulebook does grant automatic hits --
to magic missiles, to Impact Hits, and to a number of special rules -- but
always by a rule that says so, and one arriving out of the chart by
arithmetic is a different thing: a blow with no roll to make is a blow that
no Weapon Skill and no modifier can ever touch. So the chart floors at 2+.
At the far end it would run past 6+ and want the _roll a 6, then roll again_
machinery the rulebook already uses for long shots and for Strength against
high Toughness. Capping at 6+ instead keeps close combat to a single roll.

Because only the gap is read, where the ladder sits stops mattering. Shift
every profile in the corpus up a rung and nothing whatever changes -- not
7% of matchups, none of them. The question of whether the standard soldier
should be Weapon Skill 3 or 4 becomes a question about what the numeral
tells a reader, which is the right sort of question and the only kind this
chart leaves open.

== What it costs

Combat gets less lethal. Across the corpus the average chance of a hit
falls from 56.3% to 50.0%: 38% of matchups get harder, 1% easier, and the
rest are untouched.

#minitable(
  ("Chart", "Average hit chance", "A rung changes nothing in"),
  ("today", "56.3%", "59% / 60%",
   "one step every two rungs", "50.0%", "63% / 63%",
   "one step every rung", "50.0%", "34% / 34%"),
)

The 50.0% is forced rather than chosen. A chart that reads only the gap is
symmetric under swapping the two models, so the average across any corpus
is the middle of the die whatever the step size. Worth knowing before it
is read as a coincidence.

The flatness, note, is not repaired. One step every two rungs leaves 63% of
matchups unmoved by a rung, which is slightly worse than the 59% it
replaces. That is inherent: a step every two rungs means every other rung
does nothing, by definition. It shows up as promotions alternating in
value:

#minitable(
  ("Promotion", "Today, hit chance gained", "Proposed"),
  ("Weapon Skill 2 to 3", "+6.7%", "+5.9%",
   "Weapon Skill 3 to 4", "+7.2%", "+4.4%",
   "Weapon Skill 4 to 5", "+5.5%", "+8.0%",
   "Weapon Skill 5 to 6", "+2.3%", "+6.3%",
   "Weapon Skill 6 to 7", "+7.6%", "+8.5%"),
)

Today's column is erratic and the proposed column alternates. Neither is
obviously better read as a list of numbers. What makes the second one
defensible is the ladder underneath it, and that is the next section.

== The ladder

The chart's coarseness is only tolerable if the ladder is laid out to match
it. Four classes, two rungs apart, so that a class difference is always one
step of the chart:

#minitable(
  ("Rung", "Class", "Who"),
  ("2", "untrained", "peasants, levies, crews, labourers, beasts that fight with their bodies",
   "4", "trained", "the soldier a battle line is made of",
   "6", "veteran", "the household guard, the elite of an army",
   "8", "hero", "a lord, a champion, a monster bred for nothing else"),
)

The odd rungs are the shading between them, and they are honest about being
shading: one rung means _a shade better_ and often nothing at all, two
rungs mean _a class above_ and always a step. That is a system a player can
be told in one sentence, which the present chart is not.

Weapon Skill 1 keeps its meaning and empties further. It is where a model
that does not fight goes, and under this ladder it stops being adjacent to
the trained soldier by two rungs and starts being three below the untrained
labourer, which is what the six profiles on it were always describing.

Nothing above is a placement pass. Four anchors are settled here, and eleven
species are placed against them in the section below; the two thousand
profiles are not, and each one is an argument that can be had without
disturbing the others.

== The split, and what it buys

Two numbers rather than one: Melee Attack for how well a model lands a
blow, Melee Defence for how hard the model is to hit.

The pairing is what makes a chart this coarse affordable. With a single
number, a designer who wants a model two rungs better at attacking has to
make it two rungs harder to hit as well, and with a step every two rungs
there is no way to ask for less. With two numbers the model is simply
placed where it was meant to land.

It also says things the present system cannot say at any value. A model at
Melee Attack 4 and Melee Defence 6 is ordinary at landing blows and very
hard to land one on -- a duellist, a fencer, a skirmisher who is never
quite where the blow falls. There is no Weapon Skill that describes that
model, because one number forces the two halves to agree.

The Lizardmen are the worked example, because the army has three castes and
one characteristic to tell them apart with:

#minitable(
  ("", "Melee Attack", "Melee Defence", "Reads as"),
  ("Skink", "2", "4", "cannot hurt you, hard to catch",
   "Kroxigor", "3", "2", "swings well enough, impossible to miss",
   "Saurus Warrior", "5", "4", "spawned for it"),
)

The Skink is the one that proves the case. At Weapon Skill 2 today it is
both feeble and easy to kill, and only the first of those was ever the
intention; the artwork and the prose describe something quick that cannot
land a blow, which is Melee Attack 2 and Melee Defence 4. The Kroxigor is
the inverse and equally inexpressible: a labourer pressed into war, strong
enough that the swing lands and slow enough that anything trained will hit
it whenever it likes.

The placement also preserves what has already been settled. Under the House
edition today a Saurus at Weapon Skill 4 hits a Kroxigor at Weapon Skill 3
on a 3+, and the Kroxigor hits back on a 4+. Melee Attack 5 against Melee
Defence 2 is a 3+, and Melee Attack 3 against Melee Defence 4 is a 4+. The
relationship is unchanged; what the split buys is the room to say something
about the Skink standing next to them.

One convention falls out and is worth writing down. A profile whose Melee
Attack exceeds its Melee Defence by one fights its own kind on a 4+, and so
does a profile where the two are equal -- the truncation absorbs the odd
rung. So the gap between a model's own two numbers is the whole of what it
says about itself: nothing or one is an ordinary fighter, two is
aggressive, minus two is defensive. Two defensive models meeting each other
grind at 5+ apiece, which is a consequence to want deliberately rather than
to discover.

== The lattice

Eleven species are placed. They were settled one at a time, and they turned out
to make a grid rather than a list -- which is worth seeing before anything
else is placed against them.

Read the pair as two independent things. Its *centre*, the average of the two
numbers, is how good the model is at fighting. Its *gap*, Melee Attack minus
Melee Defence, is what kind of fighter it is. One number can express the first
and never the second.

#minitable(
  ("Species", "Melee Attack", "Melee Defence", "Centre", "Gap", "Reads as"),
  ("High Elf", "5", "7", "6", "-2", "trained to not be where the blow falls",
   "Wood Elf", "6", "6", "6", "0", "equally good at both halves",
   "Dark Elf", "7", "5", "6", "+2", "trained to kill, and careless of the cost",
   "Chaos Warrior", "6", "5", "5.5", "+1", "armoured enough not to need the defence",
   "Dwarf", "4", "5", "4.5", "-1", "immovable rather than quick",
   "Saurus", "5", "4", "4.5", "+1", "spawned for it",
   "human", "4", "4", "4", "0", "the baseline everything else is read against",
   "Skaven", "3", "4", "3.5", "-1", "would rather not be here",
   "Orc", "4", "3", "3.5", "+1", "swings first and asks later",
   "Skink", "2", "4", "3", "-2", "cannot hurt you, hard to catch",
   "Kroxigor", "3", "2", "2.5", "+1", "the swing lands, and so does theirs"),
)

The top three are what the split was for. Three elf kindreds of identical
competence, differing only in character: the Asur defensive, the Asrai even,
the Druchii aggressive. With one number they are all Weapon Skill 6, or they
are unequally good at fighting, and there is no third answer. The same shape
repeats twice further down -- Dwarf against Saurus, Skaven against Orc -- so
the grammar is not a special pleading for elves.

== The lattice is not a power ranking

It places melee skill and nothing else, and among the heavy infantry of the
setting melee skill turns out to decide almost nothing. These are the House
editions -- the rules actually played -- at fourteen points a model:

#minitable(
  ("At fourteen points", "MA", "MD", "S", "T", "A", "Armour", "Points"),
  ("Saurus Warrior, hand weapon and shield", "5", "5", "4", "4", "2", "4+", "14",
   "Chaos Warrior, heavy armour", "6", "5", "4", "4", "2", "4+", "14",
   "Black Orc, heavy armour and free shield", "4", "4", "4", "4", "2", "3+", "14",
   "Dwarf Longbeard, heavy armour and shield", "4", "6", "4", "4", "1", "3+", "15.5"),
)

Every pairing in that table is a 4+ to hit, in both directions, under the
proposed chart. The Melee Attack values run from 4 to 6 and the Melee Defence
from 4 to 6, and no gap between any two of them is wide enough to move the
roll. What separates these models is Strength, armour and Mighty Blow, and the
duel bears it out:

#minitable(
  ("Saurus against", "First round", "Every round after"),
  ("Chaos Warrior", "0.389 / 0.333", "0.389 / 0.333",
   "Black Orc", "0.292 / 0.556", "0.292 / 0.333",
   "Dwarf Longbeard, shield", "0.292 / 0.250", "0.292 / 0.167",
   "Dwarf Longbeard, great weapon", "0.519 / 0.625", "0.519 / 0.278"),
)

The Saurus wins two of those and loses two. It beats the Chaos Warrior on
Predatory Fighter, which turns each natural 6 To Hit into another Attack; it
loses the first round to a great weapon and takes it back afterwards, because
Mighty Blow is a first-round Strength bonus; and it loses to the Black Orc
outright, in every round, because House gave that model heavy armour and a
free shield and so a better save than the lizard bred for war has in its own
scales.

None of which is a verdict on where the Saurus sits in the lattice. It sits at
5 and 4, below every elf on the board, and that is the column it ought to lose
-- it is neither quick nor trained, only hatched knowing one thing. The Chaos
Warrior reaches its own place through marks and armour and the elves through
weapons, speed and Attacks. A species engineered for war need not be the best
duellist on the shelf, and reading the lattice as a ladder of who is best
misses every one of those routes.

It is also worth noting what the chart does to this group, because it is a
real cost. Today a Longbeard at Weapon Skill 5 hits a Saurus at Weapon Skill 4
on a 3+, and a Chaos Warrior likewise. Under the proposed chart both fall to a
4+. The elite infantry of four armies converge on one number, and whether that
is a simplification or a loss is a matter of taste rather than measurement.

== What is still open

The Skink at 2 and 4 describes the skirmisher. Whether a drilled Cohort
standing in a formed rank is the same model is a real question with a
plausible answer either way -- the discipline of holding a line is not the
slipperiness of refusing one -- and it is left open here.

The rest of the roster is not placed. The Initiative respread needed forty
species and thirty-nine beast classes; this needs the same, twice over, and
each is an argument that can be had on its own.

== The alternatives, measured

Three other routes were measured before this one.

*Leave it alone.* Defensible. The chart is flat and irregular, and neither
has stopped a game. The cost of changing it is 2,007 profiles.

*Respread the ladder and keep the chart.* This is the version that does not
survive contact with the numbers. A uniform bump changes 7% of matchups by
no rule anybody can state, and a non-uniform respread lands each profile on
whichever irregular boundary sits beneath it. The chart has to move first.

*One step every rung instead of every two.* This was the serious rival, and
the placements closed it. On the numbers alone it wins: it cuts the dead
matchups from 63% to 34% and makes every promotion worth the same as every
other, which removes the alternation entirely. What settles it against is
the spread the placements actually use.

The lattice above lives between Melee Attack 2 and 7. Feed a six-rung spread
to a chart that steps every rung and it asks for eleven distinct results; the
chart has five, from 2+ to 6+, so the rest pile up at the ends:

#minitable(
  ("Chart", "Results wanted", "Results available", "Matchups at 2+ or 6+"),
  ("one step every rung", "11", "5", "20 of 36",
   "one step every two rungs", "5", "5", "6 of 36"),
)

Across the eleven-profile grid that is twenty-seven matchups needing a 6+ and
twenty-eight needing a 2+, of a hundred and twenty-one -- a High Elf an Orc
cannot touch at all, a Kroxigor that everything trained hits on a 2+. Stepping
every two rungs leaves the same grid with four of each and everything else
between 3+ and 5+.

A six-rung spread with one-rung granularity is a two-rung-step design,
whether or not it was built as one. The cost is the one already stated: a
single rung of difference is visible against only about half of the corpus,
so the Wood Elf at Melee Attack 6 and the Dark Elf at 7 hit differently
against Melee Defence 3 and 5 and identically against 2, 4, 6 and 7. Their
three-way split survives because their gaps are two apart. The individual
rung between them does not.
