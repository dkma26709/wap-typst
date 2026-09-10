// Amazons 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "amazons",
  army: "Amazons",
  version: "3.0",
  layout: "army",
  cover: "covers/amazons.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Amazons 3.0")

#cover(
  title: "Amazons",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/amazons.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Amazons*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Amazon army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Amazon units, and these are detailed here.

#namecost("SACRIFICIAL HUNT", "")

All models with this special rule may re-roll the distance they pursue a broken enemy from combat.

#namecost("GUERRILLA WARFARE", "")

The following applies to models with this special rule:

#namecost("Serpent's Strike", "")

Models with this rule gain the Devastating Charge special rule. In any turn in which they successfully charge an enemy unit in the flank or rear, they may re- roll 1's To Hit and To Wound.

#namecost("Predator's Feint", "")

In the first round of close combat in which a unit with this special rule does not win the combat or the enemy passes their Break test, it may choose to disengage from combat instead of taking a Break test or making a combat reform. Units affected by Frenzy cannot attempt to disengage from combat.

If the unit chooses to disengage, it makes a Flee move as if it had broken from combat. However, this does not cause Panic for breaking within 6" of friendly units. The enemy unit may only choose to pursue if they won the combat.

In addition, whenever a unit with this rule chooses Flee as a charge reaction or to disengage from combat, it gains +1 to its Flee distance.

#namecost("Hunter's Step", "")

Unless it charged, marched or fled during the Movement phase of its turn, a unit with the Fast Cavalry or Skirmishers special rules armed with missile weapons may move up to its Movement value directly backwards after resolving its missile attacks in its Shooting phase.

#namecost("KOKA", "")

Models with this upgrade gain the Frenzy special rule, and they do not lose Frenzy by losing a round of combat.

#namecost("CLAW OF THE OLD ONES", "")

Claws of the Old Ones are hand weapons with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (2), Magical Attacks"))
#namecost("PAIRED CLAWS OF THE OLD ONES", "")

Paired Claws of the Old Ones have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (2), Magical Attacks, Requires Two Hands, Parry (6+)"))

#note[_A model with paired Claws of the Old Ones gains +1 Attack._]

#namecost("SUN GAUNTLET", "")

Sun Gauntlets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "4", "Armour Piercing (2), Magical Attacks, Quick to Fire"))
#namecost("SUNSTAFF", "")

Sunstaffs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/24\"", "4", "Armour Piercing (2), Magical Attacks, Quick to Fire"))
#namecost("AMULET OF THE MOON", "")

All missile and close combat attacks targeting a model with an Amulet of the Moon suffer \-1 to Hit.

#namecost("ENCHANTED CHARMS", "")

A model with Enchanted Charms has the Magical Ward (6+) and Magic Resistance (1) special rules.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Amazons. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("STAR SWORD", "60 points")

The Star Sword gives the wielder the Always Strikes First, Ignores Armour saves, and Parry (6+) special rules.

#namecost("ARC CLAWS", "40 points")

Two hand weapons. Attacks made with the Arc Claws have the Lightning Attacks special rule, and the wielder may reroll any failed To Wound rolls in close combat.

#namecost("HAND OF RIGG", "40 points")

All attacks made with the Hand of Rigg are resolved at Strength 8 and have the Always Strikes Last special rule.

#namecost("BRIGHT STAFF", "30 points")

Sunstaff. The Bright Staff has a range of 30" and the Multiple Shots (D6) special rule.

#namecost("JAGUAR MACE", "25 points")

The wielder gains the Armour Piercing (1) special rule, and enemies attacking the wielder in close combat suffer \-1 To Hit.

#namecost("SKYPIERCER", "25 points")

Bow. All shots from Skypiercer are resolved at Strength 5 with the Flaming Attacks special rule. Each shot penetrates ranks like a bolt thrower, but does not suffer any Strength penalties for each rank.

#namecost("METEOR SPEAR", "25 points")

Light lance/spear. Attacks made with the Meteor Spear have the Flaming Attacks special rule. When charging, all attacks made with it have +1 Strength with the Armour Piercing (1) and Multiple Wounds (D3) special rules.

#namecost("ROAR OF CHOTEC", "25 points")

