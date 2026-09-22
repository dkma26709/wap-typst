// The working behind three proposals -- "The Griffon becomes the Empire's
// only monster and stops being a blank", "The Chimera's anatomy stops being
// for sale" and "The Kolossus is a furnace with something in it" -- in the
// Empire, Warriors of Chaos and Chaos Dwarfs chapters of the proposals
// document. All three name this page.
//
// Profiles are read from the House edition where one exists -- empire/3.1-house,
// warriors-of-chaos/3.0-house, beastmen/3.0-house -- and from chaos-dwarfs/3.0,
// which has no House edition. Rules are read from the House rulebook,
// src/rulebook/3.11-house.typ.
//
// The lore quoted here is NOT from any book in this repository: the WAP army
// books are lists and rules and carry no descriptive text. It is from the
// Warhammer wikis, read through search summaries rather than fetched directly,
// so the wording is theirs and is reported at one remove.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= One monster each, for three armies

The previous passes took a book at a time. This one takes an army at a time,
and picks the single monster that most needs the work -- so that between the
Lizardmen, Nehekhara, the greenskins and these three, every list actually
fielded at our table has had a monster looked at.

None of the three is broken, and that is the point of grouping them. Each is a
different failure of *definition*: a creature that is nothing in particular, a
creature whose anatomy is optional, and a creature whose nature is a
twenty-point extra.

== The Griffon, and the Empire's whole monster presence

The Empire fields two monstrous entries and both are Griffons, both character
mounts, General or Beast Battle Wizard Lord only. There is no standalone
monster in the book at all. So whatever a Griffon is, that is what an Empire
monster is.

The complete special rules line reads: *Fly (8), Natural Armour (6+)*.

=== It is defined against the Manticore, and only in the prose

Every account of a Griffon draws the same contrast, and names the same rival:

#quote[Efficient and precise hunters, neither merciful nor cruel. *In contrast
to monsters such as Manticores*, they do not kill prey or foes with excesses of
savagery or frenetic fury. Instead, they fight with controlled, measured
motions and savage grace... a Griffon strikes with swift and precise grace, its
motion poised and controlled.]

The corpus renders the Manticore correctly. Its rules are *Fly (8), Frenzy,
Killing Blow* -- five attacks when frenzied, striking late, killing by luck.
That is exactly the creature the Griffon is supposed to be the opposite of, and
the Griffon has a 6+ save.

=== The 6+ was decorative anyway

Removing it entirely, which is the first thing this proposal does, costs almost
nothing, because a Natural Armour 6+ is stripped at Strength 4 and above:

#minitable(
  ("Toughness 5 Griffon", "S3", "S4", "S5", "S6", "S7", "S8", "Hits to kill"),
  ("With the 6+", "0.139", "0.333", "0.500", "0.667", "0.833", "0.833", "10.7",
   "With no save at all", "0.167", "0.333", "0.500", "0.667", "0.833", "0.833", "9.9"),
)

Seven percent, all of it against Strength 3. The line was there to look like
armour rather than to be any.

=== What precision is worth, measured

The first draft gave the Griffon *Always Strikes First*, which reads as though
it were written for the creature -- it strikes first regardless of Initiative,
and re-rolls failed To Hit rolls whenever its Initiative beats its enemy's.
Measured, it was far too much: with Devastating Charge and Armour Piercing
beside it, the Griffon came out at +97% on the charge and +58% after, or 206
points from 125. Four multipliers stacked.

So the precision is carried by raw characteristics instead, and the charge
carries the rest. Weapon Skill 6 and Initiative 6, with one more Initiative
when it stoops. The Initiative ladder across the corpus, which is what that
buys:

#minitable(
  ("The Griffon's Initiative", "Strikes before", "Gained from the step below"),
  ("4, as printed", "51.3% of all profiles", "--",
   "5", "70.7%", "+19.4",
   "6", "83.8%", "+13.1",
   "7, when it charges", "92.4%", "+8.6"),
)

Worth being plain about where that bites. At Initiative 4 it already strikes
before half the table, and the range being bought is mostly *elves and elite
infantry* -- Initiative 5 and 6 are 13% and 9% of all profiles. Against Orc,
Dwarf and undead lines at Initiative 2 or 3 the bump changes nothing at all.
Weapon Skill 6 is the same story: it buys nothing against Weapon Skill 4, since
both hit on 3+.

