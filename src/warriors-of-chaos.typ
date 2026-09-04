// Warriors of Chaos 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "warriors-of-chaos",
  army: "Warriors of Chaos",
  version: "3.0",
  layout: "army",
  cover: "covers/warriors-of-chaos.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Warriors of Chaos 3.0")

#cover(
  title: "Warriors of Chaos",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/warriors-of-chaos.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Warriors of Chaos*, version 3.0 — written and freely distributed by Mathias
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

#columns(2)[
This section of the book describes all the different units used in a Warriors of Chaos army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Warriors of Chaos units, and these are detailed here.

#namecost("CHAOS ARMOUR", "")

Models with this rule cannot have their armour save reduced below a 6+ save from non-magical Attacks.

#namecost("ENSORCELLED WEAPONS", "")

Models with this rule gain the Armour Piercing (1) and Magical Attacks special rules when using hand weapons.

#namecost("DAEMONIC", "")

Models with this rule have the Fear, Magical Attacks, and Magical Ward (5+) special rules.

In addition, a Daemon can have any of the following in addition to the rules above:

- *Daemon of Khorne:* A Daemon of Khorne has the Hatred (Daemons of Slaanesh), Magic Resistance (1) and Mighty Blow (1) special rules.

- *Daemon of Nurgle:* A Daemon of Nurgle has the Hatred (Daemons of Tzeentch) and Poisoned Attacks special rules. Enemy models in base contact suffer \-1 to their Weapon Skill.

- *Daemon of Tzeentch:* A Daemon of Tzeentch has the Hatred (Daemons of Nurgle) a Magical Ward (6+) special rules. Wizards with the Daemon of Tzeentch upgrade can also re-roll channelling results of 1.

- *Daemon of Slaanesh:* A Daemon of Slaanesh has the Hatred (Daemons of Khorne) and Armour Piercing (1) special rules. For every close combat Attack that causes an unsaved Wound, the model may may an additional Attack. These additional Attacks cannot generate further attacks.

#namecost("EYE OF THE GODS", "")

Models with this special rule can never refuse a challenge and, if possible, must always issue one. If there are several models with this special rule involved in a combat, the controlling player chooses which will issue/accept the challenge.

In addition, if a model with this special rule kills an enemy character or destroys a non-Expendable unit in either close combat, with spells, or through charging/pursuing, immediately make a roll on the Eye of the Gods table.

If there is more than one character with this special rule in the unit at the time of the destruction of the enemy unit through pursuit, each character gets to make a separate roll.

Once the result of the roll has been determined, make a note on your army roster – that model now has that Gift of the Gods (see pages 10\-12) for the rest of the battle.

A model can have several Gifts of the Gods, but can only have each Gift once. If a Gift cannot be applied, the roll has no effect.

#chart((("D6", "Result"), ("1", "Pick one Gift of the Gods worth 5 points."), ("2", "Pick one Gift of the Gods worth 10 points."), ("3", "Pick one Gift of the Gods worth 15 points."), ("4", "Pick one Gift of the Gods worth 20 points."), ("5", "Pick one Gift of the Gods worth 25 points."), ("6", "Pick one Gift of the Gods worth 30 points.")))
#chartlabel("MARKS OF CHAOS")

Many characters and units in the Warriors of Chaos army have, or can purchase, one of the four Marks of Chaos detailed below.

Unless your Army General has the same Mark of Chaos, any Core Unit with Mark of Chaos counts as Special Units, Special Units counts as Rare Units, and Rare Units may not be included.

In addition, models with a different Mark of Chaos treat each other as Suspicious Allies. However, models with the Mark of Khorne and Slaanesh, or Tzeentch and Nurgle, treat each other as Desperate Allies, respectively.

Characters without a Mark of Chaos may not join units that have one.

- *Mark of Khorne:* Models with the Mark of Khorne have the Frenzy special rule.

- *Mark of Nurgle:* Models with the Mark of Nurgle add +1 to their Toughness.

- *Mark of Slaanesh:* Models with the Mark of Slaanesh have the Immunity (Psychology) special rule and may re-roll the lowest dice on their charge and pursuit distances.

- *Mark of Tzeentch:* Models with the Mark of Tzeentch have a Magical Ward (6+) and the Magic Resistance (1) special rule.

#namecost("WILL OF CHAOS", "")

Models with this special rule have the Cold-blooded special rule when taking Panic tests.
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

_Veil of Corruption_ is a *direct damage area* spell with a range of 24" that uses the large round template. All models hit by the template suffer a Strength 3 hit.

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

Whenever a Wizard successfully casts a spell from the Lore of Nurgle, roll a D6 after resolving the spell's effect(s). On the roll of a 6, the Wizard or one friendly Character within 6" gain +1 Wound for the remainder of the game.

#namecost("STREAM OF CORRUPTION", "")
#namecost("Signature Spell Cast on 7+", "")

_Stream of Corruption_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit must pass a Toughness test or suffer a Wound with the Ignores Armour saves special rule.

#namecost("MIASMA OF PESTILENCE", "")
#namecost("Level 1 Cast on 5+", "")

_Miasma of Pestilence_ is an *augment* spell with a range of 18". Until the start of the caster’s next Magic phase, all enemy units in base contact with the target unit reduce their Weapon Skill and Initiative by 1 (to a minimum of 1).

#namecost("BLADES OF PUTREFACTION", "")
#namecost("Level 1 Cast on 5+", "")

_Blades of Putrefaction_ is an *augment* spell with a range of 18". The target unit’s close combat attacks gain the Poisoned Attacks special rule until the start of the caster’s next Magic phase.

#namecost("MAGNIFICENT BUBOUES", "")
#namecost("Level 1 Cast on 6+", "")

_Magnificent Buboes_ is a *magic missile* with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers one Wound which Ignores Armour saves.

#namecost("CURSE OF THE LEPER", "")
#namecost("Level 2 Cast on 7+", "")

_Curse of the Leper_ is an *augment/hex* spell with a range of 24". If cast on a friendly unit, it increases the target unit’s Toughness by 1 until the start of the caster's next Magic phase. If cast on an enemy unit, it reduces the target unit’s Toughness by 1 (to a minimum of 1) until the start of the caster’s next Magic phase.

#namecost("PLAGUE SQUALL", "")
#namecost("Level 2 Cast on 8+", "")

_Plague Squall_ is a *direct damage area* spell with a range of 24" that uses the large round template; it scatters like a stone thrower. If a misfire is rolled, the caster suffers 1 Wound which Ignores Armour Saves. Any model hit suffers a Strength 1 Hit with the Ignores Armour Saves special rule.

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

Whenever a Wizard successfully casts a spell from the Lore of Slaanesh on an enemy unit, the target suffers D6 Strength 3 Hits after resolving all effects of the spell.

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

_Tzeentch's Firestorm_ is a *direct damage area* with a range of 30" that uses the small round template. All models hit by the template suffer a Strength D6+1 hit (roll once and apply the result to all models) with the Flaming Attacks special rule.

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

= GIFTS OF THE GODS

#columns(2)[
*Below are Gifts of the Gods that can be bought for your characters. Each can only be chosen once per army, and no model may choose more than three Gifts of the Gods (excluding results from the Eye of the Gods rolls).*

#namecost("MANTLE OF CHAOS", "55 points")

Any missile attacks targeting the character or the unit they are with have their Strength value halved, rounding up. This has no effect against Magical Attacks.

#namecost("DIABOLIC SPLENDOUR", "30 points")

Any successful Leadership tests taken by an enemy unit in base contact with the character must be re- rolled. This mutation cannot be combined with Fearsome Aura.

#namecost("FEARSOME AURA", "30 points")

All enemy units within 6" of the character suffer \-1 to their Leadership.

#namecost("TERRIFYING APPEARANCE", "25 points")

The character gains the Terror special rule.

#namecost("WINGS", "25 points")

Infantry only. The character gains the Fly (10) special rule.

#namecost("FLAMING BREATH", "25 points")

The character gains a Strength 3 Breath Weapon that has the Flaming Attacks special rule.

#namecost("COMMAND OF THE GODS", "20 points")

The character gains +1 Leadership.

#namecost("DAEMON-FLESH", "20 points")

The character cannot be wounded on better than a 3+.

#namecost("ENCHANTING AURA", "20 points")

Enemy models in base contact with the character are subject to the Always Strikes Last special rule.

#namecost("MASSIVE BULK", "20 points")

The character gains +1 Wound.

#namecost("MASTER OF MORTALS", "20 points")

The character gains the Inspiring Presence (6) special rule that affects Humans.

#namecost("UNHOLY RESILIENCE", "20 points")

The character gains +1 Toughness.

#namecost("AURA OF CHAOS", "15 points")

The character gains a Magical Ward (6+).

#namecost("BESTIAL VISAGE", "15 points")

The character gains the Fear special rule.

#namecost("DARK FURY", "15 points")

The character gains +1 Attack.

#namecost("EXTRA ARM", "15 points")

The character may wield both a weapon that Requires Two Hands and a shield at the same time, benefitting from both pieces of equipment. This mutation cannot be combined with Tentacle.

#namecost("SLAUGHTERER'S STRENGTH", "15 points")

The character gains +1 Strength.

#namecost("SOUL FEEDER", "15 points")

Roll a D6 for every unsaved Wound the character inflicts on an enemy unit in close combat. For each result of a 6 rolled, they immediately regain a single lost Wound.

#namecost("CHAOS FAMILIAR", "10 points")

Wizard only. The character knows one more spell than normal for their level.

#namecost("DISTENDABLE MAW", "10 points")

Instead of making his usual attacks, the character can choose to make a special attack against a single Infantry model. If the attack hits, the enemy model must pass an Initiative test. If this test is failed, the victim suffers D3 Wounds with no saves allowed.

#namecost("POISONOUS SLIME", "10 points")

The character gains the Poisoned Attacks and Immunity (Poisoned Attacks) special rules.

#namecost("SCALED SKIN", "10 points")

The character gains the Natural Armour (6+) special rule.

#namecost("ACID ICHOR", "5 points")

Whenever this character suffers an unsaved Wound in close combat, the model that inflicted that Hit suffers a Strength 4 hit.

#namecost("BURNING BODY", "5 points")

The character gains the Flaming Attacks and Immunity (Flaming Attacks) special rules.

#namecost("CLOVEN HOOVES", "5 points")

Model on foot only. The character gains +1 Movement. This mutation cannot be combined with Serpent Body.

#namecost("FLAMES OF CHAOS", "5 points")

The character gains the Magic Resistance (1) special rule.

#namecost("HORNS", "5 points")

Model on foot only. The character gains the Impact Hits (1) special rule.

#namecost("MURDEROUS MUTATION", "5 points")

The character gains +1 Weapon Skill.

#namecost("TENTACLE", "5 points")

Choose one enemy model in base contact with the character at the start of each round of close combat – that model suffers \-1 Attacks. However, the character is not allowed to use a shield or any weapon that Requires Two Hands.

#namecost("UNHOLY STRIKE", "5 points")

Instead of attacking normally, the character can choose to make a single special Attack. If they do so, and the Attack hits, the hit is resolved at double the character's Strength and has the Multiple Wounds (D3) special rule.

#namecost("POWERS OF KHORNE", "")

#note[_The following powers may only be taken by characters with the Mark of Khorne or Daemon of Khorne._]

#namecost("BLOODCURDLING ROAR", "25 points")

At the start of the first round of close combat, all enemy units in base contact with the character suffer D6 Strength 2 hits which Ignores Armour saves.

#namecost("BLOOD FEVER", "25 points")

The character will never lose their Frenzy for any reason. In addition, any unit, friend or foe, that is in base contact with them at the start of their Movement phase becomes subject to Frenzy for the rest of that turn. If they already have the Frenzy special rule, they instead gain +1 Attack, but will have to re-roll any successful Berserk Rage roll.

#namecost("FURY OF THE BLOOD GOD", "25 points")

The character gains the Hatred special rule. Any Wizard within 12" of the character suffer -D3 to each of their casting rolls.

#namecost("DEAFENING BELLOW", "20 points")

On the turn that the character charges, all enemy units in base contact suffer \-1 To Hit in close combat.

#namecost("POWERS OF NURGLE", "")

#note[_The following powers may only be taken by characters with the Mark of Nurgle or Daemon of Nurgle._]

#namecost("STREAM OF CORRUPTION", "40 points")

The character gains a Breath Weapon. All models Hit must pass a Toughness test or suffer a Wound with the Ignores Armour saves special rule.

#namecost("NURGLING INFESTATION", "15 points")

Each model that attacks the character in close combat suffer an automatic Strength 3 hit after the attacker’s hits have been worked out. This hit occurs even if the character with the Nurgling Infestation is slain and any wounds caused count towards combat resolution.

#namecost("SECONDARY JAWS", "15 points")

The character gains a special attack at Strength 2 with the Always Strikes First and Ignores Armour Saves special rules.

#namecost("NURGLE'S ROT", "10 points")

At the start of every close combat phase, every enemy model in base contact with the character suffers a single Strength 1 hit with the Ignores Armour Saves special rule.

#namecost("POWERS OF SLAANESH", "")

#note[_The following powers may only be taken by characters with the Mark of Slaanesh or Daemon of Slaanesh._]

#namecost("HELLSHRIEK", "50 points")

One use only. The character can use this ability at the start of any Magic phase, immediately after rolling for the Winds of Magic. All enemy Wizards within 18" must immediately roll 2D6 on the Miscast table.

#namecost("WORD OF AGONY", "30 points")

Once per game, at the beginning of the Close Combat phase (before challenges are issued), the character can choose a model in base contact. That model takes D6 Strength 4 hits which Ignores Armour saves.

#namecost("SERPENT BODY", "15 points")

Model on foot only. The character gains +2 Movement, +1 Initiative and the Swiftstride special rule. This mutation cannot be combined with Cloven Hooves.

#namecost("SOPORIFIC MUSK", "15 points")

When a unit flees from the character or the unit they are with, the fleeing unit rolls an extra D6 and discards the highest dice roll.

#namecost("ALLURE OF SLAANESH", "10 points")

Any opponent wishing to strike the character in close combat must first pass a Psychology test before rolling To Hit. If the test is failed, that model cannot make any close combat attacks that phase. This does not affect Attacks that do not roll To Hit.

#namecost("POWERS OF TZEENTCH", "")

#note[_The following powers may only be taken by characters with the Mark of Tzeentch or Daemon of Tzeentch._]

#namecost("TENDRILS OF TZEENTCH", "30 points")

Wizards only. The character may re-roll a single power or dispel dice per player turn. This may potentially prevent a Miscast.

#namecost("PROTEAN FORM", "25 points")

The Champion has the Regeneration (5+) special rule.

#namecost("CONJOINED HOMUNCULUS", "25 points")

Wizard only. Once per turn, the character may choose to add +D3 to his casting result after attempting to cast a spell. This extra dice cannot cause a Miscast or count towards Ultimate Power.

#namecost("THIRD EYE OF TZEENTCH", "10 points")

The character re-rolls Ward save results of 1.
]

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Warriors of Chaos. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon")[
#magic-weapon("CHAOS DAEMONSWORD", 50)[The wielder of this weapon adds D3 to their Strength and has an extra D3 Attacks, to a maximum of 10 (roll separately for these values at the start of each round). However, every To Wound roll of a 1 made by this character in close combat is resolved against themselves.]

#magic-weapon("RENDING SWORD", 45)[The wielder of this weapon may re-roll failed To Wound rolls and have the Multiple Wounds (D3) special rule.]

#magic-weapon("VAMPIRIC AXE", 40, type: "Great weapon")[For each unsaved Wound the wielder inflicts with this weapon, they regain one Wound lost earlier during the game.]

#magic-weapon("HELLFIRE SWORD", 35)[The wielder of this weapon have the Flaming Attacks and Ignores Armour Saves special rules. After all close combat blows have been struck, roll a D6 for every foe slain by the Hellfire Sword – on the roll of a 6, the slain foe’s body explodes, inflicting an additional D6 Strength 4 hits on the enemy unit with the Flaming Attacks special rule. Unsaved Wounds inflicted in this way count towards the combat result. At the end of each of the wielder’s turns, roll a D6; on the roll of a 1, they suffer one Wound with the Ignores Armour Saves special rule.]

#magic-weapon("OBSIDIAN DREAD-GLAIVE", 25, type: "Polearm")[The wielder of this weapon gains the Killing Blow special rule.]

#magic-weapon("TASKMASTER'S SCOURGE", 25, only: "Infantry", type: "Additional hand weapon")[If the wielder of this weapon joins a unit, that unit may re-roll failed charge and pursuit rolls.]

#magic-weapon("AETHERSWORD", 20)[The Aethersword gives the wielder the Ignores Armour Saves special rule. In addition, no Parry saves from shields may be taken against it either.]

#magic-weapon("DAGGER OF THE DARK PANTHEON", 20, only: "Wizard")[For each unsaved Wound the wielder causes in close combat, they gain +1 Power Dice or Dispel in the next Magic phase.]

#magic-weapon("THE FATHER OF BLADES", 20)[All To Hit rolls of 1 directed against the wielder of this weapon in close combat instead hit the attacking model.]

