// Norsca 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "norsca",
  army: "Norsca",
  version: "3.0",
  layout: "army",
  cover: "covers/norsca.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Norsca 3.0")

#cover(
  title: "Norsca",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/norsca.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Norsca*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Norscan army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Norscan units, and these are detailed here.

#namecost("BLOOD RAGE", "")

Whenever a model with this special rule makes a successful charge (including Counter-Charge, Pursuit and Overrun), they are subject to Frenzy in the following round of close combat and count each of their ranks as double for the purpose of Steadfast.

#namecost("FUR CLOAK", "")

A fur cloak gives the wearer the Natural Armour (6+) special rule against missile attacks.

= SAGAS

*Certain characters in the Norscan army can choose one of the Sagas on this page, as detailed in the army list. No Saga may be taken more than once per army (excluding Special Characters).*

#namecost("SAGA OF THE FEARLESS LEADER", "35 points")

The character and any unit they are with have the Cold- Blooded special rule.

#namecost("SAGA OF THE EVER-VIGILANT", "30 points")

Model on foot with shield only. The character gains the Parry (6+) special rule, and enemies suffer \-1 To Hit the model in close combat.

#namecost("SAGA OF THE RELENTLESS", "")
#namecost("WARRIOR", "30 points")

The character gains +1 Attack for every enemy model in base contact with them when it is their turn to strike, up to a maximum of +3.

#namecost("SAGA OF THE SHINING HERO", "25 points")

The model gains the Inspiring Presence (6) special rule.

#namecost("SAGA OF THE BEASTSLAYER", "20 points")

The model gains Immunity (Terror). In addition, they gain +1 To Hit and To Wound when fighting War Beasts, Monstrous Beasts or Monsters in close combat.

#namecost("SAGA OF THE ETERNAL WARRIOR", "20 points")

Once this model is reduced to 0 Wounds, roll a D6; on a 4+ the model remains fighting with 1 Wound. This has no effect against Killing Blow or other attacks that would instantly kill the model.

#namecost("SAGA OF THE GLORIOUS HUNTER", "15 points")

Model on foot only. After deployment, but before the first turn begins, select a single character or monster in your opponent’s army. This is the character’s primary quarry. The character may re-roll all failed To Hit and To Wound rolls against his primary quarry in close combat and with missile attacks.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Norscans. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("KAOSFAENIR", "60 points")

Great Weapon. No Magical Ward saves may be taken against wounds caused by Kaosfaenir. In addition, for each unsaved Wound a model suffers from this weapon, they must pass a Strength test or be instantly slain.

#namecost("THE SWAYING SPEAR", "55 points")

Spear/javelin. All close combat and missile attacks made with the Swaying Spear Hit always Hit on a 2+ and have the Heroic Killing Blow special rule.

#namecost("THE CRUSHER", "50 points")

Attacks made with the Crusher have the Lightning Attacks and Multiple Wounds (D6) special rules.

#namecost("SKAR'S KRAKEN-KILLER", "40 points")

This weapon gives the wielder the Armour Piercing (3) special rule. In addition; once per game, at the start of any round of close combat, the bearer can choose to ignore all damage suffered for the duration of this close combat phase, as long as they do not flee from combat.

#namecost("TYRFANG", "40 points")

Tyrfang gives it wielder +1 To Hit in close combat, and the Ignores Armour Saves and Flaming Attacks special rules. If the wielder does not kill at least one opponent in each round of close combat he is in, they suffer 1 Wound which Ignores Armour saves and Regeneration saves as the sword strikes its wielder instead.

#namecost("NAEGLING", "30 points")

The wielder of Naegling gains the Mighty Blow (2) special rule and gains +2 Attacks in the first round of Combat.

#namecost("FLAMING AXE OF CORMAC", "25 points")

This weapon gives the wielder +1 Strength, +1 Attack and the Flaming Attacks special rule. However, if they ever flee during the battle, the weapon loses all its effects.

#namecost("CHIEFTAIN'S BLADE", "20 points")

This weapon gives the wielder +1 Strength. In addition, they gain +1 To Hit while fighting in a challenge.

#namecost("GARMR & GORMR", "20 points")

Two hand weapons. One enemy model of your choice in base contact with the wielder loses 1 Attack. In addition, a challenge issued by the wielder cannot be refused.

#namecost("SWORD OF RAGE", "20 points")

This weapon gives the wielder the Frenzy special rule. For every natural 6 when rolling To Hit, the wielder may immediately make an additional Attack.

#namecost("ARMOUR-RIPPER OF SKORLM", "15 points")

Great weapon. Enemies wounded by this weapon must re-roll successful armour saves.

