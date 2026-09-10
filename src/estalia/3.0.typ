// Estalia 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "estalia",
  army: "Estalia",
  version: "3.0",
  layout: "army",
  cover: "covers/estalia.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Estalia 3.0")

#cover(
  title: "Estalia",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/estalia.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Estalia*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Estalian army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Estalian units, and these are detailed here.

#namecost("COUNTERMARCH FIRE", "")

Models with this rule in the front rank of a unit ignore the Ponderous special rule (or treat Move and Fire as Ponderous instead) if they have another friendly model with the same special rule in base contact behind them.

#namecost("TACTICAL SUPREMACY", "")

All models with this rule have the Disciplined special rule.

If the unit is charged during the Movement phase and chooses Hold as a charge reaction, it can attempt to change formation immediately before your opponent has moved any of their charging units, as long as it is not already engaged in close combat. To do so, the unit must take pass Leadership test – if successful, the unit can immediately make a swift reform as described in the Warhammer Rulebook.

#namecost("TERCIO FORMATION", "")

A Tercio Formation consists of a mix of models armed with pikes/polearms, handguns/crossbows and bucklers. All models are treated as having the same equipment, though you should attempt to model the unit with appropriate equipment as much as possible.

All models in the front rank, both flanks and rear may fire in the Shooting phase, even if they have moved this turn. This means that models in the front arc can fire forward, models in the left flank fire to the left, models in the right flank fire to right and models in the rear rank fire to the rear. Each arc may choose to fire at different targets if they wish.

#diagram("/assets/figures/estalia/img-0128.png", 0.463)

All models in the unit's front rank fight using hand weapons and bucklers. The remaining models fight using pikes/polearms. All attacks against the unit's front are resolved against the models armed with hand weapon and bucklers.

#diagram("/assets/figures/estalia/img-0130.png", 0.385)

If the unit has not moved in the last turn it counts as having no flanks or rear for the purpose of Disruption and combat resolution. However, for every flank or rear arc they are engaged in, they suffer \-1 to their rank bonus.

#namecost("Support Fire", "")

Units of Crossbowmen, Arquebusiers and Musketeers within 3" of a unit of Tercios may lend them support fire if the Tercio is charged by passing a Leadership test (which may be re-rolled with a Leader). This works out like a normal Stand and Shoot reaction, except that they do not suffer \-1 To Hit for shooting at a charging enemy. In addition; if they choose to Flee as a charge reaction this does not cause Panic to friendly units.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Estalians. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("SPEAR OF RIGHTEOUSNESS", "55 points")

Priest of Myrmidia only. Light lance/spear. At the start of each round of close combat, roll a D3; the wielder adds this number to their Weapon Skill, Strength, Attacks and Initiative characteristics until the end of the turn.

#namecost("STAFF OF TOMAS THE PURE", "50 points")

Priest of Myrmidia only. The Staff of Tomas the Pure has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "5", "Lightning Attacks, Multiple Shots (D3), Quick to Fire, Rapid Fire"))
#namecost("WOLFSLAYER", "40 points")

All attacks made with Wolfslayer have the Heroic Killing Blow special rule. In addition, enemy models who are Hit by this sword must pass a Leadership test or suffer an additional automatic Wound. However, if the wielder of this sword flees for any reason, they suffer one Wound themself instead, with no saves allowed.

#namecost("BASILISK BLADE", "30 points")

Hits from this weapon automatically Wound with the Armour Piercing (1) special rule. However, if the wielder rolls a natural 1 To Hit, they suffer a Wound with the Armour Piercing (1) special rule themselves.

#namecost("FENCER'S BLADES", "30 points")

Two hand weapons. The wielder has Weapon Skill 10.

#namecost("LANCE OF RECTITUDE", "25 points")

Heavy lance. The wielder of this weapon can re-roll all failed rolls To Hit in close combat.

#namecost("SWORD OF THE VENDETTA", "25 points")

After deployment, but before the game starts, the wielder of the Sword of the Vendetta may choose one enemy character on the table. The wielder must always issue and accept challenges against this character if possible. The wielder of the sword Hits and Wounds the chosen enemy on a 2+ with the Ignores Armour saves special rule. If the target is killed by this weapon, the wielder suffers -D3 to their Strength and Toughness and the sword counts as a normal magical hand weapon for the remainder of the game.

#namecost("FIGUERA'S RAPIER", "25 points")

Maestro only. All attacks made with this weapon gain +1 To Hit and the Armour Piercing (1) special rule. In addition, no Parry saves can be taken against it.

