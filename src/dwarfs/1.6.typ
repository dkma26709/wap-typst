// Dwarfs 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "dwarfs",
  army: "Dwarfs",
  version: "1.6",
  layout: "army",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Dwarfs 1.6")

#cover(
  title: "Dwarfs",
  subtitle: "Warhammer Armies Project · 1.6",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Dwarfs*, version 1.6 — written and freely distributed by Mathias
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
#namecost("ANCESTRAL GRUDGE", "")

Dwarfs have the Hatred (Orcs, Goblins, Trolls, Skaven) special rule.

#namecost("RELENTLESS", "")

Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.

#namecost("RESOLUTE", "")

When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.

#namecost("GROMRIL ARMOUR", "")

Models with this special rule add +1 to their armour saves if they wear light, medium or heavy armour.

#namecost("DWARF-CRAFTED", "")

All handguns, pistols and crossbows (as well as any other weapons with this special rule) in a Dwarf army can re-roll 1's when rolling To Hit.

#namecost("FORGEFIRE", "")

Models with this special rule and all friendly infantry models in a unit joined by one or more of them, gain the Armour Piercing (1) special rule for as long as they remain with the unit.

#namecost("OATH STONES", "")

A model with an Oathstone gains the Magic Resistance (1) special rule. A unit that contains one or more models with an Oath Stone can never choose to flee as a charge reaction, cannot be disrupted and, if any of its models are armed with hand weapon and shield, they can make Parry saves against attacks made to their flanks and rear. In addition, a character with an Oath Stone must always accept a challenge. However, if a model on an Oathstone fails a Break Test, they are removed as a casualty.

#namecost("NATURAL RESISTANCE", "")

When a Dwarf army attempts to dispel, they have a +2 bonus to all dispel attempts. This is cumulative with other dispel bonuses. Note that, if the Dwarfs are fighting alongside a Wizard for whatever reason, this bonus is lost.

#namecost("DEATHBLOW", "")

If a model with this special rule is killed by normal Close Combat Attacks, it will immediately make a single Attack back against the unit or model that killed it before the Slayer is removed as a casualty.

#namecost("WARDS OF GRIMNIR", "")

A model with Wards of Grimnir have a Ward save (6+) against missile and the Magic Resistance (1) special rule.

#namecost("RUNE LORE", "")

Lords with this special rule follow the rules for a Level 4 Wizard for the purposes of channelling dispel dice and dispelling, and have the Magic Resistance (2) special rule.

Heroes with this special rule follow the rules for a Level 2 Wizard for the purposes of channelling dispel dice and dispelling, and have the Magic Resistance (1) special rule.

In addition, a model with this special rule have the four Runes listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the Rune is struck and take immediate effect.

- *Rune of Hearth and Hold:* The model and their unit gain the Stubborn special rule until the start of your next turn. If the unit is already Stubborn, it becomes Unbreakable instead.
- *Rune of Stone and Steel:* The model and their unit gain a 6+ armour until the start of your next turn.
- *Rune of Wrath and Ruin:* All enemy units in base contact with the model suffer 2D6 Strength 4 hits.
- *Rune of Oath and Honour:* The model and their unit gain +3 to their Movement characteristic this turn.

#namecost("SLAYER", "")

Models with this special rule always Wound on a To Wound roll of 4+, unless they would need a lower result. Use the model's Strength to determine the armour save modifier for any successful Wounds. In addition, there are two forms of Slayers with the following additional rules:

- *Giant Slayer:* The model has the Multiple Wounds (D3) special rule when attacking Monstrous Infantry, Monstrous Beasts or Monstrous Cavalry.
- *Dragon Slayer:* The model has the Giant Slayer special rule. The model has the Multiple Wounds (D3) special rule when attacking Monstrous Creatures and Monsters.
- *Daemon Slayer:* The model has the Dragon Slayer special rule. In addition, any Ward saves successfully made against Attacks made by the model must be re- rolled.
]

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dwarfs. Dwarfs may not use magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("HAMMER OF SMEDNIR", "45 points")

Each Hit with this weapon is multiplied into D3 Hits.

#namecost("RED AXE OF KARAK EIGHT PEAKS", "40 points")

Against all Orcs, Goblins and Skaven, this weapon allows its wielder to re-roll To Hit and To Wound rolls as well as cause Terror.

#namecost("HAMMER OF KARAK DRAZH", "20 points")

Attacks with the Hammer of Karak Drazh are resolved at +3 Initiative, and any enemy models that suffer one or more unsaved Wounds from it are subject to the Always Strikes Last special rule until the end of the next Close Combat phase.

#namecost("KRAGGIS' ANCESTRAL PICKAXE", "20 points")

Great weapon. The wielder of this weapon has the Armour Piercing (1) and Underground Advance (see Miners) special rules.

#entry("MAGIC ARMOUR")
#namecost("MAGNIFICENT ARMOUR OF BOREK BEETLEBROW", "35 points")

Heavy armour. This armour gives the wearer a Ward save (3+) against all attacks of Strength 6 or higher.

#namecost("EVER-BURNING HELMET", "")
#namecost("OF GRUNGNI", "30 points")

This armour gives the wearer a 6+ armour save. All close combat attacks directed against the wearer must re-roll To Hit.

#namecost("RUNIC BRACERS OF SKAVOR", "25 points")

This armour gives the wearer a 6+ armour save. The wearer gains the Regeneration (5+) special rule.

#namecost("HELMET OF THE ANVIL", "10 points")

This armour gives the wearer a 6+ armour save. In addition, their armour save cannot be worse than a 6+.

#entry("TALISMANS")
#namecost("GOLDEN BANDS OF GRIMNIR", "45 points")

This item gives the wearer +1 Wound and the Magic Resistance (3) special rule.

#namecost("HEAVY METAL INGOT", "30 points")

This item allows the wielder to re-roll failed armour saves and ward saves in any turn they have not moved.

#entry("ENCHANTED ITEMS")
#namecost("FOCAL LENS OF MORGRIM", "40 points")

The bearer and any unit they join gain +1 To Hit with missile weapons.

#namecost("GOLDEN SCEPTRE OF NORGRIM", "40 points")

At the start of each of your turns, you may bestow either +1 Movement, +1 Strength or a 6+ Armour save onto the bearer and any unit he is with. Each bonus lasts until the start of your next turn.

#namecost("RUNIC TABLET OF THUNGNI", "30 points")

The bearer and any unit they join gain the Armour Piercing (1) special rule.

#namecost("SILVER HORN OF VENGEANCE", "30 points")

One use only. The Silver Horn of Vengeance can be used at the start of any friendly turn. Its wielder, and any friendly units within 6", have the Devastating Charge special rule until the start of their following turn. Additionally, once used, the blower of the Silver Horn of Vengeance, and any unit he joins, cause Fear in all Elves for the rest of the game.

#namecost("FIERY RING OF THORI", "35 points")

The Fiery Ring of Thori gives its bearer a Strength 4 Breath Weapon with the Flaming Attacks special rule.

#namecost("TEARDROP OF GRUNGNI", "20 points")

One use only. This item can be used in any of your Shooting phases and has a 6" range. The target suffers D3 Strength 6 Hits. In addition, if the target is a lone model, it must halve all its Movement until the start of your next turn.

#namecost("HEALING SALVE OF VALAYA", "15 points")

One use only. This item can be used at the start of the controlling player's turn. The model immediately recovers D3 Wounds up to their starting value.

#namecost("RESOUNDING GROMRIL HORN", "10 points")

One use only. This item may be used at the start of any of your turns. Once used, all friendly units within 12" gain +1 to their Leadership for the duration of the turn.

#entry("MAGIC STANDARDS")
#namecost("BANNER OF LOST HOLDS", "60 points")

All models in a unit that carries the Banner of Lost Holds can re-roll failed To Wound rolls in close combat.

= RUNIC ITEMS

Runic items are effectively magic items tailored to your own requirements by combining abilities. A Dwarf character can carry runic items, and the total points values of those runic items is limited as mentioned in the army list.

It is important to remember that a runic item is no different from a magic item, and all the usual rules for magic items still apply. All the rules that apply to the possession and use of magic items also apply to runic items.

#entry("CREATING A RUNIC ITEM")

Unless otherwise noted, runes can be inscribed onto the following things: weapons, armour, talismans, standards, and war machines. Each of these has its own types of runes.

If a model is permitted to take a runic weapon, they may choose weapon runes from the following list and apply them to their hand weapon.

If a model is permitted to take armour, they may choose armour runes from the following list and apply them to their armour.

Every character is assumed to have a talisman which can have talismanic runes.

If a model is permitted to take a runic standard, they may choose banner runes from.

Dwarf war machines can be inscribed with engineering runes. Shot from a war machine with an engineering rune has the Magical Attacks special rule.

#entry("RULES OF THE RUNES")

You may inscribe up to three runes onto an item, which will henceforth be considered magical. Runic magic items are subject to the following restrictions:

1) No single item can have more than three runes.

2) Weapon runes can only be inscribed on hand weapons unless specified, armour runes can only be inscribed on armour, banner runes can only be inscribed on standards, engineering runes can only be inscribed on war machines, and talismanic runes can only be inscribed on talismans (of which more later).

3) No more than one item may carry the exact same combination of runes. This restriction also applies to the use of single runes.

4) No master rune may be used more than once per army, and no more than one master rune can be inscribed on an item.

5) Apart from the master runes other runes can be combined as you wish, to produce varied or cumulative effects. With the exception of master runes, runes can be used in multiples when specified, although whether their effects are simply added together or combine into a new power will be stated within the rune's rules. The point costs for cumulative runes can be stated as 5/10/20 for example, where the higher numbers are the cost for the second and/or third cumulative rune.

