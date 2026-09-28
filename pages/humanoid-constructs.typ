// The working behind two proposals -- "The Terracotta Sentinel becomes the wall
// it is described as" (Grand Cathay) and "The Necrofex Colossus needs nobody's
// permission" (Vampire Counts). Both name this page.
//
// Profiles are read from grand-cathay/3.0 and vampire-counts/3.0, neither of
// which has a House edition, so both changes are against their base books. The
// Necrofex is printed in three books; rules are read from the House rulebook,
// src/rulebook/3.11-house.typ.
//
// The lore quoted here is NOT from any book in this repository: the WAP army
// books are lists and rules and carry no descriptive text.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= What a man-shaped statue does with its feet

The Avatar of Khaine proposal turned on a small mechanical fact with a large
consequence. A Stomp inflicts automatic hits, and the rulebook closes the rule
with: *"unless specified, any special rules or bonuses that apply to the model's
normal attacks do not apply to its Stomp."*

So a Stomp reads no Weapon Skill, carries no special rules, and triggers
nothing. On the Avatar -- Weapon Skill 6, Killing Blow, and a rule that grants a
further Attack for every Killing Blow -- that meant the half of its output doing
the most damage was the half that could do none of the three things the creature
is for.

There is a second reason, and it is simpler: *these are people-shaped*. A
Carnosaur has four feet and half a ton over each of them. A statue of a warrior
has two, and walks upright on them. It can put one down on somebody. It cannot
trample a regiment, whatever its troop type says.

*So a human-shaped construct prints Stomp (1), reaching Line of Sight 1* --
one heavy foot, on infantry, and its real damage somewhere else.

== Where the line sits

Scale overrides shape, and the corpus makes the cut in an obvious place. A
man-shaped thing of six Wounds on a 50mm base is a large man. A man-shaped thing
of ten Wounds with limbs the size of tree trunks on a 150mm base is a building
that walks.

#minitable(
  ("Humanoid construct", "Wounds", "Stomp"),
  ("Avatar of Khaine", "5", "1, at reach 1 -- settled",
   "Terracotta Sentinel", "6", "1, at reach 1 -- this proposal",
   "Necrofex Colossus", "6", "1, at reach 1 -- this proposal",
   "The Porter", "6", "1, at reach 1 -- not yet taken",
   "Necrolith Colossus", "6", "still the troop type's D6 at reach 3",
   "Hierotitan", "6", "still the troop type's D6 at reach 3",
   "Rogue Idol of Gork", "10", "D6 at reach 3 -- published, and correct",
   "Khemric Titan", "10", "D6 at reach 3 -- untouched, and correct"),
)

Two rows in that table are loose ends this proposal creates and does not close.
The *Necrolith Colossus* and the *Hierotitan* are six-Wound humanoid statues
that the Tomb Kings proposal changed the armour of and said nothing about the
Stomp of. If the principle above is right they want Stomp (1) as well, and that
proposal wants amending to say so.

== The Terracotta Sentinel

#quote[Sentinels often stand silent for centuries, watching over fields, cities,
and rivers, or forming part of the Great Bastion itself, where their helms and
weapons serve as battlements and buttresses.]

The Sentinel is a wall. It is Toughness 7 with six Wounds, Regeneration, and
Weapon Skill 4 with a polearm at Initiative 1 -- nothing about it is precise and
nothing about it is fast. Where the Avatar earned its Attacks back because
killing is the only thing it does, the Sentinel's job is to be stood in front of
something, so what it gets back is the ability to be stood in front of things.

*Battlements and Buttresses.* A unit that charges the Terracotta Sentinel counts
as making a disordered charge. It is nonetheless limited to a maximum of +2
combat result for extra ranks, as though it had charged.

Both halves come from the rulebook. A disordered charge is what the obstacle
chapter already inflicts -- #quote[models charging a unit behind an obstacle
count as making a disordered charge] -- and a unit making one *"is not subject
to any rules that only apply when a unit charges"*.

=== Why that second sentence is not padding

Without it the rule does almost nothing to the thing a wall most needs to stop.
The rank bonus caps at +3 normally and at +2 for a unit that has charged; a
disordered charger escapes its own cap and may claim the extra rank back:

#minitable(
  ("Charging the Sentinel", "Combat result normally", "Disordered", "Net"),
  ("A monster, no ranks", "+1", "0", "\-1",
   "Two ranks of infantry", "+3", "+2", "\-1",
   "Three or more ranks", "+3", "+3", "0"),
)

A wall that stops heroes and lets hordes through is backwards, and one clause
fixes it.

=== And it is measurable, because of Unstable

The Sentinel is *Unstable*: every point it loses the combat by costs it a Wound,
with no saves of any kind. Combat resolution is therefore damage, and denying a
charger its +1 is worth exactly one Wound on a six-Wound model, every time it is
charged -- which will be often, because it is a wall.

#minitable(
  ("The charger is denied", "Wounds the Sentinel does not take"),
  ("+1 combat result for charging", "1.00, always",
   "Impact Hits (D6) at Strength 5", "0.41",
   "Impact Hits (D3) at Strength 6", "0.56",
   "Devastating Charge", "0.06"),
)

=== What it costs

The Stomp coming down from the troop type's D6 at reach 3 to a single blow at
reach 1 is a *32% cut* in output -- and unlike the Avatar there is nothing to
convert it into, because the Sentinel has no Killing Blow and no cascade. Its
heavy armour becomes Natural Armour (4+) at the same value with the *Stone
Construct* floor, worth 3%.