#namecost("MACE OF SACRIFICE", "20 points")

Priest of Myrmidia only. The wielder gains +2 Strength. At the end of each close combat phase of which the wielder takes part, roll a D6; on a 6 the wielder suffers a wound which cannot be saved by any means.

#namecost("SWORD OF FORTITUDE", "20 points")

The character, and any unit they are with, gains the Immunity (Psychology) special rule.

#namecost("SWORD OF TALABARO", "20 points")

The wielder of this sword gains +1 to their Leadership and Attacks characteristics. However, if the wielder ever fails a Leadership test, these bonuses are lost.

#namecost("PISTOLS OF THE DUEL", "15 points")

Brace of Pistols. These pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Armour Piercing (1), Multiple Shots (4), Quick Shot"))
#namecost("RELIC SWORD", "10 points")

The wielder will always wound on a 3+, unless they would normally need a lower result.

#entry("MAGIC ARMOUR")
#namecost("SHIELD OF HONOUR", "45 points")

Priest of Myrmidia only. Shield. The bearer of this shield gains the Parry (5+) special rule. In addition, all enemy units in base contact suffer \-1 Weapon Skill.

#namecost("CUIRASS OF THE BLAZING SUN", "40 points")

Heavy armour. All attacks targeting the wearer of this suffer \-1 to Wound. In addition, the wearer gains the Immunity (Flaming Attacks) special rule.

#namecost("SCINTILLATING SHIELD", "30 points")

Shield. All attacks targeted at the bearer suffer \-1 To Hit. For every armour or Parry save that the bearer saves in close combat, one enemy Character or Lone Model (chosen by the bearer) in base contact suffers \-1 to their Weapon Skill until the end of the next combat phase. This effect is cumulative.

#namecost("MORION OF THE EAGLE", "20 points")

Grand Commander or Captain only. This helmet gives the wielder a 6+ armour. In addition, they gain the Always Strikes First and Devastating Charge special rules in any turn that they charge.

#namecost("SACRED ARMOUR OF PURITY", "20 points")

Medium armour. This armour cannot be reduced below a 5+ save.

#namecost("SHIELD OF THE WOLF RAMPANT", "20 points")

Shield. The wielder has the Fear special rule. In addition, if the wielder rolls a natural 6 when making a Parry save, they inflict an extra Hit using their Strength characteristic back onto the model or unit that struck the blow.

#entry("TALISMANS")
#namecost("AMULET OF DAWN", "45 points")

The bearer gains a Magical Ward save equal to the game turn +1. So, in the first turn of the game, they have a Magical Ward (2+), in the second turn a Magical Ward (3+) and so on. On turn 6, the item has no effect.

#namecost("CUSTODIA OF SANCTUARY", "35 points")

Priest of Myrmidia only. One use only. This item may be used at the start of your turn as long as no enemy units are within 1". Until the start of your next turn, enemy units cannot move within 1" of the bearer or their unit – they are treated as impassable terrain. If the bearer or their unit moves within 1" of an enemy unit, the effect is lost.

#namecost("AEGIS OF THE MAIDEN", "20 points")

Whenever the wielder of this item is removed as a casualty, they are immediately brought back to life in the same location with 1 Wound remaining.

#namecost("CAPE OF VELACRUZ", "20 points")

War Beasts, Monstrous Infantry, Monstrous Beasts, Monstrous Creatures and Monsters must re-roll all successful rolls To Hit against the wearer of this cape. In addition, the wearer gains the Immunity (Impact Hits, Stomp) special rule.

#namecost("RAT CATCHER'S CHARM", "15 points")

The bearer has the Immunity (Poisoned Attacks) and Regeneration (6+) special rules. In addition, the wearer causes Fear against Skaven.

#entry("ARCANE ITEMS")
#namecost("LIVING DEADWOOD STAFF", "35 points")

Bound spell (Level 2, cast on 8+). This item contains a special type of *aura* spell with a range of 18". Each wood within range may be moved up to 6" in any direction, as long as they stop within 1" of other terrain. In addition, any unit touched by a moving wood suffer D6 Strength 4 Hits.

#namecost("STAFF OF ARCANE DRAINING", "30 points")

The bearer gains +1 bonus when channelling Dispel Dice. Additionally, for each natural 6 rolled when channelling Dispel Dice with the bearer, you may remove one Power Dice from the enemy’s Power Pool.

#namecost("TEMPERANCE CRYSTAL", "25 points")

The bearer of this item may re-roll one Power Dice when casting spells once per Magic phase.