#namecost("TROLL-FANG DAGGER", "15 points")

Additional hand weapon. The wielder gains the Poisoned Attacks special rule.

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF BEOWULF", "50 points")

Medium armour. The wearer of this armour gains +1 Wound and the Regeneration (4+) special rule

#namecost("BERSERKER HELM", "45 points")

Model on foot only. This armour gives the wearer a 6+ armour save and the Frenzy special rule. In additional, enemy models must re-roll successful To Wound rolls against them.

#namecost("ANCIENT FROST-WYRM SCALE", "40 points")

Medium armour. The wearer of this armour gains the Ice Attacks special rule.

#runin[MIGHTY SERPENT]'#runin[S SCALEMAIL 35 points] Medium armour. The wearer of this armour gains the Always Strike First special rule.

#namecost("GJERMUNDBU MAIL SHIRT", "30 points")

Model on foot only. Light armour. All attacks against the wearer of this armour cannot exceed Strength 4, any excess Strength is Ignored.

#namecost("HUSKARL PLATES", "30 points")

Medium armour. The wearer of this armour gains +1 Toughness.

#namecost("SHIELD OF SVALINN", "20 points")

Shield. For each successful armour save or Parry save roll of a natural 6 that the bearer makes, all models attacking suffer \-1 To Hit until the end of the next turn. In addition, the bearer gains the Immunity (Flaming Attacks) special rule.

#namecost("REAVER'S HELM", "15 points")

Model on foot only. This armour gives the wearer a 6+ armour save and the Ambushers special rule. In addition, any enemy unit that gets destroyed by them in close combat or from pursuit is worth +100 Victory Points.

#entry("TALISMANS")
#namecost("THE GLEAMING TORC", "30 points")

A model equipped with the Gleaming Torc adds +1 to their leadership. In addition, all enemy models in base contact with the wearer must pass a Leadership test at the start of each close combat phase. If failed, they will be unable to attack this turn.

#namecost("TALISMAN OF THE CARRION CROW", "30 points")

The bearer of the Talisman of the Carrion Crow has the Regeneration (5+) and Poisoned Attacks special rules.

#namecost("TALISMAN OF THE SOARING EAGLE", "20 points")

The bearer of the Talisman of the Soaring Eagle has the Magic Resistance (2) special rule. In addition, the bearer has a 5+ invulnerable save against Magical Attacks.

#runin[IDUNN]'#runin[S APPLE 15 points] The bearer gains the Regeneration (4+) special rule. If owner rolls a 1 when making their Regeneration save, they lose this special rule for the remainder of the game.

#entry("ARCANE ITEMS")
#namecost("THE WEB OF WYRD", "25 points")

Relic. The Wizard may re-roll any single D6 when casting or dispelling once per turn.

#namecost("BONE OF ULLR", "10 points")

Relic. At the start of each of your Magic phases, choose any of the eight Winds of Magic and roll 2D6; the result is the spell they receive and may use for the remainder of this Magic phase, even if this spell would normally be unavailable to them.

#namecost("HENBANE POTION", "10 points")

Charm. One use only. The Wizard may use this item at the start of any Magic phase. To do so, roll a D6; on a 2+, they gain D3 Power or Dispel dice. If a 1 is rolled, they lose one Wound with no saves allowed.

#entry("ENCHANTED ITEMS")
#namecost("GIRDLE OF MIGHT", "50 points")

The Girdle of Might doubles the Strength characteristic of anyone wearing it.

#namecost("THE HOLLERING HORN", "50 points")

One use only. The Horn can be used at the start of any of your turns. When the Horn is sounded, all enemy units within 12" must take an immediate Panic test. After this, all friendly units with the Blood Rage special rule within 12" will move towards the nearest foe using the Random Movement (D6) rule.

#namecost("HRUNGNIR'S HEART", "25 points")

This item can be used at the start of each round of close combat. Take a Leadership test; if successful the bearer and all models in their unit gain +1 To Hit this turn. Alternatively, you can force one enemy unit in base contact to take a Leadership test; if failed that unit suffer \-1 To Hit this turn.

#namecost("VEGVISIR", "25 points")

The bearer and any unit they join may re-roll failed charge and pursuit distances.

#namecost("VIAL OF TROLL BLOOD", "15 points")

One use only. This item may be used at the start of any round of close combat. The bearer gains the Unbreakable special rule for the duration of the turn. If they are in a unit, the unit may still break and flee as normal, while the model remains in combat.

#namecost("WOLF-TEETH AMULET", "5 points")

The model gains the Devastating Charge special rule. However, they must always pursue a fleeing enemy.

