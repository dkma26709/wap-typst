// Beastmen 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "beastmen",
  army: "Beastmen",
  version: "3.0",
  layout: "army",
  cover: "covers/beastmen.png",
)

#show: book.with(title: "Warhammer Armies Project — Beastmen 3.0")

#cover(
  title: "Beastmen",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/beastmen.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Beastmen*, version 3.0 — written and freely distributed by Mathias
    Eliasson.
  ],
  [
    All rules text, army design and points values remain the work of their
    author. This edition changes only the typesetting; the content is
    reproduced from the freely distributed PDF.
  ],
  [
    Warhammer, Warhammer Fantasy Battle and all associated names, races and
    places are trademarks of Games Workshop Limited. This document is
    unofficial and unaffiliated, and no challenge to their status is intended.
  ],
  [Typeset with Typst. Not for sale.],
))

#outline(title: [Contents], depth: 2)

= ARMY SPECIAL RULES

This section of the book describes all the different units used in a Beastmen army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Beastmen units, and these are detailed here.

#namecost("BEASTMEN BREEDS", "")

Beastmen are divided into Gors, Ungors, Centigors and Minotaurs. Characters may only join units of the same breed as themselves. In addition, Ungors do not cause Panic in any of the other breeds above.

#namecost("BLOODGREED", "")

Whenever a model with this special rule wins a round of close combat in which it has caused at least one unsaved Wound, it gains the Frenzy special rule until the end of the next close combat phase. However, they may never choose to Overrun. Bloodgreed has no effect against Animated Constructs, Daemons, Forest Spirits or Vampires.

#namecost("DRUNKEN", "")

Roll a D6 for each unit containing models with this special rule at the beginning of each of their turns and consult the table below to see what effect they have until the start of their next turn:

#chart((("D6", "Result"), ("1-2", "Drunken Stupor: The unit is subject to the
Stupidity special rule."), ("3-4", "Drunken Frenzy: The unit is subject to the
Frenzy special rule."), ("5-6", "Drunken Bravado: The unit is subject to the
Stubborn special rule.")))
#chartlabel("MARKS OF CHAOS")

Several characters and regiments in the Beastmen army have, or can purchase, one of the four Marks of Chaos detailed below. A character with a Mark of Chaos cannot join a unit that has a different Mark of Chaos. A character with a Mark of Chaos cannot join a unit that has already been joined by a character that has a different Mark of Chaos.

- *Mark of Khorne:* Models with the Mark of Khorne have the Frenzy special rule.

- *Mark of Nurgle:* Models with the Mark of Nurgle add +1 to their Toughness.

- *Mark of Slaanesh:* Models with the Mark of Slaanesh have the Immunity (Psychology) special rule and may re-roll the lowest dice on their charge and pursuit distances.

- *Mark of Tzeentch:* Models with the Mark of Tzeentch have the Magical Ward (6+) and Magic Resistance (1) special rules.

#namecost("PRIMAL FURY", "")

At the beginning of each round of close combat, each engaged unit with the Primal Fury special rule must take a Leadership test. If the test is passed, that unit gains the Hatred special rule until the end of the close combat phase. In addition, if they passed the Leadership test and rolled a double, they also gain the Frenzy special rule until the end of the close combat phase.

#namecost("TUSKER CHARGE", "")

Models with this special rule have the Mighty Blow (1) special rule in any turn that they charge.

#namecost("UNRULY", "")

All models with this special rule follow the Berserk Rage rules from Frenzy. In addition, if they are forced to charge as a result of a failed Berserk Rage test, they may re-roll failed charge distance results.

= THE LORE OF THE WILD

#columns(2)[
#namecost("PRIMAL ONSLAUGHT", "")
#namecost("Lore Attribute", "")

Each time a spell from the Lore of the Wild is successfully cast, all friendly units with the Primal Fury special rule within 6" gain a +1 Leadership bonus to their Primal Fury tests in the following close combat phase. This bonus is cumulative.

#namecost("BESTIAL SURGE", "")
#namecost("Signature Spell Cast on 6+", "")

_Bestial Surge_ is a *conveyance* spell that targets all friendly units within 6". If cast, all units will immediately make a move straight forward following the rules for Random Movement (D6+1).

#namecost("TITANIC FURY", "")
#namecost("Level 1 Cast on 5+", "")

_Titanic Fury_ is an *augment* spell with a range of 18". The target unit gains the Mighty Blow (1) special rule until the start of the caster's next Magic phase.

#namecost("VILETIDE", "")
#namecost("Level 1 Cast on 5+", "")

_Viletide is_ a *magic missile* with a range of 24" that inflicts 5D6 Strength 1 hits.

#namecost("BRAY-SCREAM", "")
#namecost("Level 1 Cast on 6+", "")

_Bray-Scream_ is a *direct damage* spell. The caster makes a Breath Weapon Attack with Strength 4. This may be cast in close combat, following the normal rules for Breath Weapons.

#namecost("PRIMAL DOMINANCE", "")
#namecost("Level 2 Cast on 7+", "")

_Primal Dominance_ is a *hex* spell with a range of 24" that targets a Monstrous Creature or Monster. The model suffers -D3 Attacks and cannot use the Impact Hits or Stomp special rules until the start of the caster's next Magic phase.

#namecost("VICIOUS STRANGLETHORNS", "")
#namecost("Level 2 Cast on 7+", "")

_Vicious Stranglethorns_ is a *hex* spell with a range of 24". The target unit suffer -D3 to all its Movement until the start of the caster's next Magic phase.

#namecost("WILD RAMPAGE", "")
#namecost("Level 2 Cast on 7+", "")

_Wild Rampage_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, every time a model in the target unit makes a successful To Hit roll in close combat, they may immediately make an additional Attack. These additional attacks cannot generate further attacks.

#namecost("DEVOLVE", "")
#namecost("Level 3 Cast on 8+", "")

_Devolve_ is a *hex* spell that targets all enemy units within 12". All target units must pass a Leadership test or suffer a number of wounds equal to the amount the test was failed by with the Ignores Armour Saves special rule.

#namecost("RUINER OF THE WROUGHT", "")
#namecost("Level 3 Cast on 9+", "")

_Ruiner of the Wrought_ is a *direct damage* spell that targets all enemy Chariots, Shrines and War Machines within 24" of the caster's front arc. All targets suffer D6 Strength 7 Hits.

#namecost("TRAITOR-KIN", "")
#namecost("Level 3 Cast on 9+", "")

_Traitor-kin_ is a *hex* spell that targets all enemy Cavalry, Monstrous Cavalry, Chariots, ridden Monstrous Creatures and Monsters as well as War Beasts/Monstrous Beasts/Monsters with the Mixed Unit special rule within 12". All affected models will suffer a number of hits equal to the Attacks characteristics of their mount(s), using its Strength and the Toughness of the rider. In the case of Mixed Units, only the handlers are targeted, and only by models in base contact (in the case of Skirmishers, calculate this as if the models were ranked up in combat). Any armour save bonuses from the beast’s Natural Armour, barding etc, have no effect.

#namecost("MANTLE OF GHOROK", "")
#namecost("Level 4 Cast on 10+", "")

_Mantle of Ghorok_ is an *augment* spell with a range of 12" that can be cast on a friendly Character, including the Wizard itself. The character (but not any mount) gains +D6 Strength and +D6 Attacks (both to a maximum of 10) until the start of the caster's next magic phase. Additionally, if one or more 6's are rolled for the result above, the model also suffers a Strength 5 Hit with no saves of any kind possible.

#namecost("TENDRILS OF ATROPHY", "")
#namecost("Level 4 Cast on 11+", "")

_Tendrils of Atrophy_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all models attacking the unit gains +1 To Wound, and any armour saves taken by it suffer a \-1 penalty.

#namecost("SAVAGE DOMINION", "")
#namecost("Level 4 Cast on 15+", "")

_Savage Dominion_ is a *summoning* spell. The Wizard may summon a Ghorgon, Jabberslythe or Chaos Giant with its base touching any table edge. Every time the beast suffers a Wound, the Wizard that summoned it must pass a Toughness test or suffer a Wound with no saves allowed. Only one monster may be summoned by the same Wizard at any one time.
]

= THE LORE OF CHAOS

#namecost("BOON OF CHAOS", "")
#namecost("Lore Attribute", "")

Whenever a Wizard successfully cast a spell from the Lore of Chaos, the Wizard’s Weapon Skill, Toughness and Leadership are increased by 1 until the start of their next Magic phase.

#namecost("THE SUMMONING", "")
#namecost("Signature Spell Cast on 6+", "")

_The Summoning_ is a *magic missile* with a range of 18" that causes 2D6 Strength 3 hits with the Armour Piercing (1) special rule.

#namecost("DAEMONIC FAMILIARS", "")
#namecost("Level 1 Cast on 5+", "")

_Daemonic Familiars_ is a *hex* spell that targets one unit in base contact with the Wizard. The target suffer 2D6 Strength 2 hits with the Ignores Armour saves special rule.

#namecost("GIFT OF CHAOS", "")
#namecost("Level 1 Cast on 6+", "")

_Gift of Chaos_ is a *direct damage aura* spell with a range of 12". Each target suffers D6 Strength 3 Hits.

#namecost("VEIL OF GLOOM", "")
#namecost("Level 1 Cast on 6+", "")

_Veil of Gloom_ is an *augment* spell with a range of 18". The target unit gains a Magical Ward (5+) against missile attacks until the start of your next Magic phase.

#namecost("VISION OF TORMENT", "")
#namecost("Level 2 Cast on 7+", "")

_Vision of Torment_ is a *hex* spell with a range of 24". The target must pass a Psychology test or be unable to voluntarily move or shoot until the start of the caster's next turn.

#namecost("WINDS OF CHAOS", "")
#namecost("Level 2 Cast on 7+", "")