Sun Gauntlet. Shots from the Roar of Chotec have Strength 6. When firing the Roar of Chotec, you may choose to overcharge it, making the shot have Strength 7 and the Multiple Wounds (2) special rule. If you do so, on a To Hit roll of 1 the wielder suffers one automatic hit from the weapon, using the normal profile, even if you can reroll the initial To Hit roll of 1.

#namecost("MOONBLADE", "20 points")

Additional hand weapon. This weapon gives the wielder the Parry (6+) special rule. In addition, for every successful Parry save they make, the model that struck the blow suffers a Strength 4 Hit.

#entry("MAGIC ARMOUR")
#namecost("SHIELD OF FEATHER IRON", "40 points")

Shield. All enemy units in base contact with the bearer are subject to the Always Strikes Last special rule.

#namecost("CRYSTALLINE ARMOUR", "30 points")

Light armour. For every spell successfully cast upon the bearer or the unit they are with, the Amazon player gains an additional Power Dice or Dispel dice to their current pool.

#namecost("ARMOUR OF THE SWAMP DRAKE", "10 points")

Light armour. The wearer gains the Aquatic and Natural Armour (6+) special rule.

#entry("TALISMANS")
#namecost("MAGIC FEATHERS OF NATALINA", "45 points")

Enemies must re-roll successful rolls To Hit in close combat and with missile weapons against the wearer. In addition, they gain a Magical Ward (6+).

#namecost("ASPECT OF AXLBERYN", "40 points")

Model on foot only. The wearer gains Ethereal special rules, but cannot join any units.

#namecost("SHIELD AMULET", "40 points")

For every Wound the wearer suffers, roll a D6. If this number is equal to or higher than the Strength of the Attack, the Wound is nullified.

#namecost("SIGN OF POTEC", "30 points")

The wearer has Magic Resistance (1) special rule. Additionally, models with the Daemonic, Undead and Vampiric special rules must reroll successful To Hit rolls made against the wearer in close combat.

#namecost("MIRAGE OF AMAXONIA", "20 points")

The wearer gains Dodge (5+) special rule.

#namecost("ITZL'S BEAST-WARD", "15 points")

Any unit containing Warbeasts, Monstrous Beasts, Monsters, Cavalry, Monstrous Cavalry and Chariots that wants to declare a charge at the character bearing this amulet or their unit must first pass a Leadership test. If failed, the unit may choose a different target for their charge or to not make a charge.

#entry("ARCANE ITEMS")
#namecost("BRIGHT WAND OF XOLOC", "35 points")

Bound Spell (Level 3, cast on 10+). The Bright Wand of Xoloc contains a *magic missile* with a range of 24" that is resolved like a hit from a bolt thrower with the Flaming Attacks special rule.

#namecost("LOCKET OF RIGG", "35 points")

Bound Spell. This item contains a random spell from the Lore of Light (Level 1\-2). At the start of the game, roll a D6 to determine which spell the result correspond to – you may replace the rolled spell with _Shem's Burning Gaze_ if you wish.

#namecost("THE COBRA STAFF", "30 points")

Bound Spell (Level 2, cast on 7+). The Cobra Staff contains a *magic missile* with a range of 18" that causes 2D6 hits. These hits always Wound on a 4+ with the Armour Piercing (2) special rule.

#namecost("TIARA OF SERENA", "20 points")

The bearer may attempt to cast the same spell twice in each Magic phase if the first attempt was either unsuccessful or dispelled.

#entry("ENCHANTED ITEMS")
#namecost("ELIXIR OF LIFE", "50 points")

The bearer of the Elixir of Life gains the Regeneration (6+) special rule, and automatically heals one Wound suffered earlier in the game at the start of each turn.

#namecost("FIERY WINGS", "30 points")

Model on foot only. The wearer has the Fly (10) and Impact Hits (1) special rules.

#namecost("PLAQUE OF THE OLD ONES", "25 points")

The bearer becomes a Level 1 Wizard who can use any of the eight Winds of Magic from the _Warhammer Rulebook_. However, they do not get any bonus to casting or dispelling and cannot channel dice.

#namecost("BLUE STUMP BREW", "20 points")

One use only. The brew may be drunk at any time. Roll a D6; this is the number of points the character may increase her characteristics by. She may freely divide them between several different characteristics if she wishes. The effects of the brew last until the start of the character’s next turn.

#namecost("EYE OF TZCALLI", "20 points")

