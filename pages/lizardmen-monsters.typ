// The working behind "Every Lizardmen monster is given a job", in the Lizardmen
// chapter of the proposals document. Every profile is read from the House
// edition, src/lizardmen/3.0-house.typ, and every rule from the House rulebook,
// src/rulebook/3.11-house.typ. Damage figures are expected unsaved Wounds per
// round against the named target, computed on the charts as printed.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= The Lizardmen monsters, one at a time

Seven monsters, and until now the rulebook told you the same three things about
every one of them: Line of Sight 5, Stomp (D6), Terror. Those come from the
Monsters troop type and nothing in an entry ever contradicted them, so a
Carnosaur and a Bastiladon saw the same distance and trod on the same things
with the same weight.

This page is what happened when each of them was read against its own
description and given a job. The method was the same every time: take the role
from what the creature is, find the mechanism in rules the game already has,
and price it off the book's own worked examples.

== What the troop type says today

#minitable(
  ("Troop type", "Line of Sight", "Stomp", "May Stomp"),
  ("Monsters", "5", "D6", "Line of Sight 3 or less",
   "Monstrous Creatures", "3", "D3", "Line of Sight 1 or less"),
)

Both also grant Independent and Terror, and neither changes. What changes is
that an entry may now print its own Line of Sight, its own number of Stomps and
its own reach -- and that one of the seven prints *none*.

== The Carnosaur

An apex predator that hunts other large beasts, delivered to its target by an
Oldblood and uncontrollable from the moment it draws blood. Its blurb is
unusually specific about what its jaws do: they *hack through huge chunks of
flesh on larger prey*, and they are *undeterred by the thickest hides or the
toughest bony plates*.

The first of those is Multiple Wounds (D3), which it already has. The second is
Strength, and restoring the 7 it carried in eighth edition does it exactly,
because Strength is the only characteristic that is worth nothing against small
targets and everything against armoured ones:

#minitable(
  ("Target Toughness", "3", "4", "5", "6", "7", "8"),
  ("Strength 6 wounds on", "2+", "2+", "3+", "4+", "5+", "6+",
   "Strength 7 wounds on", "2+", "2+", "2+", "3+", "4+", "5+"),
)

Identical against anything Toughness 4 or below, a full step better against
everything above it, and the armour modifier goes from -3 to -4. What it does
to the creature it hunts, before the Multiple Wounds multiplier:

#minitable(
  ("Carnosaur into", "Strength 6", "Strength 7", "Change"),
  ("Dread Saurian", "0.56", "1.00", "+80%",
   "Bastiladon", "0.89", "1.48", "+67%",
   "Stegadon", "1.33", "1.78", "+33%",
   "Aggradon", "1.67", "1.67", "--",
   "Saurus Warrior", "1.67", "1.67", "--"),
)

The Bastiladon gaining second most is the clause landing precisely: the
toughest bony plates in the book are the ones that stop mattering. And at
Strength 7 against Natural Armour 2+ the Bastiladon keeps a 6+, which is the
blurb's own word -- that armour *sometimes* thwarts the bite of a Carnosaur.

*Devastating Charge rather than a flat Attack.* The Carnosaur is a pouncer, and
the two differ in exactly one state:

#minitable(
  ("Situation", "Attacks"),
  ("charges, unblooded", "5",
   "later rounds, having drawn blood", "5",
   "charges while already blooded", "6",
   "charged by the enemy, unblooded", "4"),
)

A flat Attacks 5 would give it the same number in every one of those. Under
Devastating Charge it is identical when charging and one lower only when
standing still and unblooded -- the ambushed predator, and nothing else. It
also makes Blood Frenzy the engine rather than the decoration: the beast is at
its best having killed, which is the blurb's sentence.

*Stomp (1), and one Impact Hit.* A Stomp of D6 reaching Line of Sight 3 was the
Carnosaur's best weapon against rank infantry and could never touch the
Stegadons and Dread Saurians its lore names as prey, every one of which is a
Monster out of Stomp range. One Stomp at reach 2 and one Impact Hit moves that
damage from every round against the wrong targets to the instant it lands, on
anything:

#minitable(
  ("Carnosaur into", "Charge, Stomp (2)", "Charge, Stomp (1) + Impact (1)", "Later rounds"),
  ("Empire Spearmen", "4.44", "4.44", "3.89 to 3.06",
   "Saurus Warriors", "3.75", "3.75", "3.33 to 2.50",
   "Stegadon", "4.44", "5.11", "unchanged",
   "Dread Saurian", "2.50", "3.00", "unchanged"),
)

Leadership rises from 5 to 7, which changes no die roll -- a ridden monster
uses the rider's 8 -- but stops the profile calling a creature *far from
dull-witted* stupid. Bloodroar stops being a 15-point upgrade and becomes what
a Carnosaur simply is. And the Scar-Veteran may ride one, as the lore has
always said and the list has never allowed.

== The Stegadon

A living siege engine whose blurb names three separate kills: *foes not slain
outright by the impact of its charge are crushed to bloody pulps by its sheer
bulk or speared upon the ends of one of the Stegadon's imposing spikes.* The
entry had a rule for the first and inherited one for the second.

Impact Hits stay. They are the one place in the corpus where momentum is
genuinely the point, and the Stegadon is the creature that earns them. What
changes is the balance between the charge and the weight: Attacks fall from 4
to 3, because its Attacks were never the point, and the Stomp becomes 2D3.

#minitable(
  ("Stegadon into", "Charge, today", "Charge, settled", "Later, today", "Later, settled"),
  ("Empire Spearmen", "8.89", "8.75", "5.14", "5.00",
   "Saurus Warriors", "5.56", "5.56", "3.06", "3.06",
   "Kroxigor", "5.93", "5.83", "3.43", "3.33",
   "Carnosaur", "2.71", "2.50", "0.83", "0.62",
   "another Stegadon", "1.99", "1.81", "0.74", "0.56"),
)

The 2D3 refunds the lost Attack almost exactly against anything it can tread
on, and against the two things it cannot the Stegadon drops about a quarter. It
stops being a generalist by arithmetic rather than by decree: untouched as a
rank-flattener, measurably worse at duelling large beasts.

The spikes get no rule. They fold into the Stomp, and a fourth damage source on
one entry is one too many.

*The Ancient keeps its Attacks.* The upgrade grants +1 Strength and Natural
Armour (6+), which stacks with the 4+ it already has to reach 3+ -- the blurb's
*bony plates become much harder as they age* and its *almost impenetrable suit
of plate armour*, exactly. But it also took an Attack, on a creature the same
paragraph calls *the most ferocious of their entire species*. That comes off,
the -1 Initiative stays, and the price goes from 30 to 45.

*Unstoppable Stampede buys the Stomp, not the charge.* It currently grants
Devastating Charge, which is the wrong rule twice over: it points at the
Attacks the entry has just given up, and Devastating Charge is now the
Carnosaur's. As +1 Stomp it buys 0.83 wounds in every round against 0.56 in one
-- and a stampede is by name the thing that does not stop once started. That
also separates the two upgrades cleanly: Sharpened Horns buys the charge,
Unstoppable Stampede buys the grind.

== The Bastiladon

A walking fortress whose true abilities, its blurb says, *rely heavily on
fighting on the defensive.* The entry already carried two rules that say so and
that nothing else in the corpus has: *Impervious Defence*, which denies an
enemy any combat result bonus for taking it in the flank or rear, and
*Thunderous Bludgeon*, one Attack a round resolved at Strength 10 with +1 To
Hit into its own rear arc.

Weapon Skill falls from 3 to 2, and it sharpens both. At Weapon Skill 2 the
Bastiladon hits a Weapon Skill 3 or 4 target on 4+ and the tail hits on 3+, so
the bludgeon lands better than its ordinary blows did before. The defensive
cost falls almost entirely on attackers who cannot hurt it:

#minitable(
  ("Attacker Weapon Skill", "hits it, WS3", "hits it, WS2", "Change"),
  ("3", "4+", "3+", "+33%",
   "4", "3+", "3+", "--",
   "5", "3+", "2+", "+25%",
   "7", "2+", "2+", "--"),
)