_Winds of Chaos_ is a *hex* spell with a range of 24". The target suffers \-2 to their Movement until the start of the caster's next turn.

#namecost("BINDING DAMNATION", "")
#namecost("Level 2 Cast on 9+", "")

_Binding Damnation_ is a *hex* spell with a range of 24". The target suffers \-3 to their Weapon Skill and Ballistic Skill (to a minimum of 1) until the start of the caster's next turn.

#namecost("MASK OF DARKNESS", "")
#namecost("Level 3 Cast on 9+", "")

_Mask of Darkness_ is a *conveyance* spell with a range of 12". The target is immediately picked up and may be moved to any point on the battlefield within 12" of its original position, just like a summoning spell.

#namecost("VEIL OF CORRUPTION", "")
#namecost("Level 3 Cast on 9+", "")

_Veil of Corruption_ is a *direct damage* spell. Place the large round template anywhere within 24" – it then scatters D6". All models hit by the template suffer a Strength 3 hit.

#namecost("RUINOUS VIGOUR", "")
#namecost("Level 3 Cast on 10+", "")

_Ruinous Vigour_ is an *augment* spell with a range of 18". The target gains +1 Movement, Toughness and Initiative until the start of the caster’s next Magic phase.

#namecost("CHAOTIC CONDUIT", "")
#namecost("Level 4 Cast on 10+", "")

_Chaotic Conduit_ is an *augment* spell with a range of 18". The target gains +1 To Hit and To Wound in close combat until the start of the caster’s next Magic phase.

#namecost("SPITE-TONGUE CURSE", "")
#namecost("Level 4 Cast on 12+", "")

_Spite-tongue Curse_ is a *direct damage* spell with a range of 12" that causes 3D6 Strength 5 hits. However, if the spell fails to reach its casting value, the caster suffers 1 Wound which Ignores Armour Saves.

#namecost("VORTEX OF CHAOS", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _Vortex Of Chaos_ is a *magical vortex* that uses the large round template. Any model touched by the template at any point during its move suffer a Strength 4 hit.

= THE LORE OF NURGLE

#columns(2)[
#namecost("BLOATED WITH DISEASE", "")
#namecost("Lore Attribute", "")

Whenever a Wizard successfully cast a spell from the Lore of Nurgle, roll a D6 after resolving the spell's effect(s). On the roll of a 6, the Wizard or one friendly Character within 6" gain +1 Wound for the remainder of the game.

#namecost("STREAM OF CORRUPTION", "")
#namecost("Signature Spell Cast on 7+", "")

_Stream of Corruption_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit must pass a Toughness test or suffer a Wound with the Ignores Armour saves special rule.

#namecost("MIASMA OF PESTILENCE", "")
#namecost("Level 1 Cast on 5+", "")

_Miasma of Pestilence_ is an *augment* spell with a range of 18". Until the start of the caster’s next Magic phase, all enemy units in base contact with the target unit reduce their Weapon Skill and Initiative by 1 (to a minimum of 1).

#namecost("BLADES OF PUTREFACTION", "")
#namecost("Level 1 Cast on 5+", "")

_Blades of Putrefaction_ is an *augment* spell with a range of 18". The target unit’s close combat attacks gain the Poisoned Attacks special rule until the start of the caster’s next Magic phase.

#namecost("MAGNIFICIENT BUBOUES", "")
#namecost("Level 1 Cast on 6+", "")

_Magnificent Buboes_ is a *magic missile* with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers one Wound which Ignores Armour saves.

#namecost("CURSE OF THE LEPER", "")
#namecost("Level 2 Cast on 7+", "")

_Curse of the Leper_ is an *augment/hex* spell with a range of 24". If cast on a friendly unit, it increases the target unit’s Toughness by 1 until the start of the caster's next Magic phase. If cast on an enemy unit, it reduces the target unit’s Toughness by 1 (to a minimum of 1) until the start of the caster’s next Magic phase.

#namecost("PLAGUE SQUALL", "")
#namecost("Level 2 Cast on 8+", "")

_Plague Squall_ is a *direct damage* spell with a range of 24". Place the large round template with the centre anywhere within this range; it scatters like a stone thrower. If a misfire is rolled, the caster suffers 1 Wound which Ignores Armour Saves. Any model hit suffers a Strength 1 Hit with the Ignores Armour Saves special rule.

#namecost("RANCID VISITATIONS", "")
#namecost("Level 2 Cast on 10+", "")

_Rancid Visitations_ is a *magic missile* with a range of 18" that inflicts D6 Strength 5 hits. The target unit must then immediately pass a Toughness test or suffer a further D6 hits. The target must keep taking Toughness tests until it passes, or is removed as a casualty.

#namecost("ROTBOMB", "")
#namecost("Level 3 Cast on 10+", "")

_Rotbomb_ is a *hex* spell with a range of 24". The target's armour save is lowered by two points for the rest of the game. Rotbomb can be repeatedly cast on the same target, reducing its armour save by a further \-2 each time.

#namecost("CLOYING QUAGMIRE", "")
#namecost("Level 3 Cast on 11+", "")

_Cloying Quagmire_ is a *direct damage* spell with a range of 24". All models in the unit must take an Initiative test. Those that fail must then take an armour save. If passed, they are removed as casualties, with no saves allowed. Models without armour count as passing on a 6. This spell has no effect on models with the Fly, Ethereal or Strider special rules.

#namecost("FLESHY ABUNDANCE", "")
#namecost("Level 3 Cast on 11+", "")

_Fleshy Abundance_ is an *augment* spell with a range of 18". Until the start of the caster’s next Magic phase, the target has the Regeneration (5+) special rule (to a maximum of a 3+ save for Daemons of Nurgle).

#namecost("GRANDFATHER NURGLE'S CIRCLE OF LIFE", "")
#namecost("Level 4 Cast on 11+", "")

_Grandfather Nurgle's Circle of Life_ is a *direct damage* spell with a range of 24" that causes D6 hits that wound on a 4+ with the Ignores Armour Saves special rule. For each unsaved Wound caused, one friendly unit within 6" of the caster instantly recovers 1 Wounds' worth of models slain earlier in the battle, just like a summoning spell.

#namecost("PLAGUE WIND", "")
#namecost("Level 4 Cast on 12+", "")

Remains in play. _Plague Wind_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Toughness test or suffer a single Wound with the Ignores Armour Saves special rule.

#namecost("ROT, GLORIOUS ROT", "")
#namecost("Level 4 Cast on 13+", "")

_Rot, Glorious Rot_ is a *direct damage aura* spell with a range of 18". Each target suffers D6 Strength 3 Hits with the Ignores Armour Saves special rule.
]

= THE LORE OF SLAANESH

#columns(2)[
#namecost("BLISS IN TORMENT", "")
#namecost("Lore Attribute", "")

Whenever a Wizard successfully cast a spell from the Lore of Slaanesh on an enemy unit, the target suffers D6 Strength 3 Hits after resolving all effects of the spell.

#namecost("LASH OF SLAANESH", "")
#namecost("Signature Spell Cast on 6+", "")

_Lash of Slaanesh_ is a *direct damage* spell. Extend a straight line, 24" in length, within the caster’s forward arc and directly from their base. Each model in the way (determined using the line template) suffers a Strength 4 hit with the Armour Piercing (1) special rule. Any unit that suffers a casualty from this spell may not march in its next Movement phase.

#namecost("HYSTERICAL FRENZY", "")
#namecost("Level 1 Cast on 6+", "")

Remains in play. _Hysterical Frenzy_ is an *augment/hex* spell with a range of 24". While the spell is in effect, the target gains the Frenzy special rule (which is not lost if the unit is defeated in close combat) and suffers D6 Strength 3 hits at the end of each of the caster’s Magic phases.

#namecost("PAVANE OF SLAANESH", "")
#namecost("Level 1 Cast on 6+", "")

_Pavane of Slaanesh_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). If successfully cast, the target must pass a Leadership test on their own unmodified Leadership or suffer 1 Wound which Ignores Armour Saves for every point they failed the test by.

#namecost("SUCCOUR OF CHAOS", "")
#namecost("Level 1 Cast on 6+", "")

_Succour of Chaos_ is an *augment* spell with a range of 18". The target gains the Always Strikes First special rule until the start of the caster's next Magic phase.

#namecost("TITILLATING DELUSIONS", "")
#namecost("Level 2 Cast on 7+", "")

Remains in Play. Titillating Delusions is a *hex* spell with a range of 24". Place a marker (this has a Line of Sight value of 1) within 24". While the spell is in effect, the target must pass a Leadership test at the start of each of their Movement phases or be forced to move towards the target as quickly as possible. The spell is automatically dispelled as soon as the unit reaches the marker or loses Line of Sight to it.

#namecost("SLOTHFUL STUPOR", "")
#namecost("Level 2 Cast on 8+", "")

_Slothful Stupor_ is a *hex* spell with a range of 24". The target suffers \-2 Leadership and gains the Stupidity special rule until the start of the caster’s next Magic phase.

#namecost("ACQUIESCENCE", "")
#namecost("Level 2 Cast on 9+", "")

_Acquiescence_ is a *hex* spell with a range of 24". The target unit is subject to the Always Strikes Last and Random Movement (D6) special rules until the start of the caster’s next Magic phase.

#namecost("DELICIOUS EXCRUCIATION", "")
#namecost("Level 3 Cast on 9+", "")

_Delicious Excruciation_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all models in the target are automatically Hit in close combat and gain the Unbreakable special rule.

#namecost("SLICING SHARDS", "")
#namecost("Level 3 Cast on 10+", "")

_Slicing Shards_ is a *magic missile* with a range of 24" that inflicts D6 Strength 4 hits with the Armour Piercing (1) special rule. The target must then immediately pass a Leadership test or suffer a further D6 hits. The target must keep taking Leadership tests until it passes, or is removed as a casualty.

#namecost("PHANTASMAGORIA", "")
#namecost("Level 3 Cast on 10+", "")