#entry("WEAPON RUNES")
#columns(2)[
#namecost("MASTER RUNE OF SMITING", "35 points")

A weapon engraved with the Master Rune of Smiting has the Multiple Wounds (D6) special rule.

#namecost("MASTER RUNE OF DEATH", "30 points")

A weapon engraved with the Master Rune of Death grants its wielder the Heroic Killing Blow special rule.

#namecost("MASTER RUNE OF DRAGON", "")
#namecost("SLAYING", "30 points")

Against Dragons and Drakes, a weapon engraved with the Master Rune of Dragon Slaying will always wound on a To Wound roll of 2+ and has the Multiple Wounds (2) special rule.

#namecost("MASTER RUNE OF ALARIC", "")
#namecost("THE MAD", "25 points")

A weapon engraved with the Master Rune of Alaric the Mad has the Ignores Armour Saves special rule.

#namecost("MASTER RUNE OF SKALF", "")
#namecost("BLACKHAMMER", "20 points")

A weapon engraved with the Master Rune of Skalf Blackhammer will Wound any model not in magic armour on a To Wound roll of 2+, regardless of the target's Toughness. Against models in magic armour, a roll of 3+ is required.

#namecost("MASTER RUNE OF BREAKING", "25 points")

If a model with a weapon engraved with the Master Rune of Breaking scores one or more successful hits against a model, the foe's weapon or armour is destroyed on a D6 roll of 2+ (roll once, regardless of the number of successful hits). If the foe has more than one piece of equipment (note that two hand weapons count as one), roll a D6 to randomly determine which one is destroyed.

#namecost("MASTER RUNE OF SNORRI", "")
#namecost("SPANGELHELM", "25 points")

A weapon engraved with the Master Rune of Snorri Spangelhelm always hits on a To Hit roll of 2+.

#namecost("MASTER RUNE OF SWIFTNESS", "25 points")

A weapon engraved with the Master Rune of Swiftness has the Always Strikes First special rule.

#namecost("MASTER RUNE OF BANISHMENT", "20 points")

A weapon engraved with the Master Rune of Banishment may re-roll failed To Wound rolls against models with the Ethereal, Undead or Vampiric special rule.

#namecost("MASTER RUNE OF FLIGHT", "20 points")

A weapon engraved with the Master Rune of Flight can be thrown like a throwing weapon with a range of up to 12" which always hits on a roll of 2+. Roll To Wound as if the target had suffered a hit from the weapon in close combat.

Any additional runes on the weapon will also take effect. After this, the weapon flies back to the wielder. A weapon with the Master Rune of Flight can also be used in close combat as normal.

#namecost("MASTER RUNE OF KRAGG", "")
#namecost("THE GRIM", "5 points")

This rune can only be placed on great weapons. It allows the great weapon to be inscribed with runes.

#namecost("RUNE OF DAEMON SLAYING 25/50/100 points", "")

Against any model with the Daemonic special rule, a weapon engraved with a Rune of Daemon Slaying receives a +1 bonus To Hit and To Wound.

Against any model with the Daemonic special rule, a weapon engraved with two Runes of Daemon Slaying receives a +1 bonus To Hit and To Wound and gains the Multiple Wounds (D3) special rule.

Against any model with the Daemonic special rule, a weapon engraved with three Runes of Daemon Slaying hits and Wounds on a roll of 2+, has the Multiple Wounds (D3) special rule and no Ward saves can be taken against it.

#namecost("RUNE OF FIRE 5/35/55 points", "")

A weapon engraved with a Rune of Fire has the Flaming Attacks special rule.

A weapon engraved with two Runes of Fire has the Flaming Attacks special rule, and grants its wielder a Strength 4 Breath Weapon with the Flaming Attacks special rule.

A weapon engraved with three Runes of Fire has the Flaming Attacks special rule, and grants its wielder a Strength 4 Breath Weapon that has the Flaming Attacks and Multiple Wounds (D3) special rules.

#namecost("RUNE OF FURY 15/25/50 points", "")

A weapon engraved with a Rune of Fury grants its wielder +1 Attack.

A weapon engraved with two Runes of Fury grants its wielder +1 Attack and the Frenzy special rule.

A weapon engraved with three Runes of Fury grants its wielder +1 Attack and the Frenzy special rule and, after each successful roll To Hit and to Wound, it grants its user another Attack; roll To Hit and To Wound as normal. Attacks generated in this way do not generate further Attacks.

#namecost("RUNE OF STRIKING 10/30/40 points", "")

A weapon engraved with a Rune of Striking grants its wielder +1 Weapon Skill.

A weapon engraved with two Runes of Striking grants its wielder +1 Weapon Skill and allows its wielder to re-roll failed To Hit rolls in close combat.

A weapon engraved with three Runes of Striking grants its wielder Weapon Skill 10 and allows him to re-roll failed To Hit rolls in close combat.

#namecost("RUNE OF CLEAVING 5/20/35 points", "")

A weapon engraved with a Rune of Cleaving has the Armour Piercing (1) special rule.

A weapon engraved with two Runes of Cleaving has the Armour Piercing (1) special rule, and additionally grants its wielder +1 Strength.

A weapon engraved with three Runes of Cleaving has the Armour Piercing (1) special rule, and additionally grants its wielder +1 Strength and the Killing Blow special rule.

#namecost("RUNE OF MIGHT 25/35 points", "")

A weapon engraved with a Rune of Might doubles its wielder's Strength against foes of Toughness 5 or higher in close combat.

A weapon engraved with two Runes of Might maintains the previous effect, and grants the Multiple Wounds (D3) special rule against foes of Toughness 5 or higher in close combat.

#namecost("RUNE OF DISMAY 15/25 points", "")

A weapon engraved with a Rune of Dismay grants its wielder the Fear special rule.

A weapon engraved with two Runes of Dismay grants its wielder the Terror special rule.

#namecost("RUNE OF PARRYING", "20 points")

A weapon engraved with a Rune of Parrying causes all enemy models attempting to attack its wielder in close combat to suffer a \-1 penalty to their To Hit rolls.

#namecost("GRUDGE RUNE", "20 points")

For each Grudge Rune in your army, nominate one enemy character or monster at the beginning of the game. The wielder of a weapon engraved with a Grudge Rune gains +1 To Hit and can re-roll failed To Wound rolls in close combat when attacking the nominated model.

#namecost("RUNE OF SPEED", "5 points")

A weapon engraved with a Rune of Speed grants its wielder +1 Initiative. Each Rune of Speed adds +1 Initiative.
]

#entry("ARMOUR RUNES")
#namecost("MASTER RUNE OF ADAMANT", "50 points")

A model wearing armour engraved with the Master Rune of Adamant has Toughness 10. This rune cannot be combined with any other armour runes.

#namecost("MASTER RUNE OF STEEL", "30 points")

Enemies must re-roll successful To Wound roll against a model wearing armour engraved with the Master Rune of Steel.

#namecost("MASTER RUNE OF GROMRIL", "20 points")

Armour engraved with the Master Rune of Gromril grants its wearer a 1+ armour save that cannot be improved upon in any way.

#namecost("RUNE OF FORTITUDE 20/50/60 points", "")

Armour engraved with a Rune of Fortitude grants its wearer +1 Toughness.

Armour engraved with two Runes of Fortitude grants its wearer +1 Toughness and a Ward save (5+).

Armour engraved with three Runes of Fortitude grants its wearer +1 Toughness, a Ward save (5+) and the Immunity (Multiple Wounds) special rule.

#namecost("RUNE OF IRON 15/35/45 points", "")

Armour engraved with a Rune of Iron grants its wearer +1 Wound.

Armour engraved with two Runes of Iron grants its wearer +1 Wound and +1 Toughness.

Armour engraved with three Runes of Iron grants its wearer +1 Wound, +1 Toughness and the Regeneration (5+) special rule.

#namecost("RUNE OF RESISTANCE", "25 points")

This rune allows the character to re-roll any failed armour saving throws.

#namecost("RUNE OF SHIELDING", "15 points")

Armour engraved with a Rune of Shielding grants its wearer a Ward save (2+) against Wounds caused by missile attacks.

#namecost("RUNE OF PRESERVATION", "10 points")

Armour engraved with a Rune of Preservation grants the wearer the Immunity (Killing Blow/Heroic Killing Blow) special rule.

#namecost("RUNE OF IMPACT", "5 points")

Armour engraved with a Rune of Impact grants its wearer the Impact Hits (1) and Strength Bonus (1) special rules.

#namecost("RUNE OF STONE", "5 points")

Armour engraved with a Rune of Stone adds +1 to its wearer's armour save.

#entry("TALISMANIC RUNES")
#namecost("MASTER RUNE OF BALANCE", "50 points")

Runesmiths/Runelords only. During the enemy's Magic phase, this rune allows the owning player remove one power dice from his opponent's pool and add it to his own dispel pool.

#namecost("MASTER RUNE OF KINGSHIP", "40 points")

Dwarf Lord only. The Master Rune of Kingship gives the Lord and the unit he is with the Stubborn and Immunity (Fear/Terror) special rules for as long as he remains with the unit. If he joins a unit of Hammerers, the unit becomes Unbreakable instead. If the model is not in a unit, it has no effect.

#namecost("MASTER RUNE OF SPITE", "30 points")

Every time a model with the Master Rune of Spite is Hit in close combat, the model that struck the blow suffers a Strength 4 hit.