#entry("MAGIC STANDARDS")
#namecost("RAVEN BANNER", "50 points")

All friendly units within 12" of this standard gain the Immunity (Fear/Panic) special rule.

#namecost("SKALLAGRIM'S BANNER", "30 points")

The unit carrying this standard gains the Mighty Blow (1) special rule when charging or counter-charging. In addition, enemy units cannot get the Outnumber bonus against them.

#namecost("BANNER OF THE VALKYRIE", "25 points")

Infantry only. Bound Spell (Level 3, cast on 9+). This item contains a *conveyance* spell that targets the unit carrying this standard. The unit may immediately make a Fly (10) move as if it were the Remaining Moves sub-phase.

#runin[SEA RAIDER]'#runin[S CREST 25 points] Reavers only. The unit carrying this standard gains the the Fear special rule. If the unit charges an enemy unit into their flank or rear, it gains the Terror special rule against their target for the duration of the turn.

#namecost("BANNER OF THE BAYING HOUND", "15 points")

The unit carrying this standard gains the Vanguard special rule.

= CHARACTERS

#entry("WARLEADERS", first: true)
#profile(
  (name: "Jarl", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 95),
  (name: "Hersir", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Blood Rage")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Flail +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Javelins +6 points
  - Throwing axes +6 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May take a fur cloak +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - War Wolf Chariot (replacing one of the crew) +70 points
  - War Mammoth (Jarl only, replacing one of the crew) +325 points
- One Hersir may carry the Battle Standard +25 points
- A Hersir may take one Saga and/or Magic Items up to a total of 50 points
- A Jarl may take one Saga and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("SHAMANS")
#profile(
  (name: "Vitki", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Seer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Seer is a Level 1 Wizard. A Vitki is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Death
- Fire
- Heavens
- Shadow

#field("SPECIAL RULES", "Blood Rage")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take a fur cloak +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - War Wolf Chariot (replacing one of the crew) +70 points
- May take Magic Items up to a total of 100 points
- A Seer may take Magic Items up to a total of 50 points
- A Vitki may take Magic Items up to a total of 100 points

#entry("SKALD")
#profile(
  (name: "Skald", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Blood Rage")

- *Skald:* A Skald knows the three songs listed below. He may choose to use one of them at the start of each round of close combat.
  - *The Ballad of Three Heroes:* All models in the unit gain +1 Attack for the duration of this turn.
  - *The Tale of Beowulf:* All models in the unit gain the Stubborn special rule for the duration of this turn. If they are already Stubborn, they gain the Unbreakable special rule for the duration of this turn instead.
  - *The War Chant of Hunlaf:* All models in the unit gain +1 To Wound in close combat for the duration of this turn.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Javelins +5 points
  - Throwing axes +5 points
- May take light armour +3 points
- May take a fur cloak +3 points
- One Skald may carry the Battle Standard +25 points
- May be mounted on a Warhorse +12 points
- May take one Saga and/or Magic Items up to a total of 50 points

#field("NOTES", "")

- A Skald may never be the Army General.
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("BEASTMASTER")
#profile(
  (name: "Beastmaster", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 40),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Blood Rage")

- *Beastmaster:* A Beastmaster may only join units of War Wolves, Ice Wolves or Snow Trolls, following the rules for Mixed Units. All War Wolves, Ice Wolves or Snow Trolls joined by a Beastmaster gain the Devastating Charge special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
- May choose one of the following:
  - Javelins +5 points
  - Throwing axes +5 points
- May take a fur cloak +3 points
- May take Magic Items up to a total of 25 points

#field("NOTES", "")

- A Beastmaster may never be the Army General.

#entry("VALKYRIE")
#profile(
  (name: "Valkyrie", m: 4, ws: 7, bs: 4, s: 4, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Blood Rage, Fly (10), Immunity (Psychology), Independent, Inspiring Presence (6)")
#field("OPTIONS", "")

- May take a spear +2 points
- May take light armour +3 points
- May take a shield +5 points
- May take a fur cloak +3 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- A Valkyrie may never be the Army General.

#entry("ULFJARL")
#profile(
  (name: "Ulfjarl", m: 7, ws: 6, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: 165),
)
#field("TROOP TYPE", "Monstrous Infantry (Character, Werecreature)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Counter-charge, Frenzy, Hidden, Regeneration (5+)")
#field("OPTIONS", "")

- May take Talismans up to a total of 50 points

#field("NOTES", "")

- An Ulfjarl may never be the Army General.

= CHARACTER MOUNTS

#compact-entry("WARHORSE")[
#profile(
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
]

= CORE UNITS

#entry("BONDSMEN", first: true)
#profile(
  (name: "Bondsman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Blood Rage")
#field("OPTIONS", "")

- May take spears +0.5 point/model
- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Bondsman to a Leader +5 points
- May upgrade one Bondsman to a Musician +5 points
- May upgrade one Bondsman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("BOWMEN")
#profile(
  (name: "Bowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Blood Rage")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Bowman to a Leader +5 points
- May upgrade one Bowman to a Musician +5 points
- May upgrade one Bowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may not take more units of Bowmen than you have units of Bondsmen and/or Marauders.

#entry("MARAUDERS")
#profile(
  (name: "Marauder", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Blood Rage")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
  - Replace shields with flails +1 point/model
  - Replace shields with great weapons +2 points/model
- May take throwing axes +2 points/model
- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Marauder to a Leader +5 points
- May upgrade one Marauder to a Musician +5 points
- May upgrade one Marauder to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("REAVERS")
#profile(
  (name: "Reaver", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 7),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Ambushers, Blood Rage, Skirmishers")
#field("OPTIONS", "")

- May replace shields with additional hand weapons free
- May take throwing axes +2 points/model
- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Reaver to a Leader +5 points
- May upgrade one Reaver to a Musician +5 points
- May upgrade one Reaver to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("WHALERS")
#profile(
  (name: "Whaler", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, javelins")
#field("OPTIONS", "")

- May take shields +1 point/model
- May upgrade one Whaler to a Leader +5 points
- May upgrade one Whaler to a Musician +5 points

#field("SPECIAL RULES", "Blood Rage, Skirmishers")

#entry("HORSEMEN")
#profile(
  (name: "Horseman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Blood Rage, Fast Cavalry")
#field("OPTIONS", "")

- May choose one of the following:
  - Light lances +1 point/model
  - Replace shields with flails +1 point/model
  - Javelins +2 points/model
  - Throwing axes +2 points/model
- May take light armour +0.5 point/model
- May take shields +1 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Horseman to a Leader +5 points
- May upgrade one Horseman to a Musician +5 points
- May upgrade one Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may not take more units of Horsemen than you have units of Bondsmen or Marauders.

#entry("THRALLS")
#profile(
  (name: "Thrall", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
  (name: "Slaver", m: 4, ws: 3, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable")
#field("UPGRADES", "")

- *Slaver:* A Slaver follows the rules for Handlers from the Mixed Unit special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Javelins +1 point/model
  - Slings +1 point/model
- May include a Slaver +20 points

#compact-entry("WAR WOLVES")[
#profile(
  (name: "War Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Canine)")
#field("BASE SIZE", "25x50")
]

= SPECIAL UNITS

#entry("HUSCARLS", first: true)
#profile(
  (name: "Huscarl", m: 4, ws: 5, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 11),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Blood Rage, Stubborn")

- *Shieldwall:* All models with this special rule gain an additional +1 to their armour save against missile attacks to their front and sides from their shields.

#field("OPTIONS", "")

- May take great weapons +3 points/model
- May take throwing axes +2 points/model
- May take medium armour +1 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Huscarl to a Leader +5 points
- May upgrade one Huscarl to a Musician +5 points
- May upgrade one Huscarl to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("BERSERKERS")
#profile(
  (name: "Berserker", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 12),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield, fur cloak")
#field("SPECIAL RULES", "Counter-charge, Devastating Charge, Frenzy")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May replace shields with one of the following:
  - Additional hand weapons free
  - Great weapons +2 points/model
- May upgrade one Berserker to a Leader +5 points
- May upgrade one Berserker to a Musician +5 points
- May upgrade one Berserker to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SHIELDMAIDENS")
#profile(
  (name: "Shieldmaiden", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 6),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Blood Rage, Parry (6+)")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Javelins +2 points/model
- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Shieldmaiden to a Leader +5 points
- May upgrade one Shieldmaiden to a Musician +5 points
- May upgrade one Shieldmaiden to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("HUNTERS")
#profile(
  (name: "Hunter", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 9),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Blood Rage, Scouts, Skirmishers")
#field("OPTIONS", "")

- May take additional hand weapons +1 point/model
- May take fur cloaks +0.5 point/model
- May upgrade one Hunter to a Leader +5 points
- May upgrade one Hunter to a Musician +5 points

#entry("WAR WOLF CHARIOT")
#profile(
  (name: "War Wolf Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 80),
  (name: "Marauder Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "War Wolf", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Marauder Crew (Human)")
#field("DRAWN BY", "2 War Wolves (Canine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, javelins")
#field("OPTIONS", "")

- May replace javelins with throwing axes free
- May take fur cloaks +3 points
- May take light armour +5 points
- May take scythes +5 points
- May be upgrade to a standard bearer +10 points

#field("SPECIAL RULES", "Blood Rage")

#entry("ULFWERENAR")
#profile(
  (name: "Ulfwerenar", m: 7, ws: 5, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 7, points: 16),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Werecreature)")
#field("BASE SIZE", "25x25 or 30x30")
#field("SPECIAL RULES", "Counter-charge, Fear, Frenzy, Regeneration (5+), Swiftstride")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Ulfwerenar to a Leader +5 points

#entry("SKIN WOLVES")
#profile(
  (name: "Skin Wolf", m: 7, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 38),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Werecreature)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Counter-charge, Frenzy, Regeneration (5+)")
#field("OPTIONS", "")

- May upgrade one Skin Wolf to a Leader +5 points

#compact-entry("ICE WOLVES")[
#profile(
  (name: "Ice Wolf", m: 9, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 6, points: 40),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Beast (Canine)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Ice Attacks, Natural Armour (6+)")
]

#entry("SNOW TROLLS")
#profile(
  (name: "Snow Troll", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 2, a: 3, ld: 6, points: 47),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Troll)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Frenzy, Regeneration (4+), Stupidity")

- *Frost Breath:* In addition to their normal Attacks, models with this special rule inflicts one automatic Strength 4 hit with the Ice Attacks and Ignores Armour Saves special rules after resolving all their normal Attacks. This counts as a non-physical missile attack. This cannot be used with supporting attacks.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model

= RARE UNITS

#entry("WEREBEAST", first: true)
#profile(
  (name: "Werebeast", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 6, points: 150),
)
#field("TROOP TYPE", "Monstrous Creature (Werecreature)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Frenzy, Hatred, Natural Armour (6+), Regeneration (5+), Unbreakable")

- *Raging Beast:* For the purposes of calculating combat result bonuses, a Werebeast counts as having no flanks or rear.

#field("UPGRADES", "")

- *Knitting Flesh:* The Werebeast gains the Regeneration (4+) special rule.
- *Scaly Hide:* The Werebeast gains the Natural Armour (6+) special rule.
- *Snarling Fangs:* The Werebeast gains the Multiple Wounds (D3) special rule.
- *Steel-hard Claws:* The Werebeast gains the Armour Piercing (1) special rule.

#field("OPTIONS", "")

- May take Scaly Hide +5 points
- May take Steel-hard Claws +5 points
- May take Knitting Flesh +10 points
- May take Snarling Fangs +15 points

#entry("FROST GIANT")
#profile(
  (name: "Frost Giant", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: 180),
)
#field("TROOP TYPE", "Monster (Giant)")
#field("BASE SIZE", "50x50, 50x75 or 100x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ice Attacks, Immunity (Psychology), Natural Armour (6+), Stubborn")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +10 points/model
  - Shield +10 points/model
  - Great weapon +10 points/model