_Phantasmagoria_ is a *hex* spell with a range of 24". Until the start of the caster’s next Magic phase, the target unit must roll an additional D6 whenever it takes a Leadership test, discarding the lowest result rolled.

#namecost("CACOPHONIC CHOIR", "")
#namecost("Level 4 Cast on 15+", "")

_Cacophonic Choir_ is a *hex* spell with a range of 12". The target takes 3D6 hits that wound on a 4+ which Ignores Armour saves. If at least one unsaved Wound is caused, the target is subject to the Always Strikes Last and Random Movement (D6) special rules until the start of the caster’s next Magic phase.

#namecost("ECSTATIC SEIZURES", "")
#namecost("Level 4 Cast on 15+", "")

_Ecstatic Seizures_ is a *direct damage* spell with a range of 12". All models in the target unit must pass a Strength test or suffer 1 Wound which Ignores Armour Saves.

#namecost("SONG OF SEDUCTION", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _Song of Seduction_ is a *hex* spell with a range of 24". While the spell is in effect, this unit is wholly under the caster's control. It may move and shoot (but not charge, cast spells or channel dice) during the enemy's turn as if it were your own unit. At the end of each subsequent Magic phase, the unit must take a Leadership test. If passed, the spell is dispelled. The spell is immediately dispelled if the unit becomes engaged in close combat.
]

= THE LORE OF TZEENTCH

#columns(2)[
#namecost("BOON OF MAGIC", "")
#namecost("Lore Attribute", "")

When a spell from the Lore of Tzeentch is successfully cast you may add a Power Dice to your pool for each natural 6 that was rolled to cast the spell, after resolving the spell's effect(s).

#namecost("BLUE FIRE OF TZEENTCH", "")
#namecost("Signature Spell Cast on 6+", "")

_Blue Fire of Tzeentch_ is a *magic missile* with a range of 24" that causes D6 Strength D6+1 hits with the Flaming Attacks special rule.

#namecost("BALEFUL TRANSMOGRIFICATION", "")
#namecost("Level 1 Cast on 6+", "")

_Baleful Transmogrification_ is a *direct damage* spell with a range of 24". The target suffers D3 Strength D6 Hits which Ignores Armour Saves. If a 3 is rolled for the number of Hits, it suffers an additional D3 hits.

#namecost("BOON OF TZEENTCH", "")
#namecost("Level 1 Cast on 6+", "")

_Boon of Tzeentch_ is an *augment* spell that is cast on the Wizard itself. The Wizard immediately gains D3+1 Power dice, that only they may use.

#namecost("PANDEMONIUM", "")
#namecost("Level 1 Cast on 7+", "")

_Pandemonium_ is a *hex* spell with a range of 24". Until the start of the caster’s next Magic phase, the target unit must use the lowest Leadership value in the unit (including that of mounts) and cannot benefit from the Inspiring Presence or Hold Your Ground! abilities.

#namecost("PINK FIRE OF TZEENTCH", "")
#namecost("Level 2 Cast on 8+", "")

_Pink Fire of Tzeentch_ is a *direct damage* spell. Place the teardrop-shaped template with its narrow end touching the front of the Wizard’s base and the large end aimed at the target. Roll 2D6 and move the template directly forwards the number of inches indicated. All models underneath the template suffer a Strength D6+1 hit (roll once and apply the result to all models) with the Flaming Attacks special rule.

#namecost("BOLT OF CHANGE", "")
#namecost("Level 2 Cast on 8+", "")

_Bolt of Change_ is a *magic missile* with a range of 24". It inflicts a single Strength D6+4 hit with the Multiple Wounds (D3), Ignores Armour Saves and Flaming Attacks special rules, and then penetrates ranks in the same manner as a shot from a bolt thrower.

#namecost("SHIELD OF FATE", "")
#namecost("Level 2 Cast on 8+", "")

_Shield of Fate_ is an *augment* spell with a range of 18". The target may re-roll armour and Ward save rolls of 1 until the start of the caster’s next Magic phase.

#namecost("FOLD REALITY", "")
#namecost("Level 3 Cast on 8+", "")

_Fold Reality_ is an *augment* spell with a range of 18". The target unit instantly recovers D3+1 Wounds' worth of models slain earlier in the battle, just like a summoning spell. However, if a 1 is rolled, the target suffers D3+1 Wounds with no saves allowed instead.

#namecost("GLEAN MAGIC", "")
#namecost("Level 3 Cast on 8+", "")

_Glean Magic_ is a *hex* spell that targets a single enemy Wizard within 18". The caster and the target both roll a D6 and add their Wizard level to the score. If the caster rolls higher, the target suffers a Strength 4 hit with the Flaming Attacks special rule and loses one Wizard level (along with one spell). The caster gains access to this spell (unless it is a *summoning* spell) and can cast it themselves for the remainder of the game (using Boon of Magic as the Lore Attribute).

#namecost("TZEENTCH'S FIRESTORM", "")
#namecost("Level 3 Cast on 11+", "")

_Tzeentch's Firestorm_ is a *direct damage* spell. Place the small round template anywhere within 30" – it then scatters D3". All models hit by the template suffer a Strength D6+1 hit (roll once and apply the result to all models) with the Flaming Attacks special rule.

#namecost("DAEMONFIRE VORTEX", "")
#namecost("Level 4 Cast on 12+", "")

Remains in play. _Daemonfire Vortex_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength D6+1 hit (roll once for each unit and apply the result to all models in that unit) with the Flaming Attacks special rule.

#namecost("TREASON OF TZEENTCH", "")
#namecost("Level 4 Cast on 14+", "")

_Treason of Tzeentch_ is a *hex* spell with a range of 24". All models in the unit immediately make a number of close combat attacks equal to the models' Attack characteristic (in addition to any extra Attacks from weapons) against the unit itself. Roll To Hit, To Wound and take saves as normal. The caster may choose which of the unit's weapons is used for these attacks. Parry or Dodge save does not apply, and neither do any special rules that only applies in the first round of close combat.

#namecost("INFERNAL GATEWAY", "")
#namecost("Level 4 Cast on 15+", "")

_Infernal Gateway_ is a *direct damage* spell with a range of 24". The target suffers 2D6 Strength 2D6 hits with the Flaming Attacks special rule. Roll for the Strength first. If an 11 or 12 is rolled when determining the spell’s Strength value, the hits are resolved at Strength 10, and the unit suffers 3D6 hits rather than 2D6.
]

= MUTATIONS & TRAITS

*Below are Mutations & Traits that can be bought for your characters. Each can only be chosen once per army, and no model may choose more than three.*

#namecost("CROWN OF HORNS", "30 points")

General only. The character gains a Magical Ward (5+). In addition, any unit they join gains +1 to any Rally attempts they make.

#namecost("ROARING BRUTE", "30 points")

Enemy units within 6" of this character suffer \-1 to their Leadership.

#namecost("EATER OF HEROES", "25 points")

The character may re-roll To Hit and To Wound when fighting in challenges.

#namecost("RUNE OF THE BEAST ASCENDANT", "25 points")

Beastlord or Wargor only. Friendly units of Gors, Ungors and Bestigors within 6" of the character gain +1 Leadership.

#namecost("INDOMITABLE BEAST", "20 points")

The character gains +1 Wound.

#namecost("GNARLED HIDE", "15 points")

The character gains the Natural Armour (5+) special rule.

#namecost("ORACLE OF THE DARK TONGUE", "15 points")

Enemy units in base contact with this character cannot use the Inspiring Presence special rule.

#namecost("RAMPANT JUGGERNAUT", "15 points")

The character gains the Devastating Charge and Mighty Blow (1) special rules in any turn that they make a successful charge.

#namecost("MANY-LIMBED FIEND", "15 points")

The character gains +1 Attack.

#namecost("MUSCULAR MONSTROSITY", "15 points")

The character gains +1 Strength.

#namecost("GORGER", "10 points")

Every time the character rolls a 6 To Wound and slays a model, they regain one Wound lost previously during the game.

#namecost("GOUGE-TUSKS", "10 points")

The character gains the Armour Piercing (1) special rule.

#namecost("RUNE OF THE INSATIABLE BEAST", "10 points")

The character can re-roll To Wound rolls of 1 in Close Combat.

#namecost("RUNE OF THE TRUE BEAST", "10 points")

War Beasts, Swarms and any mounts are not allowed to target the character in close combat, although any riders may attack as normal.

#namecost("SLUG-SKIN", "10 points")

All enemy models in base contact with the character at the start of any round of close combat suffer a Strength 2 hit with the Poisoned Attacks special rule.

#namecost("MALEVOLENT DESPOILER", "5 points")

Enemy units in combat with this character gain no benefits from fighting behind Obstacles.

#namecost("SHADOW-HIDE", "5 points")

Model on foot only. Enemy models targeting the character with missile attacks suffer a \-1 To Hit modifier.

#namecost("UNCANNY SENSES", "5 points")

The character gains +2 Initiative.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Beastmen. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#columns(2)[
#namecost("AXES OF KHORGOR", "40 points")

Two hand weapons. The bearer may re-roll all failed rolls To Hit and To Wound in close combat. In addition, he gains the Armour Piercing (1) special rule.

#namecost("AXE OF MEN", "40 points")

The Axe of Men gives the wielder the Killing Blow special rule. In addition, if the bearer kills an enemy character in a challenge, they and any unit they are with gain the Stubborn and Terror special rule for as long as they remain with the unit.

#namecost("THE BLACK MAUL", "40 points")

The Black Maul adds +2 to the bearer's Strength and gives him the Frenzy special rule. In addition, the weapon ignores any rules that would otherwise destroy the weapon.

#namecost("SLAUGHTERER'S BLADE", "40 points")

