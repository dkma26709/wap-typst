// The working behind "Three greenskin monsters are given the thing they are
// for", in the Orcs & Goblins chapter of the proposals document. Every profile
// is read from the House edition, src/orcs-goblins/3.0-house.typ, and every
// rule from the House rulebook, src/rulebook/3.11-house.typ.
//
// Damage figures are expected unsaved Wounds per round against the named
// target, computed on the charts as printed. Durability figures are hits
// needed to kill, averaged over Strength 3 to 8.
//
// The lore quoted here is NOT from any book in this repository -- the WAP
// army books are lists and rules and carry no descriptive text. It is from
// the Warhammer wikis (Lexicanum, Warhammer Wiki), read through search
// summaries rather than fetched directly, so the wording is theirs and is
// reported at one remove.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= Three greenskin monsters, and what each is for

None of these three is broken. Each has a different kind of gap between what
its description says it is and what its entry lets it do, and the three gaps
are worth seeing side by side because they are not the same gap.

The Wyvern is in the wrong troop type and carries its poison in the wrong
place. The Arachnarok cannot do the one thing every account of it leads with.
And the Rogue Idol is made of two things, stone and the Waaagh!, and its rules
mention neither.

== The Wyvern

Every source separates a Wyvern from a Dragon the same way. They are "often
misidentified as smaller, fouler-smelling and much less intelligent Dragons",
and what separates them is "smaller size, poisonous sting and vicious
temperament". The venom is in the tail, which "drips with black venom that
hisses when it touches the ground". They are "cannibalistic predators",
"opportunistic hunters and not above eating carrion", and in battle they will
"land right in the middle of an enemy unit and feast upon their flesh in the
droves while its rider hacks at the enemy that are still left".

Three things follow, and the entry does none of them.

=== The venom belongs in the tail

The entry gives blanket Poisoned Attacks across three undifferentiated
Attacks -- the sting, which is the creature's defining feature, expressed as a
flat modifier on its bite and claws. The book already owns the fix twice over.
The Manticore's *Venom Tail* upgrade, at 15 points, gives "an additional
Attack that has the Poisoned Attacks special rule"; the Arachnarok's *Venom
Surge* nominates one Attack and gives it Poisoned Attacks with Multiple
Wounds.

So the Wyvern's is innate rather than bought, and carries the Multiple Wounds
because the sting is its whole identity rather than an optional extra:

*Venom-drenched Tail.* The Wyvern has one additional Attack. It has the
Poisoned Attacks and Multiple Wounds (D3) special rules.

And blanket Poisoned Attacks comes off, because the lore says the venom is in
one place.

=== The landing happens once

Stomp is every round. Landing is not. The lore's signature image -- coming
down in the middle of a regiment -- is a charge, and Impact Hits are charge-
round hits. So the Wyvern takes *Impact Hits (D3)* and prints *no Stomp at
all*, which makes it the second entry in this pass after the Coatl to do so.

The Preyton settles the number: a flying Monstrous Beast with Impact Hits (D3)
at Strength 5, at 70 points. The Wyvern's is one Strength higher on a
considerably better body.

What that swap does is the whole argument for it. Over a three-round combat:

#minitable(
  ("Total unsaved Wounds over three rounds", "Rank infantry", "Cavalry", "Elite infantry", "A monster"),
  ("As printed -- Stomp (D6), reach 3", "14.75", "14.75", "14.75", "4.00",
   "Stomp (2), reach 2", "12.00", "12.00", "10.25", "4.25",
   "Impact Hits (D3), no Stomp", "8.67", "8.67", "6.92", "5.25"),
)

Against infantry it falls 41%. Against a monster it rises 31%. Impact Hits
carry no reach restriction, so they land on whatever the Wyvern charged, where
a Stomp at any sane reach could never touch something large. The creature
stops being a generic flying beatstick and becomes a thing you point at big
targets -- which is what a creature whose only distinction from a dragon is its
sting ought to be.

=== It is not a dragon, and the troop type should say so

Base size proves nothing here and an earlier draft of this page leaned on it
wrongly: 99% of Monstrous Creature base-size entries sit on a size Monsters
also use, and 52 Monsters are on the 50x50 the Wyvern occupies. What actually
separates the two troop types is *Wounds*:

#minitable(
  ("", "Toughness 5 with 4 Wounds", "Toughness 5 with 5 Wounds"),
  ("Monstrous Creature (n=35)", "30 (86%)", "2 (6%)",
   "Monster (n=114)", "0 (0%)", "23 (20%)"),
)