#magic-weapon("DOOMBRINGER BLADE", 20)[After deployment is complete, choose one enemy Character or Monster. All friendly units gain +1 To Wound in close combat against the chosen model.]

#magic-weapon("SOUL CLEAVER", 5)[Any model that suffers an unsaved Wound from this weapon must pass a Toughness test or suffer an additional wound with no saves allowed. This additional wound does not cause an additional Toughness test.]
]

#magic-item-section("armour")[
#magic-armour("VOID ARMOUR", 70, only: "Model on foot", type: "Heavy armour")[The wearer gains the Ethereal special rule. However, they may take no other Magic Items.]

#magic-armour("ARMOUR OF MORRSLIEB", 55, type: "Heavy armour")[The Armour of Morrslieb gives the wearer a 4+ invulnerable save against non-Magical Attacks.]

#magic-armour("ARMOUR OF THE DAMNED", 45, type: "Heavy armour")[Enemy models must re-roll successful To Hit rolls in close combat against the wearer of this armour.]

#magic-armour("BRONZE ARMOUR OF ZHRAKK", 45, type: "Heavy armour")[The Bronze Armour of Zhrakk gives the wearer the Unbreakable special rule. However, no other model may use the model's Leadership.]

#magic-armour("IDOLATROUS PLACKART", 45, type: "Heavy armour")[The wearer of this armour have a Magical Ward (5+).]

#magic-armour("NULL PLATE", 45, type: "Heavy armour")[All close combat and missile attacks targeting the wearer of this armour suffer \-1 To Hit.]

#magic-armour("SKINHIDDEN PLATE", 45, type: "Heavy armour")[The Skinhidden Plate gives the wearer the Natural Armour (5+) special rule.]

#magic-armour("CRIMSON ARMOUR OF DARGAN", 40, type: "Heavy armour")[The wearer of the Crimson Armour of Dargan gains the Immunity (Killing Blow/Multiple Wounds) special rule against close combat attacks and a Magical Ward (6+).]

#magic-armour("ARMOUR OF TORTURED SOULS", 35, type: "Heavy armour")[The Armour of Tortured Souls gives the wearer +1 Toughness against non-Magical Attacks.]

#magic-armour("HELM OF THE OPPRESSOR", 35)[This item gives the wearer a 6+ armour save. All enemy units in base contact the wearer of this helmet must roll an additional D6 when taking Leadership tests and discard the lowest result.]

#magic-armour("WEIRD PLATE", 30, type: "Heavy armour")[All models attempting to strike the wearer of this armour suffer \-1 Attack (to a minimum of 1).]

#magic-armour("DESECRATOR GAUNTLETS", 20)[This item gives the wearer a 6+ armour save. All enemy Wizards within 12" of the wearer of these gauntlets suffer a \-2 casting penalty. In addition, the wearer gains +1 To Wound against Wizards in close combat.]

#magic-armour("HELM OF MANY EYES", 20)[This item gives the wearer a 6+ armour save. The wearer gains the Always Strikes First and Stupidity special rules.]

#magic-armour("FUSED ARMOUR", 25, type: "Heavy armour")[The wearer of this armour automatically passes all Characteristic tests (except Leadership tests).]

#magic-armour("HELM OF ELDRITCH COMMAND", 10, only: "Wizard")[This item gives the wearer a 6+ armour save. Whenever the wearer successfully dispels an enemy spell (except *summoning* spells), they may attempt to cast that spell themselves (limited by their Wizard level as normal) in their next Magic phase.]

#magic-armour("SHIELD OF TEETH", 5, type: "Shield")[If the bearer of this shield makes a successful Parry save, they immediately get to make an additional Attack.]

#magic-armour("DAEMON-FORGED BARDING", 5, type: "Barding")[The bearer's mount gains the Devastating Charge special rule.]
]

#magic-item-section("talisman")[
#talisman("CROWN OF EVERLASTING CONQUEST", 50)[The wearer of the Crown of Everlasting Conquest gains the Inspiring Presence (6) and Regeneration (4+) special rules.]

#talisman("GAZE OF THE GODS", 25)[The Gaze of the Gods gives the wearer a Magical Ward (4+). However, if the model flees for any reason, the model is turned into a Chaos Spawn with the same number of wounds remaining as the character had, after working out the Flee move. If you do not have a Spawn model to replace the character then he simply counts as slain. For Victory Points purposes, the character is not counted as slain or below half Wounds unless the Spawn he has turned into is slain or is below half Wounds.]
]

#magic-item-section("arcane")[
#arcane-item("THE BOOK OF SECRETS", 40)[The Book of Secrets allows the Wizard to choose an additional spell from each of the Lores of Fire, Shadow and Death, following the normal rules for choosing spells. This does not give them any additional access to any Signature spells. In addition, they get +1 to channel power dice, but do not channel any dispel dice. If the bearer ever miscasts, roll 2D6 on the Miscast table and choose the highest result.]

#arcane-item("INFERNAL PUPPET", 35)[Whenever any Wizard on the battlefield miscasts while casting a spell, the bearer of the Infernal Puppet may choose to modify any rolls on the Miscast table made by that Wizard by up to D3 each time.]

#arcane-item("ROD OF THE DAMNED", 35, bound: true)[This item contains _The Summoning_ spell from the Lore of Chaos.]

#arcane-item("SCEPTRE OF POWER", 30)[The bearer gains a +1 casting and dispelling bonus. However, if they roll any natural double when casting or dispelling, they suffer a Strength 3 Hit which Ignores Armour Saves after the effects of the roll have been resolved.]

#arcane-item("TOME OF THE DARK GODS", 20)[This item may not be taken by a model with a Mark of Chaos. The bearer of this item may choose their spells from a combination of the Lore of Chaos, Nurgle, Slaanesh and Tzeentch.]

#arcane-item("GRIMOIRE OF OGVOLD", 15)[The bearer of this item gains the Loremaster special rule. However, they may only attempt to cast a number of spells equal to their Wizard Level each Magic phase.]
]

#magic-item-section("enchanted")[
#enchanted-item("BLASPHEMOUS AMULET", 35)[At the start of every close combat phase, all enemy models in base contact with the bearer of the Blasphemous Amulet must pass a Toughness test or suffer one Wound which Ignores Armour Saves. This has no effect against Animated Constructs.]

#enchanted-item("FAITHLESS CHARM", 30)[The Faithless Charm gives the bearer the Always Strike First and Killing Blow special rules. However, if they fail any Leadership test, they lose Always Strike First and gain Frenzy and Always Strikes Last instead. The bearer cannot lose their Frenzy.]

#enchanted-item("MARK OF THE ALL-FAVOURED", 25)[At the start of each of your turns, the bearer of this item can choose one Mark of Chaos, whose effects lasts until the start of your next turn. This has no effect on a model that already has a Mark of Chaos.]

#enchanted-item("REALMWARPER'S TWIST-RUNE", 20)[At the start of any of your turns, choose one terrain feature within 12" of the bearer. All enemy models within 1" of that terrain feature must take a Dangerous Terrain test, which fails on a 1\-2.]

#enchanted-item("STAR OF CHAOS", 15)[The bearer of this item may re-roll one failed To Hit, To Wound, armour or invulnerable save roll in each phase.]

#enchanted-item("CHALICE OF CHAOS", 10, one-use: true)[The bearer of the Chalice of Chaos may drink from it at the start of any phase. If they choose to do so, roll a D6 and consult the table below.

#chart((("D6", "Result:"), ("1", "Unworthy Fool: The character immediately
suffers a Wound, with no saves of any kind
allowed."), ("2", "Daemonic Strength: The character gains the
Killing Blow special rule until the end of the
turn."), ("3", "Regenerating Flesh: The character gains the
Regeneration (5+) special rule until the end of
the turn."), ("4", "Inhuman Speed: The character gains the
Always Strikes First special rule until the end
of the turn."), ("5", "Dark Fortune: The character may re-roll
failed armour and invulnerable saves until the
end of the turn."), ("6", "Divine Greatness: The character gains the
Magical Ward (4+) and Stubborn special rules
until the end of the turn.")))
]

#enchanted-item("PENDANT OF DAMNATION", 10, only: "Infantry or Cavalry")[The bearer of this item gains +1 Attack for every Wound they suffer during the game. If their lost Wounds are restored, this bonus is lost.]

#enchanted-item("FAVOUR OF THE GODS", 5)[The bearer gains a +1 bonus when rolling on the Eye of the Gods table.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE GODS", 55)[The bearer of the Banner of the Gods causes Terror, and any unit joined by them gains the Unbreakable special rule.]

#magic-standard("BANNER OF THE DEMAGOGUE", 40)[All friendly units within 12" of this standard gain +1 Leadership.]

#magic-standard("DOOM TOTEM", 40)[All enemy units with Line of Sight to the Doom Totem suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).]

#magic-standard("BLASPHEMOUS ICON", 30)[Enemy units in base contact with this standard must roll an additional dice when taking Leadership tests and discard the lowest result.]

#magic-standard("BANNER OF WRATH", 25, bound: (level: 2, cast: "7+"))[The Banner of Wrath contains a *magic missile* with a range of 24". If cast, it causes D6 Strength 4 hits with the Lightning Attacks special rule.]

#magic-standard("ICON OF DARKNESS", 25)[All enemy missile fire targeting the unit carrying this standard suffer \-1 To Hit.]
]

#magic-item-chapter(title: "KHORNE MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Warriors of Khorne. These may be used in addition to the magic items found in the Warhammer rulebook. They may only be chosen by models with the Daemon of Khorne or Mark of Khorne special rules.])

#magic-item-section("weapon")[
#magic-weapon("BANE SPEAR", 30, type: "Spear/light lance")[This weapon gives +1 Strength for each enemy model in base contact with the wielder.]

#magic-weapon("BERSERKER SWORD", 30, only: "Model on foot")[The Berserker Sword gives the wielder +1 Attack for every enemy model in base contact. In a challenge, it only confers +1 Attack.]

#magic-weapon("BLADE OF ENDLESS BLOODSHED", 30)[Whenever the wielder of this weapon causes an unsaved Wound, they may make an additional Attack (up to a maximum of +3). These attacks can generate additional Attacks.]

#magic-weapon("AXE OF KHORNE", 25)[This axe confers +1 Strength and the Killing Blow special rule upon the bearer.]

#magic-weapon("GORECLEAVER", 20)[The wielder of this weapon gains the Armour Piercing (1) and Multiple Wounds (2) special rules.]

#magic-weapon("BLADE OF BLOOD", 15)[For every unsaved Wound caused by the Blade of Blood, the wielder may take a Strength test. If passed, the wielder regains 1 Wound previously lost during the game. However, if the test is failed, the wielder loses 1 Wound with no saves allowed instead.]
]

#magic-item-section("armour")[
#magic-armour("SPELLEATER SHIELD", 30, type: "Shield")[The Spelleater Shield gives the bearer the Magic Resistance (2) special rule. In addition, roll a D6 each time a spell is cast at the bearer of the Spelleater Shield and is dispelled. On the roll of a 4+, the spell is destroyed and the enemy Wizard may not cast it for the rest of the battle.]

#magic-armour("THE BLOOD-FORGED ARMOUR", 30, type: "Heavy armour")[The wearer of this item cannot have their armour reduced below 4+.]

#magic-armour("THE SKULL-HELM OF KHORNE", 25)[This item gives the wearer a 6+ armour save. All enemy units within 6" of the wearer must re-roll successful Break tests.]
]

#magic-item-section("talisman")[
#talisman("BLOODSKULL PENDANT", 20)[Instead of making his normal attacks for that round, the bearer of the Bloodskull Pendant may choose to inflict an automatic Strength 8 Hit with the Killing Blow special rule on every enemy model in base contact.]

#talisman("THE BRAZEN RUNE", 15)[The wearer of this item gains a 2+ invulnerable save against spells.]
]

#magic-item-section("enchanted")[
#enchanted-item("MARK OF THE DESTROYER", 50)[The wielder doubles their number of Attacks (to a maximum of 10). However, if the wearer fails to kill at least one model each close combat phase in which they are part of, they are automatically turned into a Spawn of Khorne at the end of that close combat phase. Remove the model as a casualty, and place a Spawn of Chaos model within 1" of their last position. This Spawn is under your control for the rest of the game, and is not worth any additional Victory Points. If no Spawn model can be placed, the model is only removed as a casualty.]

#enchanted-item("BLOOD RUNE", 25)[All wounds caused in close combat by the bearer of this item counts as double for the purpose of combat resolution, up to a maximum of +3.]

#enchanted-item("TALISMAN OF BURNING BLOOD", 15)[The wearer of this item and any unit they are with gains the Vanguard special rule.]

#enchanted-item("THE BLACK TONGUE", 10, one-use: true)[The Black Tongue can be used whenever an enemy Wizard fails to cast a spell. When used, the spell counts as having been Miscast. The model bearing the Black Tongue then suffers a wound with no saves allowed.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF BLOOD", 25)[The unit carrying this standard may re-roll failed charge distances.]

#magic-standard("BANNER OF RAGE", 25)[The unit carrying the Banner of Rage can never lose their Frenzy. In addition, it may re-roll failed Break Tests.]
]

#magic-item-chapter(title: "NURGLE MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Warriors of Nurgle. These may be used in addition to the magic items found in the Warhammer rulebook. They may only be chosen by models with the Daemon of Nurgle or Mark of Nurgle special rules.])

#magic-item-section("weapon")[
#magic-weapon("RUSTFANG", 30)[Any enemy unit in base contact with the wielder of this weapon suffer a \-1 penalty to their armour saves.]

#magic-weapon("FILTH MACE", 20)[Close combat attacks made with the Filth Mace have the Poisoned Attacks special rule. Once the wielder has killed an enemy model in close combat, they immediately gain the Terror special rule and, from the start of the next Close Combat phase (friend or foe), all subsequent Attacks made with the Filth Mace have the Multiple Wounds (D3) special rule.]

#magic-weapon("GLAIVE OF PUTREFACTION", 15, type: "Polearm")[Every unsaved Wound caused by the Glaive of Putrefaction against Characters, Monstrous Creatures or Monsters makes the victim suffer \-1 to their Strength and Toughness for the remainder of the game.]
]

#magic-item-section("armour")[
#runin[SUBLUCUS]' #runin[STENCHPLATE 40 points] Heavy armour. At the start of each round of close combat, all enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour Saves.

#magic-armour("THE SPLITHORN HELM", 35)[This item gives the wearer a 6+ armour save. Enemy models suffer \-1 To Wound against this wearer in close combat and with missile attacks.]

#magic-armour("THE SHIELD OF GROWTHS", 10, type: "Shield")[The bearer of this shield may re-roll failed armour saves if the Strength of the attack is equal to or higher than the bearer's modified armour save (for example, if the bearer is Hit by a Strength 4 Attack and their modified armour save is 4+).]
]

#magic-item-section("talisman")[
#talisman("SPORE CENSER", 25)[All missile attacks targeting the wearer or the unit they are with suffer \-1 To Hit.]

#talisman("THE FOETID SHROUD", 20)[All close combat attacks targeting the wearer of this item suffer \-1 To Hit.]
]

#magic-item-section("arcane")[
#arcane-item("ROD OF CORRUPTION", 35, bound: (level: 1, cast: "5+"))[The Rod of Corruption contains a *direct damage* spell with a range of 24". The target unit suffers D6 Strength 2 Hits with the Ignores Armour Saves special rule.]
]

#magic-item-section("enchanted")[
#enchanted-item("FLESH PEALER", 30)[At the start of your Magic phase, all enemy units within 6" of the bearer of this item suffer D6 Strength 3 Hits which Ignores Armour saves.]

#enchanted-item("THE BILEHEART", 15)[Every time the bearer of this item suffers an unsaved Wound, the model that struck the blow suffer a Strength 5 Hit which Ignores Armour Saves.]

#enchanted-item("THE EYE OF NURGLE", 15)[This item can be used at the start of any round of close combat. Roll 2D6, if the result is 7, then one model in base contact of your choosing suffers D3 Wounds which Ignores Armour Saves.]

#enchanted-item("THE CARRION DIRGE", 15, one-use: true)[This item may be used at the start of any of your turns. Once used, all enemy units within 12" suffer \-2 to their Leadership for the duration of the turn.]

#enchanted-item("THE FECUND FLASK", 10, one-use: true)[This item can be used at the start of any of your turns. Roll a D6, on a 2+, the model immediately recovers all Wounds (ignoring any additional Wounds from mounts) up to their starting value. On the roll of a 1, the bearer gains the Stupidity special rule for the remainder of the game.]
]

#magic-item-section("standard")[
#magic-standard("FESTERING SHROUD", 40)[All units in base contact with the unit carrying the Festering Shroud must re-roll successful rolls To Wound. This standard has no effect on models with the Mark of Nurgle or Animated Constructs.]

#magic-standard("ERODING ICON", 25, only: "Mark of Nurgle")[All enemy units in base contact with this standard counts the armour save modifier from their Strength or Armour Piercing attacks as being 1 point worse than normal.]
]