Model on foot only. Great weapon. For each wound inflicted with the Slaughterer's Blade, roll a D6 immediately. Each roll of a 4+ heals one lost Wound to the bearer (up to their starting Wounds total). Wounds regained in this way do not count towards combat resolution.

#namecost("HUNTING SPEAR", "35 points")

Spear. The Hunting Spear can be thrown following the rules for javelins with a range of 24" each Shooting phase. Resolve each hit like a Hit from a bolt thrower.

#namecost("THE STEEL-CLAWS", "35 points")

Two hand weapons. The Steel-Claws confer an extra D3 Attacks to the wielder rather than 1 (roll at the beginning of each round of close combat). If a natural 6 is rolled when determining the number of attacks, all the bearer's attacks that round gain the Ignores Armour Saves special rule.

#namecost("THE BRASS CLEAVER", "30 points")

The Brass Cleaver gives the wielder +1 Attack for each enemy model in base contact. In a challenge, it only confers +1 Attack.

#namecost("MANGELDER", "30 points")

The bearer gains the Terror special rule. In addition, any model wounded by this weapon loses 1 point of Leadership for each Wound it suffers.

#namecost("PRIMEVAL CLUB", "30 points")

When rolling To Wound, the owner's Strength is treated as equal to the unmodified Leadership value of the target model. This affects any armour saves the model might be required to take as well.

#namecost("GREAT FANG", "25 points")

The wielder of Great Fang gain +1 To Wound, and enemies must re-roll successful Armour saves.

#namecost("HERDSTONE AXE", "25 points")

If the wielder of this weapon successfully Wounds an enemy model, roll a D6 after resolving all their attacks. On a 5+, that model is automatically slain with no saves allowed.

#namecost("STONECRUSHER MACE", "25 points")

Great weapon. The Mace always wounds on a 2+. Armour saves are taken using the wielder's normal Strength. Against Buildings, Chariots, Shrines and War Machines, the wielder has the Multiple Wounds (D6) special rule.

#namecost("VOLCANIC AXE", "20 points")

The wielder of this weapon gains the Flaming Attacks special rule. In addition, each time you roll a natural 6 To Hit with this weapon, that attack automatically Wounds with the Multiple Wounds (D3) special rule.

#namecost("AXE OF MORGHUR", "15 points")

No Magical Ward saves can be taken against Wounds caused by this weapon.

#namecost("EVERBLEED", "15 points")

Every time an enemy model suffers an unsaved wound from Everbleed, roll a D6. On the result of a 4+, the enemy loses an additional wound, with no saves of any kind allowed, and you must roll again. Keep on rolling as long as the result is a 4+.

#namecost("JAGGED DAGGER", "10 points")

Wizard only. Every enemy model killed in close combat by the bearer of the Jagged Dagger generates an additional Power or Dispel dice that can be used in the next Magic phase.

#namecost("SCIMITAR OF SKULTAR", "5 points")

All To Wound rolls of 6 with the Scimitar of Skultar have the Ignores Armour Saves special rule.
]

#entry("MAGIC ARMOUR")
#namecost("TROLLHIDE ARMOUR", "35 points")

Light armour. Trollhide Armour gives the wearer the Regeneration (4+) special rule.

#namecost("SLITHERWRACK HELM", "30 points")

6+ armour save. All enemy units in base contact with the bearer are subject to the Always Strikes Last special rule in the first round of Close Combat.

#namecost("RAMHORN HELM", "15 points")

6+ armour save. For every armour save the wearer passes, the bearer may immediately make a bonus attack at his basic Strength.

#namecost("BLACKENED PLATE", "15 points")

Medium armour. The wearer of the Blackened Plate gains the Immunity (Flaming Attacks) special rule. Any unit he joins gains a Magical Ward (4+) against non- physical Flaming Attacks.

#namecost("BLADE-BLUNTER ARMOUR", "15 points")

Medium armour. At the end of each round of close combat, roll a D6 for each magic weapon that Hit the wearer of the armour. On the result of a 2+, the enemy item loses its special rules and ceases to count as a magic weapon. Instead it will count as a normal weapon of its type for the remainder of the battle.

#entry("TALISMANS")
#namecost("BLACKENED TALISMAN OF CHAOS", "50 points")

Whenever an enemy spell is casting within 12" of the bearer of this item, deduct the highest roll from the result.

#namecost("THE FESTERPELT", "40 points")

At the start of each turn, the bearer of this item automatically restores 1 Wound suffered earlier during game.

#namecost("FUR OF SHARRGU", "35 points")

This Fur gives the wearer the Magical Ward (5+). In addition, they gain the Natural Armour (6+) special rule against missile attacks.

#namecost("PELT OF THE SHADOWGAVE", "30 points")

All shooting attacks directed at the bearer or the unit he is with suffer \-1 To Hit. Enemy spells that target the bearer or the unit he is with suffer \-2 to cast.

#namecost("RUINOUS ICON", "30 points")

Each time an enemy spell is cast on the bearer of this item or their unit, roll a D6. On a 4+, the spell is automatically dispelled.

#namecost("EYE OF NIGHT", "25 points")

The Eye of Night gives the bearer and any unit they join the Magic Resistance (2) special rule. In addition, if an enemy Wizard within 24" suffers a Miscast, you may force them to re-roll the result on the Miscast table.

#namecost("GLYPH-ETCHED TALISMAN", "20 points")

The bearer of this item channels dispel dice in the same manner as a Level 2 Wizard. This has no effect on a model that already is a Wizard.

#namecost("PELT OF THE DARK YOUNG", "10 points")

The Pelt of the Dark Young gives the wearer the Magic Resistance (1) and Natural Armour (6+) special rules.

#entry("ARCANE ITEMS")
#namecost("SHARD OF THE HERD STONE", "50 points")

Charm. One use only. This item may be used at the start of any of your Magic phases. When used, place a Herdstone (see Mystical Monuments in the _Warhammer Rulebook_), no more than 3" in diameter, within 6" of the Wizard. Beastmen units within 6" of a Herdstone have the Armour Piercing (1) special rule. Each friendly Beastman Wizard within 12" of the herdstone generates an additional power dice.

#namecost("SKULL OF RARKOS", "40 points")

Relic. All friendly Beastman Wizards within 12" (including the bearer himself) gain a +1 casting bonus.

#namecost("CHALICE OF DARK RAIN", "35 points")

Charm. One use only. At the beginning of the enemy Shooting phase, the bearer can summon a storm of mud and worms with which to blind his enemies. For the rest of the phase, all enemy missile units are at \-1 To Hit. Weapons or attacks that do not use Ballistic Skill may only fire on the roll of a 4+.

#namecost("STAFF OF DARKOTH", "35 points")

Staff. Bound spell. The Staff of Darkoth contains the _Viletide_ spell from the Lore of the Wild.

#namecost("BLEATING GNARLSTAFF", "25 points")

Staff. At the start of each of your Magic phases, pick one terrain feature within 18" of the bearer. Any enemy unit within 6" of that terrain feature suffer D6 Strength 4 Hits.

#namecost("DAEMON HEART", "25 points")

Charm. One use only. This item may be used when attempting to dispel. It automatically gives you a number of dispel dice equal to the amount of power dice used to cast the spell.

#namecost("THE PLAGUE CHALICE", "20 points")