#namecost("MASTER RUNE OF SPELLBINDING", "20 points")

A model with the Master Rune of Spellbinding gets a +1 bonus to all attempts to channel dispel dice.

#namecost("MASTER RUNE OF CHALLENGE", "15 points")

One use only. The rune is used during the enemy turn before they declare charges. Nominate one enemy unit within 12" of the rune user. The unit must be able to charge and reach the rune user or the unit he is with according to the normal rules. The enemy unit must either declare a charge against the rune user (and any unit he is with) or must flee in the Compulsory Movement phase as if it had failed a Panic test. The rune user (and any unit he is with) can only elect to Hold or Stand and Shoot. Any Terror tests are taken as normal. This rune has no effect on units that have Immunity (Psychology).

#namecost("MASTER RUNE OF PASSAGE", "10 points")

A model with the Master Rune of Passage, and any unit he joins, automatically pass any Dangerous Terrain tests.

#namecost("RUNE OF WARDING 15/30/45 points", "")

A model with a Rune of Warding has a Ward save (6+).

A model with two Runes of Warding has a Ward save (5+).

A model with three Runes of Warding has a Ward save (4+).

#namecost("RUNE OF SPELLBREAKING 25/35 points", "")

Runesmiths/Runelords only. One use only. When a spell has been cast, a Runesmith or Runelord can use this rune to dispel it automatically, without the need to roll dispel dice. This rune cannot be used to dispel Remains in Play spells other than at the moment they are cast.

A second Rune of Spell breaking maintains the previous effect and, after the spell is dispelled, roll a D6; on a 4+, the enemy spell is lost to the Wizard casting it and cannot be cast by him for the rest of the game.

#namecost("RUNE OF FATE", "15 points")

One use only. The model has a Ward save (2+) against the first unsaved Wound suffered.

#namecost("RUNE OF BROTHERHOOD", "5 points")

May not be used by a character with an Oath stone or Shieldbearers. A character with this rune may either be deployed with a unit of Rangers utilising the Scouts special rule or join a unit of Miners utilising the Ambushers special rule.

#namecost("RUNE OF THE FURNACE", "5 points")

A model with the Rune of the Furnace has the Immunity (Flaming Attacks) special rule.

#namecost("RUNE OF LUCK", "5 points")

One use only. A model with a Rune of Luck can re-roll a single To Hit roll, To Wound roll, armour save, ward save or characteristic test during the game.

#entry("BANNER RUNES")
#columns(2)[
#namecost("MASTER RUNE OF GROTH ONE-EYE", "75 points")

A standard bearing the Master Rune of Groth One-Eye confers the Stubborn special rule to the bearer's unit and all friendly Dwarf units within 12" of the bearer.

#namecost("MASTER RUNE OF STROMNI", "")
#namecost("REDBEARD", "60 points")

A standard bearing the Master Rune of Stromni Redbeard confers a further +1 bonus to the bearer's unit's combat result score, and the combat result score of all other friendly Dwarf units within 12" of the bearer.

#namecost("MASTER RUNE OF GRUNGNI", "60 points")

A standard bearing the Master Rune of Grungni confers a Ward save (5+) against Wounds caused by missile attacks to any friendly units within 12" of the bearer.

#namecost("MASTER RUNE OF GRIMNIR", "50 points")

Slayers only. Any friendly Slayer unit within 12" of the standard gains a Ward save (5+) against all missile attacks.

#namecost("MASTER RUNE OF VALAYA", "25 points")

A standard bearing the Master Rune of Valaya confers a +1 bonus upon all attempts to dispel magic by the owning player. Additionally, all Remains in Play spells are immediately dispelled on a D6 roll of 3+ at the start of each friendly Magic phase (roll separately for each Remains in Play spell).

#namecost("MASTER RUNE OF FEAR", "25 points")

A standard bearing the Master Rune of Fear confers the Fear special rule to the bearer's unit.

#namecost("RUNE OF BATTLE 20/40/60 points", "")

A standard bearing a Rune of Battle confers a further +1 bonus to the bearer's unit's combat result score.

A standard bearing two Runes of Battle confers a further +2 bonus to the bearer's unit's combat result score.

A standard bearing three Runes of Battle confers a further +2 bonus to the bearer's unit's combat result score, and additionally confers the Fight in Extra Ranks (1) special rule to the bearer's unit.

#namecost("RUNE OF SLOWNESS 20/30/50 points", "")

Any foes charging a unit including a standard bearing a Rune of Slowness subtract D3" from their charge distance (roll after their charge distance has been determined). If the enemy fails to make contact, all the rules for failed charges apply.

A second Rune of Slowness means a foe rolls 2D3 and must choose the highest dice when subtracting from his charge distance.

A third Rune of Slowness maintains the previous effects and, should a foe contact the bearing unit, they have the Always Strikes Last special rule in the first round of combat.

#namecost("RUNE OF STOICISM", "50 points")

A standard bearing the Rune of Stoicism confers the Stubborn special rule to the bearer's unit.

#namecost("RUNE OF SANCTUARY 10/20/30 points", "")

A standard bearing a Rune of Sanctuary confers the Magic Resistance (1) special rule to the bearer's unit.

A standard bearing two Runes of Sanctuary confers the Magic Resistance (2) special rule to the bearer's unit.

A standard bearing three Runes of Sanctuary confers the Magic Resistance (3) special rule to the bearer's unit.

#namecost("RUNE OF GUARDING", "30 points")

Battle Standard Bearer only. The bearer of a standard with the Rune of Guarding has a Ward Save (5+).

#namecost("RUNE OF COURAGE", "20 points")

A standard bearing the Rune of Courage confers the Immunity (Psychology) special rule to the bearer's unit.

#namecost("RUNE OF DETERMINATION", "15 points")

One use only. The unit may take a Break test on a single D6 rather than 2D6.

#namecost("RUNE OF KADRIN", "20 points")

A standard bearing the Rune of Kadrin allow all models in the unit to re-roll all To Wound rolls of 1 with close combat and missile attacks.

#namecost("STROLLAZ' RUNE", "10 points")

A standard bearing Strollaz' Rune confers the Vanguard special rule to the bearer's unit.

#namecost("ANCESTOR RUNE", "10 points")

One use only. If the unit carrying a banner with this rune has to take a Break test, the rune is expended. The unit tests as if it were Stubborn.

#namecost("RUNE OF FORGING", "25 points")

Cannon only. A war machine engraved with a Rune of Forging can re-roll the artillery dice whenever a misfire result is rolled; however, you must accept the result of the second roll.

#namecost("RUNE OF ACCURACY", "20 points")

A war machine with engraved with a Rune of Accuracy has a +1 bonus To Hit. If it does not use Ballistic Skill To Hit, it can instead re-roll the scatter dice. May not be taken by an Organ Gun.

#namecost("RUNE OF RELOADING", "20 points")

A war machine engraved with a Rune of Reloading can shoot every turn, even if it has moved or rolled a misfire the previous turn.

#namecost("FLAKKSON'S RUNE OF SEEKING", "15 points")

Bolt Throwers only. A war machine engraved with Flakkson's Rune of Seeking gains +1 To Hit against any units with the Fly special rule.

#namecost("RUNE OF FORTUNE", "10 points")

If a machine has the Rune of Fortune the player may re-roll the result on the machine's Misfire chart.

#namecost("STALWART RUNE 5/10 points", "")

A war machine engraved with a Stalwart Rune confers a +1 bonus to its crew's combat result score.

A war machine engraved with two Stalwart Runes confers a +1 bonus to its crew's combat result score, and its crew also gain the Stubborn special rule.

#namecost("VALIANT RUNE", "5 points")

The war machine crew gains the Stubborn special rule.

#namecost("RUNE OF BURNING", "5 points")

All shooting attacks from a war machine engraved with a Rune of Burning have the Flaming Attacks special rule.
]

#entry("ENGINEERING RUNES")
#namecost("MASTER RUNE OF IMMOLATION", "20 points")

One use only. A Dwarf player can cause a war machine engraved with the Master Rune of Immolation to explode at the end of any round of combat before determining the combat results. Both the war machine and all its remaining crew are instantly removed from play, and each enemy unit in combat with the war machine suffers 2D6 magical Strength 4 hits with the Flaming Attacks special rule, allocated as for shooting. Any surviving enemy units who charged that turn may make an overrun move as normal. This rune will also be triggered automatically when the war machine loses its last Wound in close combat.

#namecost("MASTER RUNE OF DEFENCE", "20 points")

The war machine gains a Ward save (3+) against all missile attacks.

#namecost("MASTER RUNE OF SKEWERING", "20 points")

Bolt Thrower only. The Bolt Thrower always hits on a 3+ with no modifiers.

#namecost("MASTER RUNE OF DISGUISE", "15 points")

A war machine engraved with the Master Rune of Disguise always counts as being in hard cover.

#namecost("RUNE OF PENETRATING 30/40 points", "")

A war machine engraved with a Rune of Penetration increases the Strength of its shots by 1, to a maximum of 10.

A war machine engraved with two Runes of Penetration increases the Strength of its shots by 1, to a maximum of 10, and allows the user to re-roll a single failed To Wound roll during the course of the battle. Note that in the case of a Grudge Thrower, this bonus increases the Strength of both Strength values in its profile.

= LORDS

#entry("LORD", first: true)
#profile(
  (name: "Lord", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 140),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +3 points
  - Pistol +6 points
  - Great weapon +8 points
- May choose one of the following:
  - Crossbow +5 points
  - Handgun +5 points