=== The result

#minitable(
  ("Expected unsaved Wounds", "Rank infantry", "Elite infantry", "Elves", "A monster"),
  ("As printed, charging", "2.22", "1.48", "1.67", "0.74",
   "As proposed, charging", "2.78", "1.85", "2.78", "0.93",
   "As proposed, later rounds", "2.22", "1.48", "2.22", "0.74"),
)

Better when it stoops, unchanged afterwards, and against anything that is not
an elf the whole gain is in the charge round.

*GRIFFON* -- M6, WS6, BS0, S5, T5, W4, I6, A4, Ld7. Monstrous Creature
(Chimeric). Fly (8), Devastating Charge, no armour save, *no Stomp*. *The
Stoop:* +1 Initiative in a turn in which it charges. *140 points.*

*IMPERIAL GRIFFON* -- as above with Strength 6 and five Wounds, and
*Monstrous Creature* rather than Monster. May take barding +10 and Two Heads
+15. *195 points.*

The prices are not a rise. A Griffon with both its options costs 135 today, and
an Imperial Griffon with the three this proposal strikes costs 195 -- barding
and Two Heads survive and are extra in both the old price and the new. What
changes is that the character stops being sold separately.

=== Two smaller things

*Neither Griffon has a Stomp*, and the reason is the design's own logic rather
than taste. A Stomp is automatic hits -- the one attack where Weapon Skill
never enters and no hit modifier applies. Building a monster whose entire
identity is Weapon Skill 6 and Initiative 6 and then handing it a bucket of
rolls that ignore both is self-defeating.

*And the options that survive are the ones you can see on the model.* Barding
and a second head are physical; *Shredding Talons*, *Razorbeak*, *Shrike
Talons* and *Bloodroar* are invisible stat bumps and are struck. *Swooping
Strike* is folded in as Devastating Charge, because the stoop is what a Griffon
*is*.

== The Chimera, whose anatomy is for sale

The same entry stands in Beastmen and Warriors of Chaos, byte for byte, at 190
points. Its complete special rules line is *Fly (8)*. Beneath it sits a hundred
and twenty points of menu:

#minitable(
  ("Option", "Cost", "What it is in the lore"),
  ("Venomous Ooze", "+10", "jaws that drip with a poisonous slime -- SOME have it",
   "Fiend Tail", "+15", "a tail ending in a maw with a hunger of its own -- MOST have it",
   "Iron-hard Skin", "+25", "a mutation",
   "Flaming Breath", "+30", "the dragon head, which is in its physical description",
   "Regenerating Flesh", "+40", "a mutation"),
)

=== The menu is miscategorised rather than mistaken

This is the one creature in these passes whose flavour genuinely argues for
varying between models -- #quote[Chimerae are more susceptible than most
monsters to the twisting power of Chaos] and #quote[take many bizarre shapes],
and #quote[the heads of some Chimerae breathe fire in the manner of Dragons,
whilst others sprout razor-sharp fangs or jaws that drip with a poisonous
slime]. So "clear the menu", which was the right answer for the Griffon, is the
wrong one here.

The complaint is narrower. A Chimera is described as having #quote[three
distinct heads resembling a ram, a lion, and a dragon, with the dragon head
capable of emitting noxious smoke and scorch], and #quote[most Chimerae possess
a fiendish tail that ends in a snapping maw possessed of an intelligence and
hunger of its own]. Those are anatomy, and they cost 30 and 15 points. The iron
skin and the regenerating flesh are the things the lore says vary, and they sit
at the same counter. The result is that the anatomy is optional and the
mutations are compulsory-if-you-want-to-win.

So: the breath and the tail are printed, the three mutations stay for sale.

=== A new angle for the attacks

Six identical Attacks at Strength 5 is exactly what three *different* heads and
a tail with its own appetite should not produce. The lore's own phrase is the
brief: #quote[Each head moves independently of the others, and while fierce
disagreements can ensue about which prey to hunt, they can each do their job
with a fearsome division of labour.]