Relic. Mark of Nurgle only. The Shaman may drink from the Plague Chalice at the start of his Magic phase. He suffers an immediate Strength 4 hit that ignores all saves. For the remainder of that Magic phase, any spell casting attempt by the Shaman that includes any double (except 1's) on the initial roll gives the caster another free power dice to the casting attempt.

#namecost("HAGTREE FETISH", "20 points")

Relic. Choose an enemy unit within 24" at the start of each Magic phase. Any failed To Wound rolls made during the Magic phase against that unit may be re- rolled.

#entry("ENCHANTED ITEMS")
#namecost("TANGLEHORN FAMILIARS", "40 points")

One use only. This can be used at the start of any enemy Magic phase. Pick one Wizard within 18", that Wizard cannot cast any spells this turn.

#namecost("HORN OF THE FIRST BEAST", "35 points")

Beastlords and Wargors only. All friendly units within 12" of the bearer of the Horn of the Great Beast may re-roll failed Primal Fury tests.

#namecost("HORN OF THE GREAT HUNT", "35 points")

Bound Spell (Power Level 4). The Horn of the Great Hunt contains the _Bestial Surge_ spell from the Lore of the Wild.

#namecost("CORNUCOPIA OF CORPULENCE", "30 points")

All enemy models in base contact with the bearer must pass a Toughness test at the start of each round of close combat or suffer one Wound which Ignores Armour Saves.

#namecost("THE DARK HEART", "30 points")

The character and any unit led by him adds +D3" to their charge move. Roll after declaring charges – if the charge is failed, the models move their normal failed charge distance.

#namecost("STONE OF SPITE", "25 points")

One use only. Bound spell (Power Level 5). Every Arcane Item within 18" is immediately destroyed (friend and foe), and each bearer of an Arcane Item suffers D6 Strength 4 hits per item lost.

#namecost("THE GORETOOTH", "25 points")

The Goretooth gives the bearer the Hatred and Bloodgreed special rules.

#namecost("BRAYBLAST TRUMPET", "20 points")

One use only. This item may be used at the start of the Remaining Moves sub-phase on your second turn. When used, all friendly units with the Ambushers special rule gain a +1 bonus when rolling to see if they enter the battlefield that turn.

#namecost("CHAMPION'S DOOMCLOAK", "15 points")

The bearer of this item may re-roll failed Primal Fury tests.

#namecost("SKIN OF MAN", "15 points")

Infantry only. The bearer of the Skin of Man gains the Scouts special rule.

#namecost("BLOODHUNT HORN", "10 points")

One Use Only. Once per battle, the bearer can force a fleeing enemy unit within 12" to automatically fail their Rally test. This must be declared before the test is made.

#namecost("CACOPHONOUS DIRGE", "10 points")

Enemy musicians within 12" of the bearer of the Cacophonous Dirge have no effect.

#namecost("GILDED HORNS", "10 points")

Model on foot only. The bearer of this item gains the Impact Hits (D3) special rule.

#namecost("THE KNOWING EYE", "10 points")

At the start of each of your turns, the bearer of this item may choose one enemy unit within Line of Sight. That unit must reveal any Hidden models, upgrades and magic items it might have.

#entry("MAGIC STANDARDS")
#namecost("THE BEAST BANNER", "60 points")

The unit carrying this standard gain a +1 bonus to their Strength.

#namecost("THE FLESH BANNER", "35 points")

At the start of each close combat phase, all enemy units in base contact with the unit carrying this standard suffers D6 Strength 4 hits, distributed as Hits from shooting. Any wounds caused by the Flesh Banner counts towards combat resolution.

#namecost("VITRIOLIC TOTEM", "25 points")

The unit carrying this standard gains the Poisoned Attacks special rule.

#namecost("MANBANE STANDARD", "25 points")

All enemy units within 6" of the unit carrying this standard suffer \-1 to their Leadership characteristic.

#namecost("BANNER OF OUTRAGE", "25 points")

The unit carrying this standard automatically pass all Primal Fury and counts as having rolled doubles for it. However, all enemy units gain the Hatred special rule against the unit.

#namecost("TOTEM OF WRATH", "25 points")

In any turn that they charge, the unit carrying this standard gains the Armour Piercing (1) special rule and may re-roll 1's To Wound.

#namecost("BANNER OF THE WARPED MOON", "20 points")

The unit carrying this standard may take a Leadership test at the start of any of your Movement phases. If the test is passed, no units within 24" may use the Fly special rule until the start of your next turn.

#namecost("THE GORE BANNER", "20 points")

The unit carrying this standard may re-roll failed Psychology tests.

#namecost("TOTEM OF RUST", "15 points")

All units (friend or foe) in base contact with the unit carrying this standard treat their armour save as 1 point worse than it actually is. The Totem of Rust has no effect on Natural Armour.

#namecost("PREYSEEKER", "10 points")

The unit carrying this standard automatically enters the battlefield when using the Ambushers special rule (no roll is needed).

= CHARACTERS

#entry("CHIEFTAINS", first: true)
#profile(
  (name: "Beastlord", m: 5, ws: 6, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 125),
  (name: "Wargor", m: 5, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 8, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Forest Strider, Primal Fury")
#field("OPTIONS", "")

- May choose one of the following:
  - Spear +3 points
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Throwing axes +6 points
  - Javelins +6 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May have the Ambushers special rule (model on foot only) +5 points
- May choose one of the following:
  - Mark of Khorne +15 points
  - Mark of Slaanesh +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May be mounted on one of the following:
  - Tuskgor Chariot (replacing the Bestigor) +70 points
  - Ramhorn (replacing one of the crew) +250 points
- One Wargor may carry the Battle Standard +25 points
- A Wargor may take Mutations & Traits and/or Magic Items up to a total of 50 points
- A Beastlord may take Mutations & Traits and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("BRAY-SHAMANS")
#profile(
  (name: "Great Bray-Shaman", m: 5, ws: 5, bs: 3, s: 3, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 180),
  (name: "Bray-Shaman", m: 5, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 3, a: 1, ld: 7, points: 75),
)
#field("TROOP TYPE", "Infantry (Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Bray-Shaman is a Level 1 Wizard. A Great Bray-Shaman is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Chaos
- Death
- Shadow
- Wild

A Bray-Shaman or Great Bray-Shaman with the Mark of Tzeentch, Nurgle or Slaanesh must use the Lore of Tzeentch, Nurgle, or Slaanesh, respectively.

#field("SPECIAL RULES", "Forest Strider, Primal Fury")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May have the Ambushers special rule (model on foot only) +5 points
- May choose one of the following:
  - Mark of Slaanesh +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May be mounted on one of the following:
  - Tuskgor Chariot (replacing the Bestigor) +70 points
  - Ramhorn (replacing one of the crew) +250 points
- A Bray-Shaman may take Mutations & Traits and/or Magic Items up to a total of 50 points
- A Great Bray-Shaman may take Mutations & Traits and/or Magic Items up to a total of 100 points

#entry("MINOTAUR CHAMPIONS")
#profile(
  (name: "Doombull", m: 6, ws: 6, bs: 3, s: 6, t: 5, w: 5, i: 5, a: 6, ld: 8, points: 240),
  (name: "Gorebull", m: 6, ws: 5, bs: 3, s: 6, t: 5, w: 4, i: 4, a: 5, ld: 7, points: 180),
)
#field("TROOP TYPE", "Monstrous Infantry (Character, Beastman, Minotaur)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Bloodgreed, Impact Hits (1)")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Light armour +5 points
  - Medium armour +15 points
- May take a shield +5 points
- May choose one of the following:
  - Mark of Khorne +15 points
  - Mark of Slaanesh +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- One Gorebull may carry the Battle Standard +25 points
- A Gorebull may take Mutations & Traits and/or Magic Items up to a total of 50 points
- A Doombull may take Mutations & Traits and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("WARHOOFS")
#profile(
  (name: "Warhoof", m: 8, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 4, ld: 8, points: 120),
)
#field("TROOP TYPE", "Cavalry (Character, Beastman, Centigor)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Drunken, Forest Strider, Primal Fury")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Light lance +4 points
  - Great weapon +12 points
- May choose one of the following:
  - Javelins +2 points
  - Throwing axes +2 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May have the Ambushers special rule +5 points
- May choose one of the following:
  - Mark of Khorne +15 points
  - Mark of Slaanesh +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May take Mutations & Traits and/or Magic Items up to a total of 50 points

#field("NOTES", "")

- A Warhoof may never be the Army General.

#entry("HALFHORNS")
#profile(
  (name: "Halfhorn", m: 5, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 30),
)
#field("TROOP TYPE", "Infantry (Character, Beastman, Ungor)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Forest Strider, Primal Fury")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
- May choose one of the following:
  - Shortbow +3 points
  - Javelins +4 points
- May take light armour +2 points
- May take a shield +2 points
- May take Mutations & Traits and/or Magic Items up to a total of 25 points

#field("NOTES", "")

- A Halfhorn may never be the Army General.

= CORE UNITS

#entry("GOR HERD", first: true)
#profile(
  (name: "Gor", m: 5, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Beastmen, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Forest Strider, Primal Fury, Unruly")
#field("OPTIONS", "")

- May take replace shields with additional hand weapons free
- May take light armour +0.5 point/model
- May upgrade one Gor to a Leader +5 points
- May upgrade one Gor to a Musician +5 points
- May upgrade one Gor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("GOR RAIDERS")
#profile(
  (name: "Gor Raider", m: 5, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 7, points: 9),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Beastmen, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury, Skirmishers, Unruly")
#field("OPTIONS", "")

- May replace one hand weapon with shields free
- May take throwing axes +2 points/model
- May upgrade one Gor Raider to a Leader +5 points
- May upgrade one Gor Raider to a Musician +5 points
- May upgrade one Gor Raider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("UNGOR HERD")
#profile(
  (name: "Ungor", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 3),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Beastmen, Ungor)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Forest Strider, Primal Fury, Unruly")
#field("OPTIONS", "")

- May take spears +0.5 point/model
- May take shields +1 point/model
- May upgrade one Ungor to a Leader +5 points
- May upgrade one Ungor to a Musician +5 points
- May upgrade one Ungor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("UNGOR RAIDERS")
#profile(
  (name: "Ungor Raider", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 5),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Beastmen, Ungor)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury, Skirmishers, Unruly")
#field("OPTIONS", "")

- May take throwing weapons +1 point/model
- May upgrade one Ungor to a Leader +5 points
- May upgrade one Ungor to a Musician +5 points
- May upgrade one Ungor to a Standard Bearer +10 points

#entry("UNGOR ARCHERS")
#profile(
  (name: "Ungor Archers", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Beastmen, Ungor)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury, Skirmishers, Unruly")
#field("OPTIONS", "")

- May be upgraded to Scouts +1 point/model
- May replace shortbows with javelins & shields +1 point/model
- May upgrade one Ungor Raider to a Leader +5 points
- May upgrade one Ungor Raider to a Musician +5 points

#field("NOTES", "")

- You may not have more units of Ungor Archers than you have units of Ungor Herds or Ungor Raiders.

#entry("MUTANTS")
#profile(
  (name: "Mutant", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 3),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Beastmen)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable")

- *Mutations & Traits:* Roll a D6 at the start of the game and consult the table below to determine which mutation is the most prominent for the remainder of the game:

#chart((("D6", "Result:"), ("1", "Pincer Hand: The unit gains the Armour Piercing (1) special rule."), ("2", "Scales: The unit gains the Natural Armour (6+) special rule."), ("3", "Animalistic Legs: The unit gains +1 Movement."), ("4", "Tentacle-like Arms: The unit gains +1 Attack."), ("5", "Hulking: The unit gains +1 Strength."), ("6", "Grossly Fat: The unit gains +1 Toughness.")))

#entry("WARHOUNDS")
#profile(
  (name: "Warhound", m: 8, ws: 4, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Canine)")
#field("BASE SIZE", "25x50")
#field("OPTIONS", "")

- May have Natural Armour (6+) +0.5 point/model
- May have Poisoned Attacks +1 point/model

#entry("HARPIES")
#profile(
  (name: "Harpy", m: 5, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 6, points: 11),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Harpy)")
#field("BASE SIZE", "20x20 or 25x25")
#field("OPTIONS", "")

- May upgrade one Harpy to a Leader +5 points

#field("SPECIAL RULES", "Expendable, Independent, Fly (10)")

= SPECIAL UNITS