- May choose one of the following:
  - Light armour +15 points/model
  - Medium armour +30 points/model

#entry("CURSED ETTIN")
#profile(
  (name: "Cursed Ettin", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 7, points: 215),
)
#field("TROOP TYPE", "Monster (Giant)")
#field("BASE SIZE", "50x75 or 50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Stubborn, Natural Armour (6+), Regeneration (5+)")

- *Bitter Cruelty:* When the Cursed Ettin charged an enemy unit in the flank or rear, the bonus to its combat resolution is doubled.
- *Hammer Hand:* The Hammer Hand is an additional Attack that is resolved at Strength 8 with the Heroic Killing Blow special rule.
- *Two-headed:* Choose which personality of the Cursed Ettin to be in control at the start of the game. At the end of any phase in which the Cursed Ettin has suffered a Wound, it must take a Leadership test. If passed, the Cursed Ettin retains its current personality, if failed the other takes over. The effects of the two separate heads are as follows:
  - *The Betrayer:* The Cursed Ettin has the Hatred and Bitter Cruelty special rule.
  - *The Savage:* The Cursed Ettin has +1 Strength, \-1 Weapon Skill, \-1 Leadership, Frenzy.

#field("UPGRADES", "")

- *Gibberer:* All enemy units within 8" of the Cursed Ettin suffer \-1 to their Leadership. This has no effect on models with Immunity (Psychology).
- *Man Scyther:* The Cursed Ettin loses the Hammer Hand special rule but gains the Impact Hits (D6+1) special rule and +1 Attack.
- *Rune Caller:* The Cursed Ettin loses the Hammer Hand special rule but becomes a Level 1 Wizard that uses spell from the Lore of Beasts, Shadows or Death. Should the Cursed Ettin miscast, their personality will automatically shift (with no Leadership test required).
- *Scaled Horror:* The Cursed Ettin gains the Natural Armour (4+) special rule. In addition, whenever it suffers an unsaved Wound in close combat, the unit which inflicted the wound suffer D6 Strength 2 Hits with the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May take Gibberer +15 points
- May take Scaled Horror +25 points
- May choose one of the following:
  - Man Scyther +10 points
  - Rune Caller +25 points