- May take heavy armour +9 points
- May take a shield +3 points
- May be mounted on one of the following
  - Shieldbearers +5 points
  - Oathstone +25 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Relentless, Resolute")

#entry("RUNELORD")
#profile(
  (name: "Runelord", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 2, ld: 9, points: 160),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take a great weapon +4 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +3 points
- May be mounted on an Anvil of Doom +120 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Ancestral Grudge, Forgefire, Gromril Armour, Relentless, Resolute, Rune Lore")

#entry("DAEMON SLAYER")
#profile(
  (name: "Daemon Slayer", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 140),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +3 points
  - Great weapon +8 points
- May choose one of the following:
  - Killing Blow +15 points
  - Vampire Slayer +15 points
  - Beast Slayer +25 points
  - Skaven Slayer +25 points
- May have Wards of Grimnir +20 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Ancestral Grudge, Daemon Slayer, Deathblow, Relentless, Unbreakable")
#field("UPGRADES", "")

- *Beast Slayer:* Each wound inflicted by the model counts double towards that round's Combat Resolution (excluding Wounds from Overkill in a challenge).
- *Killing Blow:* The model gains the Killing Blow special rule.
- *Skaven Slayer:* The model gains a number of Attacks equal to the number of enemy models in base contact with him.
- *Vampire Slayer:* The model may re-roll failed rolls To Wound against enemies with Toughness 5 or higher.

#field("NOTES", "")

- For each Daemon Slayer in your army, you may take one unit of Troll Slayers as a Core Unit.

= HEROES

#entry("THANE", first: true)
#profile(
  (name: "Thane", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 10, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("OPTIONS", "")

- One Thane may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +6 points
  - Pistol +6 points
- May choose one of the following:
  - Crossbow +5 points
  - Handgun +5 points
- May take heavy armour +6 points
- May take a shield +2 points
- May be mounted on an Oathstone +25 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Relentless, Resolute")
#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("RUNESMITH")
#profile(
  (name: "Runesmith", m: 3, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 100),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take a great weapon +4 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour +6 points
- May take a shield +3 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Forgefire, Gromril Armour, Relentless, Resolute, Rune Lore")

#entry("DRAGON SLAYER")
#profile(
  (name: "Dragon Slayer", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +6 points
- May choose one of the following:
  - Killing Blow +15 points
  - Vampire Slayer +15 points
  - Beast Slayer +25 points
  - Skaven Slayer +25 points
- May have Wards of Grimnir +20 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Dragon Slayer, Relentless, Unbreakable")
#field("UPGRADES", "")

- *Beast Slayer:* Each wound inflicted by the model counts double towards that round's Combat Resolution (excluding Wounds from Overkill in a challenge).
- *Killing Blow:* The model gains the Killing Blow special rule.
- *Skaven Slayer:* The model gains a number of Attacks equal to the number of enemy models in base contact with him.
- *Vampire Slayer:* The model may re-roll failed rolls To Wound against enemies with Toughness 5 or higher.

#entry("BREWMASTER")
#profile(
  (name: "Brewmaster", m: 3, ws: 4, bs: 4, s: 4, t: 5, w: 2, i: 1, a: 2, ld: 9, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take a great weapon +4 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour +6 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

- *Beer Gut:* Enemy attacks against the Brewmaster's front arc suffer \-1 To Wound.
- *Beer Casks:* At the start of each of your turns, the Brewmaster can bestow one of the following beers to himself and the unit they are with. Roll a D6; on a 1, the Brewmaster and their unit suffer \-1 to their Weapon Skill, Ballistic Skill and Initiative in addition to the effect of the chosen beer. Each beer effect lasts until the start of your next turn. A unit can only be under the effect of one beer type at a time.
  - *Bugman's XXXXXX:* The unit gains the Mighty Blow (1) special rule.
  - *Dwarf Special Reserve:* The unit gains the Immunity (Psychology) special rule.
  - *Troll Brew:* The unit gains the Regeneration (6+) special rule.

#entry("MASTER ENGINEER")
#profile(
  (name: "Master Engineer", m: 3, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose any of the following:
  - Great weapon +4 points
  - Handgun +5 points
  - Pistol +6 points
  - Brace of pistols +8 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour +6 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

- *Artillery Master:* One war machine that is within 3" of a Master Engineer can use his Ballistic Skill or re-roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Master Engineer are fired.
- *Entrenchment:* Up to one unit with the troop type war machine can be entrenched for each Master Engineer in the army. An entrenched war machine is treated as being in hard cover when shot at and any charging models suffer a \-1 To Hit modifier in close combat. An entrenched war machine can be pivoted to fire, but if it moves in any other way, the entrenchment is lost. If the war machine is destroyed, the entrenchment is considered destroyed as well. A war machine can only be entrenched once.
- *"Stand Back Sir!":* A model with this special rule that is within 3" of a war machine is allowed to take a "Look Out Sir!" roll just as if he was within 3" of a unit of five or more models of the same troop type as himself. If the roll is successful, the hit is resolved instead against the nearest friendly war machine.

= CHARACTER MOUNTS

#entry("SHIELDBEARERS", first: true)
#profile(
  (name: "Shieldbearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 2, ld: 9, points: "-"),
)
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x40, 25x50, 40x40 or 50x50")
#field("OPTIONS", "")

- May take an additional shieldbearer +2 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")
#field("NOTES", "")

- Shieldbearers have a Unit Strength and Line of Sight value of 2.
- An additional shieldbearer adds +1 Attack and +1 Unit Strength.

#entry("ANVIL OF DOOM")
#profile(
  (name: "Anvil of Doom", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: "-"),
  (name: "Anvil Guard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "2 Anvil Guards (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

- *Anvil of Doom:* A Runelord with an Anvil of Doom gains the Ward Save (4+) and Unbreakable special rules. In addition, his troop type changes to War Machine and he counts as being part of the crew. The Runelord can never choose to leave the Anvil during the game. If the Runelord is killed, the whole Anvil is also removed as a casualty.
- *Locus of Power:* For each friendly Anvil of Doom on the battlefield at the start of any Magic phase, add one dice to your dispel pool.
- *Strike the Runes:* A model mounted on an Anvil of Doom can use the following Ancestor Runes once each at the start of each of your turns:
  - *Ancestor Rune of Grungni:* Choose one friendly Dwarf unit within 24". Until the start of your next turn, the target gains the Fight in Extra Ranks (1) special rule and may re-roll failed rolls To Hit in close combat and with missile weapons.
  - *Ancestor Rune of Valaya:* Choose one friendly Dwarf unit within 24". The target regains 2D3 Wounds' worth of models slain earlier in the battle, just like a summoning spell.
  - *Ancestor Rune of Grimnir:* Choose one unengaged enemy unit within 24"; that unit suffer 2D6 Strength 4 hits.

Choose which rune you wish the model to strike. Then the model needs to take a Leadership test on their own unmodified Leadership. If passed, the Rune is struck and take immediate effect. If the Leadership test is failed, roll a D6 and consult the Failed Rune table below:

#chartlabel("FAILED RUNE TABLE")
#chart((("D6", "Result"), ("1", "Remove the Anvil of Doom, the Runelord and the Anvil Guards as casualties immediately."), ("2-3", "The rune does not take effect and the Anvil of Doom may not attempt to strike any further runes this
turn."), ("4-6", "The rune does not take effect.")))

= CORE UNITS

#entry("WARRIORS", first: true)
#profile(
  (name: "Warrior", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 7),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Shields +1 point/model
  - Great weapons +2 points/model
- May take heavy armour +1.5 points/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

#entry("QUARRELLERS")
#profile(
  (name: "Quarreller", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 13),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, crossbow, light armour")
#field("OPTIONS", "")

- May take great weapons +2 points/model
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Shields +1 point/model
- May take medium armour +1 point/model
- May upgrade one Quarreller to a Leader +5 points
- May upgrade one Quarreller to a Musician +5 points
- May upgrade one Quarreller to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

#entry("THUNDERERS")
#profile(
  (name: "Thunderer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 13),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, handgun, light armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +0.5 point/model
  - Shields +1 point/model
- May take medium armour +1 point/model
- May upgrade one Thunderer to a Leader +5 points
  - May replace handgun with brace of pistols free
- May upgrade one Thunderer to a Musician +5 points
- May upgrade one Thunderer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

#entry("MINERS")
#profile(
  (name: "Miner", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 9),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, medium armour")

- *Blasting Charges:* One use only. Blasting charges have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("4\"", "4", "Armour Piercing (1), Flaming Attacks, Quick to Fire"))

- *Steam Drill:* Great weapon. Steam drills add +1 Strength. A Miner unit equipped with a steam drill can re-roll a failed arrival for its Ambushers special rule.

#field("OPTIONS", "")

- May take blasting charges +15 points
- May upgrade one Warrior to a Leader +5 points
  - May replace great weapon with steam drill +10 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

- *Underground Advance:* Miners have the Ambushers special rule. In addition, instead of deploying like normal Ambushers, a Miner unit can choose to arrive anywhere on the battlefield from below.

During deployment, before Scouts are placed, place a tunnel marker anywhere on the battlefield. The unit will then deploy using the Ambushers special rule. When the unit emerges, roll a scatter dice and an artillery dice. If you roll a hit on the scatter dice, the marker stays in place; if you roll an arrow, move the marker the number of inches indicated by the artillery dice in the direction shown by the arrow. If the marker is moved off the tabletop, the Miners are considered lost; treat them as casualties. In case a Misfire is rolled, roll a D6 and consult the Underground Mishap chart.

Once the final position is established, place the Miner unit so it can touch the marker. If the marker is under a friendly unit or impassable terrain, place it next to the closest edge of the unit/terrain. They may face in any direction.

If the marker is under an enemy unit when the Miners emerge, the Miners are considered to have charged. Place the attacking Dwarfs to the front of the enemy unit that is atop the marker.

*UNDERGROUND MISHAP CHART*

#chart((("D6", "Result"), ("1-2", "Cave-in! The Miners are instantly killed."), ("3-5", "Partial Collapse. All models in the unit must pass a Strength test or be removed as casualties. Any
models that survive may not move or charge on the turn they emerge after a Partial Collapse. If the
models emerge into close combat they have the Always Strikes Last special rule for the remainder of
the turn."), ("6", "Should Have Taken That Left Turn. Your opponent places the marker anywhere within 18\" of the
original position on the table and this is where the Miners emerge. They cannot move or charge on
the turn they emerge.")))

= SPECIAL UNITS

#entry("LONGBEARDS", first: true)
#profile(
  (name: "Longbeard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 13),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Shields +1 point/model
  - Great weapons +2 points/model
- May upgrade one Longbeard to a Leader +5 points
- May upgrade one Longbeard to a Musician +5 points
- May upgrade one Longbeard to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")

- *Old Grumblers:* Longbeards have the Immunity (Panic) special rule. In addition, any friendly Dwarf units within 6'' of a unit of Longbeards can re-roll failed Panic tests.

#entry("IRONBREAKERS")
#profile(
  (name: "Ironbreaker", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 14),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")

- *Cinderblast bombs:* Cinderblast bombs are stone throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("5-8\"", "3(6)", "Armour Piercing (1), Multiple Wounds (D3), Quick to Fire"))

When resolving the scatter distance, halve the number indicated by the Artillery dice. If the artillery dice result is a misfire, roll a D6. On a result of a 1, centre the template over the thrower and work out the damage.

#field("OPTIONS", "")

- May upgrade one Ironbreaker to a Leader +5 points
  - May take cinderblast bombs +15 points
- May upgrade one Ironbreaker to a Musician +5 points
- May upgrade one Ironbreaker to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Relentless, Resolute")

- *Shieldwall:* Models with this special rule may re-roll failed Parry saves.

#entry("TROLL SLAYERS")
#profile(
  (name: "Troll Slayer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 10, points: 10),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, great weapons")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Troll Slayer to a Leader +5 points
- May upgrade one Troll Slayer to a Musician +5 points
- May upgrade one Troll Slayer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Slayer, Relentless, Unbreakable, Vanguard")

#entry("RANGERS")
#profile(
  (name: "Ranger", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 7),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May choose any of the following:
  - Great weapons +2 points/model
  - Throwing axes +2 points/model
  - Crossbows +5 points/model
- May take shields +1 point/model
- May take medium armour +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Ranger to a Leader +5 points
- May upgrade one Ranger to a Musician +5 points
- May upgrade one Ranger to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Hill Strider, Relentless, Resolute, Scouts")

#entry("DEATHROLLER")
#profile(
  (name: "Deathroller", m: "*", ws: "-", bs: "-", s: 5, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 80),
  (name: "Driver", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 5+)")
#field("CREW", "1 Driver (Dwarf)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ancestral Grudge, Random Movement (2D6), Resolute")

- *The Best Defence:* The Deathroller has an armour save of 3+ against all models attacking from the front.
- *Grinding Attack:* A Deathroller is moved during combat to crush the enemies trying to dodge the heavy machine. In addition to its normal Impact Hits when charging, the Deathroller inflicts D6 Impact Hits at the start of each close combat round. If you roll a 6 when determining the number of Impact Hits, the driver has pushed the boiler beyond his limits. Roll a D6 and consult the Boiler Incident Table.
- *Over-Pressured Boiler:* If two or more l's are rolled when rolling for its movement, you need to roll another D6 and consult the Boiler Incident Table. The driver can take the risk and increase the pressure of the steam boiler before choosing to move the Deathroller. This gives the Deathroller the Random Movement (3D6) special rule.

#chartlabel("BOILER INCIDENT TABLE")
#chart((("D6", "Result:"), ("1", "Remove the Deathroller as a casualty. All units in base contact with the Deathroller suffer D6
Strength 4 Hits with the Armour Piercing special rule."), ("2-4", "The Deathroller may not move this turn or use its Grinding Attack. If it breaks from combat this
round, it is automatically destroyed."), ("5-6", "The Deathroller may only roll one D6 for each of its Movements this turn (including fleeing and
pursuit).")))

#entry("FIRETHROWER")
#profile(
  (name: "Firethrower", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 60),
)
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x40 or 25x50")
#field("EQUIPMENT", "Hand weapon, firethrower, light armour")

- *Firethrower:* This is a fire thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "4", "Flaming Attacks, Slow to Fire"))
#field("OPTIONS", "")

- May take medium armour +2 points

#field("SPECIAL RULES", "Ancestral Grudge, Relentless, Resolute")
#field("NOTES", "")

- Firethrowers have a Unit Strength of 2.

#entry("BOLT THROWER")
#profile(
  (name: "Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 45),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Bolt Thrower)")
#field("CREW", "3 Crew (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take light armour +1 point/model
- May take engineering runes up to 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Resolute")

#entry("GRUDGE THROWER")
#profile(
  (name: "Grudge Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 90),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Stone Thrower)")
#field("CREW", "3 Crew (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take light armour +1 point/model
- May take engineering runes up to 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Resolute")

#entry("CANNON")
#profile(
  (name: "Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 90),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Cannon)")
#field("CREW", "3 Crew (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take light armour +1 point/model
- May take engineering runes up to 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Resolute")

#entry("GYROCOPTER")
#profile(
  (name: "Gyrocopter", m: "-", ws: "-", bs: "-", s: 4, t: 5, w: 3, i: "-", a: "-", ld: "-", points: 85),
  (name: "Pilot", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 4+)")
#field("CREW", "1 Pilot (Dwarf)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, steam gun")

- *Steam Gun:* Stream guns are Breath Weapon attacks with Strength 2, Armour Piercing (1) special rule. It cannot not be used in close combat, but it can always be used in the shooting phase.
- *Brimstone Gun:* Brimstone Gun have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "5", "Armour Piercing (1), Flaming Attacks, Multiple Shots (3), Quick to Fire"))

- *Clattergun:* Clatterguns have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Multiple Shots (5), Quick to Fire"))
#field("OPTIONS", "")

- May replace steam gun with one of the following:
  - Brimstone gun free
  - Clattergun free

#field("SPECIAL RULES", "Ancestral Grudge, Fly (9), Relentless, Resolute.")

- *Dive Bomb:* Once per game, during the Remaining Moves sub-phase, models with this special rule may drop bombs unless they are fleeing.

To Dive Bomb, select one unengaged enemy unit that the Gyrocopter moved over in that turn. To determine the damage caused by the bombs, roll an artillery dice; this is the number of hits inflicted. If a misfire is rolled, the Gyrocopter takes a single Wound with no armour save allowed. The Gyrocopter's bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3", "Armour Piercing (1)"))

If a Gyrocopter Dive Bombs, it cannot make any other shooting attacks in that turn.

= RARE UNITS

#entry("HAMMERERS", first: true)
#profile(
  (name: "Hammerer", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 9, points: 16),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("OPTIONS", "")

- May take shields +1.5 points/model
- May upgrade one Hammerer to a Leader +5 points
- May upgrade one Hammerer to a Musician +5 points
- May upgrade one Hammerer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 75 points

#field("SPECIAL RULES", "Ancestral Grudge, Armour Piercing (1), Relentless, Stubborn")

- *King's Guard:* If the unit is joined by the Army General the unit gain the Immunity (Fear/Terror) special rule while they remain in the unit.

#entry("IRONDRAKES")
#profile(
  (name: "Irondrake", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 15),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, drakegun, heavy armour")

- *Drakegun:* Drakeguns have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("15\"", "5", "Armour Piercing (1), Flaming Attacks, Quick to Fire"))