#entry("BESTIGORS", first: true)
#profile(
  (name: "Bestigor", m: 5, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 7, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Beastmen, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +2 points/model
  - Mark of Tzeentch +2 points/model
  - Mark of Slaanesh +2 points/model
  - Mark of Nurgle +3 points/model
- May take one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (if armed with hand weapons or polearms) +1 point/model
- May upgrade one Bestigor to a Leader +5 points
- May upgrade one Bestigor to a Musician +5 points
- May upgrade one Bestigor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Devastating Charge, Forest Strider, Primal Fury")

- *Despoilers:* Each enemy standard bearer that is removed as a result of a successful pursuit move or slain in combat by a unit of Bestigors adds +1 to their future Combat Resolution. If the unit flees for any reason, they will lose this bonus.

#entry("MINOTAURS")
#profile(
  (name: "Minotaur", m: 6, ws: 4, bs: 3, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 7, points: 39),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Beastmen, Minotaur)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, shield")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +4.5 points/model
  - Mark of Tzeentch +4.5 points/model
  - Mark of Slaanesh +4.5 points/model
  - Mark of Nurgle +6 points/model
- May replace shields with one of the following:
  - Additional hand weapons free
  - Great weapons +6 points/model
- May take light armour +3 points/model
- May upgrade one Minotaur to a Leader +5 points
- May upgrade one Minotaur to a Musician +5 points
- May upgrade one Minotaur to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Bloodgreed, Impact Hits (1)")

#entry("CENTIGORS")
#profile(
  (name: "Centigor", m: 8, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 7, points: 18),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Beastmen, Centigor)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance, buckler")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace bucklers with shields +0.5 point/model
  - Replace light lance and bucklers with great weapons +1 point/model
- May take one of the following:
  - Javelins +2 points/model
  - Throwing axes +2 points/model
- May take light armour +0.5 point/model
- May upgrade one Centigor to a Leader +5 points
- May upgrade one Centigor to a Musician +5 points
- May upgrade one Centigor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Drunken, Forest Strider, Primal Fury")
#field("NOTES", "")

- If a Centigor character is included in your army, one unit of Centigors may deploy with the Ambushers special rule.

#entry("TUSKGOR CHARIOT")
#profile(
  (name: "Tuskgor Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 75),
  (name: "Bestigor", m: "-", ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Gor", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Tuskgor", m: "-", ws: 3, bs: "-", s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  (name: "Razorgor", m: "-", ws: 3, bs: "-", s: 4, t: "-", w: "-", i: 2, a: 3, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "1 Gor & 1 Bestigor (Beastmen, Gor)")
#field("DRAWN BY", "2 Tuskgors (Porcine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance (Gor only), great weapon (Bestigor only), light armour")
#field("UPGRADES", "")

- *Razorgor:* A Razorgor (Porcine) replaces the Tuskgors and uses the Razorgor profile above. A Razorgor has the Fear and Tusker Charge special rules.

#field("OPTIONS", "")

- May replace Tuskgors with Razorgor +20 points
- May be upgraded to a standard bearer +10 points

#field("SPECIAL RULES", "Natural Armour (6+), Primal Fury, Tusker Charge (Tuskgor only)")

#compact-entry("RAZORGORS")[
#profile(
  (name: "Razorgor", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 6, points: 42),
)
#field("UNIT SIZE", "1-6")
#field("TROOP TYPE", "Monstrous Beast (Porcine)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Impact Hits (D3), Natural Armour (6+), Tusker Charge")
]

#compact-entry("BALEWOLVES")[
#profile(
  (name: "Balewolf", m: 8, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 4, a: 3, ld: 7, points: 60),
)
#field("UNIT SIZE", "1-6")
#field("TROOP TYPE", "Monstrous Beast (Canine)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Killing Blow, Natural Armour (5+), Regeneration (5+)")
]

#entry("TROLLS")
#profile(
  (name: "Troll", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 1, a: 3, ld: 6, points: 46),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Troll)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Independent, Natural Armour (6+), Regeneration (4+), Stupidity")

- *Troll Vomit:* In addition to their normal Attacks, models with this special rule inflicts one automatic Strength 4 hit which Ignores Armour Saves after resolving all their normal Attacks. This cannot be used with supporting attacks.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May take light armour +3 points/model

#entry("SPAWN OF CHAOS")
#profile(
  (name: "Spawn of Chaos", m: "*", ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: "*", ld: 10, points: 40),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Monstrous Beast (Chaos Beast)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Random Attacks (D6+1), Random Movement (2D6), Unbreakable")
#field("UPGRADES", "")

- *Spawn of Khorne:* A Spawn of Khorne has +1 Strength.
- *Spawn of Nurgle:* A Spawn of Nurgle has the Poisoned Attacks special rule.
- *Spawn of Slaanesh:* A Spawn of Slaanesh rolls an additional D6 for their Random Movement result.
- *Spawn of Tzeentch:* A Spawn of Tzeentch has a Strength 3 Breath Weapon that has the Flaming Attacks special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Spawn of Nurgle +10 points
  - Spawn of Slaanesh +10 points
  - Spawn of Khorne +15 points
  - Spawn of Tzeentch +20 points

#field("NOTES", "")

- You may take 1\-2 lone Spawn of Chaos as a single Special choice.

#entry("PREYTON")
#profile(
  (name: "Preyton", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 5, a: 3, ld: 6, points: 70),
)
#field("TROOP TYPE", "Monstrous Beast (Cervine)")
#field("BASE SIZE", "50x50 or 75x50")
#field("SPECIAL RULES", "Fly (8), Forest Strider, Impact Hits (D3)")

- *Consuming Hatred:* A Preyton has the Hatred special rule. Any wounds it suffers during close combat are included in its player's own Combat result score as well as that of their opponent's.
- *Endless Malice:* If the Preyton has killed one or more models that round of close combat and the enemy unit Breaks, it may not pursue. All enemy units within 12" and with line of sight to the Preyton must immediately take a Panic test after the broken unit has finished their Flee move.

#field("UPGRADES", "")

- *Filth-Encrusted Scales:* The Preyton gains the Natual Armour (5+) special rule.
- *Forest Stalker:* The Preyton gains the Ambushers special rule.
- *Insane Bloodlust:* The Preyton gains the Frenzy special rule.

#field("OPTIONS", "")

- May take Forest Stalker +5 points
- May take Filth-Encrusted Scales +10 points
- May take Insane Bloodlust +15 points

#entry("COCKATRICE")
#profile(
  (name: "Cockatrice", m: 4, ws: 4, bs: 5, s: 5, t: 5, w: 4, i: 6, a: 4, ld: 6, points: 165),
)
#field("TROOP TYPE", "Monstrous Creature (Chimeric)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Fly (8), Natural Armour (4+)")

- *Petrifying Gaze:* Petrifying Gaze has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Heroic Killing Blow, Magical Attacks, Multiple Shots (2), Quick to Fire"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.

#entry("MANTICORE")
#profile(
  (name: "Manticore", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 5, points: 150),
)
#field("TROOP TYPE", "Monstrous Creature (Chimeric)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fly (8), Frenzy, Killing Blow")
#field("OPTIONS", "")

- May take Rending Fangs +5 points
- May take Bloodrage +15 points
- May take Iron-hard Skin +15 points
- May take Venom Tail +15 points

#field("UPGRADES", "")

- *Bloodrage:* The Manticore gains the Hatred special rule.
- *Iron-hard Skin:* The Manticore gains the Natural Armour (5+) special rule.
- *Rending Fangs:* The Manticore gains the Armour Piercing (1) special rule.
- *Venom Tail:* The Manticore gains an additional Attack that has the Poisoned Attacks special rule.

= RARE UNITS

#entry("DRAGON OGRES", first: true)
#profile(
  (name: "Dragon Ogre", m: 7, ws: 4, bs: 2, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 8, points: 55),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Dragon Ogre)")
#field("BASE SIZE", "40x40, 50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +4 points/model
  - Polearm +6 points/model
  - Great weapons +9 points/model
- May take medium armour +8 points/model
- May upgrade one Dragon Ogre to a Leader +5 points

#field("SPECIAL RULES", "Independent, Natural Armour (5+)")

- *Storm Rage:* Dragon Ogres have the Immunity (Lightning Attacks) special rule. In addition, if they are hit with a Lightning Attack, they immediately gain the Frenzy special rule.

#field("NOTES", "")

- You may take one unit of Dragon Ogres as a Special Unit instead of a Rare Unit for every Dragon Ogre Shaggoth in your army.

#entry("DRAGON OGRE SHAGGOTH")
#profile(
  (name: "Dragon Ogre Shaggoth", m: 7, ws: 6, bs: 3, s: 6, t: 6, w: 6, i: 4, a: 5, ld: 9, points: 235),
)
#field("TROOP TYPE", "Monster (Dragon Ogre)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +6 points
  - Great weapons +15 points
- May take medium armour +12 points

#field("SPECIAL RULES", "Impact Hits (D3), Natural Armour (5+), Storm Rage (see Dragon Ogres)")

- *Storm Call:* Innate Bound Spell, power level 4. _Storm Call_ is a *direct damage* spell that targets all units within a 6" radius (friend or foe). The target units suffer D3 Strength 4 Hits with the Lightning Attacks special rule.

#entry("GHORGON")
#profile(
  (name: "Ghorgon", m: 7, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 8, ld: 10, points: 240),
)
#field("TROOP TYPE", "Monster (Beastman)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Bloodgreed, Frenzy, Immunity (Psychology), Stubborn")

- *Strength from Flesh:* Each time a Ghorgon causes a Killing Blow with its Swallow Whole special rule, it regains 1 Wound that it has lost earlier in the battle
- *Swallow Whole:* In addition to its normal attacks, the Ghorgon may make an additional special attack at an Initiative of 1. This attack has the Killing Blow special rule, but To Wound rolls of a 4+ act as Killing Blow attacks, instead of just rolls of 6.