Not one Monster in the corpus is Toughness 5 with four Wounds. Monstrous
Creatures have four; Monsters have five or more. So the Wyvern is a Monster
because of its fifth Wound and nothing else -- and every big winged character
mount in the corpus that is *not* a dragon is already a Monstrous Creature:
Griffon, Manticore, Royal Hippogryph, Celestial Lion, Abyssal Terror, Lammasu.
The Monster-class flying mounts are the Star, Moon and Sun Dragons, the Great
Wyrm and the Maw-krusha -- dragons and dragon-kin, and one Age of Sigmar
import.

Putting the Wyvern in the dragons' troop type is the rules agreeing with the
misidentification. Moving it costs a Wound, which is what "on the smaller side"
should cost.

=== Voracious

The feasting has no expression at all, and the rule for it is already written.
The Beastmen Preyton carries *Endless Malice*: "If the Preyton has killed one
or more models that round of close combat and the enemy unit Breaks, it may not
pursue." The beast stops to eat what it killed. The Wyvern takes the same
clause under its own name.

It pairs with the Carnosaur, which this edition's Lizardmen pass leaves unable
to *restrain* pursuit. One cannot stop chasing; the other will not start.

=== The Wyvern, as it would print

#minitable(
  ("", "M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Points"),
  ("As printed", "4", "5", "0", "6", "5", "5", "3", "3", "6", "160",
   "As proposed", "4", "4", "0", "6", "5", "4", "3", "3", "6", "95"),
)

Monstrous Creature (Draconid), Line of Sight 3. Fly (8), Impact Hits (D3),
Natural Armour (4+). No Stomp. The tail, and Voracious.

The arithmetic off its own 160 gives 95: offence down 15%, the fourth Wound
down 20%, with Line of Sight 3 making it harder to shoot and *Voracious* giving
that back. The Preyton at 70 points -- flying, Impact Hits (D3), Endless
Malice, but Toughness 4 with three Wounds and no save -- leaves 25 points for
the Wyvern's better body, Strength 6 and venom tail.

The sixty-five point fall is the point rather than a side effect. At 160 a
Wyvern was a third of a Warboss's army and rarely worth it.

== The Arachnarok Spider

The spider's problem is the opposite of the Wyvern's: its melee rules are
mostly right and it cannot do the thing every account of it leads with. It is
"feared for its potent poison and *ability to ensnare entire villages with its
thick web*", and it webs nothing. The Lore of da Spider God has *Deadly
Webbing*; the 40-point Catchweb Spidershrine gives its rider that lore. The
signature ability belongs to the passenger.

=== What not to do, recorded because it was tried

The first draft cut the Arachnarok's eight Attacks and stripped its blanket
Poisoned Attacks, on the argument that eight undifferentiated Attacks plus
blanket poison plus *Venom Surge* are three overlapping expressions of one
idea. Measured, every version of that was a *uniform* cut:

#minitable(
  ("Melee change", "Rank infantry", "Elite infantry", "Ogres/Trolls", "A monster", "Average"),
  ("A8 kept, blanket poison dropped", "\-25%", "\-29%", "\-24%", "\-29%", "\-27%",
   "A7, blanket poison dropped", "\-30%", "\-34%", "\-29%", "\-34%", "\-32%",
   "A6, blanket poison dropped", "\-35%", "\-39%", "\-34%", "\-39%", "\-37%",
   "A5, blanket poison dropped", "\-41%", "\-43%", "\-38%", "\-44%", "\-42%"),
)

Nothing there reshapes the creature; it only makes it worse at everything
equally. The argument was flavour rather than mechanism -- blanket poison and
*Venom Surge* do genuinely different things, and "their poison can act like a
hallucinogen, paralytic, or solvent" reads like a creature that should have
poison on everything. So the melee is left alone.

=== The web

It carries no damage, because the web is a trap rather than a weapon:

*Ensnaring Web.* Range 12", no damage, Quick Shot. A unit hit suffers \-2 to
its Movement value, to a minimum of 1, and loses the Fly special rule, until
the start of your next turn. A unit webbed as a Stand & Shoot reaction reduces
its charge range by 2, which may cause the charge to fail.

Three notes on why it is worded that way.