#magic-item-chapter(title: "SLAANESH MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Warriors of Slaanesh. These may be used in addition to the magic items found in the Warhammer rulebook. They may only be chosen by models with the Daemon of Slaanesh or Mark of Slaanesh special rules.])

#magic-item-section("weapon")[
#magic-weapon("GILELLION'S SOULNETTER", 35)[This weapon gives the wielder +2 Attacks. In addition, all enemy units in base contact that fail their break test roll one D6 less than normal for their flee distance.]

#magic-weapon("SLAANESH'S BLADE", 35)[All attacks with this weapon have the Ignores Armour Saves special rule. In addition, the wielder gains the Parry (5+) special rule.]

#magic-weapon("WHIP OF PLEASURE", 30, only: "Mark of Slaanesh")[The Whip of Pleasure gives the wielder +1 Attack. In addition, the wielder gains the Always Strikes First special rule in the first round of close combat.]

#magic-weapon("WHIP OF SUBVERSION", 25, only: "Mark of Slaanesh")[If an enemy Character, Monstrous Creature or Monster takes an unsaved wound from the Whip of Subversion and that model has not yet made its attacks for that round, then you may force it to allocate its attacks upon itself or other models from its own side.]

#magic-weapon("BLADE OF ECSTASY", 20, only: "Mark of Slaanesh")[Each time the Blade of Ecstasy inflicts an unsaved wound on a model, that model must pass a Strength test or be removed from the game.]

#magic-weapon("BREATHTAKER", 10)[Each time an enemy Character, Monstrous Creature or Monster is Hit by this weapon, they suffer \-1 Attack for the duration of this round of close combat.]
]

#magic-item-section("talisman")[
#talisman("JEWEL OF DENIAL", 30)[The bearer of this item gains a Magical Ward (5+). In addition, each time they make a successful Ward save in close combat, they gain +1 combat resolution bonus.]

#talisman("THE BEGUILING GEM", 20)[At the start of each round of close combat, all enemy models in base contact with the wielder must pass a Psychology test or lose 1 Attack.]

#talisman("CAMEO OF THE DARK PRINCE", 10)[The bearer of this item and any unit they are with gain the Cold-blooded special rule.]
]

#magic-item-section("arcane")[
#arcane-item("SCEPTRE OF DOMINATION", 35, bound: true)[The Sceptre of Domination contains the _Pavane of Slaanesh_ spell from the Lore of Slaanesh.]
]

#magic-item-section("enchanted")[
#enchanted-item("BINDINGS OF SLAANESH", 25)[Enemies cannot refuse challenges issued by the wearer of the Bindings of Slaanesh. In addition, they are subject to the Always Strikes Last special rule in challenges (including mounts).]

#enchanted-item("RING OF SENSATION", 15)[The bearer of this item gains +1 Attack for every enemy spell that is successfully cast within 12". The effect lasts until the start of the enemy's next Magic phase.]

#enchanted-item("THE ROD OF MISRULE", 10)[The bearer of this item gains the Inspiring Presence (6) and Stupidity special rules.]

#enchanted-item("THE CROWN OF DARK SECRETS", 10)[After deployment, choose one enemy Character. The bearer of this item may re-roll failed To Hit rolls against that model for the duration of the game.]

#enchanted-item("PENDANT OF SLAANESH", 5)[No other character may join the same unit as the bearer and he cannot join units that already contain a character. For each unsaved Wound the bearer suffers, he gains +1 Attack for the rest of the battle.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF SCREAMING FLESH", 30)[The unit carrying this standard gains the Devastating Charge special rule.]

#magic-standard("RAPTUROUS STANDARD", 25)[The unit carrying the Rapturous Standard gains the Unbreakable special rule.]

#magic-standard("ICON OF INFINITE EXCESS", 20)[The unit carrying this standard and any enemy unit in base contact with them gain +1 To Hit in close combat.]
]

#magic-item-chapter(title: "TZEENTCH MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Warriors of Tzeentch. These may be used in addition to the magic items found in the Warhammer rulebook. They may only be chosen by models with the Daemon of Tzeentch or Mark of Tzeentch special rules.])

#magic-item-section("weapon")[
#magic-weapon("SECRET-EATER", 25)[Each time the wielder of this weapon rolls a 6 To Hit, they may re-roll one failed To Hit, To Wound, armour or Ward save this round.]

#magic-weapon("AMBITION'S END", 10)[This weapon has Multiple Wounds (D3) special rule against Characters. In addition, each time they cause an unsaved Wound against a Wizard, that model loses a Wizard level.]

#magic-weapon("WICKED SHARD", 10)[The wielder of this weapon can re-roll all failed rolls To Wound.]
]

#magic-item-section("armour")[
#magic-armour("PARADOXICAL SHIELD", 10, type: "Shield")[This shield gives the bearer the Parry (5+) special rule even while mount. However, the bearer must re-roll successful armour saves.]
]

#magic-item-section("talisman")[
#talisman("GOLDEN EYE OF TZEENTCH", 25)[The bearer gains a Magical Ward (3+) against all missile attacks.]

#talisman("CRYSTAL PENDANT", 25, only: "Infantry or Cavalry")[The bearer of this item may re-roll failed Ward saves.]
]

#magic-item-section("arcane")[
#arcane-item("STAFF OF CHANGE", 65)[The bearer can re-roll any dice of their choice when casting or dispelling. However, if the bearer casts a spell with Ultimate Power using the staff's re-roll ability, the staff will cease working for the rest of the battle.]

#arcane-item("SOULDRAUGHT", 30, one-use: true)[This item may be used at the start of any Magic phase. For the duration of this Magic phase, roll an additional D6 when casting or dispelling spells and discard the lowest result.]

#arcane-item("MIRROR OF KNOWLEDGE", 5)[The bearer can pick any enemy unit within 24" at the beginning of each of his Magic phases. The opponent must reveal all Magic Items and Hidden models in it.]

#arcane-item("NEXUS STAFF", 10, only: "Wizard")[For each unsaved Wound caused by the wielder in close combat, they gain a +1 casting bonus in their next Magic phase.]

#arcane-item("BLOOD OF TZEENTCH", 10)[The bearer of the Blood of Tzeentch may re-roll one casting dice per turn, provided it was not originally a roll of a 1.]
]

#magic-item-section("enchanted")[
#enchanted-item("WARP MIRROR", 50)[All bonuses that are not from Magic Items, spells or mounts that occur in the first round of close combat (such as Charge Bonus, Mighty Blow, Devastating Charge, Impact Hits etc.) are swapped between the bearer of this item (and any unit they are with) and any enemy unit in base contact with the bearer.]

#enchanted-item("FRACTURED CLASP", 35)[All enemy units in base contact with the bearer of this item suffer \-1 to their Weapon Skill and Leadership.]

#enchanted-item("DAEMONHEART", 25, one-use: true)[This item may be used at the start of any round of close combat. Once used, the wielder gains +2 Strength and +2 Attacks. Roll a D6 after resolving all attacks; on the roll of 1, the bearer suffer a Wound which Ignores Armour Saves.]

#enchanted-item("TIMESLIP PENDANT", 20, one-use: true)[This item may be used after the wearer has made all their normal close combat attacks. When used, they may fight an additional time.]
]

#magic-item-section("standard")[
#magic-standard("BLASTED STANDARD", 25)[Each time the unit carrying the Blasted Standard suffers a hit from a shooting attack, roll a D6 immediately before rolling To Wound. On the roll of 2+, the Strength of that hit is halved. However, if the result is a 1, the Strength of that hit is instead doubled. Attacks that do not roll To Wound, or that wound automatically, are not affected by the Blasted Standard.]

#magic-standard("GLAMOUR FETISH", 20)[All enemy units within 12" of the bearer of this standard suffer \-1 Leadership when taking Break tests.]
]

= CHARACTERS

#entry("CHAMPIONS", first: true)
#profile(
  (name: "Warlord", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 9, points: 165),
  (name: "Exalted Champion", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 105),
  (name: "Aspiring Champion", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Slaanesh +10 points
  - Mark of Khorne +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Flail +10 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +10 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warsteed +20 points
  - Steed of Slaanesh (Warlord & Exalted Champion with Mark of Slaanesh only) +45 points
  - Daemonic Steed (Warlord & Exalted Champion only) +55 points
  - Rot Fly of Nurgle (Warlord & Exalted Champion with Mark of Nurgle only) +55 points
  - Disc of Tzeentch (Warlord & Exalted Champion with Mark of Tzeentch only) +55 points
  - Palanquin of Nurgle (Warlord & Exalted Champion with Mark of Nurgle only) +65 points
  - Serpent of Slaanesh (Warlord & Exalted Champion with Mark of Slaanesh only) +65 points
  - Juggernaut of Khorne (Warlord & Exalted Champion with Mark of Khorne only) +70 points
  - Rot Beast of Nurgle (Warlord & Exalted Champion with Mark of Nurgle only) +70 points
  - War Chariot (replacing one of the crew) +100 points
  - Karkadrak (Warlord only) +150 points
  - Manticore (Warlord only) +150 points
  - Chaos Dragon (Warlord only) +330 points
- One Aspiring Champion may carry the Battle Standard +25 points
- An Aspiring Champion may take Gifts of the Gods and/or Magic Items up to a total of 50 points
- An Exalted Champion may take Gifts of the Gods and/or Magic Items up to a total of 75 points
- A Warlord may take Gifts of the Gods and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("SORCERERS")
#profile(
  (name: "Soulflayer", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 2, ld: 8, points: 210),
  (name: "Maledictor", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 1, ld: 8, points: 95),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Maledictor is a Level 1 Wizard. A Soulflayer is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Chaos
- Death
- Fire
- Heavens
- Metal
- Shadow

A Soulflayer with the Mark of Tzeentch, Nurgle or Slaanesh must use the Lore of Tzeentch, Nurgle, or Slaanesh, respectively.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May choose one of the following:
  - Mark of Slaanesh +5 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May choose one of the following:
  - Light armour +9 points
  - Medium armour +18 points
  - Heavy armour +30 points
- May be mounted on one of the following:
  - Warsteed +20 points
  - Steed of Slaanesh (Mark of Slaanesh only) +45 points
  - Daemonic Steed +55 points
  - Disc of Tzeentch (Mark of Tzeentch only) +55 points
  - Palanquin of Nurgle (Mark of Nurgle only) +65 points
  - War Chariot (replacing one of the crew) +100 points
  - Manticore (Soulflayer only) +150 points
  - Chaos Dragon (Soulflayer only) +330 points
- May take Gifts of the Gods and/or Magic Items up to a total of 100 points

#entry("DAEMON PRINCE")
#profile(
  (name: "Daemon Prince", m: 8, ws: 8, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 9, points: 250),
)
#field("TROOP TYPE", "Monstrous Creature (Character, Daemon)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Daemon Prince who is a Wizard chooses spells from one of the following Lores of Magic:")

- Beasts
- Chaos
- Death
- Fire
- Heavens
- Metal
- Shadow

A Daemon Prince who is a Daemon of Tzeentch, Nurgle or Slaanesh must use the Lore of Tzeentch, Nurgle, or Slaanesh, respectively.

#field("SPECIAL RULES", "Chaos Armour, Daemonic")

- *Daemonic Instability:* A Daemon Prince is Unbreakable. However, if it loses a round of close combat, it must take a Daemonic Instability test. This works like a normal Break test, except that for every point they fail the test by, the unit suffers one additional Wound with no saves allowed. The Daemonic Instability test can use Inspiring Presence and/or Hold Your Ground as normal.

#field("OPTIONS", "")

- May be upgraded to one of the following (except Daemon Princes of Khorne):
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard +105 points
  - Level 4 Wizard +140 points
- May be upgraded to one of the following:
  - Daemon of Khorne +15 points
  - Daemon of Nurgle +15 points
  - Daemon of Slaanesh +15 points
  - Daemon of Tzeentch +15 points
- May choose one of the following:
  - Light armour +5 points
  - Medium armour +15 points
- May have the Fly (8) special rule +25 points
- May take Gifts of the Gods and/or Magic Items up to a total of 100 points

#entry("MARAUDER CHIEFTAIN")
#profile(
  (name: "Marauder Chieftain", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Eye of the Gods, Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Slaanesh +10 points
  - Mark of Khorne +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Flail +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Throwing axes +4 points
  - Javelins +4 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Marauder Chariot (replacing one of the crew) +70 points
- One Marauder Chieftain may carry the Battle Standard +25 points
- May take Gifts of the Gods and/or Magic Items up to a total of 50 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

= CHARACTER MOUNTS

#compact-entry("WARHORSE")[
#profile(
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
]