Weapon Skill 4 is unchanged, and Weapon Skill 4 is the Carnosaur, the Dread
Saurian, Saurus, Chaos Warriors and Black Orcs -- everything that actually
threatens it. What gains are Empire Spearmen at Strength 3 against Toughness 7
and a 2+ save.

*Layered Carapace* is the new rule, and it is the blurb's other sentence:
*even those blows that crack the outermost armour plates cannot penetrate
deeply into the beast, due to the Bastiladon's alternating layers of thick
leathery skin and additional scales.* An attack with Multiple Wounds has its
Wounds halved, rounding up -- the same shape as the Ogre Kingdoms Stonehorn's
Stone Skeleton, under the Bastiladon's own name. With Toughness 7 beside it:

#minitable(
  ("Into the Bastiladon", "Today", "Settled", "Change"),
  ("Carnosaur", "2.96", "1.48", "-50%",
   "Carnosaur, charging", "3.70", "1.85", "-50%",
   "Dread Saurian", "6.67", "3.56", "-47%",
   "Stegadon", "0.33", "0.17", "-50%"),
)

Its own output falls by a quarter against what it can tread on and by two
thirds against what it now cannot, which pays for the defence and keeps it at
175 points.

== The Arcanadon

Not a Thunder Lizard, but the closest thing a temple-city can field: a
sauropod, and the only one in the army. That explains the entry -- Weapon Skill
2 because it is a body with a neck rather than a fighter, and no Impact Hits
because a long-necked browser has neither the acceleration nor the frame for
momentum, which is why the House edition already took them off.

It gets three things and nothing else.

*Height.* Line of Sight 7, the tallest thing the Lizardmen can put on the
table, above the Dread Saurian's 6. The rulebook makes that a real
characteristic rather than a label: a model with a higher value sees and is
seen over anything lower, and ignores the cover shorter models would grant. For
a creature whose whole purpose is a bound spell and three javelins, that is the
difference between having a target and not.

*A tread that reaches further than its height would suggest it should.* Line of
Sight 7 with a reach of 4 -- one short of the pattern the others follow --
because being tall is not the same as being able to step on something large.

*And a spell.* Power of the Ancients contains *Fiery Blast*, which the rulebook
prints as a Level 3 spell cast on 9+, and the entry has never said what it is
bound at. Beside the other two devices in the army that is the heaviest of the
three:

#minitable(
  ("Device", "Bound as", "Cost"),
  ("Solar Engine, on the Bastiladon", "Level 1, cast on 6+", "+40",
   "Engine of the Gods, on the Stegadon", "Level 2, cast on 8+", "+50",
   "Power of the Ancients", "Level 3, cast on 9+", "the entry, at 195"),
)

Attacks fall from 3 to 2. With Weapon Skill 2 its melee is between 0.44 and
0.83 wounds a round, which is a rounding error, and the Stomp of 2 is the whole
of what it does. It stomps a great many things and not very often, which is
what a plodding animal on pillar legs should do.

== The Troglodon

*Pale Death*, and one of Lustria's deadliest hunters -- and under the rules as
printed it was a bad generalist. Six jobs on a 155-point model, none of them
above average:

#minitable(
  ("What it did", "What that delivered"),
  ("ranged anti-large, Spit Venom", "one shot, 0.46 to 0.93 wounds",
   "melee beast", "0.73 to 1.46, the weakest of any monster in the book",
   "magic conduit, Arcane Vassal", "the Skink Priest's ability; the beast hosts it",
   "channelling, the Divining Rod", "one D6 on a 5+, 0.33 dice a phase",
   "army buff, Primeval Roar", "about 2.7 wounds, once per battle",
   "Movement 7 and Aquatic", "real, and nothing on its own"),
)

Two of those belong to the Oracle rather than the beast and stay -- a mount
carrying a specialist is a platform, not a generalist. The rest concentrate
into one sequence the rules already supported without saying so.