- *Brace of drakefire pistols:* Drakefire pistols have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("10\"", "5", "Armour Piercing (1), Flaming Attacks, Quick to Fire"))

- *Trollhammer Torpedo:* Trollhammer Torpedoes have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "8", "Flaming Attacks, Multiple Wounds (D3), Slow to Fire"))
#field("OPTIONS", "")

- May upgrade one Irondrake to a Leader +5 points
  - May take cinderblast bombs (see Ironbreakers) +15 points
  - May replace drakegun with one of the following:
- Brace of drakefire pistols free
- Trollhammer torpedo +15 points
- May upgrade one Irondrake to a Musician +5 points
- May upgrade one Irondrake to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Immunity (Flaming Attacks), Gromril Armour, Relentless, Resolute")

#entry("GIANT SLAYERS")
#profile(
  (name: "Giant Slayer", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 10, points: 15),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, great weapons")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Giant Slayer to a Leader +5 points
- May upgrade one Giant Slayer to a Musician +5 points
- May upgrade one Giant Slayer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Giant Slayer, Relentless, Unbreakable, Vanguard")

#entry("DOOMSEEKERS")
#profile(
  (name: "Doomseeker", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 3, a: "*", ld: 10, points: 35),
)
#field("UNIT SIZE", "2-5")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Doomseeker axes")

- *Doomseeker axes:* Doomseeker axes have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Impact Hits (D6)"))

Doomseeker axes inflicts Impact Hits (D6) at the start of each round of close combat, not just when charging. In addition, any close combat attacks directed against a Doomseeker suffer \-1 To Hit.

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Slayer, Relentless, Skirmishers, Unbreakable, Wards of Grimnir")