#entry("CYGOR")
#profile(
  (name: "Cygor", m: 7, ws: 2, bs: 1, s: 6, t: 6, w: 6, i: 3, a: 4, ld: 8, points: 180),
)
#field("TROOP TYPE", "Monster (Beastman)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Immunity (Psychology), Magic Resistance (2), Stubborn")

- *Ghostsight:* The Cygor may re-roll any failed To Hit when fighting Undead, Wizards, models with Magical Attacks, Magical Ward saves or any sort of magic item.
- *Hurl Attack:* This is a missile attack that fires like a Stone Thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6-24\"", "4(8)", "Multiple Wounds (D3), Slow to Fire"))

If the target unit contains one or more models mentioned in Ghostsight, you may re-roll the scatter dice. If a misfire is rolled, the Cygor suffers a Wound which Ignores Armour Saves.

- *Soul-eater:* Enemy Wizards within 24" of one or more Cygors must take a Leadership test at the beginning of the Magic phase. If the test is failed, any spell that Wizard fails to reach the attempted casting value of will result in a miscast.

#entry("JABBERSLYTHE")
#profile(
  (name: "Jabberslythe", m: 8, ws: 4, bs: 4, s: 5, t: 5, w: 5, i: 3, a: 5, ld: 9, points: 175),
)
#field("TROOP TYPE", "Monster (Chimeric)")
#field("BASE SIZE", "50x100 or 60x100")
#field("OPTIONS", "")

- May take Lash Tail +10 points
- May take Sinisterly Skulking +15 points

#field("SPECIAL RULES", "Fly (5), Forest Strider, Immunity (Psychology), Natural Armour (4+), Poisoned Attacks")

- *Aura of Madness:* Each enemy unit within 12" of one or more Jabberslythes at the beginning of the Beastmen Magic phase must take a Leadership test. For every point by which a unit fails its test, it suffers a wound which Ignores Armour Saves. This has no effect on units with Immunity (Psychology).
- *Slythey Tongue:* This is a shooting attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Poisoned Attacks"))

- *Spurting Bile-blood:* For every unsaved wound caused on a Jabberslythe in close combat, the attacking unit immediately suffers a Strength 5 hit.

#field("UPGRADES", "")

- *Lash Tail:* The Jabberslythe gains +1 Attack.
- *Sinisterly Skulking:* The Jabberslythe gains the Ambushers special rule.

#entry("HAG TREE")
#profile(
  (name: "Hag Tree", m: 5, ws: 3, bs: 0, s: 5, t: 6, w: 5, i: 2, a: "*", ld: 7, points: 190),
)
#field("TROOP TYPE", "Monster (Chaos Beast)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Flammable, Forest Strider, Immunity (Psychology), Random Attacks (D6+2), Natural")

*Armour (3+), Stubborn*

- *Constant Wailing:* Enemy units within 6" of this model suffer \-1 to their Leadership. This has no effect on units with the Immunity (Psychology) special rule.
- *Flailing Appendages:* A Hag Tree counts as having no Flanks or Rear for the purposes of Combat Resolution.
- *Regenerative Snacking:* For every model killed in close combat by the Hag Tree, roll a D6. On a 4+, the Hag Tree regains one wound previously lost in battle.

#entry("GIANT SPAWN OF CHAOS")
#profile(
  (name: "Giant Spawn of Chaos", m: "*", ws: 4, bs: 0, s: 5, t: 6, w: 5, i: 2, a: "*", ld: 10, points: 195),
)
#field("TROOP TYPE", "Monster (Chaos Beast)")
#field("BASE SIZE", "50x100, 60x100 or 100x150")
#field("SPECIAL RULES", "Random Attacks (2D6), Random Movement (3D6), Unbreakable")
#field("UPGRADES", "")

- *Spawn of Khorne:* A Spawn of Khorne has +1 Strength.
- *Spawn of Nurgle:* A Spawn of Nurgle has the Poisoned Attacks special rule.
- *Spawn of Slaanesh:* A Spawn of Slaanesh rolls an additional D6 for their Random Movement result.
- *Spawn of Tzeentch:* A Spawn of Tzeentch has a Strength 3 Breath Weapon that has the Flaming Attacks special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Spawn of Nurgle +10 points
  - Spawn of Slaanesh +15 points
  - Spawn of Khorne +15 points
  - Spawn of Tzeentch +20 points

#entry("CHIMERA")
#profile(
  (name: "Chimera", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 5, i: 2, a: 6, ld: 5, points: 190),
)
#field("TROOP TYPE", "Monster (Chimeric)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("OPTIONS", "")

- May take Venomous Ooze +10 points
- May take Fiend Tail +15 points
- May take Iron-hard Skin +25 points
- May take Flaming Breath +30 points
- May take Regenerating Flesh +40 points

#field("SPECIAL RULES", "Fly (8)")
#field("UPGRADES", "")

- *Fiend Tail:* The Chimera gains +1 Attack.
- *Flaming Breath:* The Chimera gains a Strength 4 Breath Weapon which has the Flaming Attacks special rule.
- *Iron-hard Skin:* The Chimera gains the Natural Armour (4+) special rule.
- *Regenerating Flesh:* The Chimera gains the Regeneration (4+) special rule.
- *Venomous Ooze:* The Chimera gains the Poisoned Attacks special rule.

#compact-entry("RAMHORN")[
#profile(
  (name: "Ramhorn", m: 8, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: 5, ld: 6, points: 240),
  (name: "Bestigor Crew", m: "-", ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Porcine)")
#field("CREW", "4 Bestigor Crew (Beastmen, Gor)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Great weapon (Bestigor Crew only)")
#field("SPECIAL RULES", "Frenzy, Impact Hits (D6+2), Natural Armour (4+), Primal Fury (Bestigors only), Stubborn, Tusker Charge")
]

#entry("GIANT")
#profile(
  (name: "Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 180),
)
#field("TROOP TYPE", "Monster (Giant)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology), Natural Armour (6+), Stubborn")

- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small round template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *Giant Special Attacks:* To determine what a Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Thump with Club"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will instead use the Stomp (2D6) special rule this turn instead of its normal Stomp. A Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Giant fights using the Random Attacks (2D6) special rule this round. *\- Thump with Club:* The Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D3 Wounds which Ignores Armour Saves. If a double is rolled the Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Giant – randomly determine
which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved
Wounds from these hits count towards the Giant's combat result. If no enemy units are in range,
treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and
then choose another victim. Roll again on this table to see what the Giant does with it.")))

= SPECIAL CHARACTERS