#entry("WARSTEED")
#profile(
  (name: "Warsteed", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take barding +5 points

#entry("DAEMONIC STEED")
#profile(
  (name: "Daemonic Steed", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Daemon)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Daemonic")
#field("OPTIONS", "")

- May take barding +5 points

#entry("KARKADRAK")
#profile(
  (name: "Karkadrak", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monstrous Creature (Reptile)")
#field("BASE SIZE", "50x100 or 60x100")
#field("OPTIONS", "")

- May take barding +5 points

#field("SPECIAL RULES", "Impact Hits (D3), Natural Armour (5+)")

#entry("MANTICORE")
#profile(
  (name: "Manticore", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 5, points: "-"),
)
#field("TROOP TYPE", "Monstrous Creature (Chimeric)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fly (8), Frenzy, Killing Blow")
#field("UPGRADES", "")

- *Bloodrage:* The Manticore gains the Hatred special rule.
- *Iron-hard Skin:* The Manticore gains the Natural Armour (5+) special rule.
- *Rending Fangs:* The Manticore gains the Armour Piercing (1) special rule.
- *Venom Tail:* The Manticore gains an additional Attack that has the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May take Rending Fangs +5 points
- May take Bloodrage +15 points
- May take Iron-hard Skin +15 points
- May take Venom Tail +15 points

#entry("CHAOS DRAGON")
#profile(
  (name: "Chaos Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: "-"),
)
#field("TROOP TYPE", "Monster (Draconid)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fly (7), Natural Armour (3+)")

- *Dark Fire of Chaos:* A Chaos Dragon has a Strength 4 Breath Weapon with the Flaming Attacks special rule.
- *Fumes of Contagion:* A Chaos Dragon has a Strength 2 Breath Weapon with the Ignores Armour Saves special rule.

= CORE UNITS

#entry("WARRIORS", first: true)
#profile(
  (name: "Warrior", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 13),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("SPECIAL RULES", "Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Slaanesh +1.5 points/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Khorne +2 points/model
  - Mark of Nurgle +3 points/model
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Flails +2 points/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take shields (unless armed with flails or great weapons) +2 points/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("MARAUDERS")
#profile(
  (name: "Marauder", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  (name: "Marauder Champion", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 7, points: ""),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +1 point/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Slaanesh +1.5 points/model
  - Mark of Nurgle +2 points/model
- May be upgraded to Marauder Champions +2 points/model
- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
  - Replace shields with flails +1 point/model
  - Replace shields with great weapons +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour (Marauder Champions only) +1.5 points/model
- May upgrade one Marauder to a Leader +5 points
- May upgrade one Marauder to a Musician +5 points
- May upgrade one Marauder to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may upgrade one unit of Marauders or Marauder Horsemen to Marauder Champions for every Marauder Chieftain in your army.

#entry("MARAUDER HUNTERS")
#profile(
  (name: "Marauder Hunter", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 7),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, throwing axes")
#field("SPECIAL RULES", "Skirmishers, Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +1 point/model
  - Mark of Slaanesh +1.5 points/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Nurgle +2 points/model
- May replace throwing axes with one of the following:
  - Javelins free
  - Shortbows free
- May take shields (if armed with javelins) +1 point/model
- May upgrade one Marauder Hunter to a Leader +5 points
- May upgrade one Marauder Hunter to a Musician +5 points
- May upgrade one Marauder Hunter to a Standard Bearer +10 points

#entry("MARAUDER HORSEMEN")
#profile(
  (name: "Marauder Horseman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
  (name: "Marauder Champion", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Fast Cavalry, Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +1 point/model
  - Mark of Slaanesh +1.5 points/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Nurgle +2 points/model
- May be upgraded to Marauder Champions +2 points/model
- May choose one of the following:
  - Light lances +1 point/model
  - Replace shields with flails +1 point/model
- May choose one of the following:
  - Shortbows +1 point/model
  - Javelins +2 points/model
  - Throwing axes +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour (Marauder Champions only) +1.5 points/model
- May upgrade one Marauder Horseman to a Leader +5 points
- May upgrade one Marauder Horseman to a Musician +5 points
- May upgrade one Marauder Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may upgrade one unit of Marauders or Marauder Horsemen to Marauder Champions for every Marauder Chieftain in your army.

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

#entry("CULTISTS")
#profile(
  (name: "Cultist", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 4),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ambushers, Expendable")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Shields +1 point/model
- May upgrade one Cultist to a Leader +5 points
- May upgrade one Cultist to a Musician +5 points
- May upgrade one Cultist to a Standard Bearer +10 points

= SPECIAL UNITS

#entry("CHOSEN", first: true)
#profile(
  (name: "Chosen", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 16),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("SPECIAL RULES", "Chaos Armour, Will of Chaos")

- *Chosen of the Dark Gods:* Models with this special rule may re-roll 1's To Hit and To Wound in close combat.

#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Slaanesh +1.5 points/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Khorne +2 points/model
  - Mark of Nurgle +3 points/model
- May choose one of the following:
  - Additional hand weapons +1.5 points/model
  - Ensorcelled Weapons +1.5 points/model
  - Flails +3 points/model
  - Polearms +3 points/model
  - Great weapons +4 points/model
- May take shields (unless armed with flails or great weapons) +2 points/model
- May upgrade one Chosen to a Leader +5 points
- May upgrade one Chosen to a Musician +5 points
- May upgrade one Chosen to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("FORSAKEN")
#profile(
  (name: "Forsaken", m: 5, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 4, a: "*", ld: 8, points: 15),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Fear, Frenzy, Independent, Random Attacks (D3)")

- *Freakish Mutations:* If a unit of Forsaken are in base contact with one or more enemy units at the start of the Close Combat phase, roll a D6 on the table below. The effect lasts until the end of the Close Combat phase.

#chart((("D6", "Result"), ("1", "Slug Brains: All Forsaken in the unit is subject to the Always Strikes Last special rule."), ("2", "Lashing Tentacles: All Forsaken in the unit gain +2 to their Initiative."), ("3", "Razor Talons: All Forsaken in the unit have the Armour Piercing (1) special rule."), ("4", "Decapitating Claws: All Forsaken in the unit have the Killing Blow special rule."), ("5", "Healing Flesh: All Forsaken in the unit have the Regeneration (6+) special rule."), ("6", "Venomous Fangs: All Forsaken in the unit have the Poisoned Attacks special rule.")))
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +1 point/model
  - Mark of Slaanesh +1 point/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Nurgle +3 points/model

#entry("KNIGHTS")
#profile(
  (name: "Knight", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 28),
  (name: "Warsteed", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warsteed (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield, barding")
#field("SPECIAL RULES", "Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Slaanesh +1.5 points/model
  - Mark of Tzeentch +1.5 points/model
  - Mark of Khorne +2 points/model
  - Mark of Nurgle +3 points/model
- May choose one of the following:
  - Ensorcelled Weapons +1 point/model
  - Light lances +1 point/model
  - Heavy lances +2 points/model
- May take Chaos Armour +1 point/model
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("MARAUDER CHARIOT")
#profile(
  (name: "Marauder Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
  (name: "Charioteer", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Charioteers (Human)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Polearm, javelins, scythes")
#field("SPECIAL RULES", "Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +5 points
  - Mark of Slaanesh +20 points
  - Mark of Tzeentch +20 points
  - Mark of Nurgle +25 points
- May take light armour +5 points/model
- May upgrade one Marauder Chariot to a Standard Bearer +10 points

#entry("WAR CHARIOT")
#profile(
  (name: "War Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 105),
  (name: "Charioteer", m: "-", ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 2, ld: 8, points: ""),
  (name: "Warsteed", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  (name: "Gorebeast", m: "-", ws: 4, bs: 0, s: 5, t: "-", w: "-", i: 2, a: 3, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Charioteers (Human)")
#field("DRAWN BY", "2 Warsteeds (Equine)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Polearm, heavy armour, scythes, barding")
#field("SPECIAL RULES", "Will of Chaos")
#field("UPGRADES", "")

- *Gorebeast:* A Gorebeast (Primate) replaces the Warsteeds and uses the Gorebeast profile above. Gorebeasts cause Fear. However, the Chariot suffers \-2 Movement.

#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +5 points
  - Mark of Slaanesh +20 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points
- May replace polearms with one of the following:
  - Flails free
  - Great weapons free
- May take Chaos Armour +3 points
- May replace Warsteeds with Gorebeast +5 points
- May be upgraded to a Standard Bearer +10 points

#entry("FLAYERKIN")
#profile(
  (name: "Flayerkin", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Skirmishers, Will of Chaos")

- *Human Chains:* Flayerkin may scale buildings and walls as if they were open terrain. In addition, they ignore penalties for fighting enemies behind defended obstacles.

#field("OPTIONS", "")

- May upgrade one Flayerkin to a Leader +5 points

#entry("SKIN WOLVES")
#profile(
  (name: "Skin Wolf", m: 7, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 38),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Beast (Canine)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Frenzy, Regeneration (5+), Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +3 points/model
  - Mark of Tzeentch +4.5 points/model
  - Mark of Slaanesh +4.5 points/model
  - Mark of Nurgle +6 points/model
- May upgrade one Skin Wolf to a Leader +5 points

#entry("OGRES")
#profile(
  (name: "Ogre", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Independent, Natural Armour (6+)")

- *Ogre Charge:* Ogres have the Impact Hits (1) special rule. A unit of Ogres adds its current Rank Bonus to the Strength of any Impact Hits they inflict.

#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +4.5 points/model
  - Mark of Tzeentch +4.5 points/model
  - Mark of Slaanesh +4.5 points/model
  - Mark of Nurgle +6 points/model
- May choose one of the following:
  - Bucklers +3 points/model
  - Additional hand weapons +3 points/model
  - Great weapons +9 points/model
- May take medium armour +3 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("TROLLS")
#profile(
  (name: "Troll", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 1, a: 3, ld: 6, points: 43),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Troll)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Independent, Natural Armour (6+), Regeneration (4+), Stupidity")

- *Troll Vomit:* In addition to their normal Attacks, models with this special rule inflicts one automatic Strength 4 hit which Ignores Armour Saves after resolving all their normal Attacks. This cannot be used with supporting attacks.

#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Tzeentch +1 point/model
  - Mark of Khorne +4.5 points/model
  - Mark of Slaanesh +4.5 points/model
  - Mark of Nurgle +6 points/model
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May take light armour +3 points/model

#entry("SPAWN")
#profile(
  (name: "Spawn", m: "*", ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: "*", ld: 10, points: 40),
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

- You may take 1\-2 lone Spawn as a single Special choice.

#entry("FOMOROID CRUSHER")
#profile(
  (name: "Fomoroid Crusher", m: 6, ws: 3, bs: 1, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 6, points: 115),
)
#field("TROOP TYPE", "Monstrous Creature (Chaos Beast)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Frenzy, Hatred")

- *Hewn Rocks and Rubble:* A Fomoroid Crusher has a shooting attack that fires like a Stone Thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6-12\"", "4(8)", "Multiple Wounds (D3)"))

If a misfire is rolled, the Fomoroid Crusher suffers 1 Wound which Ignores Armour Saves.

#entry("WILDERFIEND")
#profile(
  (name: "Wilderfiend", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: 125),
)
#field("TROOP TYPE", "Monstrous Creature (Chaos Beast)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "")

- *Feed on Flesh:* At the end of each round of close combat in which a Wilderfiend has slain one or more models, you may choose one of the following abilities:
  - *Eye of the Dark Patron:* One friendly unit within 12" gains the Always Strikes First special rule until the end of the next Close Combat phase.
  - *Mind Shroud:* One enemy unit within 12" may not use the Inspiring Presence, Hold Your Ground or Follow Me special rules.
  - *Warping Balefire:* One enemy within 12" and Line of Sight that is not in close combat suffer D6 Strength 4 Hits.
  - *Dark Might:* The model restores D3 Wounds lost earlier during the battle.
- *Fell Aura:* Enemies targeting this model with missile weapons suffer \-1 To Hit.

= RARE UNITS

#entry("VARANGUARD", first: true)
#profile(
  (name: "Varanguard", m: 4, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 70),
  (name: "Daemonic Steed", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Daemonic Steed (Equine)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield, barding")
#field("SPECIAL RULES", "Chaos Armour, Daemonic (Daemonic Steed), Ensorcelled Weapons, Will of Chaos")
#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +3 points/model
  - Mark of Slaanesh +4.5 points/model
  - Mark of Tzeentch +4.5 points/model
  - Mark of Nurgle +9 points/model
- May choose one of the following:
  - Light lances free
  - Heavy lances +2 points/model
- May upgrade one Varanguard to a Leader +5 points
- May upgrade one Varanguard to a Musician +5 points
- May upgrade one Varanguard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#entry("WARSHRINE")
#profile(
  (name: "Warshrine", m: 6, ws: "-", bs: "-", s: "-", t: 5, w: 5, i: "-", a: "-", ld: "-", points: 100),
  (name: "Shrinemaster", m: "-", ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 2, ld: 8, points: ""),
  (name: "Shrine Bearers", m: "-", ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 2, a: "*", ld: "-", points: ""),
)
#field("TROOP TYPE", "Shrine (Armour Save 6+)")
#field("CREW", "Shrinemaster (Human)")
#field("DRAWN BY", "2 Shrine Bearers (Mutant)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Fear, Random Attacks (D3+1) (Shrine Bearers only), Magical Ward (5+), Will of Chaos")

- *Giver of Glory:* If a friendly model or unit is within 12" of one or more Warshrines when they roll on the Eye of the Gods table, you may re-roll the result. In addition, the Warshrine has a Bound Spell (Level 1, cast on 5+). Remains in Play. This is an *augment* spell with a range of 12". Choose one Leader; while the spell is in effect, that model gains +1 Weapon Skill, Strength, Toughness, Wounds, Initiative, Attacks and Leadership and is treated as a Character in all aspects, though they may not leave their unit.
- *Favour of the Ruinous Powers:* A Warshrine knows the Favour of Chaos prayer below. However, if the Warshrine has been dedicated to a particular Chaos God, the Shrinemaster instead prays to their patron for their favour. The Shrinemaster may attempt to use their prayer at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. Each Favour can target one friendly unit within 6" and lasts until the start of your next turn. A friendly unit can only be under the effect of one Favour at a time.
  - *Favour of Chaos:* The unit can re-roll To Hit and To Wound rolls of 1.
  - *Favour of Khorne:* Warshrine with Mark of Khorne only. The unit can re-roll all failed To Hit rolls.
  - *Favour of Nurgle:* Warshrine with Mark of Nurgle only. The unit can re-roll all failed To Wound rolls.
  - *Favour of Tzeentch:* Warshrine with Mark of Tzeentch only. The unit gains a Magical Ward (6+), and may re-roll 1's when taking Magical Ward saves.
  - *Favour of Slaanesh:* Warshrine with Mark of Slaanesh only. The unit gains the Unbreakable special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Mark of Khorne +5 points
  - Mark of Slaanesh +15 points
  - Mark of Nurgle +20 points
  - Mark of Tzeentch +20 points

#field("NOTES", "")

- A Warshrine has a Line of Sight value of 5.

#entry("DRAGON OGRES")
#profile(
  (name: "Dragon Ogre", m: 7, ws: 4, bs: 2, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 8, points: 55),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Beast (Dragon Ogre)")
#field("BASE SIZE", "40x40, 50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Independent, Natural Armour (5+)")

- *Storm Rage:* Dragon Ogres have the Immunity (Lightning Attacks) special rule. In addition, if they are hit with a Lightning Attack, they immediately gain the Frenzy special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +4 points/model
  - Polearm +6 points/model
  - Great weapons +6 points/model
- May take medium armour +8 points/model
- May upgrade one Dragon Ogre to a Leader +5 points

#field("NOTES", "")

- You may take one unit of Dragon Ogres as a Special Unit instead of a Rare Unit for every Dragon Ogre Shaggoth in your army.

#entry("DRAGON OGRE SHAGGOTH")
#profile(
  (name: "Dragon Ogre Shaggoth", m: 7, ws: 6, bs: 3, s: 6, t: 6, w: 6, i: 4, a: 5, ld: 9, points: 235),
)
#field("TROOP TYPE", "Monster (Dragon Ogre)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Impact Hits (D3), Natural Armour (5+), Storm Rage (see Dragon Ogres)")

- *Storm Call:* Bound Spell (Level 1, cast on 6+). _Storm Call_ is a *direct damage aura* spell with a range of 6". The target units suffer D3 Strength 4 Hits with the Lightning Attacks special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +5 points
  - Great weapons +10 points
- May take medium armour +12 points

#entry("GIANT SPINEHOUND")
#profile(
  (name: "Giant Spinehound", m: 7, ws: 3, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 5, ld: 5, points: 220),
)
#field("TROOP TYPE", "Monster (Canine)")
#field("BASE SIZE", "50x100, 60x100 or 100x150")
#field("SPECIAL RULES", "Frenzy, Impact Hits (D6), Regeneration (5+)")
#field("UPGRADES", "")

- *Beast of Khorne:* A Beast of Khorne has +1 Strength.
- *Beast of Nurgle:* A Beast of Nurgle has the Poisoned Attacks special rule.
- *Beast of Slaanesh:* A Beast of Slaanesh has +2 to its Initiative.
- *Beast of Tzeentch:* A Beast of Tzeentch has the Magical Ward (6+) special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Beast of Slaanesh +5 points
  - Beast of Nurgle +10 points
  - Beast of Khorne +15 points
  - Beast of Tzeentch +20 points

#entry("GIANT SPAWN")
#profile(
  (name: "Giant Spawn", m: "*", ws: 4, bs: 0, s: 5, t: 6, w: 5, i: 2, a: "*", ld: 10, points: 195),
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

#entry("WARPFIRE DRAGON")
#profile(
  (name: "Warpfire Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: 375),
)
#field("TROOP TYPE", "Monster (Draconid)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Fly (7), Magical Attacks, Magic Resistance (3), Natural Armour (3+), Regeneration (6+)")

- *Warpfire Blast:* Warpfire blast is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6-24\"", "4(6)", "Flaming Attacks, Magical Attacks, Multiple Wounds (D3)"))

If a misfire is rolled, the Warpfire Dragon suffers a Wound with no saves allowed.

- *Warpfire Aura:* At the start each round of Close Combat, all models in base contact with a Warpfire Dragon must pass a Leadership test or suffer a Wound with the Ignores Armour Saves and Magical Attacks special rule.
- *Explosive Demise:* If a Warpfire Dragon is slain, all units within 2D6" suffer 2D6 Hits that Wound on a 3+.

#entry("HELLCANNON")
#profile(
  (name: "Hellcannon", m: 3, ws: 4, bs: 3, s: 5, t: 6, w: 5, i: 1, a: 5, ld: 4, points: 190),
  (name: "Chaos Dwarf Handler", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Monster (Daemon)")
#field("HANDLER", "3 (Chaos Dwarf)")
#field("BASE SIZE", "100x150 (Hellcannon), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, doomfire, light armour (Handlers only)")

- *Doomfire:* Doomfire is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "5(10)", "Cumbersome, Flaming Attacks, Move or Fire, Multiple Wounds (D6)"))

Any unit that suffers one or more casualties from Doomfire must take a Panic test with a \-1 penalty to their Leadership. Should the artillery dice roll a misfire, roll a D6 on the following table:

#chart((("D6", "Result"), ("1", "Free at last! Every unit within 6\" takes D6 Strength 5 hits. Then remove the Hellcannon and its crew
from play."), ("2", "Schlurp: Remove the crew from play."), ("3", "Thzzzz: All Wizards within 24\" must immediately pass a Leadership test or roll 2D6 on the Miscast
table."), ("4", "Grrr: Remove D3 Handlers."), ("5", "Blooood! Move the Hellcannon 3D6\" directly forward as if it was subject to the Random Movement
special rule and it was the Compulsory Movement sub-phase."), ("6", "Boom! Resolve the Doomfire shot as if it were a direct hit, doubling the Strength of any hit. The
Hellcannon cannot fire for the rest of the game.")))
#field("SPECIAL RULES", "Daemonic, Mixed Unit, Natural Armour (4+)")

- *Caged Fury:* At the beginning of your turn, if the Hellcannon is not in combat, take a Leadership test. If the test is failed, the Hellcannon is then subject to the Random Movement (3D6) special rule until the beginning of the next turn, and must move towards the nearest enemy unit. If the Hellcannon would get destroyed as a result of it being Unstable, treat this as rolling a 1 on the table below.
- *Spew Ichor:* The Hellcannon has a Strength 5 Breath Weapon. Any unit that suffers one or more casualties from Spew Ichor must take a Panic test with a \-1 penalty to their Leadership.

#field("OPTIONS", "")

- May take medium armour (Handlers only) +3 points

#entry("GIANT")
#profile(
  (name: "Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 175),
)
#field("TROOP TYPE", "Monster (Giant)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology), Stubborn")

- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small round template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *Giant Special Attacks:* To determine what a Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms._

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
#field("UPGRADES", "")

- *Giant of Khorne:* A Giant of Khorne has +1 Strength.
- *Giant of Nurgle:* A Giant of Nurgle has +1 Toughness.
- *Giant of Slaanesh:* A Giant of Slaanesh has +1 Initiative and the Unbreakable special rule.
- *Giant of Tzeentch:* A Giant of Tzeentch has a Magical Ward (6+).

#field("OPTIONS", "")

- May choose one of the following:
  - Giant of Khorne +15 points
  - Giant of Slaanesh +20 points
  - Giant of Nurgle +20 points
  - Giant of Tzeentch +20 points

#entry("WAR MAMMOTH")
#profile(
  (name: "War Mammoth", m: 8, ws: 3, bs: 0, s: 7, t: 6, w: 10, i: 1, a: "*", ld: 5, points: 325),
  (name: "Marauder Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Elephantine)")
#field("CREW", "5 Marauder Crew (Human)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Hand weapon, javelins (Marauder Crew only)")
#field("SPECIAL RULES", "Immunity (Psychology), Impact Hits (D6+1), Natural Armour (5+)")

- *Mammoth Attacks:* When the War Mammoth attacks, roll on the appropriate following table to determine its action. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms. _*D6 Attack Type 1\-2* Trample *3\-4* Stomp *5* Bellow *6* Pick up and\.\.\.

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Attack Type"), ("1-2", "Butt"), ("3-5", "Gore"), ("6", "Bellow")))

\- *Trample:* A single enemy unit in base contact suffers D6 Strength 7 hits, plus an additional D3 Hits for each rank of five or more models it has. - *Bellow:* Neither the Mammoth nor any unit in contact with it fight if they have not already done so this turn. The Mammoth automatically wins the combat by 3 points or more. This result has no effect against Animated Constructs. - *Butt:* The Mammoth inflicts one automatic hit against one model in base contact (your choice), causing D3 Strength 7 hits with the Multiple Wounds (D3) special rule - *Stomp:* The Mammoth inflicts 3D6 Hits with its Stomp Attack this turn. - *Gore:* The Mammoth makes D6 attacks against a chosen unit in close combat with the Heroic Killing Blow special rule. - *Pick up and\.\.\.:* The Mammoth grabs a Character from the target unit (Mammoth player's choice). Roll a D6 to see what unfortunate fate befalls the victim.

#chart((("D6", "Result"), ("1-2", "Throw back into combat: The victim is hurled back into their own unit like a missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3-4", "Hurl: The victim is hurled into an enemy unit within 12\" of the Mammoth – randomly
determine which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits.
Unsaved Wounds from these hits count towards the Mammoth's combat result. If no enemy
units are in range, treat this as a Throw Back into Combat result instead."), ("5", "Eat: The victim model is removed as a casualty, and the Mammoth may immediately recover a
single Wound it has lost previously in the game."), ("6", "Squash and grab another: The model is removed as a casualty and the Mammoth then picks
another victim. Roll again on this table to see what happens.")))
#field("OPTIONS", "")

- May take light armour +30 points

#field("NOTES", "")

- A War Mammoth has a Line of Sight value of 10.

= MARKED CHARACTERS

#entry("SLAUGHTERPRIEST OF KHORNE", first: true)
#profile(
  (name: "Slaughterpriest", m: 4, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 140),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Magic Resistance (1), Mark of Khorne, Will of Chaos")

- *Scorn of Sorcery:* A Slaughterpriest channels Dispel dice and gets +1 Dispelling bonus in the same manner as a Level 2 Wizard.
- *Bloodfuelled Prayers:* A model with this special rule knows the three Bloodfuelled Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Bloodfuelled Prayer at a time.
  - *Blood Bind:* The Slaughterpriest and their unit add +D6 to their charge range this turn.
  - *Blood Boil:* One enemy unit in base contact with the Slaughterpriest suffers D3 Strength 5 Hits which Ignores Armour saves.
  - *Bloodhex:* One enemy unit in base contact with the Slaughterpriest suffer \-1 to their Strength (to a minimum of 1) until the start of your next turn.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +9 points
- May take medium armour +6 points
- May be mounted upon a Chaos Warshrine of Khorne (replacing the Shrinemaster) +95 points
- May take Gifts of the Gods and/or Magic Items up to a total of 50 points

= MARKED CHARACTER MOUNTS

#compact-entry("JUGGERNAUT OF KHORNE")[
#profile(
  (name: "Juggernaut of Khorne", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Daemon)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Daemon of Khorne, Natural Armour (6+)")
]

#compact-entry("PALANQUIN OF NURGLE")[
#profile(
  (name: "Palanquin of Nurgle", m: 4, ws: 2, bs: 0, s: 2, t: "-", w: "-", i: 3, a: 8, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Infantry (Daemon)")
#field("BASE SIZE", "50x50 or 60x60")
#field("SPECIAL RULES", "Daemon of Nurgle, Inspiring Presence (6)")
]

#compact-entry("ROT BEAST OF NURGLE")[
#profile(
  (name: "Rot Beast of Nurgle", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Canine)")
#field("BASE SIZE", "50x75")
#field("SPECIAL RULES", "Poisoned Attacks, Regeneration (5+)")
]

#compact-entry("ROT FLY OF NURGLE")[
#profile(
  (name: "Rot Fly of Nurgle", m: 1, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monstrous Beast (Daemon)")
#field("BASE SIZE", "50x75")
#field("SPECIAL RULES", "Daemon of Nurgle, Fly (6), Poisoned Attacks")
]

#compact-entry("STEED OF SLAANESH")[
#profile(
  (name: "Steed of Slaanesh", m: 10, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 7, points: "-"),
)
#field("TROOP TYPE", "War Beast (Daemon)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Daemon of Slaanesh, Poisoned Attacks")
]

#compact-entry("SERPENT OF SLAANESH")[
#profile(
  (name: "Serpent of Slaanesh", m: 10, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: "-"),
)
#field("TROOP TYPE", "War Beast (Daemon)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Daemon of Slaanesh, Poisoned Attacks")
]