The bearer gains the Sniper special rule.

#namecost("EMERALD OF THE MOON", "15 points")

The bearer gains the Armour Piercing (1) and Poisoned Attacks special rules.

#namecost("AUGUR SKULL", "10 points")

Enemy units deploying with the Scout special rule cannot be set up closer than 18" away from the bearer of this item.

#namecost("DEATH WHISTLE", "10 points")

Any enemy unit that is charged by the bearer of this item must take a Terror test.

#namecost("STATUE OF SOTEK", "10 points")

All Skink units in base contact with the bearer are subject to the Always Strikes Last and Hatred special rules.

#namecost("WARRIOR'S SUN RING", "10 points")

The bearer can reroll one failed To Wound roll in each of their combat phases.

#namecost("HUANCHI'S JAGUAR HEADDRESS", "5 points")

Infantry or Cavalry only. The wearer gains the Ambushers special rule.

#entry("MAGIC STANDARDS")
#namecost("BANNER OF THE FIRST QUEEN", "55 points")

The range of the bearer’s Hold Your Ground special rule is increased by 6". Additionally, the bearer of this standard and any unit accompanying them has the Strider special rule and are Stubborn in the first round of close combat.

#namecost("JAGUAR STANDARD", "45 points")

The unit carrying the Jaguar Standard gain the Strength Bonus (1) special rule and have the Cold-blooded special rule when taking Break Tests.

#namecost("EAGLE BANNER", "40 points")

The unit carrying this standard gains the Swiftstride special rule and may reroll any 1's for their Charge distance roll.

#namecost("PIRANHA TOTEM", "30 points")

The unit carrying this standard gains the Killing Blow special rule.

#namecost("PENNANT OF SERENA", "25 points")

The unit carrying this standard automatically passes Leadership tests to disengage from combat when using Guerrilla Warfare, and may choose to move normally in the Remaining Moves phase after rallying, even if they are not Skirmishers or Fast Cavalry.

#namecost("TAPESTRY OF INHAMEX", "15 points")

If a friendly unit within 6" is destroyed or involuntarily flees, the unit carrying this standard may re-roll 1's when rolling To Hit and To Wound in their next close combat phase.

= CHARACTERS

#entry("MATRIACHS", first: true)
#profile(
  (name: "Matriarch", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
  (name: "Mistress", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")
#field("OPTIONS", "")

- May choose one of the following:
  - Spear +3 points
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
  - Claw of the Old Ones +25 points
- May choose one of the following:
  - Shortbow +4 points
  - Javelins +5 points
  - Sun Gauntlet +10 points
  - Sunstaff +10 points
- May take light armour +3 points
- May take a shield +5 points
- May take an Amulet of the Moon +25 points
- May take Enchanted Charms +15 points
- May take Koka +10 points
- May be mounted on one of the following:
  - Jaguar +15 points
  - Culchan +20 points
  - Cold One +25 points
  - Terradon +35 points
  - Stegadon (Matriarch only, replacing one of the crew) +215 points
  - Great Wyrm (Matriarch only) +260 points
- One Mistress may carry the Battle Standard +25 points
- A Mistress may take Magic Items up to a total of 50 points
- A Matriarch may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("SERPENT PRIESTESSES")
#profile(
  (name: "Serpent High Priestess", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Serpent Priestess", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Serpent Priestess is a Level 1 Wizard. A Serpent High Priestess is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Death
- Heavens
- Fire
- Life
- Light
- Metal
- Shadow

#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take a Claw of the Old Ones +10 points
- May choose one of the following:
  - Sun Gauntlet +8 points
  - Sunstaff +8 points
- May take an Amulet of the Moon +25 points
- May take Enchanted Charms +15 points
- May take Koka +5 points
- May be mounted on one of the following:
  - Jaguar +15 points
  - Culchan +20 points
  - Cold One +25 points
  - Terradon +35 points
  - Stegadon (High Priestess only, replacing one of the crew) +215 points
  - Great Wyrm (High Priestess only) +260 points
- A Serpent Priestess may take Magic Items up to a total of 50 points
- A Serpent High Priestess may take Magic Items up to a total of 100 points

= CHARACTER MOUNTS

#compact-entry("JAGUAR")[
#profile(
  (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Feline)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Forest Strider, Mighty Blow (1)")
]

#compact-entry("CULCHAN")[
#profile(
  (name: "Culchan", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Phorusrhacid)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Armour Piercing (1), Forest Strider")
]

#compact-entry("COLD ONE")[
#profile(
  (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Saurian)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fear, Forest Strider, Natural Armour (6+), Stupidity")
]