#entry("RUNE GUARDIANS")
#profile(
  (name: "Rune Guardian", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 10, points: 50),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Animated Construct)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("OPTIONS", "")

- Must choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May choose up to two of the following:
  - Rune of Cleaving +3 points/model
  - Rune of Warding +3 points/model
  - Rune of Fury +5 points/model
  - Rune of Striking +5 points/model
  - Rune of Stone +6 points/model

#field("SPECIAL RULES", "Animated Construct, Immunity (Poisoned Attacks)")
#field("UPGRADES", "")

- *Rune of Cleaving:* The Rune Guardian gains the Armour Piercing (1) and Magical Attacks special rule.
- *Rune of Fury:* The Rune Guardian gains +1 Attack and the Magical Attacks special rule.
- *Rune of Striking:* The Rune Guardian gains +1 Weapon Skill and the Magical Attacks special rule.
- *Rune of Stone:* The Rune Guardian gains +1 to its armour save.
- *Rune of Warding:* The Rune Guardian gains a Ward save (6+).

#entry("ORGAN GUN")
#profile(
  (name: "Organ Gun", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 120),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Organ Gun)")
#field("CREW", "3 Crew (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")

- *Organ Fire:* Organ Guns uses the following profile.

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "5", "Armour Piercing (1), Multiple Shots (Artillery Dice + 2D6), Slow to Fire"))
#field("OPTIONS", "")

- May take light armour +1 point/model
- May take engineering runes up to 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Resolute")

#entry("FLAME CANNON")
#profile(
  (name: "Flame Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 140),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Fire Thrower)")
#field("CREW", "3 Crew (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")

- *Flame Cannon:* Flame Cannons uses the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Flaming Attacks, Multiple Wounds (D3), Slow to Fire"))
#field("OPTIONS", "")

- May take light armour +1 point/model
- May take engineering runes up to 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Resolute")

#entry("GYROBOMBER")
#profile(
  (name: "Gyrocopter", m: "-", ws: "-", bs: "-", s: 4, t: 5, w: 3, i: "-", a: "-", ld: "-", points: 140),
  (name: "Pilot", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 4+)")
#field("CREW", "1 Pilot (Dwarf)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, steam gun (see Gyrocopters)")
#field("OPTIONS", "")

- May replace steam gun with one of the following:
  - Brimstone gun (see Gyrocopters) free
  - Clattergun (see Gyrocopters) free

#field("SPECIAL RULES", "Ancestral Grudge, Fly (9), Relentless, Resolute.")

- *Bombing Run:* During the Remaining Moves sub-phase, models with this special rule may drop a bomb unless they are fleeing or have declared a charge that turn. To make a Bombing Run, select one unengaged enemy unit that the Gyrobomber moved over in that turn and place the large 5" template anywhere over the target unit (but note that it cannot cover friendly models) and roll for scatter and damage as for a stone thrower from the Warhammer rulebook. If a misfire is rolled, use the Bomb Misfire chart below. Grudgebuster bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3(6)", "Armour Piercing (1), Multiple Wounds (D3)"))

After resolving the damage caused by a Grudgebuster bomb, roll a D6. On a 4+, the bomb scatters D6" from where it first landed (a Hit! result remains in place). Place the small round (3") template on the new location and resolve damage using the profile above. It cannot bounce a third time.

#chartlabel("BOMB MISFIRE TABLE")
#chart((("D6", "Result"), ("1", "Premature Detonation. The Gyrobomber suffers a Strength 6 hit with the Multiple Wounds (D3)
special rule."), ("2-3", "Jammed Release. Centre the 3\" template over the Gyrobomber before scattering it and resolving
damage as normal. This bomb does not bounce."), ("4-6", "Dud. Only the model under the template's central hole is hit, suffering a single Strength 4 hit.")))

#entry("THUNDERBARGE")
#profile(
  (name: "Thunderbarge", m: "-", ws: "-", bs: "-", s: 6, t: 6, w: 8, i: "-", a: "-", ld: "-", points: 275),
  (name: "Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 4+)")
#field("CREW", "6 Crew (Dwarf)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, handgun")
#field("SPECIAL RULES", "Ancestral Grudge, Bombing Run (see Gyrobombers), Fly (6), Unbreakable")

- *Disaster!* If the Thunderbarge is destroyed it scatters 3D6" in a random direction and then crashes to the ground. Place the large template with the hole under its final position. Any model touched by the template suffers a Strength 6 hit.
- *Thunderbarge Cannon:* The Thunderbarge is armed with a cannon, which cannot fire grapeshot. The cannon can be fired even if the Thunderbarge marches. If the cannon misfires and roll a "Destroyed!" result, then the Thunderbarge suffers D3 Wounds with no saves allowed, and the weapon may no longer be used for the remainder of the game. Other misfires are resolved as normal.

#field("NOTES", "")

- A Thunderbarge has a Line of Sight value of 5.

#entry("GRUDGEBREAKER")
#profile(
  (name: "Grudgebreaker", m: "*", ws: 3, bs: 0, s: 6, t: 6, w: 8, i: 1, a: "*", ld: 10, points: 140),
)
#field("TROOP TYPE", "Chariot (Armour Save 1+)")
#field("BASE SIZE", "50x50, 50x75 or 50x100")
#field("SPECIAL RULES", "Animated Construct, Immunity (Poisoned Attacks), Terror.")

- *Steam-pressured Engine:* The Grudgebreaker follows the rules for Random Movement and Random Attacks. In order to determine the Movement and Attacks value of the Grudgebreaker, roll an Artillery dice rather than a set of D6's (roll separately for Movement and Attacks). Whenever you attempt to move or attack with the Grudgebreaker you may re-roll the Artillery dice if it didn't score a Misfire. If a Misfire is rolled, roll a D6 and consult the Grudgebreaker Incident Table. If a Misfire results on the re-roll it automatically causes a Clunk result.

#chartlabel("GRUDGEBREAKER INCIDENT TABLE")
#chart((("D6", "Result"), ("1", "Catastrophe! The Grudgebreaker does not Move or Attack this turn, and suffers D6 Wounds with no
saves allowed."), ("2-3", "Malfunction: The Grudgebreaker does not Move or Attack this turn."), ("4-5", "Clunk: The Grudgebreaker counts as having rolled a 1 for its Movement or Attacks value this turn."), ("6", "Overdrive: The Grudgebreaker counts as having rolled a 10 for its Movement or Attack value this
turn. However, the Grudgebreaker also suffers D3 Wounds with no saves allowed after it has
performed its Movement or Attacks.")))
#field("NOTES", "")

- A Grudgebreaker has a Line of Sight value of 5.

= SPECIAL CHARACTERS (LORDS)