#namecost("RING OF THE SANCTIONED", "")
#namecost("THAUMATURGE", "10 points")

The Wizard may choose their spells from a combination of Lores of Magic available to them, but may only choose Level 1 spells.

#namecost("THE GEM OF TARANTO", "10 points")

One use only. The Gem of Taranto can be used whenever you successfully dispel an enemy spell (except Summoning Spells). The bearer of the Gem will be able to cast the spell themselves (limited by their Wizard level as normal) for the remainder of the game, even if it is from a lore not normally available to them.

#entry("ENCHANTED ITEMS")
#namecost("CORONET OF THE CONQUEROR", "50 points")

Grand Commander only. This item gives the wearer the Inspiring Presence (6) special rule. In addition, all friendly units within 6" of them gains +1 to their Combat Resolution.

#namecost("TOME OF WISDOM", "35 points")

Priest of Myrmidia only. Bound Spell (Level 3, cast on 9+). This item contains a *direct damage* spell that may be cast while in combat. Place the small round template anywhere in base contact with the bearer. All models, covered by the template suffer a Strength 4 hit with the Magical Attacks special rule. Against models with the Daemonic, Undead and Vampiric special rules, as well as Wizards, the Strength is increased to 5.

#namecost("MONSTRANCE OF DIVINE", "")
#namecost("PRONOUNCEMENT", "35 points")

Priest of Myrmidia only. Bound Spell (Level 2, cast on 8+). This item contains a *hex* spell with a range of 24". The target must immediately take a Panic test with a negative modifier equal to the difference of the Leadership between the caster and the target.

#namecost("BLESSED GRENADE OF AQUILIA", "30 points")

One use only. This item has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Armour Piercing (1), Magical Attacks"))

Place the small round template with its centre anywhere within range. If the attacks hits, resolve the damage as normal. If the attack misses, the template scatters D6".

#namecost("SANCTIFIED RELIQUARY OF MYRMIDIA", "25 points")

The bearer and any unit they are with gain +1 Weapon Skill.

#namecost("SCRIPTURE OF TRUE INSIGHT", "25 points")

This item allows you to reroll the dice when determining which side to deploy on and who takes the first turn.

#namecost("AMPULLA OF MYRMIDIA'S WRATH", "15 points")

Priest of Myrmidia only. This item may be used at the start of any close combat the bearer is involved in by passing a Leadership test. If successful, the bearer's Attacks are doubled until the start of the next close combat phase.

#namecost("ROSARY OF THE MAIDEN", "15 points")

Priest of Myrmidia only. Every unsaved wound inflicted by the bearer's normal Attacks in Close Combat counts as two for the purposes of combat resolution.

#namecost("MISSAL OF MYRMIDIA'S WORD", "10 points")

Priest of Myrmidia only. All enemy units attempting to charge the bearer or their unit must pass a Psychology test. If they fail, they may not charge that turn.

#entry("MAGIC STANDARDS")
#namecost("STANDARD OF MYRMIDIA", "45 points")

Each time the unit carrying this standard destroys or breaks an enemy unit, all models in it gain one of the following bonuses for as long as the banner remains in the unit. Each bonus is cumulative.

#chart((("Units:", "Result:"), ("1", "+1 Weapon Skill"), ("2", "+1 Strength"), ("3", "+1 Attack")))
#namecost("STANDARD OF SUPERIOR FORM", "25 points")

The unit carrying this standard may make a Swift Reform at the start of their Movement phase. The unit may then move as normal (including declaring charges). However, they have all their movement halved the rest of the Movement phase.

#namecost("BANNER OF SANTIAGO", "20 points")

One use only. The unit carrying this standard automatically passes its first Break Test.

#namecost("BANNER OF THE BULL", "15 points")

All models in the unit carrying this standard gain the Impact Hits (1) special rule.

#namecost("COLOURS OF CONQUEST", "15 points")

The unit carrying this standard gains +1 Combat Resolution for each subsequent round of close combat they remain in after the first. This bonus resets once leaving combat.

#namecost("STANDARD OF PROWESS", "15 points")

The unit carrying this standard gains the Fight in Extra Ranks (1) special rule.

#namecost("BANNER OF COURAGE", "10 points")

The unit carrying this standard may re-roll failed Break tests.

= CHARACTERS