#entry("TERRADON")
#profile(
  (name: "Terradon", m: 2, ws: 3, bs: 0, s: 4, t: 3, w: 2, i: 2, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Saurian)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fear, Fly (9), Forest Strider")

- *Drop Rocks:* Once per game, during the Remaining Moves sub-phase, models with this special rule may drop rocks unless they are fleeing or have declared a charge that turn. All models in a unit must drop rocks at the same time. To drop rocks, select one unengaged enemy unit that the Terradons moved over in that turn. That target immediately suffers D3 Strength 4 hits for each Terradon in the unit, distributed as for shooting attacks.

#compact-entry("GREAT WYRM")[
#profile(
  (name: "Great Wyrm", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monster (Ophidian)")
#field("BASE SIZE", "50x100 or 100x150")
#field("SPECIAL RULES", "Fly (7), Natural Armour (4+)")
]

= CORE UNITS

#entry("WARRIORS", first: true)
#profile(
  (name: "Warrior", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ARCHERS")
#profile(
  (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")
#field("OPTIONS", "")

- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SKIRMISHERS")
#profile(
  (name: "Skirmisher", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, javelins")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Skirmishers")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace javelins with slings free
  - Replace javelins with blowpipes free
  - Upgrade javelins to have Poisoned Attacks +2 points/model
- May take shields (unless armed with blowpipes) +1 point/model
- May upgrade one Skirmisher to a Leader +5 points
- May upgrade one Skirmisher to a Musician +5 points

#entry("HUNTRESSES")
#profile(
  (name: "Huntress", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
  (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Jaguar (Feline)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Light lance")
#field("SPECIAL RULES", "Fast Cavalry, Forest Strider, Guerrilla Warfare, Mighty Blow (1) (Jaguar only), Sacrificial")

*Hunt*

#field("OPTIONS", "")

- May replace light lances with one of the following:
  - Shortbows free
  - Javelins +1 point/model
- May take shields (unless armed with shortbows) +1 point/model
- May upgrade one Huntress to a Leader +5 points
- May upgrade one Huntress to a Musician +5 points
- May upgrade one Huntress to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("JAGUAR HUNTING PACK")
#profile(
  (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 7),
  (name: "Beastmistress", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "War Beast (Feline)")
#field("HANDLER", "Beastmistress (Human)")
#field("BASE SIZE", "25x25 or 25x50 (Jaguar), 20x20 or 25x25 (Beastmistress)")
#field("EQUIPMENT", "Two hand weapons (Beastmistress only)")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare (Beastmistress only), Mighty Blow (1), Mixed Unit, Skirmishers")
#field("NOTES", "")

- One Beastmistress must be included for every five Jaguars in the unit.

#compact-entry("SNAKE SWARMS")[
#profile(
  (name: "Snake Swarm", m: 5, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 1, a: 6, ld: 3, points: 30),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Swarm (Ophidian)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Aquatic, Cold-Blooded, Poisoned Attacks")
]

= SPECIAL UNITS

#entry("PIRANHA WARRIORS", first: true)
#profile(
  (name: "Piranha Warrior", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, javelins")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Skirmishers")
#field("OPTIONS", "")

- May choose one of the following:
  - Upgrade javelins to have Poisoned Attacks +2 points/model
  - Replace javelins with Sun Gauntlets +2 points/model
- May take shields +1 point/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Piranha Warrior to a Leader +5 points
- May upgrade one Piranha Warrior to a Musician +5 points
- May upgrade one Piranha Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("EAGLE WARRIORS")
#profile(
  (name: "Eagle Warrior", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, shield")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Immunity (Psychology), Sacrificial Hunt, Vanguard")
#field("OPTIONS", "")

- May replace spears with Sunstaffs +6 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Eagle Warrior to a Leader +5 points
- May upgrade one Eagle Warrior to a Musician +5 points
- May upgrade one Eagle Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("JAGUAR WARRIORS")
#profile(
  (name: "Jaguar Warrior", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Ambushers, Forest Strider, Guerrilla Warfare, Mighty Blow (1), Sacrificial Hunt")
#field("OPTIONS", "")

- May choose one of the following:
  - Claws of the Old Ones +3 points/model
  - Replace shields with paired Claws of the Old Ones +3 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Jaguar Warrior to a Leader +5 points
- May upgrade one Jaguar Warrior to a Musician +5 points
- May upgrade one Jaguar Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("PYTHON WARRIORS")
#profile(
  (name: "Python Warrior", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 12),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Poisoned Attacks, Rapid Fire, Sacrificial Hunt, Scouts, Skirmishers")
#field("OPTIONS", "")

- May take additional hand weapons +1 point/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Python Warrior to a Leader +5 points
- May upgrade one Python Warrior to a Musician +5 points

#entry("CULCHAN RIDERS")
#profile(
  (name: "Culchan Rider", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 17),
  (name: "Culchan", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Culchan (Phorusrhacid)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Light lance, shield")
#field("SPECIAL RULES", "Armour Piercing (1) (Culchan only), Fast Cavalry, Forest Strider, Guerrilla Warfare, Sacrificial Hunt")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace light lances & shields with shortbows free
  - Replace light lances with javelins +2 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Culchan Rider to a Leader +5 points
- May upgrade one Culchan Rider to a Musician +5 points
- May upgrade one Culchan Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("COLD ONE RIDERS")
#profile(
  (name: "Noblewoman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 20),
  (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("BASE SIZE", "25x50")
#field("MOUNT", "Cold One (Saurian)")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Fear, Forest Strider, Guerrilla Warfare, Natural Armour (6+), Sacrificial Hunt, Stupidity")
#field("OPTIONS", "")

- May take light lances +1 point/model
- May take light armour +1.5 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Noblewoman to a Leader +5 points
- May upgrade one Noblewoman to a Musician +5 points
- May upgrade one Noblewoman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("TERRADON RIDERS")
#profile(
  (name: "Terradon Rider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 27),
  (name: "Terradon", m: 2, ws: 3, bs: 0, s: 4, t: 3, w: 2, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Terradon (Saurian)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapons")
#field("SPECIAL RULES", "Fast Cavalry, Fear, Fly (9), Forest Strider, Guerrilla Warfare, Sacrificial Hunt")

- *Drop Rocks:* Once per game, during the Remaining Moves sub-phase, models with this special rule may drop rocks unless they are fleeing or have declared a charge that turn. All models in a unit must drop rocks at the same time. To drop rocks, select one unengaged enemy unit that the Terradons moved over in that turn. That target immediately suffers D3 Strength 4 hits for each Terradon in the unit, distributed as for shooting attacks.

#field("OPTIONS", "")

- May choose one of the following:
  - Light lances +1 point/model
  - Shortbows +1 point/model
  - Javelins +2 points/model
- May take shields +2 points/model
- May upgrade one Terradon Rider to a Leader +5 points

#entry("GOROLS")
#profile(
  (name: "Gorol", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 6, points: 30),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Hominid)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Forest Strider")
#field("OPTIONS", "")

- May take great weapons +6 points/model
- May take light armour +3 points/model
- May upgrade one Gorol to a Leader +5 points

= RARE UNITS

#entry("SERPENT GUARD", first: true)
#profile(
  (name: "Serpent Guard", m: 4, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 12),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, light armour, shield")
#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Stubborn")
#field("OPTIONS", "")

- May replace polearms with Claws of the Old Ones +2 points/model
- May choose one of the following:
  - Sun Gauntlets +3 points/model
  - Sunstaffs +5 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Serpent Guard to a Leader +5 points
- May upgrade one Serpent Guard to a Musician +5 points
- May upgrade one Serpent Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("BOLT THROWER")
#profile(
  (name: "Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 35),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x50 (Bolt Thrower), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, bolt thrower")
#field("NOTES", "")

- You may take 1\-2 Bolt Throwers as a single Rare choice.

#entry("ANCIENT SENTINELS")
#profile(
  (name: "Ancient Sentinel", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 10, points: 50),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Animated Construct)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Animated Construct, Magical Attacks, Magic Resistance (2), Natural Armour (4+)")
#field("OPTIONS", "")

- May take great weapons +6 points/model

#entry("STEGADON")
#profile(
  (name: "Stegadon", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 5, i: 2, a: 4, ld: 6, points: 215),
  (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Saurian)")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Giant Bow (Stegadon only), javelins (Crew only)")

- *Giant Bow:* Instead of firing another missile weapon in the Shooting phase, one of the Crew may fire the giant bow. This is a bolt thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "Cumbersome, Multiple Wounds (D3)"))
#field("SPECIAL RULES", "Cold-Blooded, Sacrificial Hunt, Immunity (Psychology), Impact Hits (D6+1), Natural")

*Armour (4+), Stubborn*

#field("UPGRADES", "")

- *Gyroscope of Eternal Radiance:* Arcane Item. Bound spell (Level 3, cast on 9+). This is an *augment* spell with a range of 12". The target unit immediately makes a move with the Fly (10) special rule as if it were the Remaining Moves sub-phase.
- *Sharpened Horns:* The Stegadon's its Impact Hits gains the Multiple Wounds (D3) special rule.
- *Unstoppable Stampede:* The Stegadon gains the Devastating Charge special rule.

#field("OPTIONS", "")

- May replace javelins with bows free
- May replace giant bow with a Gyroscope of Eternal Radiance +20 points
- May choose any of the following:
  - Unstoppable Stampede +10 points
  - Sharpened Horns +20 points

#entry("AMAXON SWAMP PYTHON")
#profile(
  (name: "Amaxon Swamp Python", m: 8, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 4, a: 5, ld: 7, points: 210),
)
#field("TROOP TYPE", "Monster (Ophidian)")
#field("BASE SIZE", "50x100, 60x100 or 100x100")
#field("SPECIAL RULES", "Aquatic, Cold-Blooded, Natural Armour (4+)")

- *Constrict:* This is a special attack that can be used instead of Stomp (even against units that are normally immune to Stomp). Choose one model in base contact. The model must pass a Toughness test or suffer D6 Wounds which Ignores Armour saves.

#entry("AVATAR OF RIGG")
#profile(
  (name: "Avatar of Rigg", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 4, i: 6, a: 5, ld: 10, points: 260),
)
#field("TROOP TYPE", "Monstrous Infantry (Deity)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Magical Attacks, Magical Ward (4+), Terror, Unstable")

- *Blessings of Rigg:* At the start of the Amazon turn, the Avatar of Rigg may choose one of the following Blessings to bestow. Each blessing affects all friendly Human units within 12", and lasts until the start of the next Amazon turn.
  - *Blood:* The units gain the Hatred special rule.
  - *Violent Death:* The units gain the Killing blow special rule.
  - *Warfare:* The units may re-roll all failed charge distances.

#field("NOTES", "")

- You may only have one Avatar of Rigg included in your army.

= SPECIAL CHARACTERS

#entry("THALESTRIS", first: true)
#namecost("Queen of the Amazons", "")
#profile(
  (name: "Thalestris", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 300),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Sword of Rigg:* Magic Weapon. All attacks with this sword have the Ignore Armour saves and Multiple Wounds (D3) special rules. If the opponent carries a magic weapon, roll a D6 for each hit caused by the sword. On a 4+, the enemy’s magic weapon is destroyed.
- *Crown of the Amazon Queen:* Talisman. The crown gives the wearer a Magical Ward (4+).
- *Pendant of Delmair:* Enchanted Item. If the wearer loses a round of combat they may choose to transform into a were-jaguar for the duration of the next turn. While in were-jaguar form the wearer's Strength and Toughness are increased by 1 and they gain the Fear, Hatred and Frenzy special rules. However, they cannot use any weapon or shield while in this form.

#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")

- *Queen of the Amazons:* Thalestris, and all friendly Amazon units within 12" her gain the Immunity (Psychology) special rule. However, if she is removed as a casualty, all Amazon break tests are taken at \-1 for the rest of the game.

#field("OPTIONS", "")

- May take a shortbow +4 points
- May take a shield +5 points

#entry("AZURA")
#namecost("The Ice Maiden", "")
#profile(
  (name: "Azura", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Azure Fire:* Magic Weapon. Claw of the Old Ones. Enemies attacking the wielder in close combat suffer \-1 to Hit. In the shooting phase, Azure Fire follows the rules for Sunstaffs with Strength 5 and Multiple Shots (D3) special rules.
- *The Talisman of Rendar:* Talisman. The Talisman of Rendar gives the wearer a Magical Ward (5+) and the Immunity (Flaming Attacks) special rule.

#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Immunity (Psychology), Sacrificial Hunt")

- *Mesmerising Dance:* All models in base contact with Azura must take a Psychology test at the start of each close combat phase. If they fail they cannot attack this round.

#entry("MELANDRA HAWKEYE")
#namecost("The Adventuress", "")
#profile(
  (name: "Melandra Hawkeye", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 125),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Bow, Amulet of the Moon")
#field("MAGIC ITEMS", "")

- *Blade of the Hawk:* Magic Weapon. This blade gives the wielder +1 Attack and +1 to Hit.
- *Pendant of the Old Ones:* Enchanted Item. Unless the model has charged or is fleeing, they may teleport anywhere on the battlefield (facing any direction) in the Remaining Moves sub-phase instead of moving, but they may not be placed within 1" of enemy models.

#field("SPECIAL RULES", "Dodge (5+), Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Scouts")

- *Evasion:* At the end of each combat Melandra is in, before Break tests are taken, she may choose to move out of combat. Place her anywhere within 1" of the enemy unit she was fighting. She may move as normal in her next turn.

#entry("PENTHESILEA")
#namecost("The Mark of the Serpent", "")
#profile(
  (name: "Penthesilea", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 150),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon.")
#field("MAGIC ITEMS", "")

- *Throatcutter:* Magic Weapon. Additional hand weapon. This dagger gives the wielder the Poisoned Attacks and Killing Blow special rules.

#field("SPECIAL RULES", "Forest Strider, Frenzy, Hatred, Guerrilla Warfare, Sacrificial Hunt")

- *Mark of the Serpent:* Penthesilea has the Always Strike First rule. Enemy models attacking her must re-roll successful rolls to Hit in Close Combat.

#entry("LYSIPPE")
#namecost("The Mounted Avenger", "")
#profile(
  (name: "Lysippe", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 130),
  (name: "Blackfang", m: 8, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 2, ld: 7, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC ITEMS", "")

- *Lizard Bane:* Magic Weapon. Light lance. All attacks with this weapon always Hit on a 2+. Against Lizardmen, it always Wounds on at least a 3+.
- *Lysippe's Horned Helmet:* Magic Armour. This helmet gives Lysippe a 6+ armour save. In addition, she becomes subject to Frenzy.

#field("SPECIAL RULES", "Fast Cavalry, Forest Strider, Guerrilla Warfare, Hatred (Lizardmen), Mighty Blow (1)")

(Blackfang only)*, Sacrificial Hunt*

- *Lysippe's War Cry:* Whenever Lysippe charges, she causes Fear. In addition, any unit charged suffers \-1 to their Weapon Skill and Ballistic Skill when being charged by her. This has no effect on models with Immunity (Fear).

#entry("LWAXANA")
#namecost("Curse Witch of Blue Stumps", "")
#profile(
  (name: "Lwaxana", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 305),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Lwaxana is a Level 4 Wizard who uses one of the following Lores of Magic:")

- Death
- Shadow

#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *Blue Nightshade Dagger:* Magic Weapon. All close combat attacks with this dagger have the Poisoned Attacks special rule. In addition, these attacks automatically Wound on a To Hit roll of 5+.
- *Staff of Retribution:* Arcane Item. Bound Spell (Level 2, cast on 7+). The Staff of Retribution contains a *magic missile* with a range of 24" that causes D6 Strength 5 hits. Roll a D6 each time the Staff has been used. On a roll of a 1, the staff can no longer be used for the rest of the battle.
- *Voodoo Dolls:* Enchanted Item. Instead of attacking normally, the bearer may nominate a single enemy model in base contact and make a To Hit roll. If successful, that model is marked. At the start of each of the bearer’s Magic phases, the marked model must take a Strength test. If failed, it suffers D3 Wounds with no saves of any kind allowed.
- *Amulet of the Great Toad:* Talisman. Any spell cast at the wearer of this Amulet or any unit they are with is automatically dispelled on a 4+. Roll before making any normal dispel attempt.

#field("SPECIAL RULES", "Forest Strider, Guerrilla Warfare, Sacrificial Hunt")

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Antti Sinivuori", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