#entry("GORTHOR THE CRUEL", first: true)
#namecost("The Favoured of Chaos, Scion of the Dark Gods", "")
#profile(
  (name: "Gorthor the Cruel", m: 5, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 5, ld: 9, points: 300),
  (name: "Bagrar the Tamer", m: 5, ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 2, ld: 7, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Light lance (Bagrar only)")
#field("MAGIC ITEMS", "")

- *The Impaler:* Magic Weapon. Light lance/spear. The Impaler gives Gorthor the Multiple Wounds (D3) special rule. If Gorthor rolls any doubles or triples of successful rolls To Hit, these attacks automatically Wound.
- *Skull of Mugrar:* Enchanted Item. Chariot only. When rolling for the chariot's impact hits, the Skull of Mugrar allows an extra dice to be rolled, and the highest result to be chosen. In addition, it gives Gorthor the Immunity (Multiple Wounds) special rule.
- *Cloak of the Beastlord:* Talisman. The Cloak of the Beastlord gives Gorthor a Ward save equal to the Strength of the attack that hit him, to a minimum of 6+. For example, a Strength 3 hit would grant a Magical Ward (3+) and a Strength 5 hit would grant a Magical Ward (5+). Against Attacks that do not have a Strength value, it provides a Ward Save (6+). In addition, he gains the Inspiring Presence (6) special rule.

#field("SPECIAL RULES", "Forest Strider, Primal Fury")

- *Bagrar the Tamer:* If Gorthor is mounted on a Chariot, he may re-roll all Charge, Flee and Pursuit distance rolls. If Gorthor is on foot, Bagrar is not included in the game.
- *Chariot Master:* If Gorthor is included in your army, you may take Tuskgor Chariots as Core Units instead of Special Units.
- *The Favoured of Chaos:* Gorthor must be the Army General. Gorthor, and any unit he joins, may re-roll failed Psychology and Break tests.
- *Scion of the Dark Gods:* At the start of each friendly Magic phase, randomly generate a spell from the Lore of Chaos up to Level 2. Gorthor may use this spell during this Magic phase as a Bound Spell, with a Power Level equal to half the casting value of the spell, rounding up.

#field("OPTIONS", "")

- May be mounted on a Tuskgor Chariot (replacing the Bestigor) +75 points

#entry("KHAZRAK ONE-EYE")
#profile(
  (name: "Khazrak One-Eye", m: 5, ws: 7, bs: 1, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 250),
  (name: "Redmaw (Chaos Warhound)", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor). Redmaw is a War Beast (Chaos Beast)")
#field("BASE SIZE", "25x25 or 30x30 (Khazrak), 25x50 (Redmaw)")
#field("MAGIC ITEMS", "")

- *Scourge:* Magic Weapon. Two hand weapons. Each enemy model in base contact with Khazrak gives him an additional Attack. This has no effect in a challenge.
- *The Dark Mail:* Magic Armour. Medium armour. The Dark Mail gives Khazrak an additional +3 to his armour save. In addition, it negates the power of any magic or runic weapons carried by models in base contact – treat them as ordinary non-magical weapons of their type.

#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury")

- *Bestial Cunning:* All units using the Ambushers special rule in the same army as Khazrak may choose to re- roll the dice to see when they enter play.
- *Packmaster:* All Warhounds in an army led by Khazrak have +1 Leadership and the Ambushers special rule.
- *Redmaw:* If Redmaw is included in your army he forms a unit with Khazrak, though they may both join other units as normal. If Khazrak is slain, Redmaw is subject to Hatred and Frenzy for the remainder of the game.

#field("OPTIONS", "")

- May be accompanied by Redmaw +15 points

#entry("MORGHUR THE SHADOWGAVE")
#namecost("Master of Skulls", "")
#profile(
  (name: "Morghur", m: "*", ws: 6, bs: 3, s: 4, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 335),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *Bray-Staff of Morghur & the Stones of the Skull Cave:* Arcane Item. If any Wizard (friend or foe) within 12" of Morghur rolls a 6 when rolling on the Miscast table, then the unfortunate Wizard is instantly turned into a Spawn of Chaos under the control of the Beastmen player, and the rolled result on the Miscast table is ignored. The Spawn has as many wounds as the Wizard did when he Miscast. If you do not have a Spawn model to replace the Wizard then he simply counts as slain. If the Wizard is within an enemy unit, follow the same rules described under the Spirit-Essence of Chaos, above. This newly created unit does not award Victory points. In addition, Morghur generates two Dispel dice to be added to the Beastmen player's Dispel dice pool.
- *Skull-Weave:* Talisman. Morghur causes Terror. Any model attempting to attack Morghur in close combat suffers \-1 to Hit.

#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury, Random Movement (2D6), Unbreakable")

- *Aura of Transmutation:* Morghur cannot be harmed in any way by missile attacks or spells, unless the model which is the source of the attack is within 12" of him. Furthermore, at the beginning of each round of close combat, all enemy models in base contact take a Strength 3 hit with no armour save allowed.
- *The Beast-Roar:* All friendly Beastmen models within 12" of Morghur may re-roll failed Rally Tests.
- *The Hordes of Morghur:* A Beastmen army containing Morghur must re-roll all successful Unruly tests. In addition, you may upgrade any Gor Herds or Gor Raiders to Warped Gors for +1 point per model. Warped Gors have the Mutations & Traits special rule (see Mutants).
- *Spirit-essence of Chaos:* At the beginning of your Magic phase, all units within 8" of Morghur must pass a Leadership test or suffer D6 Strength 4 Hits which Ignores Armour Saves. If one or more Wounds are inflicted, you may place a Chaos Spawn within 3" of the spot vacated, provided there is space, and you have the appropriate model available. When the Spawn appears it must be placed more than 1" away from other models.
- *The Taint:* If Morghur is within 12" of a forest, all enemy units even partially within that forest suffer \-1 to their Leadership.

#entry("MALAGOR THE DARK OMEN")
#namecost("Crowfather, Despoiler of the Sacred, Harbinger of Disaster", "")
#profile(
  (name: "Malagor", m: 5, ws: 5, bs: 3, s: 3, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 320),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Malagor is a Level 4 Wizard who uses one of the following Lores of Magic:")

- Beasts
- Chaos
- Death
- Shadow
- Wild

#field("MAGIC ITEMS", "")

- *Icons of Vilification:* Enchanted Item. All friendly units within 6" of Malagor may re-roll failed Primal Fury tests.

#field("SPECIAL RULES", "Forest Strider, Fly (10), Primal Fury")

- *Something Wicked This Way Comes:* Enemy units within 6" of Malagor may not use the Inspiring Presence special rule.
- *Unholy Power:* Malagor has a dread agenda given unto him by the Dark Gods themselves, and every spell Malagor casts brings his unholy mission that much closer to fruition. For every spell Malagor casts that is not dispelled he gets a cumulative +1 on subsequent casting attempts for the rest of the Magic phase.

#entry("KRALMAW")
#namecost("The Prophet of Ruin", "")
#profile(
  (name: "Kralmaw", m: 5, ws: 5, bs: 3, s: 3, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 295),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Kralmaw is a Level 4 Wizard who uses one of the following Lores of Magic:")

- Beasts
- Chaos
- Wild

#field("MAGIC ITEMS", "")

- *Grisly Totem:* Arcane Item. Relic. All enemy units within 12" of Kralmaw suffer a \-1 modifier to their Leadership.

#field("SPECIAL RULES", "Forest Strider, Primal Fury")

- *Future Sight:* Kralmaw has a 4+ invulnerable save.
- *Leering Spirit:* When Kralmaw is deployed, place a Leering Spirit marker anywhere on the battlefield that is not within 12" of an enemy unit. Once placed, a Leering Spirit marker does not move but has a 360° line of sight. The marker cannot be charged, targeted or attacked in any way. However, if Kralmaw is removed from play as a casualty, the Leering Spirit marker is also removed from play. During the Shooting phase of each of Kralmaw’s turns, the Leering Spirit marker may cast the Devolve spell from the Lore of the Wild as a Bound Spell, Power Level 3.

Note that the Leering Spirit marker is ignored for the purposes of movement, combat and line of sight, as if it was not there. Should the presence of it interfere with the position of units, simply make note of its position and move it aside, replacing it when convenient to do so.

#entry("MOLOKH SLUGTONGUE")
#namecost("The Famine-Fiend, the Barren One, Lord of the Black Harvest", "")
#profile(
  (name: "Molokh Slugtongue", m: 5, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 3, a: 1, ld: 7, points: 190),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Gor)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Molokh Slugtongue is a Level 2 Wizard who uses one of the following Lores of Magic:")

- Death
- Wild

#field("SPECIAL RULES", "Forest Strider, Poisoned Attacks, Primal Fury, Regeneration (4+)")

- *Curse of the Famine-fiend:* At the start of each of your turns, all enemy units within 18" of Slugtongue must pass D3 Toughness tests or suffer a Wound which Ignores Armour Saves for every failed Toughness test.

#entry("TAUROX THE BRASS BULL")
#namecost("Slaughterhorn, Bloodbeast, The Brazen One", "")
#profile(
  (name: "Taurox", m: 6, ws: 6, bs: 3, s: 6, t: 6, w: 5, i: 5, a: 6, ld: 8, points: 325),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Minotaur)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Rune-tortured Axes:* Magic Weapon. Two hand weapons. Attacks with these weapons have the Ignore Armour Saves and Flaming Attacks special rules.

#field("SPECIAL RULES", "Bloodgreed, Frenzy, Impact Hits (1)")

- *Brass Body:* Taurox has a 3+ armour save. However, if Taurox suffers an unsaved Wound from an attack that rolls a natural 6 To Hit and then a natural 6 To Wound then he will be slain outright.
- *Slaughterer's Call:* Any friendly unit of Minotaurs that is joined by Taurox gains the Frenzy special rule. In addition, if Taurox is included in your army, you may take one unit of Minotaurs as a Core Unit instead of a Special Unit.

#entry("GHORROS WARHOOF")
#namecost("Sire of a Thousand Young", "")
#profile(
  (name: "Ghorros Warhoof", m: 8, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 4, ld: 8, points: 160),
)
#field("TROOP TYPE", "Cavalry (Character, Beastman, Centigor)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Mansmasher:* Magic Weapon. The Mansmasher gives Ghorros the Multiple Wounds (D3) special rule.
- *Skull of the Unicorn Lord:* Talisman. The Skull gives Ghorros Magic Resistance (2). However, all Wood Elves and Forest Spirits have the Hatred special rule against Ghorros and his unit.

#field("SPECIAL RULES", "Drunken, Forest Strider, Primal Fury")

- *Father of Beasts:* Should Ghorros be killed, all Beastmen units in the army receive a +1 bonus to their Leadership when taking Primal Fury tests.
- *The Sons of Ghorros:* Ghorros must be accompanied by a unit of Centigors chosen from the army list at a cost of +1 point per model. This unit has +1 Weapon Skill. Ghorros can always use the 'Look Out, Sir!' rule as long as there is at least one other Centigor in his unit still alive.

#entry("UNGROL FOUR-HORN")
#namecost("Blackheart, Hornsthief, the Spurned One", "")
#profile(
  (name: "Ungrol Four-horn", m: 5, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 70),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman, Ungor)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("MAGIC ITEMS", "")

- *The Stolen Crowns:* Enchanted Item. Take a Leadership test for Ungrol at the beginning of each of his turns. If he passes the test, he gains +2 Weapon Skill and +1 Strength until the start of his next turn. If he fails he is treated as a Level 1 Wizard instead – roll a D3 to randomly generate a Level 1 spell from the Lore of the Wild each time.

#field("SPECIAL RULES", "Ambushers, Forest Strider, Primal Fury")

- *Bruised and Bitter:* Ungrol must deploy with a unit of Ungors, and may never leave it. Ungrol and his unit may re-roll failed Primal Fury tests when in combat against Humans and Beastmen. However, Ungrol's unit may not use the Army General's Leadership, and no other characters may join the unit.

#entry("MOONCLAW, SON OF MORRSLIEB")
#namecost("The Lunatic Prince, Child of the Gravid Orb", "")
#profile(
  (name: "Moonclaw", m: 5, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 7, points: 200),
  (name: "Umbralok", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 3, a: 3, ld: 6, points: ""),
)
#field("TROOP TYPE", "Cavalry (Character, Beastman)")
#field("MOUNT", "Umbralok (Chaos Beast)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Moonclaw is a Level 1 Wizard who uses one of the following Lores of Magic:")

- Shadow
- Wild

#field("SPECIAL RULES", "Forest Strider, Independent, Primal Fury")

- *Unholy Zenith:* At the beginning of the game, secretly roll a D3 and record the number. In the turn that corresponds to this number, Moonclaw has a +2 casting bonus. In addition, he may make D3 shooting attacks as if he were a Stone Thrower for that turn only (even if he moved or marched during the Movement phase). Any results of a misfire cause a single wound upon Moonclaw with no saves allowed.
- *Ward of Morrslieb:* Moonclaw has the Magical Ward (5+) and Magic Resistance (2) special rules.
- *Wave of Insanity:* Every enemy unit within 12" of Moonclaw must take a Stupidity test at the start of their turn.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Stefan Wolf", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