*Quick Shot is the design.* The rulebook allows it when declaring a charge,
immediately after rolling the charge distance: the Troglodon spits on the way
in and then bites, which is the blurb's order exactly. *The predator is known to
spit this toxic bile, which helps the Troglodon triangulate their victim's
location, as the fluid makes a distinctive sizzling sound as it sears flesh.*
*Triangulate* makes that a rule -- a unit hit by Spit Venom is located, and the
Troglodon re-rolls failed To Hit rolls against it for the rest of the turn.
It fires only when the spit lands, which at Ballistic Skill 4 is two turns in
three; a blind animal that misses stays blind.

*Pale Death is the venom, and it degrades rather than kills.* Each unsaved
Wound against a Character, Monstrous Creature or Monster inflicts -1 Strength
and -1 Toughness -- the same shape as the Blade of All-Frost and the Glaive of
Putrefaction, both of which already restrict themselves to that tier. Against a
Stegadon:

#minitable(
  ("Round", "Its Toughness", "Its Strength", "Wounds dealt", "Cumulative"),
  ("1", "6", "5", "1.49", "1.49",
   "2", "5", "4", "1.67", "3.16",
   "3", "3", "2", "2.26", "5.00"),
)

Dead in three rounds rather than five, and by the third it is striking at 30%
of its output -- because a monster's Stomp and Impact Hits both resolve at its
own Strength, so the venom takes its damage away on three fronts at once. A
Saurus Warrior's output against the same target doubles as its Toughness falls.

That is deliberately not the Carnosaur's job. The Carnosaur kills a monster;
the Troglodon dissolves one. Multiple Wounds comes off the entry entirely,
including off the spit, because it is the same venom in both and one toxin
should do one thing. Predatory Fighter comes off too: thirteen entries in the
army carry it and the other twelve are Saurus-caste or Saurus-kin, with the
cavalry carrying it on the rider. And Primeval Roar becomes a Level 1 bound
spell on a 6+, repeatable, which is where the Oracle's magic belongs and which
suits a buff the once-per-battle version was too small to justify.

== The Coatl

A feathered serpent ten to twenty feet long, intelligent, sacred, and *pacific
creatures, as typified by their unwillingness to attack even Pygmies unless
severely provoked.* It is not an animal and it is not large. It is a Monstrous
Creature.

That single change does most of the work. The troop type gives it Stomp (D3) at
reach 1 rather than D6 at reach 3, and Line of Sight 3 rather than 5 -- and then
the entry prints **no Stomp at all**, because it is a snake and snakes do not
tread on things. It is the only creature in the roster whose printed number is
none, and it is the case that no rule deriving Stomps from size can ever
express.

*Their bite is venomous*, says the blurb, and the entry had no Poisoned
Attacks. With that added and the trampling gone:

#minitable(
  ("Coatl into", "As printed", "Settled", "Change"),
  ("Empire Spearmen", "5.14", "2.22", "-57%",
   "Saurus Warriors", "3.06", "1.39", "-55%",
   "Kroxigor", "3.43", "1.85", "-46%",
   "Cold One Riders", "2.44", "1.11", "-55%",
   "Stegadon", "0.74", "1.11", "+50%",
   "Carnosaur", "0.83", "1.11", "+33%"),
)

It stops trampling and starts biting: halved against everything small, up by a
third to a half against the large, because the venom takes Strength 5 from
wounding Toughness 6 on a 5+ to a 4+.

Wounds fall to 4 and Natural Armour to 6+, which is what a feathered snake
should have -- its defence is Fly (8), Magic Resistance (3) and a -1 to be shot
at, not surviving being hit. Averaged across the Strengths it meets, effective
Wounds fall from 6.7 to 4.2.

Together those halve its damage and take two fifths of its staying power, and
the two multiply: its combat power falls 63%, from 18.2 to 6.1. At the rate the
settled Troglodon is priced, that body is worth 115 points, and the Level 2
Wizard, the flight and the Magic Resistance carry it to 175 -- level with the
other serpent in the army, doing the opposite job.

*Guardian of the Sacred Places needs no companion rule.* The spell moves a
forest 2D3", and the blurb explains it: *they alter the jungle around them to
draw invaders away from the sacred places in which they dwell, and into the
leech-infested swamps surrounding them.* The disorientation the lore describes
-- *the skies darken and the jungle shifts, and the invaders are soon hopelessly
disoriented* -- is that spell and the Magical Storm together, already printed.