#compact-entry("DISC OF TZEENTCH")[
#profile(
  (name: "Disc of Tzeentch", m: 0, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: "-"),
)
#field("TROOP TYPE", "War Beast (Daemon)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Daemon of Tzeentch, Fly (9)")
]

= MARKED SPECIAL UNITS

#entry("SKULLREAPERS", first: true)
#profile(
  (name: "Skullreaper", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 34),
)
#field("UNIT SIZE", "5-10")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Two hand weapons, medium armour")
#field("SPECIAL RULES", "Chaos Armour, Mark of Khorne, Will of Chaos")
#field("OPTIONS", "")

- May take Ensorcelled Weapons +3 points/model
- May upgrade one Skullreaper to a Leader +5 points
- May upgrade one Skullreaper to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("PUTRID BLIGHTKINGS")
#profile(
  (name: "Putrid Blightking", m: 4, ws: 6, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 3, ld: 8, points: 34),
)
#field("UNIT SIZE", "5-10")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Two hand weapons, great weapon, medium armour, shield")
#field("SPECIAL RULES", "Chaos Armour, Mark of Nurgle (included in profile), Will of Chaos")

- *Bountiful Blades:* At the start of each round of close combat, the unit can choose which weapon they want to use for the duration of this round.

#field("OPTIONS", "")

- May upgrade one Putrid Blightking to a Leader +5 points
- May upgrade one Putrid Blightking to a Musician +5 points
- May upgrade one Putrid Blightking to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("HELLSTRIDERS")
#profile(
  (name: "Hellstrider", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 22),
  (name: "Steed of Slaanesh", m: 10, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 7, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Steed of Slaanesh (Daemon)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lances, light armour, shield")

- *Hellscourges:* Hellscourges uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Always Strikes First"))
#field("SPECIAL RULES", "Daemon of Slaanesh (Steed of Slaanesh only), Fast Cavalry, Mark of Slaanesh, Poisoned")

*Attacks* (Steed of Slaanesh only)

- *Soul Hunters:* When a unit of Hellstriders of Slaanesh wins a round of close combat, they gain a bonus special rule for the remainder of the game according to the table below:

#chart((("Rounds won", "Bonus"), ("1", "Fuelled by Pain: The unit gains +1 Attack (not including mounts)."), ("2", "Insensible to Agony: All successful To Wound rolls against the unit must be re-rolled."), ("3", "Intoxicating Delirium: The unit gains the Unbreakable special rule.")))
#field("OPTIONS", "")

- May replace light lances with hellscourges +1 point/model
- May upgrade one Hellstrider to a Leader +5 points
- May upgrade one Hellstrider to a Musician +5 points
- May upgrade one Hellstrider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("MINDSTEALER SPHIRANX")
#profile(
  (name: "Mindstealer Sphiranx", m: 8, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 6, a: 4, ld: 8, points: 145),
)
#field("TROOP TYPE", "Monstrous Creature (Chaos Beast)")
#field("BASE SIZE", "50x100")
#field("SPECIAL RULES", "Mark of Tzeentch")

- *Dominate Mind:* All units in base contact with a Mindstealer Sphiranx are subject to the Always Strikes Last special rule.

= MARKED RARE UNITS

#entry("WRATHMONGERS", first: true)
#profile(
  (name: "Wrathmonger", m: 4, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 44),
)
#field("UNIT SIZE", "5-10")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Wrathflails, medium armour")

- *Wrathflails:* Wrathflails uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "+1 Attack, Impact Hits (D3), Mighty Blow (1)"))
#field("SPECIAL RULES", "Chaos Armour, Mark of Khorne, Will of Chaos")
#field("OPTIONS", "")

- May upgrade one Wrathmonger to a Leader +5 points
- May upgrade one Wrathmonger to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SKULLCRUSHERS")
#profile(
  (name: "Skullcrusher", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 8, points: 80),
  (name: "Juggernaut of Khorne", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Juggernaut of Khorne (Daemon)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapons, heavy armour, shield")

#runin[SPECIAL RULES: ]*Chaos Armour, Daemon of Khorne* (Juggernaut only)#runin[, ]*Mark of Khorne, Natural Armour (6+), Will of Chaos*

#field("OPTIONS", "")

- May choose one of the following:
  - Ensorcelled Weapons +2 points/model
  - Light lances +2 points/model
  - Heavy lances +4 points/model
- May upgrade one Skullcrusher to a Leader +5 points
- May upgrade one Skullcrusher to a Musician +5 points
- May upgrade one Skullcrusher to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SLAUGHTERBRUTE")
#profile(
  (name: "Slaughterbrute", m: 6, ws: 3, bs: 0, s: 7, t: 5, w: 6, i: 3, a: 5, ld: 5, points: 220),
)
#field("TROOP TYPE", "Monster (Chaos Beast)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Mark of Khorne, Natural Armour (4+)")

- *Runes of Binding:* At the beginning of the game, you must nominate a single friendly character and make sure your opponent is aware which model you have nominated. If you have more than one Slaughterbrute, you must nominate a different character for each Slaughterbrute – if you do not have enough characters for all your Slaughterbrutes, the remainder start the game Unbound (see below). Whilst the character is alive, the Slaughterbrute uses that model’s current Weapon Skill and Leadership instead of its own (unless it would normally be higher).
- *Unbound:* If, at the beginning of its Movement phase, a Slaughterbrute’s master has been slain (or if it started the game without a master), it is Unbound. An Unbound Slaughterbrute has the Random Movement (2D6) and Frenzy special rules. An Unbound Slaughterbrute can never lose its Frenzy, even if beaten in close combat. In addition, an Unbound Slaughterbrute cannot choose the direction it travels in. Instead, roll a scatter dice in the Compulsory Moves sub-phase and move the Unbound Slaughterbrute in the direction rolled (if a ‘Hit!’ is rolled, the Slaughterbrute moves straight forwards). If an Unbound Slaughterbrute moves into contact with the board edge, a building or impassable terrain, it instead stops 1" away.

Unlike other random movement, an Unbound Slaughterbrute can move into base contact with a friendly unit, in which case it will come to a stop and immediately inflict D6+2 Strength 7 hits on the unit. (If it comes into base contact with more than one unit, you must choose one to inflict hits on.) After resolving these hits, move the Slaughterbrute directly backwards 1", so that it is no longer in base contact with the unit.

#field("UPGRADES", "")

- *Extra Claws:* The model gains +2 Attacks with Strength 5.

#field("OPTIONS", "")

- May take Extra Claws +20 points

#entry("ROT KNIGHTS")
#profile(
  (name: "Rot Knight", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 1, i: 4, a: 2, ld: 8, points: 65),
  (name: "Rot Beast of Nurgle", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 6, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Special Character, Human)")
#field("MOUNT", "Rot Beast of Nurgle (Canine)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Nurgle (included in profile), Poisoned Attacks (Rot")

Beast only)*, Regeneration (5+), Will of Chaos*

#field("OPTIONS", "")

- May choose one of the following:
  - Ensorcelled weapons +2 points/model
  - Light lances +2 points/model
  - Heavy lances +4 points/model
- May take shields +6 points/model
- May upgrade one Rot Knight to a Leader +5 points
- May upgrade one Rot Knight to a Musician +5 points
- May upgrade one Rot Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("PUSGOYLE BLIGHTLORDS")
#profile(
  (name: "Pusgoyle Blightlord", m: 4, ws: 6, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 75),
  (name: "Rot Fly of Nurgle", m: 1, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Rot Fly of Nurgle (Daemon)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Great weapon, medium armour")

- *Death Heads:* Death Heads have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Poisoned Attacks, Quick Shot"))

Each Hit from a Death Head is multiplied into D6 Hits.

#field("SPECIAL RULES", "Chaos Armour, Daemon of Nurgle (Rot Fly only), Fly (6), Mark of Nurgle (included in")

profile)*, Poisoned Attacks* (Rot Fly only)*, Will of Chaos*

#field("OPTIONS", "")

- May take Death Heads +5 points/model
- May upgrade one Pusgoyle Blightlord to a Leader +5 points

#entry("TOAD DRAGON")
#profile(
  (name: "Toad Dragon", m: 8, ws: 4, bs: 0, s: 7, t: 7, w: 10, i: 2, a: 4, ld: 6, points: 375),
)
#field("TROOP TYPE", "Monster (Toad Dragon)")
#field("BASE SIZE", "100x150")
#field("SPECIAL RULES", "Natural Armour (3+), Immunity (Psychology), Mark of Nurgle (included in profile)")

- *Colossal Beast:* This model's Stomp inflicts 2D6 hits, rather than the normal D6.
- *Tongue Lash:* In addition to the Toad Dragon's normal attacks, it may also make a single special lash attack with its befouled and venomous slurping tongue. This single attack may be inflicted against any enemy model in base contact with the Toad Dragon; it is a Strength 4 Poisoned attack with the Always Strikes First special rule. Should the victim survive, they suffer \-1 to hit that round of combat.
- *Unspeakable Foulness:* This is a Breath Weapon attack. Any models that are hit must pass a Toughness test or suffer a wound with the Multiple Wounds (D3) and Ignores Armour saves special rules.

