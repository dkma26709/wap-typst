// The working behind "The War Hydra stops going out like a candle", in the Dark
// Elves chapter of the proposals document. Dark Elves has no House edition, so
// the profile is read from src/dark-elves/3.1.typ; every rule is read from the
// House rulebook, src/rulebook/3.11-house.typ.
//
// This one also draws on our own hybrid ruleset, which drafted a War Hydra from
// scratch. That is a different system -- it has no Weapon Skill, it has armour
// penetration and damage values, and its Hydra sits at ten Wounds -- so what
// crosses over is the ideas and never the numbers.
//
// The lore quoted here is NOT from any book in this repository: the WAP army
// books are lists and rules and carry no descriptive text.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= The War Hydra, and the candle problem

The War Hydra is not under-designed. It is the most thoroughly *degrading*
monster in the corpus -- three separate rules already key off the damage it has
taken, where a sweep for that phrasing finds only seven entries in thirty-two
books carrying even one, and the runner-up carrying two:

- *Loss of Heads* -- one fewer Attack for every unsaved Wound it has lost
- *Fiery Breath* -- "the Strength of this attack is equal to the War Hydra's
  remaining Wounds"
- *Spit Fire* -- Strength *and* Multiple Shots both equal to remaining Wounds

Nothing else in thirty-two books commits to an idea that hard. The trouble is
what the commitment produces, and it is the opposite of the creature's own
lore.

== The candle problem

Stack two degrading scales on one attack and it does not decline, it
extinguishes. Spit Fire's shots and its Strength both fall with the Hydra's
Wounds, so:

#minitable(
  ("Wounds left", "Spit Fire, as printed", "Expected Wounds it inflicts on rank infantry"),
  ("5", "5 shots at Strength 5", "2.78",
   "4", "4 shots at Strength 4", "1.78",
   "3", "3 shots at Strength 3", "0.83",
   "2", "2 shots at Strength 2", "0.33",
   "1", "1 shot at Strength 1", "0.09"),
)

A wounded Hydra's shooting is worth nine hundredths of a Wound. It has not
degraded, it has gone out.

And every account of the creature says the exact reverse. #quote[A foe's only
chance is to sever all the monster's heads in quick succession; if even a single
one remains, the remainder will swiftly grow back and devour the impudent
attacker for his troubles.] The thing on one head is supposed to be the
dangerous moment, not a formality.

*So the fix is to degrade one scale and not two.* Fix the Strength at 4 and let
only the shots fall, one per head:

#minitable(
  ("Wounds left", "As printed", "As proposed", "Whole model, vs printed"),
  ("5", "5 shots at S5", "5 shots at S4", "\-23%",
   "3", "3 shots at S3", "3 shots at S4", "\-6%",
   "1", "1 shot at S1", "1 shot at S4", "\-12%"),
)

It gives up peak output and keeps its teeth all the way down, which is the
creature the lore describes. Strength 4 is also where the corpus keeps this
kind of attack: of 72 breath weapons across the books, 29 are at Strength 4,
only 8 reach Strength 5 or above and exactly one reaches Strength 6.

*And it stops being a purchase.* Spit Fire costs 10 points today, one of three
breath options. A Hydra that belches fire is not an upgrade; the other two,
*Fiery Breath* at 20 and *Acid Breath* at 30, are struck, because a Hydra that
breathes three different ways is a menu again.

== Regeneration that fire cannot stop

The rulebook's Regeneration "may not be used against Flaming Attacks", which
makes a torch the Hydra's off-switch -- and the Hydra is itself a fire-breather,
vulnerable to precisely what it does.

Our hybrid ruleset's answer was a custom variant that fire does not negate, on
the argument that the degrading Attacks *are* the vulnerability and a second one
is not needed. The version proposed here goes further and makes it genuine
healing rather than a delayed save:

*Multi-Headed Regrowth.* At the end of each of your turns, roll a D6 for each
Wound the War Hydra is missing. Each result of 5 or more restores one Wound.

Note what that is not: it is not conditional on having been wounded this phase,
so a Hydra that disengages knits back up; and it heals faster the worse it is,
because there are more missing Wounds to roll for. Heads grow back from stumps.

=== Why once a turn and not twice

The first draft of this rolled at the end of *each player turn* -- twice a game
turn. Simulated over sixty thousand games, that is not a monster:

#minitable(
  ("Attacking it", "Wounds a game turn", "Game turns to kill it"),
  ("20 Empire Halberdiers", "1.39", "never",
   "20 Saurus Warriors", "1.39", "never",
   "5 Chaos Knights", "2.50", "4.6",
   "A Carnosaur", "2.78", "3.1",
   "A Dread Saurian", "5.00", "1.0"),
)

A full regiment of Saurus Warriors grinding it for an entire game never takes it
down. Halving the rate fixes it and two ways are arithmetically identical --
once a game turn on a 5+, or twice on a 6+. The first is one roll rather than
two.