== The Dread Saurian

The largest creature in the setting, and the one entry that is allowed to be
good at everything, because it costs twice what anything else does and the
composition rules ration it without a word being written: at 25% for Rare it is
illegal below a 1,600-point game.

Twelve Wounds rather than ten, and a Stomp that reaches Line of Sight 4 rather
than 3. Line of Sight drops from 7 to 6, below the Arcanadon -- Line of Sight
measures height and this is the *largest* thing in the setting rather than the
tallest; a Thunder Lizard penetrates above the canopy where a Dread Saurian's
fins only brush the top of it.

#minitable(
  ("Dread Saurian into", "Reach 3", "Reach 4", "Change"),
  ("Empire Spearmen", "6.25", "6.25", "--",
   "Kroxigor", "9.58", "9.58", "--",
   "Carnosaur", "5.00", "7.92", "+58%",
   "Stegadon", "6.67", "6.67", "--",
   "another Dread Saurian", "4.00", "4.00", "--"),
)

Twelve Wounds buys it roughly a round against everything that threatens it: 4.0
to 4.8 rounds against a charging Carnosaur, 5.5 to 6.6 against a Stegadon.

*The roar becomes a rule.* Enemy units within 12" suffer -1 Leadership. The
corpus prices that radius as a Daemon Prince's -- Be'lakor's *Dark Master* is
the same effect at the same range -- while a 6" version is a 20 to 30 point
purchase on the Beastmen's Roaring Brute and the Manbane Standard. And it
compounds with what the model already has, since a Monster causes Terror and
Terror is resolved by a Leadership test: the roar and the fear are the same
event.

Its five relics are untouched. They are items the temple-city straps to the
beast rather than facets of it -- *ceremonial titans carry the most precious
relics of ancient days* -- which is why four of the five are defensive on a
creature whose own profile is already the heaviest in the army, and why the
Blazing Configuration granting Impact Hits says nothing about charging. It is
Chotec's fire, not momentum.

== The ladder that came out of it

#minitable(
  ("", "Points", "Line of Sight", "Stomps", "Reach", "What it is for"),
  ("Troglodon", "175", "4", "1", "2", "dissolves large things with venom",
   "Bastiladon", "175", "4", "2", "2", "a fortress that breaks ribs",
   "Coatl", "175", "3", "--", "--", "a flying caster that bites",
   "Carnosaur", "190", "4", "1", "2", "pounces, then cannot be recalled",
   "Arcanadon", "195", "7", "2", "4", "the tallest thing on the field",
   "Stegadon", "200", "5", "2D3", "3", "flattens ranks on the charge",
   "Dread Saurian", "400", "6", "D6", "4", "the apex, tilted large"),
)

Line of Sight runs from 3 to 7 where the troop type gave every one of them 5.
Stomps run from none to D6. Four of the seven sit on a reach two below their own
Line of Sight and the Arcanadon deliberately does not, which is why the reach is
printed rather than derived.

== What it costs

Seven entries in one book, and one of them -- the Coatl -- changes troop type,
which touches its Unit Strength, what may tread on it and how a Skink High
Priest riding it is resolved.

Four rules are new and none of them is a new mechanism: *Layered Carapace* is
the Stonehorn's Stone Skeleton, *Pale Death* is the Blade of All-Frost and the
Glaive of Putrefaction, and the Dread Saurian's roar is Be'lakor's Dark Master.
*Triangulate* is the furthest from its precedent -- Stromfel's Fin, a
fifteen-point magic weapon in Pirates of Sartosa, re-rolls failed To Wound
rolls against a unit that has already taken wounds. Triangulate keys on the
model's own shot rather than on any prior wounding, and re-rolls To Hit rather
than To Wound, which makes it a variation on a rule the corpus already has.

Two prices move on entries beyond the monsters themselves, because the
Carnosaur and the Coatl are also character mounts, and the Skink Priests entry
carries both.

And the Monsters troop type stops being the last word. It still grants Line of
Sight 5 and Stomp (D6) as the default, and an entry may now say otherwise --
which is the whole of the change, and the reason a snake no longer tramples.