#entry("COMMANDERS", first: true)
#profile(
  (name: "Grand Commander", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
  (name: "Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Tactical Supremacy")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Pistol +4 points
  - Brace of pistols +5 points
  - Crossbow +7 points
  - Handgun +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Aurochs +40 points
  - Griffon (Grand Commander) +125 points
- One Captain may carry the Battle Standard +25 points
- A Captain may take Magic Items up to a total of 50 points
- A Grand Commander may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("MAGOS")
#profile(
  (name: "Grand Mago", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 1, ld: 8, points: 160),
  (name: "Mago", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Mago is a Level 1 Wizard. A Grand Mago is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Death
- Heavens
- Fire
- Light
- Life
- Metal
- Shadow

#field("SPECIAL RULES", "Tactical Supremacy")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
- A Mago may take Magic Items up to a total of 50 points
- A Grand Mago may take Magic Items up to a total of 100 points

#entry("PRIESTS OF MYRMIDIA")
#profile(
  (name: "High Priest of Myrmidia", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 130),
  (name: "Priest of Myrmidia", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Magical Attacks, Magic Resistance (1), Tactical Supremacy")

- *Blessing of Myrmidia:* The model and any unit they are currently in have the Always Strikes First special rule.
- *Battle Prayers of Myrmidia:* A model with this special rule knows the three Battle Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Skill of Combat:* The model and any unit they are with gain +1 To Hit in close combat until the start of your next turn.
  - *Shield of Myrmidia:* The model and any unit they are with gain a 6+ armour save until the start of your next turn.
  - *Spear of Myrmidia:* The model and any unit they are with gain the Armour Piercing (1) and Magical Attacks special rules until the start of your next turn.

#field("OPTIONS", "")

- May choose one of the following:
  - Spear +5 points
  - Light lance +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Altar of Myrmidia (High Priest of Myrmidia only) +100 points
- May take Magic Items up to a total of 100 points
- A Priest of Myrmidia may take Magic Items up to a total of 50 points
- A High Priest of Myrmidia may take Magic Items up to a total of 100 points

#entry("MAESTRO")
#profile(
  (name: "Maestro", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 100),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Tactical Supremacy")

- *Face Me, You Coward!* A Maestro must always issue and accept Challenges. If your opponent refuses to answer the challenge, you may force the one enemy character in the unit to take a Psychology test. If failed, that model must accept the challenge. While in a challenge, the Maestro may re-roll failed rolls To Hit and To Wound.
- *Duelling Techniques:* At the start of each round of close combat, a Maestro may choose to utilize one of the following Duelling Techniques. He may not use the same technique two rounds in a row.
  - *Quick Strikes:* The Maestro gains +D3 Attacks.
  - *Defence:* The Maestro gains the Parry (5+) rule.
  - *Perforation:* The Maestro gains the Killing Blow special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Buckler +5 points
  - Additional hand weapon +5 points
- May choose one of the following:
  - Pistol +5 points
  - Brace of pistols +6 points
- May take throwing weapons +5 points
- May take light armour +3 points
- May take Magic Items up to a total of 50 points

= CHARACTER MOUNTS

#entry("WARHORSE", first: true)
#profile(
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take barding +5 points

#entry("PEGASUS")
#profile(
  (name: "Pegasus", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fly (9)")
#field("UPGRADES", "")

- *Iron-hard Hooves:* A Pegasus with this upgrade re-roils failed To Wound rolls.
- *Swift as the Wind:* A Pegasus with this upgrade re-rolls any dice results of a 1 when determining its charge range.

#field("OPTIONS", "")

- May take Iron-hard Hooves +5 points
- May take Swift as the Wind +5 points

#compact-entry("AUROCHS")[
#profile(
  (name: "Aurochs", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Bovine)")
#field("BASE SIZE", "50x75")
#field("SPECIAL RULES", "Impact Hits (D3), Mighty Blow (1)")
]

#entry("GRIFFON")
#profile(
  (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monstrous Creature (Chimeric)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Fly (8), Natural Armour (6+)")
#field("UPGRADES", "")

- *Shredding Talons:* The model gains the Armour Piercing (1) special rule.
- *Swooping Strike:* The model gains the Devastating Charge special rule.

#field("OPTIONS", "")

- May take Shredding Talons +5 points
- May take Swooping Strike +5 points

#entry("WAR ALTAR OF MYRMIDIA")
#profile(
  (name: "War Altar of Myrmidia", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: "-"),
  (name: "Bull", m: 6, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  (name: "Aurochs", m: 6, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 3, ld: "-", points: ""),
)
#field("TROOP TYPE", "Shrine (Armour save 6+)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Magical Ward (4+)")

- *Holy Fervour:* All friendly Human units benefit from the rider's Blessing of Myrmidia special rule whilst within 6" of a War Altar of Myrmidia.
- *The Power of Myrmidia:* Any Battle Prayers of Myrmidia cast by a model who is mounted on a War Altar of Myrmidia also target all friendly units within 6".

#field("OPTIONS", "")

- May be drawn by one of the following:
  - Aurochs +15 points - 2 Bulls +15 points - 4 Bulls +25 points

#field("NOTES", "")

- A War Altar of Myrmidia has a Line of Sight value of 4.
- A War Altar of Myrmidia drawn by an Aurochs (Bovine) is a Chariot with the Fear and Mighty Blow (1) special rule.
- A War Altar of Myrmidia drawn by 2 Bulls (Bovine) is a Chariot with the Impact Hits (D6+2 special rule).
- A War Altar of Myrmidia drawn by 4 Bulls (Bovine) is a Chariot with the Impact Hits (D6+4 special rule).

= CORE UNITS

#entry("PIKEMEN", first: true)
#profile(
  (name: "Pikeman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Pike, light armour")
#field("SPECIAL RULES", "Tactical Supremacy")
#field("OPTIONS", "")

- May replace pikes with polearms free
- May take bucklers +0.5 point/model
- May take medium armour +1 point/model
- May upgrade one Pikeman to a Leader +5 points
- May upgrade one Pikeman to a Musician +5 points
- May upgrade one Pikeman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("RODELEROS")
#profile(
  (name: "Rodelero", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour, buckler")
#field("SPECIAL RULES", "Tactical Supremacy")
#field("OPTIONS", "")

- May replace bucklers with one of the following:
  - Additional hand weapons +0.5 point/model
  - Shields +0.5 point/model
- May take medium armour +1 point/model
- May upgrade one Rodelero to a Leader +5 points
- May upgrade one Rodelero to a Musician +5 points
- May upgrade one Rodelero to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ARQUEBUSIERS")
#profile(
  (name: "Arquebusier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, handgun")
#field("SPECIAL RULES", "Countermarch Fire, Tactical Supremacy")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Arquebusier to a Leader +5 points
- May upgrade one Arquebusier to a Musician +5 points
- May upgrade one Arquebusier to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("CROSSBOWMEN")
#profile(
  (name: "Crossbowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, crossbow")
#field("SPECIAL RULES", "Countermarch Fire, Tactical Supremacy")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Crossbowman to a Leader +5 points
- May upgrade one Crossbowman to a Musician +5 points
- May upgrade one Crossbowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("TERCIOS")
#profile(
  (name: "Tercio", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 9),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Pike, handgun, light armour, buckler")
#field("SPECIAL RULES", "Tactical Supremacy, Tercio Formation")
#field("OPTIONS", "")

- May replace pikes with polearms free
- May replace handguns with crossbows free
- May upgrade one Tercio to a Leader +5 points
- May upgrade one Tercio to a Musician +5 points
- May upgrade one Tercio to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("DIESTROS")
#profile(
  (name: "Diestro", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 4),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Pistols +3 points/model
- May take throwing weapons +1 point/model
- May upgrade one Duellist to a Leader +5 points

#field("SPECIAL RULES", "Tactical Supremacy, Skirmishers")

#entry("HIDALGOS")
#profile(
  (name: "Hidalgo", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, medium armour, shield")
#field("SPECIAL RULES", "Fast Cavalry, Tactical Supremacy")
#field("OPTIONS", "")

- May take light lances +1 point/model
- May take pistols +3 points/model
- May upgrade one Hidalgo to a Leader +5 points
- May upgrade one Hidalgo to a Musician +5 points
- May upgrade one Hidalgo to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("GENITORS")
#profile(
  (name: "Genitor", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Fast Cavalry, Tactical Supremacy")
#field("OPTIONS", "")

- May take light lances +1 point/model
- May take javelins +2 points/model
- May upgrade one Genitor to a Leader +5 points
- May upgrade one Genitor to a Musician +5 points
- May upgrade one Genitor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ALMOGAVARS")
#profile(
  (name: "Almogavar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Skirmishers, Tactical Supremacy")

- *Close Formation:* Almogavars can choose to deploy in either a regular or skirmish formation. Whenever they make a Reform, they may choose to adopt either a regular or skirmish formation.

#field("OPTIONS", "")

- May be upgraded to Ambushers +1 point/model
- May take spears +0.5 point/model
- May take javelins +2 points/model
- May take shields +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Almogavar to a Leader +5 points
- May upgrade one Almogavar to a Musician +5 points
- May upgrade one Almogavar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("WAR DOGS")
#profile(
  (name: "War Dog", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
  (name: "Handler", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Canine)")
#field("HANDLER", "1 Handler (Human)")
#field("SPECIAL RULES", "Mixed Unit, Tactical Supremacy")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Handler to a Musician +5 points

#field("NOTES", "")

- One Handler must be included for every 10 War Dogs in the unit.

= SPECIAL UNITS

#entry("ROYAL GUARD", first: true)
#profile(
  (name: "Royal Guard", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, medium armour")
#field("SPECIAL RULES", "Stubborn, Tactical Supremacy")
#field("OPTIONS", "")

- May replace polearms with great weapons +1 point/model
- May take heavy armour +1.5 points/model
- May upgrade one Royal Guard to a Leader +5 points
- May upgrade one Royal Guard to a Musician +5 points
- May upgrade one Royal Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SISTERS OF FURY")
#profile(
  (name: "Sister of Fury", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 11),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, heavy armour, shield")
#field("SPECIAL RULES", "Hatred, Tactical Supremacy")
#field("OPTIONS", "")

- May upgrade one Sister of Fury to a Leader +5 points
- May upgrade one Sister of Fury to a Musician +5 points
- May upgrade one Sister of Fury to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("KNIGHTS")
#profile(
  (name: "Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 15),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("SPECIAL RULES", "Tactical Supremacy")
#field("UPGRADES", "")

- *Knights of the Blazing Sun:* The model must be armed with heavy lance, shield and barding. Whenever a unit where the majority of models have this special rule makes a successful charge, the enemy unit being charged suffer \-1 Weapon Skill and Ballistic Skill for the duration of the turn.
- *Knights of the Righteous Spear:* The model must be armed with heavy lance, shield and barding. All models with this special rule may re-roll failed To Wound rolls in turns that they successfully charge a unit.

#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Knights of the Blazing Sun +1 point/model
  - Knights of the Righteous Spear +1 point/model
- May choose one of the following:
  - Light lances +1 point/model
  - Heavy lances +2 points/model
- May take shields +2 points/model
- May take barding +1 point/model
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("CONQUISTADORS")
#profile(
  (name: "Conquistador", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 19),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, handgun, light armour")
#field("SPECIAL RULES", "Fast Cavalry, Tactical Supremacy")

- *Caracole:* Models with this special rule ignore the Ponderous special rule, and may fire their missile weapons to their flanks (in up to two files to either side) as well as their front.

#field("OPTIONS", "")

- May take medium armour +1 point/model
- May upgrade one Conquistador to a Leader +5 points
- May upgrade one Conquistador to a Musician +5 points
- May upgrade one Conquistador to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("MUSKETEERS")
#profile(
  (name: "Musketeer", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, musket")

- *Musket:* Muskets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("15/30\"", "5", "Armour Piercing (1), Move or Fire, Ponderous"))
#field("SPECIAL RULES", "Countermarch Fire, Tactical Supremacy")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Musketeer to a Leader +5 points
- May upgrade one Musketeer to a Musician +5 points
- May upgrade one Musketeer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("GRENADIERS")
#profile(
  (name: "Grenadier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, grenades, light armour")
#field("SPECIAL RULES", "Skirmishers, Tactical Supremacy")
#field("OPTIONS", "")

- May choose one of the following:
  - Pistols +1 point/model
  - Blunderbusses +2 points/model
- May take medium armour +1 point/model
- May upgrade one Grenadier to a Leader +5 points

#entry("MOUNTAIN BANDITS")
#profile(
  (name: "Mountain Bandit", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 8),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Expendable, Scouts, Skirmishers")

- *Guerrilla Fighters:* Unless it charged, marched or fled during the Movement phase of its turn, a unit with this special rule may move up to its Movement value directly backwards after resolving its missile attacks in its Shooting phase.

#field("OPTIONS", "")

- May upgrade one Mountain Bandit to a Leader +5 points
- May upgrade one Mountain Bandit to a Musician +5 points

#entry("MERCENARY OGRES")
#profile(
  (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapons, light armour")

- *Ogre Pistol:* Ogre pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Quick Shot"))

- *Ogre Handgun:* Ogre handguns use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Ponderous"))
#field("SPECIAL RULES", "Independent, Natural Armour (6+)")

- *Ogre Charge:* Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.

#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +3 points/model
  - Addditional hand weapons +3 points/model
  - Polearms +6 points/model
  - Ogre handguns +6 points/model
  - Ogre pistols +6 points/model
  - Great weapons +9 points/model
- May take medium armour +6 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("FALCONET")
#profile(
  (name: "Falconet", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "2 Crew (Human)")
#field("BASE SIZE", "40x60 (Falconet), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, falconet")

- *Falconet:* A falconet is a cannon that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "7", "Multiple Wounds (D3)"))

When firing grapeshot, hits are resolved at Strength 4 rather than Strength 5.

#field("OPTIONS", "")

- May take an additional crew +5 points

= RARE UNITS

#entry("KNIGHTS OF THE RAGING BULL", first: true)
#profile(
  (name: "Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 55),
  (name: "Aurochs", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 6, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Aurochs (Bovine)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield")
#field("SPECIAL RULES", "Impact Hits (D3), Mighty Blow (1) (Aurochs only), Tactical Supremacy")
#field("OPTIONS", "")

- May take barding +3 points/model
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("FIRE BULLS")
#profile(
  (name: "Fire Bull", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 5, points: 12),
  (name: "Picador", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "War Beast (Bovine)")
#field("HANDLER", "1 Picador (Human)")
#field("MOUNT", "1 Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance (Picador only)")
#field("SPECIAL RULES", "Mixed Unit")

- *Bull Run:* The Picadors may light up the horns of the Bulls at the start of any of your Movement phases. They then move using the Random Movement (3D6) special rule and gains the Immunity (Psychology) special rule for the remainder of the game.

If the Fire Bulls' move would bring them into contact with another unit, then they move through rather than stopping. If the Fire Bulls' move would end within a unit, then they automatically move through it – place the Fire Bulls 1" beyond the unit, in the direction they were moving. When a unit of Fire Bulls moves through a unit (friend or foe), each Bull in the unit inflicts a Strength 5 hit with the Flaming Attacks special rule.

Any unit that moves into contact with the front arc of a unit of Fire Bulls suffers a Strength 5 hit for each Fire Bull in base contact. These are resolved like Impact Hits in the close combat phase if the Fire Bulls are charged, or immediately in case a unit flees through them.

If the Picador(s) are killed before they have lit the bulls, the bulls simply wander off and are removed as casualties. If the Picadors are slain after they have lit the bulls, the Fire Bulls will move in a Random direction every turn.

#field("NOTES", "")

- One Picador must be included for every 5 Fire Bulls in the unit.

#entry("CULVERIN")
#profile(
  (name: "Culverin", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Culverin), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, cannon")
#field("OPTIONS", "")

- May take an additional crew +5 points

#entry("LOMBARD")
#profile(
  (name: "Lombard", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 80),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x50 (Lombard), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, lombard")

- *Lombard:* A lombard is a mortar that uses the small round template and the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Multiple Wounds (D3)"))
#field("OPTIONS", "")

- May take an additional crew +5 points

= SPECIAL CHARACTERS

#entry("ISABELLA GIOVANNA LUCCELLI", first: true)
#namecost("La Aguila Ultima, Head of the Order of the Eagle", "")
#profile(
  (name: "Isabella Giovanna Luccelli", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 295),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Sacred Sword of Vengeance:* Magic Weapon. Enemies in base contact with the wielder suffer \-1 To Hit. In addition, attacks with this blade have the Ignores Armour saves special rule.
- *Blessed Cuirass:* Magic Armour. Heavy armour. The wearer gains the Fly (10) special rule and a Magical Ward (4+), which may be re-rolled.
- *Light of Myrmidia:* Talisman. Enemies must re-roll successful To Hit rolls with missile weapons against Isabella.

#field("SPECIAL RULES", "Battle Prayers of Myrmidia (see High Priest of Myrmidia), Blessing of Myrmidia (see High")

Priest of Myrmidia)*, Magical Attacks, Magic Resistance (1), Tactical Supremacy*

- *Living Saint:* Isabella and all friendly units within 12" may re-roll failed Psychology tests. In addition, Isabella may re-roll failed Leadership tests when using her Battle Prayers. Any Battle Prayers can target any friendly unit within 12" rather than just the unit she is with.

#entry("JUAN FEDERICO")
#namecost("El Lider Glorioso, Grand Master of the Order of the Righteous Spear", "")
#profile(
  (name: "Juan Federico", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 205),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human).")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Shield, barding")
#field("MAGIC ITEMS", "")

- *Sword of Retribution:* Magic Weapon. All attacks made with this sword gain +1 Strength as well as the Flaming Attacks and the Multiple Wounds (D3) special rules.
- *Armour of Virtue:* Magic Armour. Heavy armour. The wearer and any unit they join have the Cold-Blooded special rule when taking Break tests.
- *Eagle of Myrmidia:* Talisman. The Eagle of Myrmidia gives the wearer the Immunity (Multiple Wounds, Killing Blow) special rule.

#field("SPECIAL RULES", "Righteous Charge, Tactical Supremacy")

- *Grand Master:* Juan Federico and any unit of Knights of the Righteous Spear that he joins gains the Immunity (Psychology) special rule for as long as he remains in the unit.
- *Knights of the Inner Circle:* If Juan Federico is in your army, you may upgrade one unit of Knights of the Righteous Spear to be Inner Circle for +2 points per model. These models gain +1 Strength and +1 Initiative.

#entry("SANTIAGO DE VIVAR")
#namecost("Champion of Estalia, Scourge of Araby", "")
#profile(
  (name: "Santiago de Vivar", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 9, points: 275),
  (name: "Babieca (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Babieca (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Barding")
#field("MAGIC ITEMS", "")

- *Tizona & Colada:* Magic Weapon. Two hand weapons. All attacks made with these swords may re-roll failed rolls To Hit and To Wound. In addition, the wielder gains the Fear special rule against enemy units with a lower Leadership value than them.
- *Armour of the Champion:* Magic Armour. Heavy Armour. All successful To Wound rolls against the wearer must be re-rolled.

#field("SPECIAL RULES", "Tactical Supremacy")

- *Champion of Estalia:* Each Wound caused by Santiago in close combat counts as D3 Wounds for the purposes of combat resolution.

#entry("FRANCISCO CORTEZ")
#namecost("Conqueror of the New World", "")
#profile(
  (name: "Francisco Cortez", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 115),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Pistol, medium armour")
#field("MAGIC ITEMS", "")

- *Rapier of Quietude:* Magic Weapon. All attacks made by this weapon have the Armour Piercing (3) and Parry (6+) special rules.
- *Amulet of Pahuax:* Talisman. This item gives the wearer the Regeneration (4+) special rule.

#field("OPTIONS", "")

- May be mounted on a Warhorse +12 points

#field("SPECIAL RULES", "Tactical Supremacy")

- *Conquistador Commander:* If Cortez is in your army, units of Conquistadors count as Core Units instead of Special Units. In addition, all Conquistador units may use his Leadership just as if he was the Army General.

#entry("DIEGO MONTOYA")
#profile(
  (name: "Diego Montoya", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 130),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Pistol")
#field("MAGIC ITEMS", "")

- *Blades of the Duellist:* Magic Weapon. Two hand weapons. For every attack that misses Diego in close combat, he may immediately make an attack back at that model.

#field("SPECIAL RULES", "Duelling Techniques (see Maestro), Face Me, You Coward! (see Maestro), Tactical")

*Supremacy*

- *Avenger:* At the start of the game, choose one enemy character. Against this model, Diego Montoya has the Hatred special rule. In addition, the target must re-roll all successful To Wound rolls against him.

#entry("DON LOMENTE")
#profile(
  (name: "Don Lomente", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 2, i: 3, a: 2, ld: 10, points: 100),
  (name: "Rocinante (Warhorse)", m: 7, ws: 2, bs: 0, s: 2, t: 2, w: 1, i: 2, a: 1, ld: 4, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Rocinante (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, medium armour, shield")
#field("SPECIAL RULES", "Unbreakable")

- *Tilting at Windmills:* Don Lomente may never be the Army General. If he has Line of Sight to a Monster or building, he must always move directly towards the nearest one whenever possible (charging if possible, even if the building is empty or garrisoned by a friendly unit). If he moves into contact with an empty or friendly building, he may move normally in his next turn.
- *Insane Luck:* Don Lomente has a 3+ invulnerable save.

#entry("MARIA DE SALVO")
#namecost("Sister Assassin of the Order of the Eagle", "")
#profile(
  (name: "Maria de Salvo", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 150),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Throwing weapons")
#field("MAGIC ITEMS", "")

- *The Eradicators:* Magic Weapon. Two hand weapons. All attacks made with the Eradicators have the Always Strikes First, Poisoned Attacks and Armour Piercing (1) special rules.
- *Seal of Myrmidia:* Talisman. The Seal of Myrmidia gives Maria a 2+ invulnerable save against Magical Attacks.

#field("SPECIAL RULES", "Dodge (5+), Hidden, Immunity (Psychology), Tactical Supremacy")

- *Mark of Death:* At the start of the game, secretly nominate one enemy character to be Maria's chosen target. Against this character, she has the Killing Blow special rule.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Antti Sinivuori", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