#entry("THORGRIM GRUDGEBEARER", first: true)
#namecost("High King of Karaz-a-Karak", "")
#profile(
  (name: "Thorgrim", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 7, i: 4, a: 4, ld: 10, points: 500),
  (name: "Thronebearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 4, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("MOUNT", "Thronebearers")
#field("BASE SIZE", "40x60 or 50x75")
#field("MAGIC ITEMS", "")

- *The Axe of Grimnir:* Magic Weapon. The Axe of Grimnir is inscribed with the Master Rune of Skalf Blackhammer and the Master Rune of Alaric the Mad. In addition, Wounds caused by the Axe of Grimnir have the Multiple Wounds (D6) special rule against Monsters.
- *The Armour of Skaldour:* Magic Armour. Heavy armour. The Armour of Skaldour is inscribed with the Master Rune of Skaldour which gives Thorgrim a Ward save (4+), a Rune of Preservation and a Rune of Stone.
- *The Dragon Crown of Karaz:* Talisman. The Dragon Crown of Karaz is inscribed with the Master Rune of Kingship.
- *The Great Book of Grudges:* Enchanted Item. Thorgrim, and any unit he joins, are subject to Hatred. Against models included in the Ancestral Grudge special rule, they may re-roll failed To Hit rolls every close combat round, not just the first.

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Relentless, Resolute.")

- *High King:* Thorgrim must be the Army General. If he is slain, all friendly Dwarf models immediately gain the Frenzy special rule. In addition, one unit of Hammerers may be taken as a Special Unit instead of a Rare Unit.
- *The Throne of Power:* The Throne of Power adds +4 to Thorgrim's Wounds (included in his profile), gives him Unit Strength 5 and Line of Sight 2. In addition, the Throne gives him the Inspiring Presence (6) special rule. However, if Thorgrim joins a unit, he does not benefit from the "Look Out Sir!" rule.

#entry("ALRIK RANULFSSON")
#namecost("King of Karak Hirn", "")
#profile(
  (name: "Alrik Ranulfsson", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 325),
  (name: "Shieldbearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 2, ld: 9, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("MOUNT", "Shieldbearers")
#field("BASE SIZE", "20x40 or 25x50")
#field("MAGIC ITEMS", "")

- *Axe of Retribution:* Magic Weapon. Great weapon. The Axe of Retribution is inscribed with a Master Rune of Breaking and a Grudge Rune.
- *Hrappi-klad:* Magic Armour. Heavy armour. Hrappi-klad is inscribed with a Rune of Shielding.
- *Kurgaz's Shield:* Talisman. Kurgaz's Shield is inscribed with two Runes of Warding.
- *Helm of Eagles:* Enchanted Item. At the start of each of your turns, Alrik may gaze at one enemy unit within his Line of Sight. Your opponent must reveal any hidden troops within the unit (such as Assassins or Night Goblin Fanatics) as well as all magic items carried by models within the unit.
- *Karak-Hirn's Book of Grudges:* Enchanted Item. This book gives Alrik the Hold Your Ground (12) special rule.

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

- *Lord of the Hold:* If Alrik is included in your army he must be your army General (unless Thorgrim Grudgebearer is also included).
- *Traditional army:* If Alrik is in the army then Firedrakes, Firethrowers, Gyrocopters, Flame Cannons, Organ Guns, Thunderbarges and Grudgebreakers counts as 2 units for the purpose of duplicate choices that are allowed. In addition, your army cannot have more models of Thunderers than Quarrellers.

#entry("KAZADOR THUNDERHORN")
#namecost("King of Karak Azul", "")
#profile(
  (name: "Kazador", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 280),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *The Hammer of Karak Azul:* Magic Weapon. The Hammer of Karak Azul is inscribed with the Master Rune of Death and two Runes of Cleaving.
- *The Armour of the King of Karak Azul:* Magic Armour. Medium armour. The Armour of the King of Karak Azul is inscribed with one Rune of Fortitude and a Rune of Resistance.
- *The Thunderhorn:* Enchanted Item. One use only. The Horn may be blown at the start of any enemy turn. All enemy units within 24" of Kazador must pass a Leadership test to able to declare charges this turn.

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

#entry("BELEGAR IRONHAMMER")
#namecost("True King of the Eight Peaks", "")
#profile(
  (name: "Belegar Ironhammer", m: 3, ws: 8, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 290),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *The Hammer of Angrund:* Magic Weapon. The Hammer of Angrund is inscribed with the Master Rune of Swiftness, and Attacks made with it receive a +1 bonus To Wound.
- *Shield of Defiance:* Magic Armour. Shield. The Shield of Defiance is inscribed with three Runes of Warding and a Rune of Preservation.

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Relentless, Stubborn")

- *Revenge Incarnate:* Once per game, at the start of any Close Combat phase, Belegar can double his Attacks characteristic for the remainder of the turn.

#entry("BROK STONEFIST")
#namecost("Lord of the Tunnels", "")
#profile(
  (name: "Brok Stonefist", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 290),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Garaz Makaz:* Magic Weapon. Great weapon. This weapon is inscribed with the Master Rune of Breaking and the Master Rune of Alaric the Mad.
- *The Rune Armour of Karak-Azgal:* Magic Armour. Medium armour. The Rune Armour of Karak Azgal is inscribed with the Master Rune of Gromril and the Master Rune of Steel.
- *The Talisman of Stone:* Talisman. The Talisman of Stone gives Brok the Regeneration (4+) special rule.

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

- *Lord of the Tunnels:* Units of Miners in an army including Brok Stonefist gain +1 to the roll to see if they arrive when using the Underground Advance special rule.

#entry("DRONG THE HARD")
#namecost("Lord of Kazad Thrund", "")
#profile(
  (name: "Drong the Hard", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour, shield")
#field("MAGIC ITEMS", "")

- *Thrund's Hammer:* Magic Weapon. Great weapon. This weapon is inscribed with the Rune of Smiting.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Hatred (Elves), Resolute, Relentless")

#entry("HELGAR LONGPLAITS")
#namecost("Queen of Krag Bryn", "")
#profile(
  (name: "Helgar Longplaits", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 210),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour, shield")
#field("MAGIC ITEMS", "")

- *Bronn's Axe:* Magic Weapon. This weapon gives the wielder the Multiple Wounds (2) special rule against Characters.
- *Bronnling Battle Banner:* Magic Standard. This standard is inscribed with three Runes of Battle. Your army must include one Thane that is upgraded to a Battle Standard Bearer. That model must be given this standard.

#field("OPTIONS", "")

- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

#entry("UNGRIM IRONFIST")
#namecost("Last Slayer King of Karak Kadrin", "")
#profile(
  (name: "Ungrim Ironfist", m: 3, ws: 8, bs: 4, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 325),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Axe of Dargo:* Magic Weapon. Great weapon. The Axe of Dargo is inscribed with the Master Rune of Smiting.
- *The Slayer Crown:* Magic Armour. The Slayer Crown is inscribed with a Rune of Fortitude and a Rune of Stone.
- *Dragon Cloak of Fyrskar:* Talisman. The Dragon Cloak of Fyrskar is inscribed with three Runes of Warding and a Rune of the Furnace.

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Daemon Slayer, Gromril Armour, Relentless, Unbreakable.")

- *Slayer King:* If Ungrim is the Army General, Troll Slayers are taken as Core units rather than Special units, and Giant Slayers are taken as Special units rather than Rare units.
- *Brotherhood of Grimnir:* If Ungrim is included in your army, one unit of Troll Slayers or Giant Slayers may be upgraded to the Brotherhood of Grimnir for +1 point per model. These Slayers have the Wards of Grimnir special rule.

#entry("GOTREK & FELIX")
#namecost("Legendary Adventurers", "")
#profile(
  (name: "Gotrek Gurnisson", m: 3, ws: 7, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 270),
  (name: "Felix Jaeger", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 90),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf – Gotrek, Human - Felix)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour (Felix only)")
#field("MAGIC ITEMS", "")

- *Gotrek's Axe:* Magic Weapon. Gotrek only. For each of Gotrek's initial Attacks that Hit, he gains one extra Attack. In addition, Gotrek's axe also has the Ignore Armour saves special rule, and against enemies with Toughness 5 or more he may re-roll failed rolls To Wound.
- *Wyrmslayer Blade:* Magic Weapon. Felix only. The Wyrmslayer Blade gives +2 Attacks. In addition, Felix must always declare a charge against a Dragon or Drake if it is possible to do so. Against Dragons and Drakes, the Wyrmslayer blade allows Felix to re-roll failed rolls To Hit and To Wound.

#field("SPECIAL RULES", "Ancestral Grudge (Gotrek only), Deathblow (Gotrek only), Daemon Slayer (Gotrek only), Loner, Relentless.")

- *Gotrek's Doom:* As long as Gotrek is alive, he and Felix have a Ward Save (4+), Magic Resistance (2) and the Unbreakable special rules.

#entry("THOREK IRONBROW")
#namecost("Master Runelord of Karak Azul", "")
#profile(
  (name: "Thorek Ironbrow", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 2, ld: 10, points: 330),
  (name: "Anvil of Doom", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: ""),
  (name: "Anvil Guard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  (name: "Kraggi", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine (Special Character)")
#field("CREW", "Thorek Ironbrow, 2 Anvil Guards, Kraggi (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Klad Brakak:* Magic Weapon. Attacks made with this weapon have the Ignores Armour saves special rule. Additionally, if the victim suffers one or more unsaved Wounds, any Magic Armour they were equipped with are destroyed and cannot be used for the remainder of the game.
- *Thorek's Rune Armour:* Magic Armour. Heavy armour. Thorek’s Rune Armour is inscribed with the Master Rune of Gromril.

#field("SPECIAL RULES", "Ancestral Grudge, Anvil of Doom, Forgefire, Locus of Power (see Anvil of Doom), Rune")

*Lore, Strike the Runes* (see Anvil of Doom)

- *Kraggi, Assistant at the Forge:* Kraggi's forge is represented on the tabletop by a separate miniature that always remains as close as possible to Thorek’s Anvil of Doom. The forge itself plays no part in the game; if it gets in the way, simply move it to one side.

Thorek can re-roll a single dice on a failed attempt to Strike the Runes. If this re-rolled dice rolls a 1, Kraggi has done something wrong and Thorek takes a Strength 10 hit. Kraggi is then removed from play and the Kraggi, Assistant at the Forge special rule cannot be used again for the rest of the game.

- *Master of Ancient Lore:* Thorek may roll an additional dice for his Leadership tests when attempting to Strike to Runes and discard the highest result. In addition, he knows the following Rune:
  - *Rune of Doom:* Until the start of the next friendly Magic phase, all friendly Dwarf units within 18" gains the Fear special rule.

#entry("KRAGG THE GRIM")
#namecost("Master Runelord of Karaz-a-Karak", "")
#profile(
  (name: "Kragg the Grim", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 2, ld: 10, points: 395),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Kragg's Hammer:* Magic Weapon. Kragg's Hammer is inscribed with a Rune of Fury, a Rune of Fire, and gives the wielder Strength 10.
- *Kragg's Armour:* Magic Armour. Kragg's Armour is inscribed with a Master Rune of Gromril, a Rune of Resistance and a Rune of Warding.
- *Kragg's Runestaff:* Talisman. Kragg's Runestaff bears a Master Rune of Balance, two Runes of Spellbreaking, and a Rune of the Furnace.

#field("SPECIAL RULES", "Ancestral Grudge, Forgefire, Relentless, Resolute, Rune Lore")

#entry("KADRIN REDMANE")
#namecost("Runelord of Karak Varn", "")
#profile(
  (name: "Kadrin Redmane", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 2, ld: 10, points: 215),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *The Hammer of Ages:* Magic Weapon. Models that are hit with this hammer must take a Leadership test for each hit suffered. If failed, the Hammer automatically wounds with the Ignores Armour save special rule. If the test is passed, roll To Wound and take armour saves as usual.
- *The Shield of Stone:* Magic Armour. Shield. The Shield of Stone is inscribed with a Rune of Shielding.

#field("SPECIAL RULES", "Ancestral Grudge, Forgefire, Gromril Armour, Relentless, Rune Lore, Stubborn")

#entry("GROMBRINDAL")
#namecost("The White Dwarf", "")
#profile(
  (name: "Grombrindal", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 450),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Rune Axe of Grimnir:* Magic Weapon. This weapon gives Grombrindal +2 Strength and allows him to re-roll any failed rolls To Hit and any failed rolls To Wound. In addition, models wounded by the Rune Axe of Grimnir must re-roll any successful armour saves.
- *Armour of Glimril Scales:* Magic Armour. The Armour of Glimril Scales gives the White Dwarf a 1+ armour save and a Ward save (4+).
- *Rune Cloak of Valaya:* Talisman. The Rune Cloak gives the White Dwarf the Magic Resistance (3) special rule.
- *Rune Helm of Zhufbar:* Enchanted Item. Any friendly fleeing unit of Dwarfs will pass Rally tests automatically if they are attempting to rally within 12" of the Rune Helm of Zhufbar.

#field("SPECIAL RULES", "Ancestral Grudge, Relentless.")

- *Disguised:* The White Dwarf has the Hidden special rule. However, if the unit he is Hidden in is wiped out or flees then the White Dwarf will be revealed, and will stand his ground even though the rest of the unit may be fleeing or slain. Place the model in the middle of the front rank of the unit, then move/remove the rest of the unit as normal. The White Dwarf will then operative as a lone character as normal. The White Dwarf may never be the army's General, but units he joins may still use his Leadership once he is no longer Hidden.
- *Grombrindal has no Fear!:* Grombrindal is Unbreakable. If his unit flees for any reason he will always stand his ground. If the unit was engaged in combat, he will continue to fight while his unit flees, denying the foe the chance to pursue. Grombrindal can even join a unit that does not have the Unbreakable special rule – this is an exception to the normal Unbreakable rules.

= SPECIAL CHARACTERS (HEROES)

#entry("KRUDD MAD-MATTOCK", first: true)
#profile(
  (name: "Krudd Mad-Mattock", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 10, points: 95),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Krudd's Mattock:* Magic Weapon. Great weapon. This weapon is inscribed with the Master Rune of Swiftness.

#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

- *Krudd's Pride:* Krudd must always accept Challenges.

#entry("SKAG THE STEALTHY")
#profile(
  (name: "Skag the Stealthy", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 10, points: 115),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, medium armour")
#field("MAGIC ITEMS", "")

- *Lucky Runehelm:* Magic Armour. This armour gives the wearer a 6+ armour. In addition, it is inscribed with three Runes of Luck, allowing them a total of three re-rolls during the game.

#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#field("SPECIAL RULES", "Ancestral Grudge, Gromril Armour, Resolute, Relentless")

- *Stealth:* If Skag is included in your army, then one unit of Dwarf Warriors may deploy using the Ambushers special rule.

#entry("GRUNG GRUDGE-BRINGER")
#profile(
  (name: "Grung Grudge-Bringer", m: 3, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 100),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Forgefire, Hatred (Elves), Relentless, Resolute, Rune Lore")
#field("NOTES", "")

- Grung Grudge-Bringer must always pick The Fiery Ring of Thori as one of their Magic Items.

#entry("GARAGRIM IRONFIST")
#namecost("War-mourner of Karak Kadrin", "")
#profile(
  (name: "Garagrim Ironfist", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Axes of Kadrin:* Magic Weapon. Two hand weapons. The Axes of Kadrin are inscribed with the Master Rune of Skalf Blackhammer and a Grudge Rune. In addition, when Garagrim charges, he causes an Impact Hit on every model in base contact with him. These Impact Hits follow all the rules for his normal attacks.

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Dragon Slayer, Relentless, Unbreakable")

- *The War-mourner:* Each Wound inflicted by Garagrim counts double towards that round's Combat Resolution. Against enemies with Toughness 5 or higher, Garagrim has the Multiple Wounds (D6) special rule. However, Garagrim may never be the Army General.

#entry("LONG DRONG")
#namecost("Captain of the Fair Fregar", "")
#profile(
  (name: "Long Drong", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 70),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Brace of pistols")
#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Dragon Slayer, Relentless, Unbreakable")

- *Dwarf Rum:* Enemy models in base contact with models with this special rule suffer \-1 to their Weapon Skill in Close Combat. This does not affect Undead, Daemons or followers of Nurgle. The Slayer Pirates may not be deployed closer than 6" to any other unit in the army at the start of the battle.
- *Slayer Pirates:* Long Drong must be accompanied by a unit of Troll Slayers chosen from the army list at a cost of 12 points per model. This unit is equipped with a brace of pistols instead of two hand weapons and great weapons and has the Dwarf Rum special rule. Long Drong is the unit's Leader and may never choose to leave this unit.

#entry("CRAZED KHARGRIM")
#profile(
  (name: "Crazed Khargrim", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Chains of Binding:* Magic Weapon. Great weapon. The Chains of Binding give Khargrim the Magic Resistance (2) special rule.

#field("SPECIAL RULES", "Ancestral Grudge, Deathblow, Dragon Slayer, Hatred (Elves), Loner, Relentless, Unbreakable")

- *Crazed:* Khargrim always counts as charging in the first round of close combat.

#entry("JOSEF BUGMAN")
#namecost("Mysterious Master Brewer", "")
#profile(
  (name: "Josef Bugman", m: 3, ws: 6, bs: 5, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 9, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Ol' Trustworthy:* Magic Weapon. Ol' Trustworthy is inscribed with two Runes of Cleaving and a Rune of Fury.
- *Bugman's Tankard:* Enchanted Item. Josef Bugman, or a single model in the same unit, can drink from Bugman’s Tankard at the start of any friendly turn. The imbiber immediately recovers 1 Wound lost previously during the battle.

#field("SPECIAL RULES", "Ancestral Grudge, Beer Gut, Gromril Armour, Relentless, Resolute, Scouts")

- *Bugman's Rangers:* Josef Bugman must be accompanied by a unit of Rangers chosen from the army list at a cost of 17 points per model. This unit has Strength 4 and are equipped with great weapons, crossbows, medium armour and shields. Josef Bugman may never choose to leave this unit.
- *Liquid Fortification:* As long as Bugman is alive, roll a D6 at the start of each of your turns and consult the following chart to see what effects his draughts have upon himself and any unit he has currently joined:

*D6 Result 1 Bad Brew:* The unit gains the Flammable special rule until the start of the next friendly turn. *2\-4 Belligerent:* The unit gains the Stubborn special rule until the start of the next friendly turn. *5\-6 Leathered:* Each member of the unit gains +1 Toughness until the start of the next friendly turn.

- *Stout Courage:* Bugman and any unit he joins have the Immunity (Fear/Terror) special rule as long as he remains with the unit.

#entry("BURLOK DAMMINSON")
#namecost("Engineer Guildmaster", "")
#profile(
  (name: "Burlok Damminson", m: 3, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 125),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Burlok's Hammer:* Magic weapon. Burlok's Hammer is inscribed with the Master Rune of Swiftness.
- *Burlok's Armour:* Magic Armour. Medium armour. Burlok’s armour is inscribed with a Rune of Warding.

#field("SPECIAL RULES", "Ancestral Grudge, Artillery Master (see Master Engineers), Entrenchment (see Master")

Engineers)*, Relentless, Resolute, "Stand Back Sir!"* (see Master Engineers)

- *Burlok's Ingenious Offensive New-matic Integrated Constrictor Arm*: Burlok's artificial arm gives him +1 Attack with Strength 6 in close combat.

#entry("GRIMM BURLOKSSON")
#namecost("Upstart Master Engineer", "")
#profile(
  (name: "Grimm Burloksson", m: 3, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 95),
)
#field("TROOP TYPE", "Infantry (Special Character, Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "")

- *Grudge-raker:* The Grudge-raker has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "5", "Armour Piercing (1), Dwarf-crafted, Multiple Shots (2D3)"))

- *Cog Axe:* Hand weapon. This weapon has the Armour Piercing (1) special rule. If Grimm scores one or more hits in close combat against a model using a magic weapon, roll a D6; on a 5+, that weapon is immediately destroyed and cannot be used further in this game.

#field("SPECIAL RULES", "Ancestral Grudge, Entrenchment (see Master Engineers), Relentless, Resolute, \"Stand Back")

*Sir!"* (see Master Engineers)

- *Master of Accuracy:* At the start of each friendly Shooting phase, Grimm can bestow one of the following rules on a single friendly unit within 3" for the duration of that Shooting phase, though he does not gain any bonuses for it himself.
  - *Artillery Adjustment:* A war machine can use Grimm’s Ballistic Skill or re-roll one artillery dice. This can be the dice that determines the distance a cannonball bounces or a Flame Cannon’s burst of flame moves.
  - *Increased Range:* The unit’s crossbows and handguns increase their maximum range by 6".
  - *Superior Volley:* Models in the unit get +1 to Hit.

#entry("MALAKAI MAKAISSON")
#namecost("Creator of the Goblin-hewer", "")
#profile(
  (name: "Malakai Makaisson", m: 3, ws: 5, bs: 5, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 175),
  (name: "Goblin-hewer", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: ""),
  (name: "Slayer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 10, points: ""),
)
#field("TROOP TYPE", "War Machine (Special Character)")
#field("CREW", "Malakai Makaisson, 2 Slayers (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, repeating Dwarf handgun (Malakai only)")

- *Repeating Dwarf handgun:* A repeating Dwarf handgun has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Dwarf-crafted, Multiple Shots (3), Ponderous"))

- *Goblin-hewer:* The Goblin-hewer has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("48\"", "4", "Armour Piercing (1), Multiple Shots (3D6)"))
#field("SPECIAL RULES", "Ancestral Grudge, Artillery Master (see Master Engineers), Slayer, Unbreakable.")