*235 points becomes 190*, and that number is a judgement rather than a
calculation: everything else in these passes has been damage or durability on
one model, and this is an effect on whoever charges it.

The four material upgrades are untouched. #quote[Sentinels can be made of any
stone, usually matching the land which they protect] is the lore endorsing a
menu, and Jade, Obsidian, Warpstone and Granite are both variation the fiction
supports and things you can see on the model -- the two tests these passes have
used.

== The Necrofex Colossus

#quote[A Necrofex Colossus is no mere mindless thrall, but possesses a deathly
will and dark appetite of its own, often outlasting its creator or even proving
their undoing should its master's control slip even for a moment.]

Most of this creature is already well made. #quote[Walking vortexes of deathly
energies around which the souls of the damned howl] is *Vortex of Death* and
*Screams of the Damned*, near enough word for word. What has no rule is the
will.

=== A will of its own

The Vampire Counts Undead rule grants exactly one privilege: *"they may make
march moves if they are within the Army General's Inspiring Presence range or
are joined by a character with the Lore of Necromancy."* In this book,
permission to march *is* what a necromancer's control amounts to.

*A Will of Its Own.* The Necrofex Colossus may make march moves whether or not
it is within range of the Army General's Inspiring Presence, and whether or not
it is joined by a character with the Lore of Necromancy.

Twelve inches instead of six when it is operating alone, and the creature that
outlasts its creator stops needing him to move.

=== Deathly energies

*Deathly Energies.* At the end of each round of close combat, every enemy unit
in base contact with the Necrofex Colossus suffers D3 hits at Strength 3 with
the Armour Piercing (2) special rule.

This is a drain rather than a weapon, and the Armour Piercing is there so that
plate does not simply ignore it -- against Chaos Warriors it takes the aura from
0.22 Wounds through to 0.44. It is not an answer to heavy armour and is not
meant as one: at Strength 3 the Strength contributes no save modifier at all, so
nothing at this scale threatens a 3+.

*Corpse Killers*, which already existed at +20 as "all enemy units in base
contact suffer D6 Strength 2 hits", becomes the upgrade that makes the drain
D6 hits instead of D3. The anatomy is printed and the upgrade makes it bigger,
which is the pattern the Chimera proposal settled on.

*Scythes and Barbs* needs a word taken out. It re-rolls "the number of Random
Attacks *and Stomp hits*", and a flat Stomp of 1 has nothing to re-roll. It
comes out level, because there are now 2D3+1 Random Attacks to re-roll instead
of D6+1.

=== The attack table, measured

The Necrofex rolls a D6 each round: *Batter and Slash* on 1-2, *Impale* on 3-4,
*Screams of the Damned* on 5-6. Those three are properly differentiated, which
is more than the Giant's two charts manage:

#minitable(
  ("Target", "Batter and Slash", "Impale", "Screams of the Damned", "Best"),
  ("Goblins, Ld6", "1.88", "2.78", "4.03", "Screams",
   "Empire state troops, Ld7", "1.88", "1.67", "3.11", "Screams",
   "Chaos Warriors, Ld8 I5 3+", "1.56", "0.42", "2.28", "Screams",
   "Saurus, Initiative 1", "1.88", "2.78", "2.28", "Impale",
   "Ogres, three Wounds each", "1.88", "5.00", "2.28", "Impale",
   "A Dragon, Ld9", "1.12", "1.17", "1.56", "Screams"),
)

Impale beats the slow and the multi-Wound; Screams beats low Leadership and
ignores armour entirely. *Batter and Slash never wins anything* -- it is the
worst or joint-worst against all six, and it is a third of the table.

It goes to *Random Attacks (2D3+1)*: range 3 to 7 against D6+1's 2 to 7, mean 5
against 4.5, and a third of rolls landing exactly on 5. The floor rises and the
spread tightens, which suits a machine that does not tire.

=== What it costs

#minitable(
  ("", "Goblins", "Empire", "Chaos Warriors", "Saurus", "Ogres", "A Dragon"),
  ("As printed", "5.81", "5.13", "3.85", "5.23", "5.97", "1.28",
   "As proposed", "4.80", "4.12", "2.62", "3.77", "3.79", "1.56",
   "Change", "\-17%", "\-20%", "\-32%", "\-28%", "\-37%", "+21%"),
)

Down against ranks and up against the large, which is the third time this pass
has produced that shape from the same cause: a Stomp only ever reaches small
things, so taking it away moves a creature's weight towards big ones.

*240 points becomes 195*, or 220 with Corpse Killers bought. The Zombie Pirates
printing, which carries a Cannon Arm at 270, moves to about 220 on the same
arithmetic.

== What it costs altogether

Two entries, in two books with no House editions, so both changes are against
base books -- and the Necrofex is printed in three books, so Ordo Draconis and
Zombie Pirates move with Vampire Counts.

Two new rules. *Battlements and Buttresses* is the obstacle chapter's disordered
charge with one clause closing a loophole in the rank bonus. *Deathly Energies*
is *Corpse Killers* made innate and smaller, with Armour Piercing added so that
armour does not shrug it off. *A Will of Its Own* is a negation of one clause of
the Undead rule rather than a rule of its own.

And both rest on the rulebook proposal that lets an entry print its own Stomps,
without which neither can be written at all.