*The debuff is precedented exactly.* Grand Cathay's Great Moon Bird inflicts
"\-2 to its Movement until the start of your next turn" as one of two rules on
a 140-point Monstrous Creature, and does D6 Strength 3 hits alongside it. Ours
is the same number without the damage.

*Quick Shot is what makes it interesting*, and it does three things here. It
lets the spider web a charger at any range, since the rule explicitly overrides
the too-close-to-react restriction; it removes the Moving & Shooting penalty so
a Movement 7 spider can reposition and still web; and it lets the Arachnarok
web its own target when declaring a charge.

*The charge clause is necessary, not decorative.* Stand & Shoot resolves by
first rolling the charging unit's charge distance and only then shooting, so a
plain Movement penalty arrives after the dice are already down. Success is
checked afterwards, so naming the charge range makes the effect bite. The
corpus already words it that way -- the Khemric Titan's *Wrath of the Sands*
gives "\-1 to their charge distance rolls".

=== Where the web actually stings

Charge range is the Movement value plus 2D6 for Movement 6 or more, and the
Movement value plus the *highest* of 2D6 for Movement 5 or less. So two points
of Movement taken off a Movement 6 or 7 unit does not cost two inches, it costs
a whole die:

#minitable(
  ("Target", "Charge range now", "Webbed", "Lost"),
  ("Movement 4 infantry", "8.47", "6.47", "2.00",
   "Movement 6", "13.00", "8.47", "4.53",
   "Movement 7", "14.00", "9.47", "4.53",
   "Movement 8 cavalry", "15.00", "13.00", "2.00"),
)

That band is not a corner case: 373 of 1,418 profiles in the corpus sit at
Movement 6 or 7, which is 26% of everything, and Movement 6 is the commonest
monster speed in the game. The web is sharpest against big fast things and
dullest against slow infantry and fast cavalry, which is the right shape for an
ambush predator and is a consequence of the charge rules rather than of a
modifier chosen to produce it.

Grounding flyers is the other half. Flyers carry dreadful Movement values
underneath -- Carrion 2, Terradon 2, Fell Bats 1, Great Moon Bird 2 -- so a
webbed flyer drops to the floor of 1 and stays there. It gives greenskins an
answer to flying they otherwise lack entirely, and it is self-limiting: one
shot at 12", worth nothing against an army with no flyers.

=== What else moves

*Ballistic Skill 0 to 3*, because a weapon that rolls To Hit needs a skill to
hit with, and the Arachnarok is BS0 today only because the Goblins do all its
shooting. Every monster in the corpus that aims its own shot carries one:
Jabberslythe 4, Troglodon 4, Verminlord 4, Maggoth Lords 3. The eight that
print a weapon at Ballistic Skill 0 all avoid the question -- six shoot
through crew, as the Arachnarok does today, and the remaining two, the
Skaven Brood Terror and the Warriors of Chaos Warpfire Dragon, are Breath
Weapons.

*Venom Surge loses its gate.* It currently fires only against Monstrous
Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creatures and
Monsters. Multiple Wounds (D6) is already self-limiting, since it is wasted on
anything with a single Wound, so the clause restricted nothing the dice were
not restricting already.

*Stomp (D6) becomes Stomp (2)*, at the same reach of Line of Sight 3. A spider
is enormous but it stands on eight thin legs, and its lore kill is the bite.

It does not cost the crew their bows: the rulebook is explicit that on a ridden
monster "each crew or rider may use one weapon each as normal", so the spider
firing its own web while eight Forest Goblins fire shortbows is what the split
profile already permits. No restriction is written because none is needed.

*265 points*, from 260. The Stomp cut is about 6% of its output and the web
pays that back; the five points are for Quick Shot. The anti-air is not priced,
because a conditional rule that may never trigger should not cost as though it
always does.

== The Rogue Idol of Gork

The best-designed of the three, and it took the least work. *Unstable* is
genuinely apt -- losing a combat shakes the thing apart with no saves, which is
"collapses when the Winds of Magic slacken" rendered small. *Animated
Construct* gives it Unbreakable and forbids marching, so it lumbers. *Da Big
Un* -- it must charge, and on a 1 it charges a friendly unit -- is "their
control over them is tenuous at best" written as a rule. And *Idol of Gork*,
its charge re-roll aura, is the same aura the book's own *Raise Great Idol*
spell grants to a summoned one, so the permanent and temporary versions agree.

Two things are missing, and they are the two things it is made of.

=== It is made of the Waaagh! and never touches the magic phase