=== It is a trade rather than a buff, but not a flat one

Simulated against the Regeneration (4+) it replaces -- and giving Regeneration
its best case, ignoring the Flaming exception entirely:

#minitable(
  ("Wounds a game turn", "No healing", "Regrowth 5+, once a turn", "Regeneration (4+)"),
  ("1", "5.0", "21.0", "10.0",
   "1.5", "3.6", "7.3", "6.9",
   "2", "3.0", "4.3", "5.3",
   "3", "2.0", "2.3", "3.7"),
)

*The two cross at about 1.5 Wounds a game turn.* Above that the Regrowth is
the weaker defence -- against real pressure it heals more slowly than a save
prevents. Below it the Regrowth is far stronger, because healing compounds
when nothing is outpacing it: a Hydra being plinked at by archers recovers
indefinitely, where a Hydra under a regiment does not.

That is the honest shape of the change, and it is worth knowing which half of
it will be felt. What the rule buys either way is that no opponent can switch
it off by packing a torch.

Flaming Attacks appear on 111 of 1,525 unit entries -- 7.3% -- but in 31 of the
32 armies. So the counter is available to everyone and carried by almost
nothing, which is exactly the profile of a tech choice. Removing it is a real
cost to counterplay, and worth naming as such rather than glossing.

== Heads are Wounds, and the wording has to say so

*Loss of Heads* currently reads "for each unsaved Wound the War Hydra has lost
*during the battle*". With Regrowth restoring Wounds, that phrasing never gives
the head back -- a Hydra healed to full would still be missing Attacks for
wounds it no longer has.

One word fixes it: *for each Wound it is currently missing*. Heads come off and
grow back with the Wounds they are.

== What the model settled that the lore could not

The hybrid draft reads the Hydra as #quote[serpentine and snake-bodied --
sinuous more than armoured-fortress, low to the ground rather than
upright-tower], and prices Movement and armour down from that. The published
artwork says otherwise: the Hydra is a heavy four-legged reptile with a broad
low torso, clawed feet and a thick tail, and the snake is entirely in the five
necks and heads.

That matters for one thing and one thing only, and it is not the stat line. It
is the *Stomp*. The Coatl in the Lizardmen pass prints none at all on the
ruling that "it does not trample anything at all -- it is a snake"; a War Hydra
plainly does, because it has four clawed feet and a great deal of weight over
them. It takes *Stomp (2) at reach 2* -- the Bastiladon's number, for a heavy
deliberate quadruped whose real damage is somewhere else entirely.

Movement 5 and Natural Armour 5+ are kept regardless, as a judgement about what
the creature should be rather than a deduction from what it looks like.

== The War Hydra, as it would print

#minitable(
  ("", "M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Points"),
  ("As printed", "6", "4", "4", "5", "5", "5", "2", "8", "6", "200",
   "As proposed", "5", "4", "4", "5", "5", "5", "2", "8", "6", "165"),
)

Monster (Hydra), 50x100, *no handlers*. Natural Armour (5+). Stomp (2),
reaching Line of Sight 2.

- *Loss of Heads:* the War Hydra loses one Attack for each Wound it is
  currently missing.
- *Multi-Headed Regrowth:* at the end of each of your turns, roll a D6 for each
  Wound the War Hydra is missing. Each result of 5 or more restores one Wound.
- *Spit Fire:* Range 8/12", Strength 4, Flaming Attacks, Multiple Shots (\*),
  Quick Shot, Rapid Fire. The number of shots is equal to the War Hydra's
  remaining Wounds -- one gout of flame per head.

The five trait upgrades stay: *Bloodthirsty* +5, *Daerlythe's Aura* +5,
*Battle Lover* +10, *Chameleon Skin* +10, *Armour Plates* +15. Unlike the
Griffon's struck options these are things a model can show -- scales, plates,
and in Chameleon Skin's case literally how it is painted -- and *Armour Plates*
remains worth its 15 points even beside a base 5+, because Natural Armour
combines with other Natural Armour and the two stack to a 4+.

== What it costs

One entry in one book, which has no House edition, so the change is against the
base book. Two Beastmaster Apprentices leave the entry, taking *Elven Grace*,
*Hatred (High Elves)* and *Murderous Prowess* with them -- the fraught-handler
lore, #quote[a Beastmaster must be quick with his lash lest he be devoured in
the enemy's stead], goes unmodelled, as it already was.

Only one rule is new, and its idea is borrowed. *Spit Fire* is the book's own,
re-keyed and made standard. *Loss of Heads* changes by one word.
*Multi-Headed Regrowth* takes our hybrid ruleset's fire-proof regeneration and
writes it in this system's machinery -- the once-a-turn timing, the 5+, and the
one-roll-per-missing-Wound shape are this proposal's, and are the parts that
needed measuring. The Stomp is printed rather
than inherited, which rests on the rulebook proposal that permits it.