#entry("SLICKBLADE SEEKERS")
#profile(
  (name: "Seeker", m: 4, ws: 4, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 50),
  (name: "Exalted Steed of Slaanesh", m: 10, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 2, ld: 7, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Exalted Steed of Slaanesh (Daemon)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Polearms, light armour, barding")
#field("SPECIAL RULES", "Daemon of Slaanesh (Steed of Slaanesh only), Fast Cavalry, Killing Blow, Mark of Slaanesh, Poisoned Attacks (Steed of Slaanesh only)")
#field("OPTIONS", "")

- May replace polearms & Killing Blow with shortbows & Poisoned Attacks +1 point/model
- May upgrade one Seeker to a Leader +5 points

#entry("FATEMASTERS")
#profile(
  (name: "Fatemaster", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 70),
  (name: "Disc of Tzeentch", m: 0, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Disc of Tzeentch (Daemon)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Fireglaive, medium armour, shield")

- *Fireglaive:* Polearm. Fireglaives have the Flaming Attacks and Magical Attacks special rules.

#field("MAGIC", "A unit of Fatemasters is a Level 1 Wizard that uses the Lore of Tzeentch.")
#field("SPECIAL RULES", "Chaos Armour, Daemon of Tzeentch (Disc of Tzeentch only), Fly (9), Mark of Tzeentch, Will")

*of Chaos*

- *Coven of Tzeentch:* Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Fatemaster as the caster (or target) for the purposes of line of sight, range, etc. In the event of a Fatemaster unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.
- *Masters of Fate:* Fatemasters, and any friendly units within 8" of them, may re-roll 1's when taking armour saves.

#field("OPTIONS", "")

- May upgrade one Fatemaster to a Leader +5 points

#entry("MUTALITH VORTEX BEAST")
#profile(
  (name: "Mutalith Vortex Beast", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 6, i: 3, a: "*", ld: 8, points: 255),
)
#field("TROOP TYPE", "Monster (Chaos Beast)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Mark of Tzeentch, Natural Armour (4+), Random Attacks (D6+2), Regeneration (5+)")

- *Aura of Mutation:* At the start of each of your Magic phases, roll a D6 for each unit within 6" (friend or foe), and consult the table below to discover how many Toughness tests the target must take. For each Toughness test failed, the target suffers a single Wound which Ignores Armour Saves:

#chart((("D6", "Result"), ("1", "Hideous Disfigurements: The target must take D6 Toughness tests, and gains the Fear special rule
for the rest of the game."), ("2", "Trollbrains: The target must take D6 Toughness tests, and gains the Stupidity special rule for the rest
of the game."), ("3", "Gift of Mutations: The target must take D6 Toughness tests. After resolving these tests, one of the
unit’s characteristics (roll a D6 to randomly select between M, WS, BS, S, T, or A) is increased by 1
(to a maximum of 10) and one of their characteristics (roll another D6 to randomly select between M,
WS, BS, S, T or A) is decreased by 1 (to a minimum of 1) for the rest of the game."), ("4", "Tide of Transformation: The target must take D6 Toughness tests. Once the tests have been
resolved, roll a D6: on a 3+, choose another unit within 6\" of the initial target – it must take D6
Toughness tests. Keep rolling for further victims (each within 6\" of the last target struck), until you
roll a 1-2 or there are no more viable targets. A unit can only be the target of Tide of Transformation
once per turn."), ("5", "Maelstrom of Change: Place the small round template over the target – it scatters it D3\". Every
model underneath the template must take a Toughness test."), ("6", "Spawnchange: Every model in the target unit must take a Toughness test. If the target suffers one or
more unsaved Wounds, you can immediately place a new Chaos Spawn anywhere within 6\" of the
target unit that is at least 1\" from any unit and impassable terrain. If the target suffered no unsaved
Wounds, if you do not have a spare Chaos Spawn model, or if it cannot be placed, then no Chaos
Spawn is created.")))

= SPECIAL CHARACTERS

#entry("ARCHAON THE EVERCHOSEN", first: true)
#namecost("Lord of the End Times, The Three-Eyed King, The Anointed, Favoured Son of Chaos, Scourge of the World", "")
#profile(
  (name: "Archaon the Everchosen", m: 4, ws: 9, bs: 5, s: 5, t: 5, w: 4, i: 7, a: 5, ld: 10, points: 570),
  (name: "Dorghar (Daemonic Steed)", m: 8, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 9, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Shield")
#field("MAGIC", "Archaon is a Level 2 Wizard who uses the Lore of Tzeentch.")
#field("MAGIC ITEMS", "")

- *The Slayer of Kings:* Magic Weapon. The Slayer of Kings has the Ignores Armour saves special rule. In addition, Archaon may unleash the power of U'zuhl in any Close Combat phase. If he does this, he fights with double his normal number of Attacks (to a maximum of 10) but any rolls To Hit of a 1 will strike either himself or a friendly model in base contact (controlling player's choice). Archaon may not re-roll To Hit results of a 1 when unleashing U'zuhl. Once U'zuhl is unleashed, Archaon must use this special ability in every close combat he is subsequently involved in for the rest of the battle.
- *The Armour of Morkar:* Magic Armour. Heavy armour. The Armour of Morkar gives Archaon an additional +1 to his armour save. No attack against Archaon may ever have a better chance To Wound than a 3+, regardless of special rules.
- *The Eye of Sheerian:* Talisman. The Eye of Sheerian grants Archaon a Magical Ward (3+).
- *The Crown of Domination:* Enchanted Item. The Crown of Domination grants Archaon the Terror special rule. In addition, any friendly unit within 12" may re-roll failed Break tests.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Strider (Dorghar only)")

- *Chosen of the Gods:* Archaon has the following bonuses: Immunity (Psychology), Immunity (Poisoned Attacks), Magic Resistance (1), and he may re-roll any channelling dice rolls of a 1.
- *Lord of the End Times:* If you take Archaon, he must be your army General. His Inspiring Presence has a range of 18". Any Battle Standard in his army is not allowed to have a Mark of Chaos.
- *The Swords of Chaos:* If your army includes Archaon, one unit of Varanguard may be upgraded to be the Swords of Chaos for +3 points per model. This unit has the Hatred and Immunity (Psychology) special rules.

#field("OPTIONS", "")

- May be mounted on Dorghar +50 points

#entry("VARDEK CROM")
#namecost("The Conqueror, Herald of Archaon, Harbinger of the End Times", "")
#profile(
  (name: "Vardek Crom", m: 4, ws: 9, bs: 3, s: 5, t: 5, w: 3, i: 8, a: 5, ld: 9, points: 250),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Two hand weapons, heavy armour, shield")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")

- *Master of Chaos Undivided:* If Crom is your army’s General, the restrictions on upgrading Chaos Marauders or Marauder Horsemen to Elite Marauders is lifted. However, they may not be given any Mark of Chaos.
- *Immense Pride:* While fighting in a challenge, Crom may re-roll To Hit and To Wound rolls.
- *The Way of the Warrior:* Crom can choose to swap between fighting with a hand weapon and shield or two hand weapons at the start of each round of close combat. If Crom uses a hand weapon and shield, his Parry save is increased to 4+. If Crom uses two hand weapons, he gains +3 Attacks rather than +1.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("ABRAXIA")
#namecost("Spear of the Everchosen", "")
#profile(
  (name: "Abraxia", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 5, ld: 9, points: 420),
  (name: "Thanatorg (Karkadrak)", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 2, a: 4, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monstrous Creature (Character, Human)")
#field("MOUNT", "Thanatorg (Draconid)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Heavy armour, barding")
#field("MAGIC ITEMS", "")

- *Gorbolga the Accursed:* Magic Weapon. Light lance. At the start of each close combat phase, roll a D6 for each enemy unit in base contact and consult the following chart:

#chart((("D6", "Result"), ("1", "Uncontrollable Power: Abraxia suffers a Wound with no saves allowed."), ("2-3", "The Spear Slumbers: No effect."), ("4-5", "White-hot Varanite: Abraxia gains +1 Strength."), ("6", "Rampant Mutation: Abraxia gains +1 Strength. In addition, for each natural To Hit roll of 6 made
with this weapon, the enemy unit suffers D3 Wounds with no saves allowed, distributed as Hits from
shooting.")))

- *Warpsteel Shield:* Magic Armour. Shield. This shield gives the bearer a Magical Ward (4+).

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Impact Hits (D3), Natural Armour (5+), Will of Chaos")

- *Warlord of the First Circle:* Friendly units of Varanguard within 12" of Abraxia may re-roll failed Leadership tests. In addition, you may take one unit of Varanguard as a Special Unit instead of a Rare Unit.
- *Blood of Molten Varanite:* Roll a D6 each time an enemy model causes an unsaved Wound against Abraxia in close combat. On a 4+, that model suffers a Strength 5 Hit which Ignores Armour Saves.

#entry("COUNT MORDREK")
#namecost("The Damned", "")
#profile(
  (name: "Mordrek", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 7, a: 1, ld: 9, points: 265),
  (name: "Warsteed", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Warsteed (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy armour, barding")
#field("MAGIC ITEMS", "")

- *Sword of Change:* Magic Weapon. If an enemy character or monster is slain by the Sword of Change in close combat, roll a D6. On the roll of a 4+, the model is transformed into a Spawn of Chaos under the control of the owner of the Sword of Change. Place the model within 1" of Mordrek. However, it is not worth any additional Victory Points. If no Spawn model can be placed, the model is only removed as a casualty.
- *Chaos Runeshield:* Magic Armour. Shield. The Runeshield negates the power of any magic weapons carried by all models in base contact – treat them as ordinary non-magical weapons of their type.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")

- *Living Damnation:* At the start of each of his turns, Mordrek must roll one D6 for his Weapon Skill and Attacks characteristics, as well one D3 for his Strength and Toughness and characteristics, and add the result to his profile.

#entry("ATARUS")
#namecost("Blade of the First Prince", "")
#profile(
  (name: "Atarus", m: 4, ws: 8, bs: 3, s: 5, t: 4, w: 2, i: 7, a: 4, ld: 9, points: 195),
  (name: "Drakocephalus (Daemonic Steed)", m: 8, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monstrous Cavalry (Special Character, Human)")
#field("MOUNT", "Drakocephalus (Daemon)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Polearm, heavy armour, barding")
#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Chaos Armour, Devastating Charge, Eye of the Gods, Will of Chaos")

- *Blade of the First Prince:* Atarus has the Always Strikes First special rule in any turn that he makes a successful charge.
- *Network of Spies:* If Atarus is included in your army, you gain a +1 bonus on the roll to decide who chooses to take the first turn.

#entry("WULFRIK THE WANDERER")
#namecost("Worldwalker, The Eternal Challenger, Inescapable One", "")
#profile(
  (name: "Wulfrik", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 2, i: 7, a: 4, ld: 8, points: 205),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")
#field("MAGIC ITEMS", "")

- *Sword of Torgald:* Magic Weapon. This weapon gives the wielder +1 Strength, +1 Attack and the Multiple Wounds (2) special rule.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")

- *Gift of Tongues:* When Wulfrik issues a challenge, your opponent cannot choose to refuse it. Furthermore, Wulfrik nominates which enemy character will accept the challenge.
- *Hunter of Champions:* As soon as Wulfrik is placed on the tabletop, nominate one enemy character in your opponent's army – this is the champion Wulfrik has journeyed to challenge. Against the chosen character, Wulfrik always Hit and Wound on a 2+ and gets the Killing Blow special rule.
- *Seafang:* Wulfrik the Wanderer and a single unit of Chaos Marauders may deploy using the Ambushers special rule.

#field("NOTES", "")

- Wulfrik the Wanderer counts as a Marauder Chieftain for the purpose of taking Marauder Champions.

#entry("FRYDAAL THE CHAINMAKER")
#profile(
  (name: "Frydaal", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 4, ld: 9, points: 215),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Storm's Wrath:* Magic Weapon. Flail. This weapon gives Frydaal +D3 Attacks in each round of close combat.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Impact Hits (1), Will of Chaos")

- *Chainmaker:* Any enemy unit destroyed by Frydaal in combat or through pursuit is worth +100 Victory Points.
- *Renowned Sea Captain:* Frydaal has the Inspiring Presence (6) special rule affecting friendly units of Marauders.
- *Peerless Raider:* If Frydaal is included in your army, one unit of Marauders, Marauder Hunters or Marauder Horsemen may deploy using the Ambushers special rule. In addition, this unit gains a +1 modifier to the result when determining if they arrive.

#entry("HARALD HAMMERSTORM")
#namecost("Harry the Hammer", "")
#profile(
  (name: "Harald Hammerstorm", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 2, i: 8, a: 4, ld: 8, points: 210),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25, 30x30, 40x60 or 50x75")
#field("MAGIC ITEMS", "")

- *The Hammer of Harry:* Magic Weapon. The Hammer of Harry has the Ignore Armour Saves and Multiple Wounds (D6) special rules. In addition, against models with the Undead or Vampiric special rules, Harry can re-roll any failed rolls To Wound and has the Killing Blow special rule.
- *Armour of Damnation:* Magic Armour. Heavy armour. Any model striking the wearer in close combat must re-roll successful rolls To Hit.
- *Bane Shield:* Magic Armour. Shield. For each successful armour save or Parry save made in close combat, the shield inflicts a Strength 4 hit on the model who struck the blow.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Hatred (Undead), Will of Chaos")

- *Bane of the Dead:* Harry causes Terror in models with the Undead special rule, even though they have Immunity (Psychology). Undead in base contact with him must take Break tests and can flee like ordinary troops. If they are not forced to flee from combat, Undead units suffer from Unstable as normal. Fleeing Undead units rally automatically during their next turn.

#entry("SAYL THE FAITHLESS")
#namecost("Twisted Seer of the Wastes", "")
#profile(
  (name: "Sayl the Faithless", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 2, ld: 9, points: 295),
  (name: "Nightmaw (Chaos Spawn)", m: "*", ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: "*", ld: 10, points: 45),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Light armour")
#field("MAGIC", "Sayl is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:")

- Heavens
- Shadow

In addition, he knows the following spell:

- *Traitor's Mist:* Level 1, cast on 5+. _Traitor's Mist_ is a *conveyance* spell that targets Sayl himself. Sayl may immediately make a move using the Fly (10) special rule as if it were the Remaining Moves sub-phase, even if engaged in close combat. In addition, any model (friend or foe) in base contact at the start of the move suffers an automatic Strength 3 hit which Ignores Armour saves.

#field("MAGIC ITEMS", "")

- *The Viperous Staff:* Magic Weapon. All attacks with the Viperous Staff have the Killing Blow special rule. In addition, it grants the wielder a Magical Ward (5+).
- *Schalkain's Teeth:* Arcane Item. One use only. If Sayl incurs a Miscast he may choose to inflict its effects on a single friendly model within 12" instead of himself. This must be decided before the effects of the miscast have been rolled. If the subject of the miscast is not a Wizard and Power Drain is rolled, then the effect is voided.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Will of Chaos")

- *Mutant Sight:* Sayl may re-roll failed Characteristic tests. In addition, he gains a +2 bonus to channel Power dice.
- *Nightmaw the Shadow-kin:* Nightmaw has the Random Attacks (D6+1), Random Movement (3D6), Unbreakable special rules. In addition, enemy missile attacks suffer a \-1 To Hit penalty against Nightmaw. Nightmaw must deployed within 3" of Sayl, but may otherwise move like an independent unit. Nightmaw does not award any Victory Points if killed.

#entry("MARAKARR BLOOD-SKY")
#namecost("Marauder Warqueen", "")
#profile(
  (name: "Marakarr Blood-Sky", m: 4, ws: 7, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 180),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC ITEMS", "")

- *Infernal Runeshield:* Shield. This shield gives Marakarr a Magical Ward (5+). In addition, whenever she makes a successful Parry save, the model that struck the blow suffer one Wound which Ignores Armour Saves.

#field("SPECIAL RULES", "Eye of the Gods, Will of Chaos")

- *Oath of Supremacy:* If Marakarr Blood-Sky is within the enemy's side of the battlefield, she gains the Inspiring Presence (6) special rule.
- *Tribal Warleader:* All friendly units of Marauders, Marauder Horsemen, Marauder Hunters and Marauder Chariots gain +1 to their combat resolution if they are within 12" of Marakarr Blood-Sky.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("LOKJAR BJOERGIR")
#profile(
  (name: "Lokjar Bjoergir", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 135),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Skull Gorger:* Magic Weapon. Skull Gorger gives Lokjar the Killing Blow special rule.
- *Clan Shield:* Magic Armour. Shield. All enemy characters belonging to the Forces of Order in base contact with Lokjar must always issue and accept challenges against him.
- *Snow Troll Amulet:* Talisman. This amulet gives Lokjar the Regeneration (4+) special rule. At the end of each close combat phase, Bjoergir automatically regenerates 1 Wound lost earlier.

#field("SPECIAL RULES", "Eye of the Gods, Will of Chaos")

- *Inner Rage:* Once Lokjar suffers his first unsaved Wound, he will be subject to Frenzy for the rest of the battle.

#field("NOTES", "")

- Lokjar Bjoergir counts as a Marauder Chieftain for the purpose of taking Marauder Champions.

#entry("KHOLEK SUNEATER")
#namecost("Bringer of Darkness, Tempest Incarnate, The Mountain God", "")
#profile(
  (name: "Kholek Suneater", m: 8, ws: 8, bs: 3, s: 7, t: 6, w: 8, i: 1, a: 7, ld: 9, points: 475),
)
#field("TROOP TYPE", "Monster (Special Character, Dragon Ogre)")
#field("BASE SIZE", "100x150")
#field("MAGIC ITEMS", "")

- *Starcrusher:* Magic Weapon. Great weapon. Hits inflicted by Starcrusher have the Multiple Wounds (D3) special rule.
- *Armour of the Storm:* Magic Armour. Heavy armour. If any enemy spell or missile attack with the Lightning Attacks special rule targets a unit within 12" of Kholek, the spell's effects are redirected toward Kholek instead.

#field("SPECIAL RULES", "Immunity (Psychology), Impact Hits (D6), Natural Armour (4+), Storm Call (see Dragon")

Ogre Shaggoth), *Storm Rage* (see Dragon Ogres)

- *Lord of the Storm:* During each of Kholek Suneater's Shooting phases, you may choose a single unengaged enemy unit that is within 24" of Kholek Suneater, and is in his front arc and line of sight, and roll a D6. On a roll of a 2\-6 a bolt of lightning hits the unit, inflicting D6 Strength 6 hits with the Lightning Attacks special rule. On the roll of a 1, the attack has no effect. Kholek Suneater may use this ability even if he is engaged in close combat.

#field("NOTES", "")

- If Kholek Suneater in in your army, you may take units of Dragon Ogres as Special Units instead of Rare Units.

#entry("THROGG WINTERTOOTH")
#namecost("King of Trolls, The Bitter Beast, Lord of the Monstrous Horde", "")
#profile(
  (name: "Throgg Wintertooth", m: 6, ws: 5, bs: 2, s: 6, t: 5, w: 4, i: 2, a: 5, ld: 8, points: 265),
)
#field("TROOP TYPE", "Monstrous Infantry (Special Character, Troll)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Great weapon")
#field("MAGIC ITEMS", "")

- *The Wintertooth Crown:* Enchanted Item. The Wintertooth Crown gives Throgg the Inspiring Presence (18) special rule, though it can only be used by friendly War Beasts, Monstrous Beasts, Monstrous Infantry, Monstrous Creatures and Monsters.

#field("SPECIAL RULES", "Eye of the Gods, Loner, Natural Armour (6+), Regeneration (4+)")

- *Copious Vomit:* Throgg has a Strength 5 Breath Weapon with the Ignores Armour saves special rule.
- *Lord of the Monstrous Horde:* If your army includes Throgg, units of Chaos Trolls count as Core Units instead of Special Units, and at least one unit must be included.

= KHORNE SPECIAL CHARACTERS

#entry("VALKIA THE BLOODY", first: true)
#namecost("Bringer of Glory, the Gorequeen, Swordmaiden of the Blood God", "")
#profile(
  (name: "Valkia", m: 4, ws: 9, bs: 3, s: 5, t: 5, w: 3, i: 8, a: 5, ld: 9, points: 350),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *The Spear Slaupnir:* Magic Weapon. Spear. All close combat attacks made by the Spear Slaupnir have the Armour Piercing (1) special rule. In addition, in any turn in which Valkia the Bloody charges, Slaupnir confers the Strength Bonus (1) and the Killing Blow special rules.
- *Daemonshield:* Magic Armour. Shield. Whilst an enemy model is in base contact with Valkia the Bloody, they reduce their Attacks by 1, to a minimum of 1.
- *The Scarlet Armour:* Magic Armour. Heavy armour. Whilst an enemy model is in base contact with Valkia the Bloody they reduce their Strength by 1, to a minimum of 1.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Fear, Fly (10), Mark of Khorne, Magical Ward (5+), Will")

*of Chaos*

- *Consort of the Blood God:* If Valkia the Bloody is required to roll on the Eye of the Gods table, do not roll any dice. Instead, she always gains +1 Strength.
- *The Gaze of Khorne:* All friendly units with the Mark of Khorne within 12" of Valkia the Bloody re-roll failed Break tests. However, any friendly unit with the Mark of Khorne that flees whilst within 12" of Valkia the Bloody, for whatever reason, immediately suffers D6 Strength 6 hits.

#entry("SKARR BLOODWRATH")
#namecost("Daemonic Lord of Khorne", "")
#profile(
  (name: "Skarr Bloodwrath", m: 5, ws: 8, bs: 3, s: 5, t: 5, w: 4, i: 7, a: 5, ld: 8, points: 350),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Bloodstorm Blades:* Magic weapon. Two hand weapons. Attacks made with the Bloodstorm Blades have the Mighty Blow (2) and Impact Hits (D3) special rules.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Immunity (Psychology), Magic Resistance (1), Mark of Khorne")

- *Bloodborn:* Keep a count of the number of times Skarr Bloodwrath kills an opponent in a challenge or kills a monster – this is referred to as the Blood Tally. If he is removed as a casualty, mark his position with a counter. At the end of the turn, roll a D6 and add the current total of the Blood Tally. If the result is 1\-3, remove the counter from play – this rule has no further effect. If the result is 4+, Skarr is reborn: place Skarr anywhere within 6” of the centre of the counter and at least 1" away from any unit and impassable terrain, then reset the Blood Tally to 0. If it is not possible to place Skarr, remove the counter instead, and Skarr is not reborn. Skarr returns to play with D3 Wounds, and suffers no bonuses or penalties incurred from his former existence. For example, if Skarr was fleeing or affected by an augment or hex spell at the time of his death, the reborn model will not be. However, any bonuses conferred as a result of Skarr rolling on the Eye of the Gods table do remain in effect.

#entry("KHORGOS KHUL")
#namecost("Lord of the Goretide", "")
#profile(
  (name: "Khorgos Khul", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 9, points: 345),
  (name: "Grizzlemaw", m: "-", ws: 5, bs: 0, s: 5, t: "-", w: "-", i: 4, a: 3, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "50x50 or 60x60")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Reality-splitting Axe:* Magic Weapon. After a Khorgos has made all of his attacks with his axe in close combat, roll a D6 for each enemy model that suffered one or more wounds as a result of those attacks but was not slain. On a roll of 5+, the axe cleaves a rent in the fabric of reality, hurling the victim to Khorne’s realm, and the model is removed as a casualty.

#field("SPECIAL RULES", "Chaos Armour, Daemon of Khorne (Grizzlemaw only), Eye of the Gods, Mark of Khorne, Will of Chaos")

- *Favoured of Khorne:* Khorgos Khul may re-roll failed rolls To Hit.
- *Grizzlemaw:* Khorgos Khul is accompanied by his Flesh Hound Grizzlemaw into battle. They should be placed on the same base and counts as a single model for all purposes. Grizzlemaw attacks using its own profile which are not subject to any other special rules that Khorgos Khul has.
- *Lord of the Goretide:* All friendly units with the Mark of Khorne within 12" of Khorgos Khul may re-roll failed To Hit rolls of 1.
- *Mortal Bane:* Khorgos Khul and any friendly unit he joins may re-roll failed charge distances.

#entry("KHAZEK")
#namecost("The King of Ashes", "")
#profile(
  (name: "Khazek", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 9, points: 635),
  (name: "Nazgharoth", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 7, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Human)")
#field("MOUNT", "Nazgharoth (Chaos Beast)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Shield")
#field("MAGIC ITEMS", "")

- *Azharon:* Magic Weapon. If an enemy model is Wounded but not slain by Azharon, roll a D3 at the end of the close combat phase. If the result is greater than their remaining Wounds characteristic, they are immolated by Khorne’s wrath and removed as casualties.
- *Armour of Blood:* Magic Armour. Heavy armour. At the start of each close combat phase, roll a D6 for each enemy unit within 8" of Khazek. On a 4+, the models in that unit are overcome with visions and suffer \-1 To Hit for the remainder of the close combat phase.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Fly (7), Mark of Khorne, Natural Armour (3+), Will of Chaos")