Rogue Idols are "massive embodiments of the power of the Waaagh!", and "they
will collapse when the Winds of Magic slacken, and when they blow strong again,
they often reform to stride forth once more, even if that is decades or
centuries later". The entry's only contact with magic is a 6+ ward.

The book already measures the Waaagh! as a quantity, twice. The *Idol of Mork*
arcane item adds a power dice "for every friendly Orc unit with 10 or more Unit
Strength in combat within 24 inches", and removes one for every fleeing such
unit. *Power of da Waaagh!*, the lore attribute, adds +1 to cast for each and
\-1 for each fleeing one. So the counting clause exists and nothing needs
inventing:

*Embodiment of the Waaagh!* At the start of each of your Magic phases, count
the friendly Orc units within 12" of the Rogue Idol that have a Unit Strength
of 10 or more and are engaged in close combat. The Rogue Idol regains that many
lost Wounds, up to its starting number. If there are no such units, the Rogue
Idol instead suffers one Wound, with no saves of any kind permitted.

In play it is a Wound a turn down while the lines are still closing, and repairs
as they meet. An Idol sent off alone on a flank comes apart; one walked
alongside the boyz stays up. That is the lore as a decision rather than a
sentence, and it pairs with *Unstable* exactly: losing a fight shakes it apart,
Orcs winning fights nearby put it back together.

It is close to neutral on points. The early decay cancels the late repair, and
the cap at its starting Wounds means the healing is only ever a repair.

=== It is made of stone and has no armour

The Idol has Toughness 7, ten Wounds, a Magical Ward (6+) and no armour save of
any kind, on a thing "crudely fashioned from heaped stones and battlefield
debris". The Tomb Kings proposal in this document invents *Stone Construct* for
exactly this shape -- Natural Armour that cannot be removed or replaced, and
that never falls below 6+ whatever the Strength of the attack. That it applies
cleanly to a second book in a second army is the best evidence the rule has.

The swap is not free, though, and the measurement says where it costs:

#minitable(
  ("Rogue Idol, T7 W10", "S3", "S4", "S5", "S6", "S7", "S8", "Hits to kill"),
  ("Today: Magical Ward (6+), no armour", "0.093", "0.116", "0.139", "0.278", "0.417", "0.556", "57.4",
   "Natural Armour (6+), floored at 6+", "0.093", "0.116", "0.139", "0.278", "0.417", "0.556", "57.4",
   "Natural Armour (5+), floored at 6+", "0.074", "0.116", "0.139", "0.278", "0.417", "0.556", "61.9"),
)

A 6+ ward and a floored 6+ armour are numerically identical against ordinary
attacks. They differ only at the edges -- a ward also works against attacks
that Ignore Armour Saves, and it is the Idol's only protection against Heroic
Killing Blow. So a 6-for-6 swap would be a quiet downgrade, and *Natural
Armour (5+)* is the honest exchange: 8% better in the common case against
losing the ward's edge-case role entirely.

It also makes Heroic Killing Blow a clean answer to the Idol, which is the same
counter the Tomb Kings pass settled on for stone.

Its Stomp is the one case in this whole pass where the troop type's default was
already right: *Stomp (D6), reaching Line of Sight 3*, printed deliberately
this time, on a thing with "limbs the size of tree trunks" that "looms over
almost everything". *240 points, unchanged.*

== What it costs

Three entries, plus the Warboss and Weirdnob entries that buy a Wyvern, plus
Azhag the Slaughterer -- whose Skullmuncha is printed with the same ten
characteristics as the generic Wyvern, so his troop type changes with it, his
mount loses a Wound, and his 460 points want revisiting now that the beast
under him is 65 cheaper.

Azhag is also the natural exemption from *Voracious*, and the lore asks for it
directly: his Wyvern was never reared from an egg but given as tribute, and
"such was Azhag's force of will that he subdued the beast with but a single
glance". A wyvern that stops to feed is a wyvern nobody is holding. His is
held.

One rule is new -- *Ensnaring Web* -- and its debuff, its duration and its
charge-range wording are all lifted from existing entries. *Voracious* is the
Preyton's *Endless Malice* under another name. *Stone Construct* is the Tomb
Kings proposal's, used a second time. The venom tail is the Manticore's *Venom
Tail* with Multiple Wounds added.

All three depend on the rulebook proposal that lets an entry print its own
Stomps and its own reach -- and on one of them printing none at all.