#entry("ICE DRAKE")
#profile(
  (name: "Ice Drake", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: 200),
)
#field("TROOP TYPE", "Monster (Draconid)")
#field("BASE SIZE", "50x100 or 100x150")
#field("SPECIAL RULES", "Fly (8), Ice Attacks, Natural Armour (4+)")

- *Ice Breath:* Ice Breath is a Breath Weapon Attack. Hits are resolved at Strength 4 with the Ignores Armour saves and Ice Attacks special rule. Any hits are distributed as hits from shooting.

#entry("WAR MAMMOTH")
#profile(
  (name: "War Mammoth", m: 8, ws: 3, bs: 0, s: 7, t: 6, w: 10, i: 1, a: "*", ld: 5, points: 325),
  (name: "Marauder Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Elephantine)")
#field("CREW", "5 Marauder Crew (Human)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Hand weapon, javelins (Marauder Crew only)")
#field("SPECIAL RULES", "Immunity (Psychology), Impact Hits (D6+1), Large Target (10), Natural Armour (5+)")

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

= SPECIAL CHARACTERS

#entry("ERIK REDAXE", first: true)
#namecost("High King of the Norse", "")
#profile(
  (name: "Erik Redaxe", m: 4, ws: 7, bs: 4, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 265),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Shield, medium armour")