Three of these passes have already answered "differentiate the attacks" with
"nominate one Attack before rolling To Hit" -- the Warsphinx, the Arachnarok
and the Wyvern. A fourth would be a habit rather than a design. The rulebook
owns another answer and almost nothing uses it: *Split Profiles and Striking
Order* resolves a model's Attacks at two or more Initiative values. Across
thirty-two books only two entries could be found doing it -- Tehenhauin, whose
extra D6 Attacks come at Initiative 1 with their own Weapon Skill and Strength,
and one Tyranid at Initiative 10. The search was for the phrasings those two
use, so an entry that words the same idea differently would not have been seen.

*A Fearsome Division of Labour.* The Chimera's heads move independently of one
another, and its tail ends in a maw with a hunger of its own. The Chimera makes
the Attacks on its profile at its own Initiative, and one additional Attack
with its tail at *Initiative 5*, resolved separately. If the Chimera is in base
contact with more than one enemy unit, the tail's Attack must be made against a
different unit from the rest.

That finally gives *Initiative 2* a purpose. The body is slow and the tail is
not, so a Chimera cut down by a fast enemy still gets its tail in -- which is
what a maw with an intelligence of its own ought to do. And the disagreement
clause cuts both ways rather than being a tax: sometimes it splits your damage
badly, sometimes it lets the tail reach a flank, a war machine or a fleeing
unit that the heads cannot.

=== The result

#minitable(
  ("Expected unsaved Wounds a round", "Rank infantry", "Elite infantry", "Cavalry", "A monster"),
  ("As printed, nothing bought (190)", "6.25", "3.61", "5.21", "0.83",
   "As printed, Tail and Breath bought (235)", "8.47", "4.72", "6.78", "1.25",
   "As proposed, both innate, Stomp (D3) reach 2", "7.22", "3.89", "5.74", "1.25"),
)

Up 21% on a bare Chimera and down 12% on one with the Tail and Breath already
bought -- which is the proposal in one line. A Chimera carrying all five
options costs 310 today and keeps three of them afterwards. *220 points*: 190, plus the book's own 45 for the anatomy
it always had, less 15 for the Stomp coming down from D6 at reach 3.

Both books move together.

== The Kolossus, and why it is not a Rogue Idol

A Kolossus is #quote[a massive Dwarf-shaped killing machine operated by several
Dwarfs riding inside]; in its original form #quote[a gigantic bull-headed man,
belching forth smoke and fire, with a large rapid-firing cannon mounted in its
mouth and firing platforms manned by Chaos Dwarfs upon its shoulders]. It was
made when #quote[Lord Khaddash of House Khash] willed that his sorcerers should
#quote[create life from unliving materials]. The Chaos Dwarfs #quote[forcibly
bind Daemons into warmachines to create living, magical technology] -- hundreds
of daemons to fuel one, and #quote[its hell-furnace can only be ignited with a
bloody sacrifice].

=== Stone is a body; plate is plate

The Kolossus buys *heavy armour* from the equipment list, which is the sixth
construct in these passes found doing so -- the Ushabti, Sepulchral Stalkers,
Warsphinx, Necrosphinx and Necrolith Colossus are the others. The Rogue Idol of
Gork is the opposite case and worth keeping straight: it buys no armour at all,
having no equipment line whatever, and the greenskin proposal gives it one. The obvious move was to give it the *Stone
Construct* rule those two take -- Natural Armour that cannot be removed and
never falls below 6+ -- and rename it for a material it can share.

That was wrong, and the corpus says why. The Empire *Steam Tank* is the
existing answer to "a machine that is mostly armour", and its answer is
different: the save is a property of the vehicle, printed in the troop type as
*Chariot (Armour save 2+)*, and it behaves like armour.

So the two cases split cleanly, and *Stone Construct* needs no renaming after
all. A stone construct's armour is its body and cannot be stripped. A machine's
plating is part of the machine but it is still plate, and a hard enough blow
still dents it.

The Kolossus therefore takes plain *Natural Armour (4+)*, at exactly the value
its heavy armour gives today, with no floor -- Strength 7 strips it now and
will strip it after. Moving it to 3+ was measured at +35% durability, which is
a real change wearing a tidy-up's clothes, so the value does not move.

=== The furnace should not be an optional extra

The best rule on the entry is *Overdrive Switch*, at +20 points: +D3 Attacks a
round, at the cost of a Strength 6 hit for every natural 1 To Hit. A machine
packed with hundreds of bound daemons should not have "is packed with bound
daemons" on its options list.