- *The King of Ashes:* At the start of each of your turns, one unit within 12" of Khazek may be forced to take a Psychology test. If the test is failed the unit is overcome by the urge to slaughter in Khorne’s name, and they will gain the Frenzy special rule until the start of your next turn.
- *Scorn for Sorcery:* Khazek can channel Dispel Dice as if he was a Level 2 Wizard
- *Triumvirate of Blood:* After attacking with Nazgharoth each close combat phase (before Stomps), you may pick one of the following effects. You may not choose the same effect in two consecutive rounds of combat.
  - *Fires of Wrath:* Nazgharoth uses a Breath Weapon Attack with Strength 4 and the Flaming Attacks special rule.
  - *Furious Ruin:* Nazgharoth rolls 2D6 with its Stomp Attack this phase.
  - *Enraged Roar:* All models in base contact with Nazgharoth must pass a Toughness test or suffer 1 Wound with no saves allowed.

#entry("VORGAROTH THE SCARRED")
#namecost("The Skull Host of Khorne", "")
#profile(
  (name: "Vorgaroth", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 9, points: 770),
  (name: "Skalok (Chaos Dragon)", m: 6, ws: 6, bs: 0, s: 8, t: 8, w: 10, i: 2, a: 6, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Human)")
#field("MOUNT", "Skalok (Dragon)")
#field("BASE SIZE", "100x150")
#field("MAGIC ITEMS", "")

- *Skull Cleaver Axe of Khorne:* Magic Weapon. Vorgaroth may re-roll failed To Wound rolls when attacking Monsters. In addition, for each To Wound roll of 6, that attack is resolved using the Multiple Wounds (D3) special rule.

#field("SPECIAL RULES", "Eye of the Gods, Fly (7), Impact Hits (D6), Mark of Khorne, Natural Armour (2+), Will of Chaos.")

- *Fettered Servitude:* If a friendly unit with the Mark of Khorne is within 3" of Vorgaroth and needs to take a Break test, you can say that Vorgaroth demands unwavering obedience. If you do so, the unit suffers D3 Wounds worth of models, but the unit will count as being Unbreakable for the rest of this phase. If you do not do so, and the Break test for that unit is failed, it suffers D6 Wounds worth of models (after the opponent has decided to pursue or not, but before rolling the flee distance).
- *Fuelled by Death:* At the start of each of your turns, you may pick one friendly model within 3" and roll a D6; if the roll is greater than the model's Wound characteristics, that model is slain and Skalok regains a number of lost Wounds equal to the number of Wounds on the slain model's profile.
- *Wings of Fury:* Enemy Wizards within 18" of Vorgaroth suffer \-1 to cast and dispel.
- *White-hot Balefire:* This is a Strength 5 Breath Weapon with the Armour Piercing (1), Flaming Attacks and Multiple Wounds (D3) special rules.

#entry("ARBAAL THE UNDEFEATED")
#namecost("Destroyer of Khorne", "")
#profile(
  (name: "Arbaal", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 4, ld: 9, points: 280),
  (name: "Hound of Khorne", m: 7, ws: 5, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 4, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monstrous Cavalry (Special Character, Human)")
#field("MOUNT", "Hound of Khorne (Daemon)")
#field("BASE SIZE", "40x40, 50x50 or 50x75")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Destroyer of Khorne:* Magic Weapon. The Destroyer of Khorne allows Arbaal to make D3+1 additional attacks in close combat.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Khorne, Will of Chaos")

- *The Hound of Khorne:* The Hound of Khorne has the Daemon of Khorne, Frenzy, Magic Resistance (2) and Natural Armour (6+) special rules.
- *Wrath of Khorne:* Arbaal must always issue and accept challenges. In addition, if Arbaal flees for any reason but is not killed, he will be turned into Spawn of Khorne. Make the flee move with Arbaal as normal, and then replace the model with a Spawn of Khorne, facing the same direction.

#entry("SCYLA ANFINGRIMM")
#namecost("The Bloodbeast, Scourgeborn, the Talon of Khorne", "")
#profile(
  (name: "Scyla Anfingrimm", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 5, i: 3, a: "*", ld: 10, points: 140),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, Chaos Beast)")
#field("BASE SIZE", "40x40 or 50x50")
#field("MAGIC ITEMS", "")

- *Brass Collar of Khorne:* Talisman. The Brass Collar of Khorne bestows Scyla Anfingrimm with a Magical Ward (6+) and the Magic Resistance (3) special rule.

#field("SPECIAL RULES", "Hatred, Mark of Khorne, Natural Armour (5+), *Random Attacks (D6+2), Unbreakable")

= NURGLE SPECIAL CHARACTERS

#entry("TAMURKHAN", first: true)
#namecost("The Maggot Lord", "")
#profile(
  (name: "Body of Sargath the Vain", m: 3, ws: 7, bs: 3, s: 5, t: 6, w: 3, i: 5, a: 5, ld: 9, points: 280),
  (name: "Body of Karaka Breakmountain", m: 5, ws: 7, bs: 3, s: 5, t: 6, w: 5, i: 3, a: 5, ld: 9, points: 310),
  (name: "Possessor", m: "*", ws: 7, bs: 3, s: "*", t: "*", w: "*", i: "*", a: "*", ld: 9, points: ""),
  (name: "Bubebolos (Toad Dragon)", m: 8, ws: 4, bs: 0, s: 7, t: 7, w: 10, i: 2, a: 4, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Sargath, Special Character, Human) or Monstrous Infantry (Karaka, Special Character, Ogre)")
#field("BASE SIZE", "25x25 or 30x30 (Body of Sargath the Vain), 40x40 or 50x50 (Body of Karaka Breakmountain)")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Tamurkhan's Rune Blade:* Magic Weapon. Sargath only. Attacks with the Rune Blade have the Armour Piercing (1) and Multiple Wounds (2) special rules.
- *The Black Cleaver:* Magic Weapon. Karaka only. Great weapon. Any model that suffers a wound from the weapon and survives must take a Toughness test or suffer a permanent reduction of \-1 to their Toughness score.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Nurgle (included in profile), Stubborn")

- *Nurgle's Favoured Son:* Tamurkhan must be the Army General.
- *Feast of the Maggot Lord:* Tamurkhan starts in the body of either Sargath or Karaka. If Tamurkhan is slain in close combat, a special possession attack is made against the model that delivered the final wound to Tamurkhan. If Tamurkhan's death occurs as a result of shooting or other means, the attack will be made against the nearest eligible model (friend or enemy) within 6". If multiple models fall into this category, Tamurkhan's player chooses which to attack.

Both players roll a D6 and add the Weapon Skill value of their respective models. If the result is a draw, roll again until one side wins. If Tamurkhan's player wins, the victim is killed outright and their body is possessed. From then onwards, Tamurkhan takes over the victim model, which is detached from its unit and placed l" away from it. The model is now controlled by Tamurkhan's player for the rest of the game exactly as if it were their own character model. Only Infantry and Monstrous Infantry models are eligible to be possessed. Tamurkhan cannot take possession of Animated Constructs, Daemons, Forest Spirits, Vampires or models that are Ethereal.

The characteristics of the new body possessed body uses the Possessor profile, but with the following changes: \-1 Movement, +1 Toughness, +1 Wounds, \-2 Initiative. Strength and Attacks is equal to the possessed model's stats. Note that any wounds they previously suffered are still in effect.

Tamurkhan now uses any weapons or armour the victim had (including magical types), discarding both his own and any other equipment the victim has. Likewise, any ability the victim had as a Wizard is lost. This includes any special rules the victim formerly used other than their unit type, Natural Armour and Regeneration.

If no eligible model is available or the possession attack fails, Tamurkhan is killed outright. Also, Tamurkhan's power cannot save him if he is destroyed by an attack which causes a model to be slain outright rather than causing wounds.

#field("OPTIONS", "")

- May be mounted on Bubebolos +375 points

#entry("THE GLOTTKIN")
#namecost("Befouled Brothers of Nurgle", "")
#profile(
  (name: "Otto Glott", m: 4, ws: 8, bs: 3, s: 5, t: "-", w: "-", i: 6, a: 5, ld: 9, points: 830),
  (name: "Ethrac Glott", m: 4, ws: 6, bs: 3, s: 4, t: "-", w: "-", i: 5, a: 2, ld: 8, points: ""),
  (name: "Ghurk Glott", m: 6, ws: 3, bs: 0, s: 6, t: 7, w: 10, i: 1, a: 5, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Human)")
#field("BASE SIZE", "150x100")
#field("EQUIPMENT", "Great weapon (Otto Glott only)")
#field("MAGIC", "The Glottkin are a Level 4 Wizard that can use spells from the Lore of Nurgle.")
#field("SPECIAL RULES", "Eye of the Gods, Impact Hits (D3), Mark of Nurgle (included in profile), Poisoned Attacks, Regeneration (4+), Will of Chaos")

- *Lashing Tentacle:* Before rolling To Hit, nominate one of the Ghurk's Attacks as the Lashing Tentacle. This Attack has Strength 10 and the Multiple Wounds (D6) special rule.
- *Lords of Nurgle:* The Glottkin and all other friendly models within 12" that have the Mark of Nurgle special rule re-roll failed charge distances.
- *Pestilent Torrent:* Ghurk has a Strength 3 Breath Weapon with the Ignores Armour saves special rule which can only be used in close combat.

#entry("THE MAGGOTH LORDS")
#namecost("Lords of Icehorn Peaks", "")
#profile(
  (name: "Orghotts Daemonspew", m: "-", ws: 8, bs: 3, s: 5, t: 6, w: 3, i: 7, a: 5, ld: 9, points: 420),
  (name: "Bloab Rotspawned", m: "-", ws: 6, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 2, ld: 8, points: 460),
  (name: "Morbidex Twiceborn", m: "-", ws: 7, bs: 3, s: 5, t: 6, w: 3, i: 6, a: 4, ld: 8, points: 415),
  (name: "Pox Maggoth", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 1, a: 4, ld: "-", points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Human)")
#field("MOUNT", "Pox Maggoth (Chaos Beast)")
#field("BASE SIZE", "60x100")
#field("EQUIPMENT", "Great weapon, medium armour (Bloab & Morbidex only), Heavy armour (Orghotts only)")
#field("MAGIC", "Bloab is a Level 3 Wizard who uses spells from the Lore of Nurgle.")
#field("MAGIC ITEMS", "")

- *The Rotaxes:* Orghotts Daemonspew only. Magic Weapon. Two hand weapons. Close combat attacks made by the wielder have +2 Strength and the Poisoned Attacks special rule.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Nurgle (included in profile), Magical Ward (6+)")

(Orghotts Daemonspew only)*, Will of Chaos*

- *Acid Ichor:* Whenever Orghotts Daemonspew suffers an unsaved Wound in close combat, the model that inflicted that hit must pass an Initiative test or suffer a Strength 4 hit. Wounds inflicted by Acid Ichor count towards the combat result.
- *Bilespurter:* Bloab Rotspawned only. This is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-24\"", "3(4)", "Ignores Armour Saves"))

In case a misfire is rolled, Bloab Rotspawned suffers 1 Wound with no saves allowed.

- *Daemon Flies:* At the start of each of your Magic phases, before rolling for the Winds of Magic, every enemy unit within 6" of Bloab Rotspawned suffers D6 Strength 3 hits with the Magical Attacks special rule.
- *Lord of Nurglings:* All friendly Nurgling units (see Daemons of Chaos) within 12" of Morbidex Twiceborn have the Regeneration (6+) special rule.
- *Tripletongue:* Morbidex Twiceborn can make a shooting attack using the following profile.

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "6", "Poisoned Attacks, Quick Shot"))

- *Whippermaw:* Orghotts Daemonspew can make a shooting attack using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "4", "Killing Blow, Poisoned Attacks, Quick Shot"))
#field("NOTES", "")

- You may field each Maggoth Lord separately in your army.

#entry("GUTROT SPUME")
#namecost("The Lord of Tentacles, Master of the Plague Fleets", "")
#profile(
  (name: "Gutrot Spume", m: 4, ws: 8, bs: 3, s: 5, t: 6, w: 4, i: 7, a: 5, ld: 9, points: 275),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Great weapon, medium armour")