#field("MAGIC ITEMS", "")

- *Battle-Troll:* Magic Weapon. Attacks from this weapon Ignores Armour saves. In addition, it gives Erik a Magical Ward (4+).

#field("SPECIAL RULES", "Blood Rage, Saga of the Eternal Warrior (see Sagas), Saga of the Fearless Leader (see")

Sagas)

- *Invocation of Thunder:* Once per game, at the beginning of any of your turns, Erik may call upon the Invocation of Thunder. The effects of the Invocation last until the start of the next Norse turn. All missile fire during this time suffers -l to hit. One enemy unit of your choice suffers D6 Strength 4 hits which Ignores Armour saves.

#entry("KEORL THUNDERHAND")
#namecost("The Dragon Slayer, King of the Stormraven Clan", "")
#profile(
  (name: "Keorl Thunderhand", m: 4, ws: 7, bs: 4, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 210),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Dragonslayer:* Magic Weapon. Dragonslayer gives the wielder +3 to his Strength and the Multiple Wounds (D3) special rule. When used against Dragons, it Wounds on a 2+ and has the Multiple Wounds (D6) special rule. In addition, it causes Fear against Dragons even if they are normally immune to it.
- *Torgrim's Circlet:* Talisman. This item gives Keorl the Immunity (Flaming Attacks) special rule. In addition, any model targeting Keorl or the unit he has joined with a Flaming Attack must roll a D6 for each Hit; on a 4+, the Hit is instead reflected back onto the attacker.

#field("SPECIAL RULES", "Blood Rage, Saga of the Beastslayer (see Sagas)")