The Steam Tank again supplies the shape. Its *Steam Engine* lets you declare
how hard to stoke it and then rolls against its *current* Wounds -- so a fresh
machine is safe and a broken one is not.

*The Furnace of Hashut.* At the start of each of your turns declare how many
Draughts the Kolossus draws -- none, one, two or three -- gaining +1 Attack for
each until the end of the turn. Then roll a D6: if the result is greater than
its current Wounds, the bindings slip and it suffers one Strength 6 hit per
Draught drawn, with no armour save allowed.

#minitable(
  ("Wounds left", "Chance the daemons surge", "Expected self-hits at three Draughts"),
  ("6", "0%", "0.00", "5", "17%", "0.50", "4", "33%", "1.00",
   "3", "50%", "1.50", "2", "67%", "2.00", "1", "83%", "2.50"),
)

At full Wounds a D6 can never exceed six, so stoking is *free* and every fresh
Kolossus will redline every turn without thinking. The decision only becomes a
decision once something has hurt it, and then it sharpens every round. The
machine degrades into a gamble, which is the bindings failing as the machine
does.

=== Wreathed in fire

The other thing hundreds of bound fire daemons should do is burn whoever puts a
hand on the machine. The corpus already owns the mechanism: Bretonnia's
*Ironspike Shield*, at 10 points, inflicts a Strength 3 hit with Armour
Piercing (1) on any enemy model that rolls a natural 1 To Hit against its
bearer.

*Wreathed in Fire.* Whenever an enemy model rolls a natural 1 on a To Hit roll
against the Kolossus in close combat, that model immediately suffers a Strength
4 hit with the Flaming Attacks special rule.

On a character the Ironspike sees perhaps three attacks a round. On a monster
facing a rank it sees far more, and what falls out is a rule that scales
inversely with the quality of the attacker:

#minitable(
  ("Attacking the Kolossus", "Attacks a round", "Wounds burned back"),
  ("Night Goblins, two ranks of ten", "20", "2.22",
   "Empire Halberdiers, two ranks of five", "10", "1.11",
   "Ogres, three models", "9", "0.75",
   "Chaos Warriors, two ranks of five", "10", "0.42",
   "A lone monster", "5", "0.09"),
)

It punishes swamping the machine with bodies and does almost nothing to one
well-armoured opponent -- while the bane maces, at Armour Piercing (1), are
exactly the other way round. Maces for armour, furnace for hordes. Neither was
designed to complement the other.

=== The result

#minitable(
  ("Expected unsaved Wounds a round", "Halberdiers", "Saurus", "Chaos Warriors", "Ogres"),
  ("As printed, Stomp (D6) reach 3", "5.69", "5.00", "4.51", "5.69",
   "As proposed, no Draughts", "4.72", "3.47", "3.19", "4.36",
   "As proposed, three Draughts", "6.39", "4.72", "4.44", "6.03"),
)

Down 25% unstoked and up 3% at full stoke. *250 points, unchanged*, because at
three Draughts it matches what it does today and the Furnace's risk is what it
pays to get there.

Its Stomp comes down to *one* at reach 2. A slow siege engine of a thing places
its feet rather than trampling, and its damage is the maces or the cannons. The
mace-or-immolation-cannon swap stays at +40, because the lore builds both and
it is a real either-or.

== What it costs

Five entries across four books: two Griffons in the Empire, one Chimera that is
printed identically in Beastmen and Warriors of Chaos, and the Kolossus in
Chaos Dwarfs, which has no House edition and so is changed against its base
book.

Three rules are new and each is drawn from something already printed. *The
Stoop* is a one-line Initiative clause. *A Fearsome Division of Labour* uses
Split Profiles, which the rulebook defines and two models in thirty-two books
use. *The Furnace of Hashut* is the Steam Tank's Steam Engine at a monster's
scale, and *Wreathed in Fire* is the Ironspike Shield's clause at a monster's
frequency.

Nothing here needs the rulebook proposal that lets an entry print its own
Stomps quite as badly as the earlier passes did -- but the Griffons print none
at all, and the Chimera and Kolossus both print less than their troop type
gives them, so all five still rest on it.