#field("GIFTS OF THE GODS", "Nurgle's Rot")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Nurgle (included in profile), Will of Chaos")

- *At Home on Land or Sea:* Gutrot Spume and any unit he is with gains the Aquatic special rule.
- *Flailing Tentacles:* Immediately before Gutrot Spume attacks in the Close Combat phase, roll a D3 and add the result to the Attacks characteristic on his profile.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("KAYZK THE BEFOULED")
#profile(
  (name: "Kayzk the Befouled", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 2, i: 2, a: 4, ld: 8, points: 315),
  (name: "Rot Beast of Nurgle", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monstrous Cavalry (Special Character, Human)")
#field("MOUNT", "Rotbeast of Nurgle (Daemon)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Sword of Filth:* Magic Weapon. Attacks with this sword may re-roll failed rolls To Wound and have the Armour Piercing (1) special rule.
- *Icon of Decay:* Enchanted Item. This item gives the bearer the Devastating Charge special rule. In addition, enemy units in base contact suffer \-1 to their Weapon Skill.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Nurgle (included in profile), Poisoned Attacks")

(Rotbeast only)*, Regeneration (5+), Will of Chaos*

- *Corrupted Flesh:* All attacks (except those with the Flaming Attacks special rule) suffer \-1 To Wound Kayzk the Befouled.

#entry("VALNIR THE REAPER")
#profile(
  (name: "Valnir the Reaper", m: 4, ws: 7, bs: 3, s: 5, t: 6, w: 2, i: 6, a: 4, ld: 8, points: 235),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Gatherer of Souls:* Magic Weapon. Flail. For every unsaved Wound caused by Valnir in close combat, he may increase his Attacks or Strength by 1 in the next round of close combat.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Fear, Hatred, Immunity (Psychology), Mark of Nurgle")

(included in profile)*, Regeneration (4+), Will of Chaos*

- *Wind of Pestilence:* At the start of each round of close combat, all enemy units in base contact Valnir get infected by the deadly contagion of Valnir. Roll a D6 to see which ailment the unit(s) suffers.

#chart((("D6", "Result"), ("1-3", "The Red Plague: The unit suffers D6 Strength 3 hits which Ignores Armour saves."), ("4-5", "Brain Fever: The unit suffers -2 to their Leadership until the start of the next round."), ("6", "Black Rot: All the members of the unit suffer a -1 Toughness penalty until the start of the next
round.")))

#entry("FESTUS THE LEECHLORD")
#namecost("Old Sawbones, Dark Apothecary, the Fecundite", "")
#profile(
  (name: "Festus the Leechlord", m: 4, ws: 4, bs: 2, s: 4, t: 5, w: 2, i: 2, a: 2, ld: 8, points: 215),
  (name: "Gathoblyt (Daemonic Mount)", m: 4, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 1, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "25x25 or 30x30 (Festus), 60x100 (Gathoblyt)")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Festus the Leechlord is a Level 2 Wizard who uses spells from the Lore of Nurgle.")
#field("MAGIC ITEMS", "")

- *Pestilent Potions:* Enchanted Item. At the beginning of each Close Combat phase Festus may either drink his potions, in which case he will immediately regain a single lost Wound, or try to force them down the throat of a single enemy model in base contact. If he attempts the latter, both players roll a D6 and add their model's unmodified Strength to the result. If your opponent's total is higher, nothing happens. If Festus' total is equal or higher, his victim immediately suffers D3 Wounds which Ignores Armour saves. Any unsaved Wounds inflicted by Pestilent Potions count towards the combat result.

#field("SPECIAL RULES", "Eye of the Gods, Mark of Nurgle (included in profile), Poisoned Attacks (including")

Gathoblyt)*, Regeneration (4+), Will of Chaos*

- *Harbinger of Pestilence:* Whilst Festus the Leechlord is in a unit, all models in that unit have the Poisoned Attacks special rule.
- *Healing Elixirs:* Whilst Festus the Leechlord is in a unit, all models in that unit have the Regeneration (6+) special rule.
- *Dark Experiments:* When making a pursuit move, Festus and any unit he is with will only pursue D6". However, enemy units caught by Festus or his unit are worth double victory points.

#field("OPTIONS", "")

- May be mounted on Gathoblyt +40 points

#entry("GELGUS PUST")
#namecost("The Prince of Sores", "")
#profile(
  (name: "Gelgus Pust", m: 8, ws: 8, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 9, points: 325),
)
#field("TROOP TYPE", "Monstrous Creature (Character, Daemon)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Medium armour")
#field("GIFTS OF THE GODS", "Nurgle's Rot")
#field("MAGIC ITEMS", "")

- *Malady & Contagion:* Magic Weapon. Two hand weapons. All attacks with this weapon have the Multiple Wounds (D3) and Poisoned Attacks special rules.

#field("SPECIAL RULES", "Chaos Armour, Daemon of Nurgle, Daemonic Instability (see Daemon Prince)")

- *Grin of the Grandfather:* All enemy units in base contact with Gelgus Pust suffer \-1 to their Leadership.
- *Polluting Aura:* All friendly units within 6" of Gelgus Pust gains the Regeneration (6+) special rule. In addition, all enemy units within 6" of Gelgus Pust suffer a \-1 penalty to any Regeneration saves.

= SLAANESH SPECIAL CHARACTERS

#entry("SIGVALD THE MAGNIFICENT", first: true)
#namecost("Scion of Slaanesh, the Geld-Prince, Lord of the Decadent Host", "")
#profile(
  (name: "Sigvald the Magnificent", m: 4, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 8, a: 5, ld: 10, points: 335),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *Sliverslash:* Magic Weapon. Sliverslash grants Sigvald +2 Attacks and the Always Strikes First special rule.
- *Auric Armour:* Magic Armour. Heavy armour. The Auric Armour grants Sigvald +2 to his armour save and the Regeneration (4+) special rule.
- *Mirrorshield:* Magic Armour. Shield. Enemies in base contact with Sigvald suffer \-1 To Hit in close combat.

#field("GIFTS OF THE GODS", "Allure of Slaanesh, Diabolic Splendour")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Slaanesh, Strider, Stupidity")

- *Favoured Son:* If Sigvald the Magnificent is required to roll on the Eye of the Gods table, do not roll any dice. Instead, he always gains +1 Attack.
- *The Mirror Guard:* If your army includes Sigvald the Magnificent, one unit of Chaos Chosen with the Mark of Slaanesh may be upgraded to be the Mirror Guard for +1 point per model. This unit must be armed with hand weapon and shields, and may re-roll failed Parry saves.
- *Supreme Vanity:* Sigvald the Magnificent may never re-roll a failed Stupidity test, nor use another model's Leadership when taking a Stupidity test (such as the army General's) – he's far too self-absorbed to take notice of anyone other than his own handsome reflection. The above also applies to any unit that Sigvald is currently joined to.

#entry("GLUTOS ORSCOLLION")
#namecost("Lord of Gluttony", "")
#profile(
  (name: "Glutos Orscollion", m: "-", ws: 4, bs: 3, s: 5, t: "-", w: "-", i: 3, a: 2, ld: 9, points: 660),
  (name: "Painbringer Kyazu", m: "-", ws: 6, bs: 3, s: 4, t: "-", w: "-", i: 5, a: 3, ld: "-", points: ""),
  (name: "Lashmaster Vhyssk", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  (name: "Priestess Dolece", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  (name: "Palanquin", m: "-", ws: "-", bs: "-", s: "-", t: 5, w: 6, i: "-", a: "-", ld: "-", points: ""),
  (name: "Palanquin Bearers", m: 6, ws: 4, bs: 0, s: 5, t: "-", w: "-", i: 3, a: 6, ld: "-", points: ""),
)
#field("TROOP TYPE", "Shrine (Armour Save 5+, Special Character, Human)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Great weapon (Painbringer Kyazu only)")
#field("MAGIC", "Glutos Orscollion is a level 4 Wizard who uses spells from the Lore of Slaanesh. In addition, he knows the following spell:")

- *Crippling Famishment:* Level 1, cast on 6+. _Crippling Famishment_ is a *hex* spell with a range of 24". The target unit must divide all its movement by half (rounding up) until the start of the caster's next Magic phase.

#field("MAGIC ITEMS", "")

- *The Leerstave of Loth'shar:* Arcane Item. The Leerstave gives Glutos a +1 casting and dispelling bonus.

#field("SPECIAL RULES", "Eye of the Gods, Mark of Slaanesh, Magical Ward (5+)")

- *The Grand Gourmand:* At the start of each of your turns, Glutos gains one the abilities as indicated in the table below. Note that all of these abilities are cumulative.

#chart((("Turn:", "Power:"), ("1", "Aperitif: All friendly units with the Mark of Slaanesh within 6\" of Glutos gain +1 Leadership."), ("2", "Starter: All friendly units with the Mark of Slaanesh within 6\" of Glutos may re-roll failed charge
rolls."), ("3", "Main Course: All friendly units with the Mark of Slaanesh within 6\" of Glutos are Unbreakable."), ("4", "Dessert: Glutos gains one additional spell, chosen as normal."), ("5", "Digestif: Glutos may re-roll casting and dispel results.")))

- *Fog of Temptation:* All enemy units within 6" of Glutos suffer \-1 To Hit in close combat.
- *Gorge on Excess:* All friendly units with the Mark of Slaanesh that are within 12" of Glutos may roll a D6 for each unsaved Wound inflicted by them in close combat. For each roll of a 6, the unit regains one Wound's worth of models previously slain during the game.

#entry("DECHALA")
#namecost("The Denied One", "")
#profile(
  (name: "Dechala", m: 6, ws: 8, bs: 3, s: 4, t: 4, w: 2, i: 9, a: 8, ld: 8, points: 255),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Two hand weapons, medium armour")
#field("MAGIC ITEMS", "")

- *Elixir of Damnation:* Enchanted Item. If an enemy model suffers an unsaved wound from close combat attacks caused by the bearer of this item, they cannot voluntarily move, attack or cast spells in the next turn.

#field("SPECIAL RULES", "Always Strikes First, Chaos Armour, Eye of the Gods, Mark of Slaanesh, Poisoned Attacks, Swiftstride")

- *Dances of Slaanesh:* Dechala may pick one of the following dances at the start of each round of close combat, the effect of which lasts until the end of that turn or until a new dance is chosen. She cannot choose the same dance in two consecutive rounds of combat.
  - *Daggerdance:* Dechala gains the Parry (5+) special rule.
  - *The Praise of Slaanesh:* All successful rolls to hit against Dechala in close combat must be re-rolled.
  - *Whirlwind of Pleasure:* Dechala gains +1 To Hit.

#entry("STYRKAAR OF THE SORTSVINAER")
#namecost("Exalted Champion of Slaanesh", "")
#profile(
  (name: "Styrkaar", m: 5, ws: 7, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 4, ld: 8, points: 220),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Shield")
#field("MAGIC ITEMS", "")

- *Blade of Endless Boasts:* Magic Weapon. This weapon gives Styrkaar the Armour Piercing (1) special rule. In addition, he gains +1 Attack for each enemy model in base contact.
- *Armour of Disdain:* Magic Armour. Medium armour. This armour gives Styrkaar a Magical Ward (6+). For each Hit that Styrkaar suffers in close combat, he immediately gets to make an additional Attack.
- *Sign of Depravity:* Enchanted Item. This item gives Styrkaar the Inspiring Presence (6) special rule. In addition, enemy units within 6" of him cannot use Inspiring Presence.

#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Fear, Mark of Slaanesh")

- *Glorious Slaughter:* Styrkaar and any unit he joins may re-roll their pursuit distance.
- *Unseen Companion:* Enemy units do not gain any bonus for attacking Styrkaar and any unit he joins in the flank or rear.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Steed of Slaanesh +16 points
  - Serpent of Slaanesh +32 points

= TZEENTCH SPECIAL CHARACTERS

#entry("VILITCH THE CURSELING", first: true)
#namecost("The Twisted Twin, Doomkindred, Master of Misrule", "")
#profile(
  (name: "Vilitch the Curseling", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 3, ld: 8, points: 385),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Two hand weapons, heavy armour")
#field("MAGIC", "Vilitch the Curseling is a Level 4 Wizard who uses the Lore of Tzeentch.")
#field("MAGIC ITEMS", "")

- *Vessel of Chaos:* Arcane Item. When an enemy Wizard fails to meet the casting value of a spell, the power dice used for that attempt are converted to bonus dispel dice that Vilitch the Curseling may utilise later that phase. Conversely, should the enemy make a failed dispel attempt to counter one of Vilitch the Curseling's spells, the dispel dice used for that attempt are immediately converted to bonus power dice that Vilitch may utilise later that phase. No other Wizard can use these bonus dice.

#field("GIFTS OF THE GODS", "Conjoined Homunculus")
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Loremaster (Lore of Tzeentch), Mark of Tzeentch, Will of Chaos")

#entry("EGRIMM VAN HORSTMANN")
#profile(
  (name: "Egrimm van Horstmann", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 9, points: 720),
  (name: "Baudros (Chaos Dragon)", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 6, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Human)")
#field("MOUNT", "Baudros (Draconid)")
#field("BASE SIZE", "50x50, 50x100, 60x100")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC", "Egrimm van Horstmann is a Level 4 Wizard who uses spells from the Lore of Tzeentch.")
#field("MAGIC ITEMS", "")

- *Chaos Runeblade:* Magic Weapon. The wielder of this sword gains the Multiple Wounds (D3) and Ignores Armour saves special rule.
- *Spell Familiar:* Arcane Item. The Spell Familiar gives Egrimm one additional spell.
- *Skull of Katam:* Arcane Item. The bearer of the Skull of Katam can choose to consult it before attempting to channel power dice each Magic Phase. If they do so, roll 2 extra dice. If the bearer consulted the Skull of Katam, they suffer a \-1 Leadership penalty for the rest of the game for every result of 1 rolled when channelling this round – if it is ever reduced to 0, they are immediately removed as a casualty.

#field("SPECIAL RULES", "Chaos Armour, Cold-Blooded, Dark Fire of Chaos (see Chaos Dragons), Eye of the Gods, Fly (7), Fumes of Contagion (see Chaos Dragons), Mark of Tzeentch, Natural Armour (3+), Will of Chaos")

- *Cunning of Tzeentch:* Any army led by Egrimm gets +1 on its dice when rolling to see which player gets to choose table sides, and when rolling to determine who gets the first turn.

#entry("AEKOLD HELBRASS")
#profile(
  (name: "Aekold Helbrass", m: 4, ws: 8, bs: 3, s: 5, t: 4, w: 2, i: 7, a: 4, ld: 8, points: 205),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *The Windblade:* Magic Weapon. Great weapon. At the start of each of your turns, roll a D6 and consult the chart below to see what effect the Windblade will have on its bearer:

#chart((("D6", "Result"), ("1-2", "Aekold gains the Fly (10) special rule until the start of his next turn."), ("3-4", "Aekold gains the Always Strikes First special rule until the start of his next turn."), ("5-6", "Aekold may throw the Windblade as a missile attack with a range of 12\" and the Quick to Fire
special rule. If the unit is hit it suffers D3 Strength 5 hits.")))
#field("SPECIAL RULES", "Chaos Armour, Eye of the Gods, Mark of Tzeentch, Will of Chaos")

- *The Breath of Life:* Aekold has the Regeneration (4+) special rule. In addition, any Character model in base contact with Aekold Helbrass also gains Regeneration (4+) as long as they are in contact with him. If Aekold is killed during a battle, roll a dice at the end of the turn that killed him. On a 4+ he recovers to full wounds, and is placed where the model was originally slain, at least 1" away from any unit or Impassable Terrain.

#entry("GALRAUCH")
#namecost("The Great Drake, First of the Chaos Dragons", "")
#profile(
  (name: "Galrauch", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 6, a: 6, ld: 9, points: 500),
)
#field("TROOP TYPE", "Monster (Special Character, Draconid)")
#field("BASE SIZE", "50x50, 50x100, 60x100")
#field("MAGIC", "Galrauch is a Level 4 Wizard who uses spells from the Lore of Tzeentch.")
#field("SPECIAL RULES", "Dark Fire of Chaos (see Chaos Dragons), Fly (7), Fumes of Contagion (see Chaos Dragons), Mark of Tzeentch, Natural Armour (3+)")

- *Breath of Change:* Breath of Change is a Breath Weapon. Any models hit must pass a Toughness test or be removed from play with no saves of any kind allowed.
- *Spirit of Galrauch:* At the beginning of each of his turns, Galrauch must take a Leadership test. If the test is passed, Galrauch is controlled as normal, but if the test is failed, the ancient spirit of the original Dragon surfaces again. Should this occur, Galrauch cannot move, cast spells or use his Breath Weapons. In the Close Combat phase, he directs half of his Attacks against himself as the two heads rip into each other. If Galrauch is already engaged in close combat, he can fight with his remaining Attacks as normal. The Wounds caused by Galrauch against himself are added to the enemy's score when working out the combat resolution.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