#entry("FLOKI 'LOSTSON'")
#namecost("Peerless Adventurer, Descendant of Losteriksson", "")
#profile(
  (name: "Flóki 'Lostson'", m: 4, ws: 6, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 140),
  (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Cold One (Saurian)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light armour, shield")
#field("MAGIC ITEMS", "")

- *Obsinite Axe: Magic Item.* Great weapon. All attacks made with this weapon has the Ignores Armour Saves special rule.
- *Old Bloodied Cloak:* Magic Armour. Fur Cloak. Lizardmen are subject to Hatred when fighting against Flóki and any unit he joined. Whenever Flóki rolls a 6 To Hit in close combat, he immediately makes another Attack; roll To Hit and To Wound as normal. Attacks generated this way do not generate further Attacks.
- *Gilded Trinket: Talisman.* The Gilded Trinket grants Flóki a Ward save (5+). In addition, he and any unit he has joined has the Forest Strider special rule.

#field("SPECIAL RULES", "Blood Rage, Fear, Natural Armour (6+), Stupidity")

- *Fearless:* Flóki 'Lostson' and any unit he joined may re-roll Psychology tests.
- *Warhird of Skeggi:* If your army contains Flóki 'Lostson', you may upgrade one unit Norse Horsemen to Norse Cold One Riders, gaining the Fear, Natural Armour (6+) and Stupidity special rules. They are mounted on Cold Ones and counts as a Special Unit.

#entry("DRENOK JOHANSEN")
#namecost("Wielder of the Great Axe", "")
#profile(
  (name: "Drenok Johansen", m: 4, ws: 6, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 135),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Ice Fang Axe:* Magic Weapon. Great Weapon. The Ice Fang Axe gives Drenok the Armour Piercing (1) and Multiple Wounds (D3) special rule.
- *Sabertusk Tiger Hide:* Magic Armour. Fur cloak. The Sabertusk Tiger Hide gives the wearer the Fear special rule.

#field("SPECIAL RULES", "Blood Rage, Saga of the Relentless Warrior (see Sagas)")

#entry("SIGRUN THE PROUD")
#namecost("The Defiant, She Who Stands Firm", "")
#profile(
  (name: "Sigrun the Proud", m: 4, ws: 6, bs: 4, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 175),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Eagle's Talon:* Magic Weapon. Eagle's Talon gives Sigrun the Flaming Attacks and Mighty Blow (2) special rules.
- *Valkmira, Protector's Shield:* Magic Armour. Shield. Any models targeting Sigrun in close combat or with missile attacks must re-roll successful rolls To Hit.

#field("SPECIAL RULES", "Blood Rage, Saga of the Ever-Vigilant (see Sagas), Parry (6+)")

- *Defiant:* Sigrun, and any unit of Shieldmaidens that she joins, has the Stubborn special rule.
- *Shield Bash:* For every successful Parry save made by Sigrun, she immediately gets to make an additional Attack back against the model that struck the blow. This attack does not benefit from the effects of her weapon.

#entry("NJAL TROELSON")
#namecost("Relentless Strider, The Savage Hunter", "")
#profile(
  (name: "Njal Troelson", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 155),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, throwing axes")
#field("MAGIC ITEMS", "")

- *Steelbane:* Magic Weapon. Longbow. Attacks made with Steelbane are resolved at Strength 4 with the Killing Blow special rule.
- *Scrimshaw Talisman:* Talisman. The Scrimshaw Talisman grants Njal a Magical Ward (5+), and enemy missile attacks targeted at him or his unit suffer \-1 To Hit.

#field("SPECIAL RULES", "Blood Rage, Hatred (Empire), Saga of the Glorious Hunter (see Sagas), Scouts, Sniper")

#entry("JORA AND BJORN")
#namecost("The Maiden and the Bear", "")
#profile(
  (name: "Jora", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 85),
  (name: "Bjorn", m: 6, ws: 6, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: 160),
)
#field("TROOP TYPE", "Infantry (Special Character, Human – Jora), Monstrous Infantry (Special Character, Werecreature –")

Bjorn)

#field("BASE SIZE", "20x20 or 25x25 (Jora), 40x40 or 50x50 (Bjorn)")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Baernsonling Broadsword:* Jora only. Magic Weapon. Great weapon. Each successful Hit with this weapon is multiplied into 2 Hits.

#field("SPECIAL RULES", "Blood Rage, Skirmishers, Regeneration (4+) (Bjorn only)")

- *Deep Bond:* Jora and Bjorn must always be in the same unit if they join one. As long as both Jora and Bjorn are alive, they have Immunity (Psychology). Roll a D6 for each Hit Jora suffers, on a 4+, Bjorn steps in to protect her; resolve the Hit against him instead. If Jora is slain, Bjorn becomes Frenzied and Unbreakable. If Bjorn is slain, then Jora becomes Unbreakable and Hates the unit that killed him.

#field("NOTES", "")

- Jora and Bjorn may never be the Army General.

#entry("STURMJARL")
#namecost("Shaman Lord of Ejsgard", "")
#profile(
  (name: "Sturmjarl", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 2, ld: 8, points: 315),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Sturmjarl is a Level 4 Wizard who uses spells from the Lore of Heavens or Shadows.")
#field("MAGIC ITEMS", "")

- *Staff of Storms:* Arcane Item. Sturmjarl and any unit he joins are treated as if in soft cover. In addition, whenever Sturmjarl casts a magic missile spell, he may re-roll the number of hits caused by the spell.
- *Gift of Tchar:* Arcane Item. Every time Sturmjarl casts a spell he may use one additional free power dice. If you roll a 1 on this dice, Sturmjarl must immediately pass a Leadership test or suffer a miscast.
- *Ejsgard Runes:* Arcane Item. Sturmjarl may reroll one failed attempt to dispel a spell once per Magic phase.

#field("SPECIAL RULES", "Blood Rage")

- *Hymns of Malice:* If Sturmjarl is in a unit with the Blood Rage rule, then the unit is subject to Hatred.

#entry("BRAGI STURLUSON")
#namecost("The Ever-Skald, Poet of Legends", "")
#profile(
  (name: "Bragi Sturluson", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 130),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC ITEMS", "")

- *Loreweaver's Harp:* Magic Weapon. The Loreweaver's Harp fires as a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "4", "Ignores Armour Saves, Multiple Shots (D6), Quick Shot"))
#field("SPECIAL RULES", "Blood Rage, Skald (see Skald)")

- *Rune-etched Tongue:* Any Skald song sung by Bragi affects all friendly units within 8" of him, rather than just his unit.

#entry("THE RAVENSWYRD")
#namecost("Chosen of the Gods", "")
#profile(
  (name: "Ravenswyrd", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 10, points: 145),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Fur cloak")
#field("MAGIC ITEMS", "")

- *Gram and Balmung:* Magic Weapon. Two hand weapons. Gram gives the Ravenswyrd the Always Strikes First special rule, and Balmung gives him the Strength Bonus (1) and Armour Piercing (1) special rules.
- *Helm of the Norns:* Magic Armour. This armour gives the Ravenswyrd a 6+ armour save. Any missile attacks targeting him suffer \-1 To Hit.

#field("SPECIAL RULES", "Ambushers, Blood Rage, Unbreakable")

- *The Ravens*: Each of the two Ravens gives the Ravenswyrd an additional Attack that are resolved at Weapon Skill 3 and Strength 3. These attacks do not benefit from any bonuses or Magic Weapons.

If the Ravenswyrd is wounded, roll a D6 for each wound suffered. On a 2+, the Ravenswyrd may ignore the wound and reduce his Strength, Toughness or Attacks by 1 instead. On a 1, one of his Ravens are slain instead. If both Ravens are killed then the Ravenswyrd will also die and is removed from the table.

In addition, roll a D6 at beginning of the Norse turn. On a roll of a 6 the Ravenswyrd may increase his Strength, Toughness or Attacks by 1. This increase may not take it above the Ravenwyrd's starting characteristics.

#field("NOTES", "")

- The Ravenswyrd may never be the Army General.

#entry("FENRIR WOLFCLAW")
#namecost("The Shackled King, First Among the Werekin", "")
#profile(
  (name: "Fenrir Wolfclaw", m: 7, ws: 7, bs: 0, s: 5, t: 5, w: 5, i: 6, a: 5, ld: 9, points: 235),
)
#field("TROOP TYPE", "Monstrous Infantry (Special Character, Werecreature)")
#field("BASE SIZE", "40x40 or 50x50")
#field("MAGIC ITEMS", "")

- *Runic Shackles:* Talisman. The Runic Shackles grant Fenrir a Magical Ward (6+) and the Magic Resistance (2) special rule.

#field("SPECIAL RULES", "Counter-charge, Frenzy, Regeneration (5+)")

- *King of the Wolfkin:* If Fenrir is your Army General, Ulfwerenar counts as Core Units instead of Special Units. In addition, all friendly units of Ulfwerenar and Skin Wolves within 12" of Fenrir may re-roll their charge distance results (including Counter-charges).
- *Tormented Mind:* At the start of each of your turns, Fenrir must take a Leadership test. If passed, Fenrir retains control over his mind and acts as normal this turn. If failed, he will automatically fail any Berserk Rage test he is required to make this turn, but he may also re-roll all failed rolls To Hit in close combat.

#entry("STYRMIR RIMEFROST")
#namecost("King of the Frost Giants", "")
#profile(
  (name: "Styrmir Rimefrost", m: 6, ws: 6, bs: 3, s: 7, t: 6, w: 7, i: 3, a: 6, ld: 10, points: 460),
)
#field("TROOP TYPE", "Monster (Special Character, Giant)")
#field("BASE SIZE", "50x50, 50x75 or 100x100")
#field("MAGIC ITEMS", "")

- *Rixbrand:* Magic Weapon. Great weapon. Rixbrand gives Styrmir the Heroic Killing Blow and Ice Attacks special rules.
- *Glacier Plates:* Magic Armour. Heavy armour. The Glacier Plates gives Styrmir a Magical Ward (4+) against all missile attacks and Immunity (Ice Attacks).

#field("SPECIAL RULES", "Ice Breath, Immunity (Psychology), Stubborn")

- *Ice Breath:* Ice Breath is a Breath Weapon Attack. Hits are resolved at Strength 4 with the Ignores Armour saves and Ice Attacks special rule. Any hits are distributed as hits from shooting.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Stefan Wolf", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
