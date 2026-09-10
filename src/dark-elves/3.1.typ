// Dark Elves 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "dark-elves",
  army: "Dark Elves",
  version: "3.1",
  layout: "army",
  cover: "covers/dark-elves.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Dark Elves 3.1")

#cover(
  title: "Dark Elves",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/dark-elves.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Dark Elves*, version 3.1 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Dark Elf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several Dark Elf units, and these are detailed here.

#namecost("ELVEN GRACE", "")

Models with this special rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.

#namecost("ETERNAL HATRED", "")

Models with this special rule have the Hatred special rule in addition to Hatred (High Elves).

#namecost("HEKARTI'S BLESSING", "")

A Wizard with this special rule gains a +1 casting bonus.

#namecost("MURDEROUS PROWESS", "")

Models with this special rule may re-roll all To Wound rolls of 1 when making close combat attacks.

#namecost("KHAINITE", "")

Models who are Khainites (except models deploying using the Hidden special rule) may only join units which are also Khainites, and models who are not Khainites may not join Khainite units.

#namecost("SEA DRAGON CLOAK", "")

A Sea Dragon Cloak gives the wearer the Natural Armour (5+) special rule against missile attacks.

#namecost("DEATHRAIN CROSSBOW", "")

Deathrain crossbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "2", "Multiple Shots (3), Rapid Fire"))
#namecost("REPEATER HANDBOW", "")

Repeater handbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "2", "Multiple Shots (3), Quick Shot, Rapid Fire"))

= THE LORE OF DARK MAGIC

#columns(2)[
#namecost("SPITEFUL CONJURATION", "")
#namecost("Lore Attribute", "")

When a Wizard successfully casts a *hex*, *magic missile* or *direct damage* spell from this lore, and the casting roll contains any double, the spell's target unit suffers 2D6 Strength 2 hits after the spell has been resolved. If the casting roll contains any treble, the spell's target unit instead suffers 3D6 hits instead.

#namecost("DOOMBOLT OF KHARAIDON", "")
#namecost("Signature Spell Cast on 6+", "")

_Doombolt of Kharaidon_ is a *magic missile* with a range of 18" that causes D6 Strength 5 hits.

#namecost("DEATH SPASM", "")
#namecost("Level 1 Cast on 5+", "")

_Death Spasm_ is a *direct damage* spell with a range of 18" that targets a single enemy model (even a character in a unit). The target must take D3 Toughness tests. Each failed Toughness test causes a Wound which Ignores Armour Saves. In addition, all models in base contact with the target suffer a Hit at the target's base Strength.

#namecost("NAGAELYTHE THE CHILLWIND", "")
#namecost("Level 1 Cast on 5+", "")

_Nagaelythe the Chillwind_ is a *magic missile* with a range of 24" that causes 2D6 Strength 2 hits. If the target suffers any unsaved Wounds, all models in the unit suffer a \-1 penalty to their Ballistic Skill characteristic until the start of the caster's next Magic phase.

#namecost("SHADOW DAGGERS", "")
#namecost("Level 1 Cast on 5+", "")

_Shadow Daggers_ is a *magic missile* with a range of 12" that causes D6 Strength 3 Hits with the Armour Piercing (1) special rule on all enemy units in the caster's front arc.

#namecost("SAP STRENGTH", "")
#namecost("Level 2 Cast on 6+", "")

_Sap Strength_ is a *hex* spell with a range of 24". All models in the target unit suffer \-1 to their Strength (to a minimum of 1) until the start of the caster's next Magic phase.

#namecost("BLADEWIND", "")
#namecost("Level 2 Cast on 7+", "")

_Bladewind_ is a *direct damage area* spell with a range of 18" that uses the large round template. All models hit by the template must pass a Weapon Skill test or suffer a Strength 4 hit.

#namecost("POWER OF DARKNESS", "")
#namecost("Level 2 Cast on 8+", "")

_Power of Darkness_ is an *augment* spell with a range of 18". All models in the target unit gain +1 Strength until the start of the caster's next Magic phase. In addition, add D3 power dice to your power pool. If a natural 6 is rolled when generating these power dice, the caster suffers a Wound which Ignores Armour saves.

#namecost("TENEBRAEL BLADES", "")
#namecost("Level 3 Cast on 8+", "")

_Tenebrael Blades_ is an *augment* spell with a range of 18". The target gains the Armour Piercing (2) and Magical Attacks special rule until the start of the caster's next Magic phase.

#runin[CHROESH] – #runin[WORD OF PAIN]

#namecost("Level 3 Cast on 9+", "")

_Chroesh – Word of Pain_ is a *hex* spell with a range of 24". The target unit gains the Always Strikes Last special rule until the start of the caster's next Magic phase.

#namecost("SHROUD OF DESPAIR", "")
#namecost("Level 3 Cast on 10+", "")

Remains in play. _Shroud of Despair_ is a *hex aura* with a range of 12". While the spell is in effect, the affected units cannot benefit from the Hold Your Ground or Inspiring Presence special rules. In addition, whenever an affected unit fails a Break, Panic or Terror test, all target units suffer \-1 to their Leadership (this effect is cumulative).

#namecost("OBLIVION", "")
#namecost("Level 4 Cast on 12+", "")

_Oblivion_ is a *direct damage aura* spell with a range of 6". Each model (friend and foe, except the caster) within range (even if they are engaged in close combat) suffers a Strength 5 Hit.

#namecost("ANCHAN-ROGAR THE SOUL STEALER", "")
#namecost("Level 4 Cast on 14+", "")

_Anchan-Rogar the Soul Stealer_ is a *direct damage* spell with a range of 24". All models in the unit suffer a Wound on the roll of a 5+ which Ignores Armour Saves. Roll a D6 for each unsaved Wound inflicted by this spell_._ For each roll of 5+, the caster immediately gains a single Wound (to a maximum of 10).

#namecost("ARNZIPAL'S BLACK HORROR", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _Arnzipal's Black Horror_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Strength test per Wound on their profile or suffer a Wound which Ignores Armour Saves and Regeneration.
]

= GIFTS OF KHAINE

*Characters may choose Gifts of Khaine as detailed in the army list. A model may not have multiples of the same upgrade, but an upgrade can be taken by more than one model in the army.*

#namecost("DANCE OF DOOM", "30 points")

Model on foot only. Enemies targeting the model must re-roll all successful To Hit rolls with missile weapons and in close combat.

#namecost("CRY OF WAR", "25 points")

All enemy units in base contact with the wearer suffer \-1 To Hit in the first round of close combat.

#namecost("RENDING STARS", "25 points")

Khainite Assassin only. Rending Stars are missile weapons with the following profile.

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "As user +1", "Multiple Shots (3), Quick Shot"))
#namecost("WITCHBREW", "25 points")

Death Hag and Hag Queens only. This model, and all models in the same unit, gain the Frenzy special rule and can never lose their Frenzy.

#namecost("BLACK LOTUS", "20 points")

Khainite Assassin only. Each unsaved Wound caused in Close Combat counts as two for the purpose of combat resolution. This has no effect against models with Immunity (Poisoned Attacks).

#namecost("HAND OF KHAINE", "20 points")

All enemy units in base contact suffer a \-1 penalty to their Weapon Skill and Initiative.

#namecost("RUNE OF KHAINE", "20 points")

The model gains the Random Attacks (D3) special rule in addition to its normal attacks.

#namecost("BLOOD SIGIL", "15 points")

Disciple of Khaine only. The model may re-roll failed Leadership tests when using Blood Rites. However, if they roll any doubles on the second roll, they will suffer a Wound which Ignores Armour Saves.

#namecost("DARK VENOM", "15 points")

Khainite Assassin only. A model with Dark Venom gains the Multiple Wounds (D3) special rule (including missile attacks). This has no effect against models with Immunity (Poisoned Attacks).

#namecost("MANBANE", "15 points")

Khainite Assassin only. A model with Manbane will automatically Wound on the roll of a 2+ (including missile attacks). This has no effect against models with Immunity (Poisoned Attacks).

#namecost("TOUCH OF DEATH", "15 points")

The model gains the Killing Blow special rule.

#namecost("KHAINITE PENDANT", "10 points")

Disciple of Khaine only. One use only. The model may attempt to use two Blood Rites this turn.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dark Elves. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#columns(2)[
#namecost("DOOMSINGER", "65 points")

At the beginning of each round of close combat, roll a D3; the result is the number you may increase the wielder's Weapon Skill, Strength and Attacks by.

#namecost("CHILLBLADE", "50 points")

Attacks made with the Chillblade wound automatically and have the Ice Attacks special rule. For each unsaved Wound suffered from the Chillblade, the target suffers \-1 to its Attacks characteristic until the end of this Close Combat phase.

#namecost("VENOMFANG BLADE", "50 points")

Khainite Assassin only. Any model that suffers an unsaved Wound from this weapon must pass a Toughness test on a 2D6 or automatically lose all remaining wounds.

#namecost("EXECUTIONER'S AXE", "45 points")

Infantry only. Great weapon. In close combat, the wielder of the Executioner's Axe counts as having a Strength value equal to double that of their target's Toughness. In addition, any attacks made with the Executioner's Axe have the Multiple Wounds (D3) special rule. Furthermore, the wielder gains the Khainite special rule.

#namecost("BLOOD BLADES", "30 points")

Hag Queen or Death Hag only. Two hand weapons. These weapon gives the wielder +1 Strength and the Multiple Wounds (D3) special rule.

#namecost("SHADE CLAW", "30 points")

The wielder of this weapon gains the Ignores Armour saves special rule. In addition, no Parry saves may be taken against it.

#namecost("DRAICH OF DARK POWER", "25 points")

Model on foot only. Great Weapon. The wielder of the Draich of Dark Power ignores the normal Initiative penalties from great weapons as well as gaining the Khainite and Killing Blow special rules.

#namecost("LIFETAKER", "25 points")

Deathrain crossbow. Lifetaker fires using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "4", "Armour Piercing (1), Multiple Shots (3)"))

Lifetaker ignores all To Hit modifiers.

#namecost("WEB OF SHADOWS", "25 points")

One use only. The model can choose to use the Web of Shadows in addition to their normal attacks. When used, one model in base contact with the character automatically takes 2D6 Strength 3 hits.

#namecost("BLADE OF SPITE", "20 points")

Any To Hit roll of 5+ with the Blade of Spite automatically Wounds. Armour saves apply as normal. This has no effect on models with Immunity (Poisoned Attacks).

#namecost("CRONE BLADE", "20 points")

Hag Queen or Death Hag only. Roll a D6 each time the wielder of this weapon (excluding mounts) causes an unsaved Wound in close combat. On the roll of a 4+, they regain 1 Wound suffered earlier during the game.

#namecost("DEATHPIERCER", "20 points")

Heavy lance. Attacks made with Deathpiercer have the Killing Blow special rule.

#namecost("SHADESLIVER", "20 points")

Additional hand weapon. After every round of close combat in which the bearer of this item inflicts one or more Unsaved Wounds, this weapon gains +1 Strength for the remainder of the battle. This effect is cumulative.

#namecost("THE MIRROR GLAIVE", "20 points")

Polearm. Each time an enemy spell cast at the bearer of this weapon or the unit they are with is dispelled, you may attempt to cast the same spell back as if it was a Bound Spell, using your Dispel dice as if they were Power dice. The enemy may then attempt to dispel it using their Power dice.

#namecost("SHADRACAR'S FANG", "20 points")

The wielder of this weapon gains +1 To Hit and the Killing Blow special rule.

#namecost("SOULRENDER", "20 points")

Great weapon. Attacks made with Soulrender have the Armour Piercing (1) special rule. In addition, the wielder gains the Khainite special rule.

#namecost("SWORD OF RUIN", "20 points")

Attacks made with the Sword of Ruin have the Ignores Armour Saves special rule.

#namecost("CALEDOR'S BANE", "15 points")

Heavy lance. Caledor's Bane gives the wielder the Devastating Charge special rule, and attacks made with it ignore Natural Armour.

#namecost("HEARTSEEKER", "15 points")

The model wielding Heartseeker may re-roll all failed rolls To Hit and To Wound in close combat.

#namecost("HYDRA BLADE", "15 points")

The wielder of the Hydra Blade has the Random Attacks (D6) special rule in addition to their normal attacks.

#namecost("DAGGER OF HOTEK", "10 points")

Additional hand weapon. The Dagger of Hotek gives the wielder the Always Strikes First special rule.
]

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF ETERNAL SERVITUDE", "50 points")

Heavy armour. The wearer of the Armour of Eternal Servitude gains the Regeneration (4+) special rule.

#namecost("ARMOUR OF LIVING DEATH", "40 points")

Heavy armour. The wearer gains +1 Toughness and +1 Wound. However, they also become subject to Stupidity.

#namecost("BLOOD ARMOUR", "30 points")

Heavy armour. For every unsaved wound the wearer of the Blood Armour inflicts in close combat, their armour save is improved by one point to a maximum total of 2+ for the remainder of the game.

#namecost("ARMOUR OF DARKNESS", "35 points")

Heavy armour. The Armour of Darkness gives the wearer a 3+ armour save and the Immunity (Armour Piercing) special rule.

#namecost("CLOAK OF HAG GRAEF", "25 points")

Sea Dragon Cloak. Any missile attack on a model wearing the Cloak of Hag Graef has its Strength halved (rounding up) before rolling To Wound.

#namecost("SHIELD OF GHROND", "25 points")

Shield. The Shield of Ghrond causes all Hits on the model to be resolved with \-1 Strength.

#entry("TALISMANS")
#namecost("THE BLACK AMULET", "55 points")

The wearer of the Black Amulet has the Magical Ward (4+) special rule. In addition, each time the bearer of the Black Amulet makes a successful Magical Ward save in close combat, the Black Amulet inflicts one Wound which Ignores Armour saves on the opponent that struck the blow.

#namecost("RING OF HOTEK", "50 points")

The bearer and any unit they join have the Magic Resistance (3) special rule. Any enemy Wizard that attempts to cast or target a spell on a unit within 12" of the bearer will suffer a miscast on a roll of double 6, as well as double 1.

#namecost("PENDANT OF KHAELETH", "45 points")

Model on foot only. Roll a D6 for every wound suffered by the wearer; on a roll lower than the Strength of the Attack, the Wound is ignored. Rolls of 6 always fail.

#namecost("CROWN OF BLACK IRON", "40 points")

The Crown of Black Iron gives the bearer +1 Leadership as well as the Magical Ward (5+) and Magic Resistance (1) special rules.

#namecost("RING OF DARKNESS", "40 points")

The Ring of Darkness causes all close combat attacks directed against the bearer to be resolved at half their normal Weapon Skill (rounding up). Any missile attacks directed at the model or their unit resolved at half their normal Ballistic Skill (rounding up).

#namecost("HEART-STONE OF DARKNESS", "30 points")

The Heart-stone of Darkness gives the bearer the Magical Ward (4+) special rule against close combat attacks.

#namecost("CLOAK OF TWILIGHT", "30 points")

Infantry or Cavalry only. Enemy units cannot charge or target the bearer with missile attacks or spells if they are more than 12" away from them. Within 12", they can only be charged or targeted by first rolling a 4+ on a D6. If the test is failed, the unit may choose a new target as normal.

#namecost("SHADOWSHROUD RING", "30 points")

One use only. This ring may be used at the start of any of your turns. Until the start of your next turn, no enemy units can declare a charge or target the unit with spells or missile attacks unless they are within 6" of the bearer of this item.

#namecost("SEAL OF GHROND", "25 points")

The Seal of Ghrond adds +1 Dispel dice to your dispel pool at the start of every enemy Magic phase.

#namecost("AMBER AMULET", "20 points")

The wearer of the Amber Amulet gains the Regeneration (5+) special rule.

#namecost("INCORPOREAL RETAINER", "20 points")

Wizard only. All enemy models attacking the bearer of this item must re-roll successful rolls To Hit.

#namecost("CHARM OF HOTEK", "10 points")

The model wearing the Charm of Hotek gains a 6+ Armour Save and the Immunity (Flaming Attacks) special rule.

#namecost("NULL TALISMAN*", "10 points")

Any dispel attempt made against enemy spells targeting the model carrying this item, or any unit they are with, gains a +3 dispel bonus.

#entry("ARCANE ITEMS")
#columns(2)[
#namecost("BLACK STAFF", "55 points")

Staff. Whenever the bearer casts a spell, they may add an additional free power dice to the result after rolling the dice. However, if this extra dice rolls a 1, the Wizard suffers 1 Wound which Ignores Armour Saves.

#namecost("SHADOW STONE", "55 points")

Relic. When casting spells from the Lore of Shadow, the Wizard gains a +1 casting bonus and may re-roll a single roll of a natural 1 per casting attempt.

#namecost("DARKSTAR CLOAK", "50 points")

Relic. The Darkstar Cloak gives the Wizard +D3 Power dice in each of your Magic phases. Only they may use these extra dice.

#namecost("THE SACRIFICIAL DAGGER", "25 points")

Relic. Once per casting attempt, after the casting dice are rolled but before a dispel attempt is made, the bearer of this magic item can sacrifice one model in her unit. Choose which model is sacrificed – it is immediately removed as a casualty with no saves of any kind allowed – then roll a D6. On a 2+, the Sorceress gains an extra power dice that must be rolled and added to the casting result; dispel attempts can now be made and the spell resolved. This can be used to allow the Wizard to use more dice than is normally allowed by their Wizard level. On a roll of a 1, the sacrifice has not generated enough power – you can either immediately sacrifice another model from the unit and roll again, following the procedure above, or accept the original casting result (if the bearer is the only model remaining in the unit, no further sacrifices can be attempted).

#namecost("SOULSTONE", "25 points")

Charm. One use only. The Soulstone makes the Sorceress immune to the effects of her first Miscast.

#namecost("FOCUS FAMILIAR", "20 points")

Relic. The Focus Familiar allows the wielder to cast spells from a different position on the battlefield. Place a marker no more than 1" in diameter at the start of each Dark Elf Magic phase within 6" of the Wizard and at least 1" away from units or impassable terrain. They may use this position when determining range and line of sight (at 360°) for their spells for remainder of each Magic phase.

#namecost("THE GEM OF SPITE", "15 points")

Relic. Whenever the bearer suffers a miscast, the Gem of Spite inflicts a single Strength 6 hit on every enemy Wizard within 18".

#namecost("ORB OF GHROND*", "15 points")

Relic. The model carrying the Orb of Ghrond may consult it at the start of each of your turns as long as they are not in close combat. If they do so, they become subject to the Stupidity special rule for the remainder of the turn. However, the model may also re- roll one power or dispel dice when casting or dispelling until the start of your next turn.

#namecost("TOME OF FURION", "15 points")

Relic. The bearer of the Tome of Furion gains the Loremaster (Lore of Dark Magic) special rule.

#namecost("WAND OF THE KHARAIDON", "15 points")

Staff. When casting the _Doombolt_ spell from the Lore of Dark Magic, you may re-roll the number of Hits caused.

#namecost("ANKLET OF EPIPHANY", "10 points")

Relic. The bearer of this item gains +6" to the range of their spells (except auras) if they are within 6" of a terrain feature.

#namecost("CRYSTAL HEART", "10 points")

Relic. The bearer of this item may choose to attempt to cast one spell twice per Magic phase. However, every time they choose to do so, roll a D6 first. On the roll of a 1, the model suffers a Wound which Ignores Armour saves.
]

#entry("ENCHANTED ITEMS")
#columns(2)[
#namecost("RUBRIC OF DARK DIMENSIONS", "35 points")

Bound spell (Level 2, cast on 7+). The Rubric of Dark Dimensions contains a *direct damage* spell which targets all enemy models in base contact with the caster. The target models must pass a Strength test for each Wound on their profile or suffer a Wound which Ignores Armour Saves.

#namecost("ASPHYXICA CENSER", "30 points")

Disciple of Khaine only. At the start of each round of close combat, all enemy models in base contact with the bearer must take a Toughness test or suffer a Wound with no saves allowed.

#namecost("CROWN OF WOE", "30 points")

Hag Queen or Death Hag only. Enemy units cannot use the Inspiring Presence special rule while they are within 6" of the bearer of this item. After the bearer has slain one or more models in close combat, the range is increased to 12" for the remainder of the game.

#namecost("DECANTER OF EGOS", "30 points")

Wizard only. All friendly units within 6" of the bearer gain +1 to their Movement characteristic.

#namecost("PEARL OF INFINITE BLEAKNESS", "30 points")

The model bearing the Pearl of Infinite Bleakness and any unit they are with gain the Immunity (Psychology) special rule. In addition, any enemy unit in base contact with the bearer suffers \-1 to their Leadership.

#namecost("BLACK DRAGON EGG", "25 points")

One use only. The bearer may consume this item at the start of any player turn. For the rest of that turn, the consumer has Strength and Toughness 6, and the Noxious Breath (see Black Dragons) special rule.

#namecost("DEATHMASK", "25 points")

The wearer of the Deathmask causes Terror.

#namecost("THE HYDRA'S TEETH", "20 points")

One use only. The Hydra's Teeth can be used at the start of any close combat phase. Once used, they inflict 5D6 Weapon Skill 2, Strength 3 Attacks on one enemy unit in base contact.

#namecost("THE GUIDING EYE", "20 points")

The bearer of the Guiding Eye and any unit they are with may re-roll 1's To Hit with missile weapons.

#namecost("CRYSTAL OF MIDNIGHT", "20 points")

Nominate one enemy Wizard within 12" at the start of any of their Magic phases. The Wizard must pass a Leadership test or lose one randomly determined spell for the rest of the battle.

#namecost("THE CLOAK OF DARK SOULS", "10 points")

Model on foot only. The wearer of the Cloak of Dark Souls gains the Hidden and Scouts special rules.

#namecost("GEM OF NIGHTMARES", "10 points")

One use only. The Gem of Nightmares can be used at the start of any turn. Until the end of that turn, the model and any unit it is with has the Terror special rule.

#namecost("SEVENFOLD SHADOW", "10 points")

Model on foot only. One use only. Instead of moving normally in the Remaining Moves sub-phase, the model may be moved to anywhere on the battlefield, as long as they do not end their move within 6" of any enemy unit or 1" of impassable terrain.

#namecost("SEA SERPENT STANDARD", "25 points")

Corsairs only. The unit carrying this standard gains the Frenzy special rule.

#namecost("SACRIFICIAL BANNER", "25 points")

All enemy Monstrous Creatures or Monsters with Line of Sight to the unit carrying this standard gain the Berserk Rage portion of the Frenzy special rule against it. In addition, they suffer a \-3 Leadership modifier for any Berserk Rage tests against the unit bearing this standard.

#namecost("DREAD BANNER", "20 points")

The unit carrying this standard gains the Fear special rule.

#namecost("STANDARD OF SLAUGHTER", "20 points")

The unit carrying this standard gains +D3 to their combat resolution bonus on any turn the unit charges.

#namecost("SOUL SHADOWS STANDARD", "15 points")

If the unit carrying this standard chooses Flee as a charge reaction it automatically rallies at the end of their Flee move (as long as the charging unit does not reach it).

#namecost("TRAITOR'S BANNER", "10 points")

Enemy units attempting to target the unit carrying this standard with missile attacks or spells must pass a Leadership test. If failed, they must choose another target. If no other target is available, they cannot choose to cast that spell this turn.
]

#entry("MAGIC STANDARDS")
#namecost("BANNER OF NAGARYTHE", "75 points")

All friendly units of Dark Elves within 12" of this standard gain the Eternal Hatred special rule.

#namecost("HYDRA BANNER", "50 points")

All models in the unit carrying this standard gain +1 Attack in the first round of any close combat.

#namecost("STANDARD OF HAG GRAEF", "50 points")

The unit carrying this standard gains the Always Strikes First special rule.

#namecost("STANDARD OF HAR GANETH", "40 points")

Executioners only. The unit carrying this standard causes Terror.

#namecost("BANNER OF COLD BLOOD", "30 points")

The unit carrying this standard gains the Cold-Blooded special rule.

#namecost("BANNER OF MURDER", "25 points")

The unit carrying this standard adds an additional D6" to their charge range.

#namecost("THE BLOOD BANNER", "25 points")

Cold One Knights only. The unit carrying this banner are not subject to Stupidity caused by Cold Ones.

= CHARACTERS

#entry("COMMANDERS", first: true)
#profile(
  (name: "Dreadlord", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 125),
  (name: "Dreadmaster", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a Deathrain crossbow +8 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May take a Sea Dragon Cloak +3 points
- May be mounted on one of the following:
  - Dark Steed +15 points
  - Cold One +20 points
  - Dark Pegasus +25 points
  - Cold One Chariot (replacing one of the crew) +100 points
  - Manticore (Dreadlord only) +150 points
  - Black Dragon (Dreadlord only) +300 points
- One Dreadmaster may carry the Battle Standard +25 points
- A Dreadmaster may take Magic Items up to a total of 50 points
- A Dreadlord may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("SORCERESSES")
#profile(
  (name: "Supreme Sorceress", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 9, points: 195),
  (name: "Sorceress", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Sorceress is a Level 1 Wizard. A Supreme Sorceress is a Level 3 Wizard. They use one of the following")

Lores of Magic:

- Beasts
- Dark
- Death
- Heavens
- Fire
- Light
- Life
- Metal
- Shadow

#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Hekarti's Blessing, Murderous Prowess")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Dark Steed +15 points
  - Cold One +20 points
  - Dark Pegasus +25 points
  - Manticore (Supreme Sorceress only) +150 points
  - Black Dragon (Supreme Sorceress only) +300 points
- A Sorceress may take Magic Items up to a total of 50 points
- A Supreme Sorceress may take Magic Items up to a total of 100 points

#entry("HAGS OF KHAINE")
#profile(
  (name: "Hag Queen", m: 5, ws: 7, bs: 5, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 140),
  (name: "Death Hag", m: 5, ws: 6, bs: 5, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +10 points
- May take light armour +3 points
- May be mounted on a Cauldron of Blood (Hag Queen only, replacing the Keeper of the Cauldron) +160 points
- One Death Hag may carry the Battle Standard +25 points
- A Death Hag may take Magic Items and/or Gifts of Khaine up to a total of 50 points
- A Hag Queen may take Magic Items and/or Gifts of Khaine up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("BLACK ARK FLEETMASTER")
#profile(
  (name: "Fleetmaster", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ambushers, Elven Grace, Hatred (High Elves), Murderous Prowess")

- *At Them, You Curs!:* If a Black Ark Fleetmaster joins a unit of Black Ark Corsairs, they may both re-roll failed To Hit rolls of 1 in close combat.
- *Show no Weakness:* Each unsaved Wound caused by a Fleetmaster counts as two Wounds when calculating combat resolution. In addition, a Fleetmaster must always accept challenges. While fighting challenges, the Fleetmaster may re-roll all failed rolls To Hit.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Repeater handbow +5 points
- May take light armour +3 points
- May take a Sea Dragon Cloak +3 points
- May take Magic Items up to a total of 50 points

#entry("BEASTMASTER")
#profile(
  (name: "Beastmaster", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 45),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")

- *Beastslaver:* Unless they are mounted, a Beastmaster can join units of Monsters with the Mixed Unit special rule. A Monster that is joined by one or more Beastmasters, or a Monstrous Creature mounted by a Beastmaster, gains +D3 Attacks.

#field("OPTIONS", "")

- May choose one of the following:
  - Spear free
  - Additional hand weapon +5 points
  - Light lance +5 points
- May take light armour +3 points
- May take a Sea Dragon Cloak +3 points
- May be mounted on one of the following:
  - Scourgerunner Chariot (replacing one of the crew) +50 points
  - Manticore +150 points
- May take Magic Items up to a total of 50 points

#entry("DISCIPLE OF KHAINE")
#profile(
  (name: "Disciple of Khaine", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 105),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Khainite, Magical Attacks, Magic Resistance (1), Murderous Prowess")

- *Orgy of Slaughter:* The model and any unit they join gain the Hatred special rule.
- *Blood Rites:* A model with this special rule knows the three Blood Rites listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. Each Blood Rite lasts until the start of your next turn. A friendly unit can only be under the effect of one Blood Rite at a time.
  - *Catechism of Murder:* Whenever a model in the unit causes an unsaved Wound close combat, they may immediately make an additional Attack (including supporting attacks). This additional Attack cannot generate further Attacks.
  - *Crimson Rejuvenation:* All models in the unit gain the Regeneration (6+) special rule.
  - *Sacrament of Blood:* All models in the unit gain the Swiftstride special rule.

#field("OPTIONS", "")

- May take an additional hand weapon +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points

#entry("KHAINITE ASSASSIN")
#profile(
  (name: "Khainite Assassin", m: 5, ws: 9, bs: 9, s: 4, t: 3, w: 2, i: 10, a: 3, ld: 9, points: 105),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (5+), Hatred (High Elves), Hidden, Immunity (Psychology), Khainite, Murderous")

*Prowess, Poisoned Attacks, Scouts*

#field("OPTIONS", "")

- May take an additional hand weapon +5 points
- May choose one of the following:
  - Repeater handbow +5 points
  - Throwing weapons +5 points
- May take light armour +3 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points

#entry("HIGH GLADIATRIX")
#profile(
  (name: "High Gladiatrix", m: 5, ws: 8, bs: 5, s: 4, t: 3, w: 2, i: 7, a: 4, ld: 9, points: 145),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Hatred (High Elves), Immunity (Fear), Killing Blow, Murderous Prowess")

- *Dance of Death:* Models with this special rule have the Dodge (5+) special rule in close combat and can re- roll failed Dodge saves. In addition, at the start of each round of close combat, each unit with this special rule chooses one enemy unit in base contact. That unit gains no Rank Bonus and cannot make Parry saves this turn.
- *Paragon of Slaughter:* A High Gladiatrix and all Sisters of Slaughter in a unit that is joined by one or more High Gladiatrixes gain the Armour Piercing (1) special rule.
- *The Trial of Blades:* Models with this rule receive +1 To Hit and To Wound if at least one enemy model in base contact with the unit has a Weapon Skill characteristic of 5+ and/or a Strength characteristic of 4+.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Buckler +5 points
  - Polearm +10 points
- May take light armour +3 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- A High Gladiatrix may never be the Army General.

#entry("MELUSAI IRONSCALE")
#profile(
  (name: "Melusai Ironscale", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 9, points: 180),
)
#field("TROOP TYPE", "Infantry (Character, Dark Elf)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Keldrisaíth")

- *Keldrisaíth:* Polearm. A Keldrisaíth gives the wielder the Killing Blow and Magical Attacks special rules. A Keldrisaíth can also fire in the shooting phase using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "4", "Killing Blow, Magical Attacks, Multiple Shots (2), Quick Shot"))
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Khainite, Magic Resistance (1), Murderous Prowess, Natural Armour (6+), Swiftstride, Vanguard")

- *Gory Offering:* If any enemy models are slain by a Melusai Ironscale in close combat, any Melusai in the same unit as her gain the Frenzy special rule for the remainder of the close combat phase.
- *Wrath of the Melusai:* Any unit of Melusai joined by a Melusai Ironscale can re-roll failed charge and pursue distances.

#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points

#field("NOTES", "")

- A Melusai Ironscale may never be the Army General.

= CHARACTER MOUNTS

#entry("DARK STEED", first: true)
#profile(
  (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take barding +5 points

#entry("COLD ONE")
#profile(
  (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Saurian)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fear, Natural Armour (6+), Stupidity")
#field("OPTIONS", "")

- May take barding +5 points

#entry("DARK PEGASUS")
#profile(
  (name: "Dark Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fly (9)")

- *Impale:* A Dark Pegasus gains the Mighty Blow (1) special rule in any turn that it charges.

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

#entry("BLACK DRAGON")
#profile(
  (name: "Black Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: "-"),
)
#field("TROOP TYPE", "Monster (Draconid)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fly (7), Natural Armour (3+).")

- *Noxious Breath:* A Black Dragon has a Strength 3 Breath Weapon. All models in a unit that has suffered one or more casualties from the attack suffer a \-1 penalty to their Weapon Skill and Ballistic Skill until the end of the following turn.

= CORE UNITS

#entry("DREADSPEARS", first: true)
#profile(
  (name: "Dreadspear", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, medium armour, shield")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May upgrade one Dreadspear to a Leader +5 points
- May upgrade one Dreadspear to a Musician +5 points
- May upgrade one Dreadspear to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("BLEAKSWORDS")
#profile(
  (name: "Bleaksword", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour, shield")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May upgrade one Bleaksword to a Leader +5 points
- May upgrade one Bleaksword to a Musician +5 points
- May upgrade one Bleaksword to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("DARKSHARDS")
#profile(
  (name: "Darkshard", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 13),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Deathrain crossbow, medium armour")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May upgrade one Darkshard to a Leader +5 points
- May upgrade one Darkshard to a Musician +5 points
- May upgrade one Darkshard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("BLACK ARK CORSAIRS")
#profile(
  (name: "Corsair", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour, Sea Dragon Cloak")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess, Skirmishers")

- *Slavers:* Whenever a unit containing at least 5 models with this special rule breaks an enemy unit in close combat and pursues them, the fleeing unit must re-roll the highest result on their flee roll.

#field("OPTIONS", "")

- May replace one hand weapon with repeater handbows +1 point/model
- May be upgraded to Ambushers +1 point/model
- May upgrade one Corsair to a Leader +5 points
- May upgrade one Corsair to a Musician +5 points
- May upgrade one Corsair to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("WITCH ELVES")
#profile(
  (name: "Witch Elf", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Witch Elf to a Leader +5 points
- May upgrade one Witch Elf to a Musician +5 points
- May upgrade one Witch Elf to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("DARK RIDERS")
#profile(
  (name: "Dark Rider", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
  (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Dark Elf)")
#field("MOUNT", "Dark Steed (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance, light armour")
#field("SPECIAL RULES", "Elven Grace, Fast Cavalry, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May take Deathrain crossbows +3 points/model
- May take shields +1 point/model
- May take barding free
- May upgrade one Dark Rider to a Leader +5 points
- May upgrade one Dark Rider to a Musician +5 points
- May upgrade one Dark Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SLAVES")
#profile(
  (name: "Slave", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 4, points: 2),
  (name: "Slavemaster", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 25),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("HANDLER", "Slavemaster (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapons")
#field("SPECIAL RULES", "Elven Grace (Slave Master only), Expendable, Hatred (High Elves) (Slave Master only), Mixed Unit, Murderous Prowess (Slave Master only), Vanguard")

- *Slavemaster:* Each unit of Slaves must take a leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits for each Slavemaster in the unit.

#field("NOTES", "")

- You must include one Slave Master for every 20 Slaves in the unit.

#entry("HARPIES")
#profile(
  (name: "Harpy", m: 5, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 6, points: 11),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Harpy)")
#field("BASE SIZE", "20x20 or 25x25")
#field("SPECIAL RULES", "Expendable, Independent, Fly (10)")
#field("OPTIONS", "")

- May upgrade one Harpy to a Leader +5 points

= SPECIAL UNITS

#entry("HAR GANETH EXECUTIONERS", first: true)
#profile(
  (name: "Executioner", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Killing Blow, Khainite, Murderous Prowess")
#field("OPTIONS", "")

- May upgrade one Executioner to a Leader +5 points
- May upgrade one Executioner to a Musician +5 points
- May upgrade one Executioner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("BLOOD HAGS")
#profile(
  (name: "Blood Hag", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 15),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, throwing weapons, medium armour")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks")
#field("OPTIONS", "")

- May upgrade one Blood Hag to a Leader +5 points
- May upgrade one Blood Hag to a Musician +5 points
- May upgrade one Blood Hag to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SISTERS OF SLAUGHTER")
#profile(
  (name: "Sister of Slaughter", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 15),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, buckler")
#field("SPECIAL RULES", "Hatred (High Elves), Immunity (Fear), Murderous Prowess")

- *Dance of Death:* Models with this special rule have the Dodge (5+) special rule in close combat and can re- roll failed Dodge saves. In addition, at the start of each round of close combat, each unit with this special rule chooses one enemy unit in base contact. That unit gains no Rank Bonus and cannot make Parry saves this turn.
- *The Trial of Blades:* Models with this rule receive +1 To Hit and To Wound if at least one enemy model in base contact with the unit has a Weapon Skill characteristic of 5+ and/or a Strength characteristic of 4+.

#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Sister of Slaughter to a Leader +5 points
- May upgrade one Sister of Slaughter to a Musician +5 points
- May upgrade one Sister of Slaughter to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("SHADES")
#profile(
  (name: "Shade", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Deathrain crossbow")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Independent, Murderous Prowess, Scouts, Skirmishers")
#field("OPTIONS", "")

- May take additional hand weapons +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Shade to a Leader +5 points

#entry("COLD ONE KNIGHTS")
#profile(
  (name: "Cold One Knight", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 6, a: 1, ld: 9, points: 32),
  (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Dark Elf)")
#field("MOUNT", "Cold One (Saurian)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield")
#field("SPECIAL RULES", "Elven Grace, Fear, Hatred (High Elves), Murderous Prowess, Natural Armour (6+), Stupidity")
#field("OPTIONS", "")

- May upgrade one Cold One Knight to a Leader +5 points
- May upgrade one Cold One Knight to a Musician +5 points
- May upgrade one Cold One Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("COLD ONE CHARIOT")
#profile(
  (name: "Cold One Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
  (name: "Charioteer", m: "-", ws: 5, bs: 4, s: 4, t: "-", w: "-", i: 6, a: 1, ld: 9, points: ""),
  (name: "Cold One", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Charioteers (Dark Elf)")
#field("DRAWN BY", "2 Cold Ones (Saurian)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, Deathrain crossbow, heavy armour, scythes")
#field("SPECIAL RULES", "Elven Grace, Fear, Hatred (High Elves), Murderous Prowess, Natural Armour (6+), Stupidity")
#field("OPTIONS", "")

- May be upgraded to a standard bearer +10 points

#entry("SCOURGERUNNER CHARIOT")
#profile(
  (name: "Scourgerunner Chariot", m: 8, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
  (name: "Beastmaster Crew", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
  (name: "Dark Steed", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Beastmaster Crew (Dark Elf)")
#field("DRAWN BY", "2 Dark Steeds (Equine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, Deathrain crossbow, Ravager Harpoon, Sea Dragon Cloak")

- *Ravager Harpoon:* A Ravager Harpoon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Armour Piercing (1), Multiple Wounds (D3)"))

If a Monstrous Creature or Monster is Hit by this weapon but survives, it must immediately turn and move D6" towards the Scourgerunner Chariot, stopping within 1" of other units or impassable terrain. In its following turn, the target may choose to either suffer 1 Wound with no saves allowed or be forced to keep moving D6" towards the Scourgerunner Chariot instead of moving normally.

#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")

#entry("REAPER BOLT THROWER")
#profile(
  (name: "Reaper Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
  (name: "Crew", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "2 (Dark Elf)")
#field("BASE SIZE", "50x50 (Reaper Bolt Thrower), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, repeater bolt thrower, medium armour")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Murderous Prowess")
#field("OPTIONS", "")

- May take an additional Crew 10 points

#entry("MELUSAI")
#profile(
  (name: "Melusai", m: 6, ws: 5, bs: 5, s: 3, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 26),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Heartshard Glaive, light armour")

- *Heartshard Glaive:* Polearm. All attacks made with this weapon have the Magical Attacks and Killing Blow special rules.
- *Heartseeker Bows:* Longbow. All attacks made with this weapon have the Magical Attacks and Killing Blow special rules.

#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Khainite, Murderous Prowess, Natural Armour (6+), Swiftstride, Vanguard")
#field("OPTIONS", "")

- May take medium armour +2 points/model
- May replace Heartshard Glaives with Heartseeker Bows free
- May upgrade one Melusai to a Leader +5 points

#entry("KHINERAI")
#profile(
  (name: "Khinerai", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 15),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Ambushers, Elven Grace, Fly (10), Hatred (High Elves), Khainite, Murderous Prowess")

- *Fight and Flight:* In any close combat phase in which a unit with this special rule does not break or break their enemy, it may choose to disengage from combat instead of doing a combat reform (if the unit lost the combat they must pass a Leadership test just like when attempting to Reform from Defeat). If the unit manages to disengage from combat, the unit will make a Flee move as if it had broken from combat. This Flee move follows the rules for Feigned Flight. After finishing its move, the unit rallies automatically. The enemy unit is not allowed to Pursue, but may make a Combat Reform as normal.

#field("OPTIONS", "")

- May take javelins +2 points/model
- May upgrade one Khinerai to a Leader +5 points

#entry("BLOODWRACK MEDUSA")
#profile(
  (name: "Bloodwrack Medusa", m: 6, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 55),
)
#field("TROOP TYPE", "Monstrous Beast (Dark Elf)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Polearm")
#field("SPECIAL RULES", "Elven Grace, Frenzy, Hatred (High Elves), Independent, Murderous Prowess, Natural")

*Armour (6+)*

- *Avert Your Gaze:* At the start of each Close Combat phase, before challenges are issued, enemy models in base contact with this model suffer a Strength 4 hit with the Ignores Armour Saves, Magical Attacks and Killing Blow special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value.
- *Bloodwrack Stare:* Bloodwrack Stare has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Killing Blow, Magical Attacks, Multiple Shots (5), Quick Shot"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.

= RARE UNITS

#entry("BLACK GUARD OF NAGGAROND", first: true)
#profile(
  (name: "Black Guard", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 18),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, heavy armour")
#field("SPECIAL RULES", "Elven Grace, Eternal Hatred, Immunity (Psychology), Murderous Prowess, Stubborn")
#field("OPTIONS", "")

- May upgrade one Black Guard to a Leader +5 points
- May upgrade one Black Guard to a Musician +5 points
- May upgrade one Black Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#entry("SHADOWSTALKERS")
#profile(
  (name: "Shadowstalker", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 16),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, throwing weapons")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Khainite, Murderous Prowess, Poisoned Attacks, Scouts, Skirmishers")

- *Harness Shadow:* Missile attacks targeting a unit containing one or more models with this special rule suffer \-1 To Hit.
- *Shadowleap:* Instead of moving normally in the Remaining Moves sub-phase, this unit may make a Fly (6) move.

#field("OPTIONS", "")

- May replace throwing weapons with repeater handbows +2 points/model
- May upgrade one Shadowstalker to a Leader +5 points

#entry("DOOMFIRE WARLOCKS")
#profile(
  (name: "Doomfire Warlock", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 25),
  (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Dark Elf)")
#field("MOUNT", "Dark Steed (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A unit of Doomfire Warlocks is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Dark
- Death
- Shadow

#field("OPTIONS", "")

- May take barding free
- May upgrade one Doomfire Warlock to a Leader +5 points

#field("SPECIAL RULES", "Elven Grace, Fast Cavalry, Hatred (High Elves), Hekarti's Blessing, Magical Ward (4+), Murderous Prowess, Poisoned Attacks")

- *Cursed Coven:* The unit receives an additional +1 casting bonus for every 5 five models in the unit with this special rule. Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Doomfire Warlock as the caster (or target) for the purposes of line of sight, range, etc. In the event of a Doomfire Warlock unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.

#entry("CAULDRON OF BLOOD")
#profile(
  (name: "Cauldron of Blood", m: 5, ws: "-", bs: "-", s: 5, t: 6, w: 5, i: "-", a: "-", ld: "-", points: 165),
  (name: "Keeper of the Cauldron", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 6, a: 2, ld: 8, points: ""),
  (name: "Guardian", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 6, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "Shrine (Armour Save 6+)")
#field("CREW", "1 Keeper of the Cauldron and 2 Guardians (Dark Elf)")
#field("BASE SIZE", "60x100")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Frenzy, Impact Hits (D3), Khainite, Murderous")

*Prowess, Poisoned Attacks, Terror*

- *Altar of Khaine:* The Cauldron of Blood has the Magical Ward (6+) special rule. In addition, any unit joined by it gains the Stubborn special rule.
- *Blessings of Khaine:* At the start of each of your turns, choose one of the Blessings below. The effect applies to all friendly Dark Elves within 6" and lasts until the start of your next turn. A unit can only be affected by one Blessing at a time.
  - *Bloodshield of Khaine:* All affected units gain the Magical Ward (6+) special rule.
  - *Fury of Khaine:* All affected units gain the Frenzy special rule.
  - *Strength of Khaine:* All affected units re-roll failed To Wound rolls in close combat.

#field("NOTES", "")

- A Cauldron of Blood has a Line of Sight value of 5.

#entry("BLOODWRACK SHRINE")
#profile(
  (name: "Bloodwrack Shrine", m: 5, ws: "-", bs: "-", s: 5, t: 6, w: 5, i: "-", a: "-", ld: "-", points: 135),
  (name: "Shrinekeeper", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
  (name: "Bloodwrack Medusa", m: "-", ws: 5, bs: 5, s: 4, t: "-", w: "-", i: 5, a: 3, ld: "-", points: ""),
)
#field("TROOP TYPE", "Shrine (Armour Save 6+)")
#field("CREW", "1 Bloodwrack Medusa and 2 Shrinekeepers (Dark Elf)")
#field("BASE SIZE", "60x100")
#field("EQUIPMENT", "Polearm")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Impact Hits (D3), Murderous Prowess, Natural Armour")

*(6+), Terror*

- *Aura of Agony:* Enemy units within 6" suffer a \-1 penalty to their Weapon Skill, Initiative and Leadership (to a minimum of 1).
- *Avert Your Gaze:* At the start of each Close Combat phase, before challenges are issued, enemy models in base contact with this model suffer a Strength 4 hit with the Ignores Armour Saves, Magical Attacks and Killing Blow special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value.
- *Bloodwrack Stare:* Bloodwrack Stare has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour Saves, Killing Blow, Magical Attacks, Multiple Shots (5), Quick Shot"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.

#field("NOTES", "")

- A Bloodwrack Shrine has a Line of Sight value of 5.

#entry("WAR HYDRA")
#profile(
  (name: "War Hydra", m: 6, ws: 4, bs: 4, s: 5, t: 5, w: 5, i: 2, a: 8, ld: 6, points: 200),
  (name: "Beastmaster Apprentice", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Hydra)")
#field("HANDLERS", "2 Beastmaster Apprentices (Dark Elf)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Two hand weapons (Beastmaster Apprentices only)")
#field("SPECIAL RULES", "Elven Grace (Beastmaster Apprentice only), Hatred (High Elves) (Beastmaster Apprentice")

only)*, Mixed Unit, Murderous Prowess* (Beastmaster Apprentice only)*, Natural Armour (4+), Regeneration (4+)*

- *Loss of Heads:* For each unsaved Wound the War Hydra has lost during the battle, it loses one Attack.

#field("UPGRADES", "")

- *Acid Breath:* The model gains a Strength 2 Breath Weapon with the Ignores Armour Saves special rule.
- *Armour Plates:* The model gains the Natural Armour (6+) special rule.
- *Battle Lover:* The model gains the Vanguard special rule.
- *Bloodthirsty:* The model gains the Devastating Charge special rule.
- *Chameleon Skin:* All enemy missile attacks targeting the model suffer \-1 To Hit.
- *Daerlythe's Aura:* The model gains the Magic Resistance (2) special rule.
- *Fiery Breath:* The model gains a Breath Weapon with the Flaming Attacks special rule. The Strength of this attack is equal to the War Hydra's remaining Wounds.
- *Spit Fire:* The model gains a shooting attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "*", "Flaming Attacks, Multiple Shots (*), Quick Shot, Rapid Fire"))

\*The Strength and Multiple Shots value of this attack is equal to the War Hydra's remaining number of Wounds.

#field("OPTIONS", "")

- May choose one of the following:
  - Spit Fire +10 points
  - Fiery Breath +20 points
  - Acid Breath +30 points
- May choose one of the following:
  - Bloodthirsty +5 points
  - Daerlythe's Aura +5 points
  - Battle Lover +10 points
  - Chameleon Skin +10 points
  - Armour Plates +15 points

#entry("KHARIBDYSS")
#profile(
  (name: "Kharibdyss", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 5, i: 4, a: 5, ld: 6, points: 210),
  (name: "Beastmaster Apprentice", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Sea Creature)")
#field("HANDLERS", "2 Beastmaster Apprentices (Dark Elf)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Two hand weapons (Beastmaster Apprentices only)")
#field("SPECIAL RULES", "Aquatic, Elven Grace (Beastmaster Apprentice only), Hatred (High Elves) (Beastmaster")

Apprentice only)*, Mixed Unit, Murderous Prowess* (Beastmaster Apprentice only)*, Multiple Wounds (D3), Natural Armour (4+), Poisoned Attacks*

- *Abyssal Howl:* Enemy units that are in base contact with a Kharibdyss must re-roll successful Leadership tests. This has no effect on models that have Immunity (Fear/Terror/Psychology).
- *Feast of Bones:* Roll a D6 for each unsaved Wound caused by this model with its normal Attacks. On the roll of a 6+, the Kharibdyss immediately regains 1 Wound lost previously during the game.

#entry("AVATAR OF KHAINE")
#profile(
  (name: "Avatar of Khaine", m: 6, ws: 6, bs: 0, s: 6, t: 7, w: 5, i: 3, a: 5, ld: 10, points: 265),
)
#field("TROOP TYPE", "Monster (Animated Construct)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("SPECIAL RULES", "Animated Construct, Hatred, Killing Blow, Magical Ward (5+), Unstable")

- *Idol of Worship:* All friendly Dark Elves within 12" of an Avatar of Khaine gain +1 Leadership.
- *Wrath of Khaine:* For each successful Killing Blow scored (before any saves), the Avatar of Khaine immediately gets to make an additional Attack.

= SPECIAL CHARACTERS

#entry("MALEKITH", first: true)
#namecost("The Witch King of Naggaroth", "")
#profile(
  (name: "Malekith", m: 5, ws: 8, bs: 7, s: 5, t: 4, w: 3, i: 8, a: 4, ld: 10, points: 495),
  (name: "Seraphon (Black Dragon)", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 6, ld: 8, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Malekith is a Level 4 Wizard who chooses spells from the Lore of Dark Magic.")
#field("MAGIC ITEMS", "")

- *Destroyer:* Magic Weapon. At the start of every Close Combat phase, all enemy models in base contact with Malekith must reveal their magic items. Furthermore, if Malekith scores one or more hits against a model with any magic items, roll a D6; on a 4+, one randomly determined magic item is immediately destroyed and cannot be used further in this game. Do not include Magic items that are mounts, magic items that contain bound spells that miscast earlier in the game, or any magic items labelled as 'one use only' that have been used. In addition, if a Wizard suffers one or more unsaved Wounds from Destroyer, roll a D6; on a 4+, the Wizard immediately loses a Wizard level.
- *Hand of Khaine:* Magic Weapon. The Hand of Khaine gives Malekith an extra Attack at Strength 6 which Ignores armour saves.
- *Armour of Midnight:* Magic Armour. Heavy armour. The Armour of Midnight grants Malekith a 2+ invulnerable save against all non-magical attacks and the Immunity (Killing Blow/Multiple Wounds) special rule.
- *Supreme Spellshield:* Magic Armour. Shield. This item grants Malekith the Magic Resistance (2) special rule. If Malekith is ever the target of an enemy spell that he successfully dispels, the caster's unit immediately suffers D6 magical Strength 6 hits.
- *Circlet of Iron:* Arcane Item. Relic. Once per Magic phase, Malekith can use the Circlet of Iron to add a single bonus dice to any of his failed casting or dispel attempts. This bonus dice can contribute to Ultimate Power or Miscast as normal.

#field("SPECIAL RULES", "Elven Grace, Fear, Eternal Hatred, Hekarti's Blessing, Immunity (Psychology), Murderous")

*Prowess*

- *Absolute Power:* If you take Malekith, he must be your Army General. Malekith has the Inspiring Presence (6) special rule.
- *Black Guard:* If your army includes Malekith, units of Black Guard are taken as Special Units instead of Rare units.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Cold One +20 points
  - Cold One Chariot (replacing one of the crew) +100 points
  - Seraphon (Black Dragon) +320 points

#field("NOTES", "")

- At the start of each close combat, you must choose whether Malekith uses the Hand of Khaine or the Supreme Spellshield.

#entry("MORATHI")
#namecost("The Hag Sorceress of Ghrond", "")
#profile(
  (name: "Morathi", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 3, ld: 10, points: 335),
  (name: "Sulephet (Dark Pegasus)", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Morathi is a Level 4 Wizard who uses the following Lores of Magic:")

- Dark
- Death
- Shadow

#field("MAGIC ITEMS", "")

- *Heartrender and the Darksword:* Magic Weapon. Light lance. Hits from this weapon have the Killing Blow special rule in the turn Morathi charges. In addition, for each Hit a Monstrous Creature, Monster or character suffers from these weapons they suffer \-1 to their Strength, Toughness and Attack characteristics (to a minimum of 1) for the remainder of the close combat phase.
- *Amber Amulet:* Talisman. This item restores 1 Wound lost during the game to Morathi at the start of each or your turns.

#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Hekarti's Blessing, Khainite, Murderous Prowess")

- *A Thousand and One Dark Blessings:* Morathi has the Magical Ward (6+) special rule and the Magic Resistance (2) special rule.
- *Beloved of Khaine:* All Khainite models always treat Morathi as the Army's General for all purposes, regardless of what character is the Army General.
- *Enchanting Beauty:* All models suffer \-1 To Hit against Morathi in close combat. This has no effect on models with the Immunity (Psychology) special rule.
- *The First Sorceress:* Morathi has a +2 casting bonus. In addition, she can choose her spells from all the Lores of Magic available to her, in any combination she wishes. Note that she always has the Doombolt of Kharaidon as her Signature Spell.

#field("OPTIONS", "")

- May be mounted on Sulephet (Dark Pegasus) +40 points

#entry("MALUS DARKBLADE")
#namecost("Scion of Hag Graef", "")
#profile(
  (name: "Malus Darkblade", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 210),
  (name: "Spite", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 3, ld: 4, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour, Sea Dragon Cloak")
#field("MAGIC ITEMS", "")

- *Warpsword of Khaine:* Magic Weapon. The Warpsword of Khaine allows Malus to re-roll failed rolls To Wound and Ignores Armour saves.

#field("SPECIAL RULES", "Elven Grace, Eternal Hatred, Murderous Prowess")

- *Tz'arkan:* Malus Darkblade may unleash the power of Tz'arkan at the start of any friendly Movement phase. Once the Daemon is released, he cannot be bound back during the battle. If Malus releases Tz'arkan, the following rules apply for the rest of the game:
  - Malus Darkblade immediately gains the Frenzy and Magical Ward (5+) special rules, but loses Elven Grace, Eternal Hatred and Murderous Prowess.
  - Malus Darkblade gains +1 Weapon Skill, +1 Strength, +2 Toughness and +1 Initiative. However, friendly units can no longer use his Leadership.
  - Each time Malus Darkblade makes a To Hit roll of 1, a friendly model in base contact (of your choice) is struck by the attack instead. Roll to Wound as normal.
- *Not Just a Dumb Brute:* Any unit of Cold One Knights joined by Spite are not subject to their normal Stupidity.

#field("OPTIONS", "")

- May be mounted on Spite (Cold One) +50 points

#entry("CRONE HELLEBRON")
#namecost("The Blood Queen of Har Ganeth", "")
#profile(
  (name: "Crone Hellebron", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 4, ld: 10, points: 280),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Deathsword and the Cursed Blade:* Magic Weapon. Two hand weapons. Hits from Deathsword and the Cursed Blade are resolved at Strength 10. If a model rolls a 1 To Hit whilst attacking Hellebron in close combat, it suffers an automatic Strength 4 hit for each 1 rolled.
- *Amulet of Dark Fire:* Talisman. Dispel attempts made against spells that target Hellebron or her unit receive a +5 dispel bonus.

#field("GIFTS OF KHAINE", "Cry of War, Rune of Khaine, Witchbrew")
#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks")

- *Queen of Khaine:* Crone Hellebron has the Inspiring Presence (6) special rules affecting Khainite units.
- *'Sisters of the Singing Doom:* If Crone Hellebron is included in your army, you may upgrade one unit of Witch Elves to the Sisters of the Singing Doom for a cost of +1 point per model. This unit gains the Fear special rule.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Manticore +150 points
  - Cauldron of Blood (replacing the Keeper of the Cauldron) +160 points

#entry("RAKARTH")
#namecost("Beastlord of Clar Karond", "")
#profile(
  (name: "Rakarth", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 3, i: 6, a: 3, ld: 10, points: 445),
  (name: "Bracchus (Black Dragon)", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Dark Elf)")
#field("MOUNT", "Bracchus (Dragon)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("MAGIC ITEMS", "")

- *Whip of Agony:* Magic Weapon. The Whip of Agony gives Rakarth +1 Strength. In addition, Rakarth may make a special attack with the Always Strikes First rule. If this attack causes an unsaved Wound but does not kill the target, it is overcome with pain and must roll 6's to Hit in that round of close combat.
- *Beast Armour of Clar Karond:* Magic Armour. Heavy armour. This armour allows Rakarth to re-roll failed armour saves.

#field("SPECIAL RULES", "Beastslaver (see Beastmaster), Hatred (High Elves), Fly (7), Murderous Prowess, Natural")

*Armour (3+)*, *Noxious Breath* (see Black Dragon)

- *Beastlord:* Any friendly Monster within 12" of Rakarth treat him as having the Hold Your Ground! special rule. In addition, his Beastslaver special rule affects Bracchus.
- *Ravagers of Rakarth:* If Rakarth is included in your army, you may upgrade any Scourgerunner Chariots to the Ravagers of Rakarth for a cost of +5 points per model. These models gain the Poisoned Attacks special rule.

#entry("KRETHUSA THE CRONESEER")
#namecost("Prophetess of Morai-Heg", "")
#profile(
  (name: "Krethusa", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 9, points: 295),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Krethusa is a Level 3 Wizard who uses the Lore of Shadow. In addition, she knows the knows the Flock of Doom spell from the Lore of Beasts.")
#field("SPECIAL RULES", "Elven Grace, Fly (10), Hatred (High Elves), Hekarti's Blessing, Murderous Prowess")

- *Burnt Offerings:* Krethusa knows the three prophecies listed below. She may attempt to use one at the start of each of your Magic phases by taking a Leadership test on her own unmodified Leadership If passed, the prophecy is fulfilled and takes immediate effect. Each prophecy targets one friendly unit within 12".
  - *Prophecy of Silence:* Enemy units within 6" of the unit cannot benefit from the Inspiring Presence, Hold Your Ground or Command Group bonuses.
  - *Prophecy of Dark Wings:* The unit may immediately make an additional move as if it were the Remaining Moves sub-phase.
  - *Prophecy of Reclamation:* Enemy units in base contact with the unit do not gain Combat Resolution bonuses from anything except the number of Wounds inflicted unless they contain at least one character.
- *Foresight of Morai-Heg:* Krethusa has a 4+ invulnerable save.

#entry("KOURAN DARKHAND")
#namecost("Captain of the Black Guard", "")
#profile(
  (name: "Kouran Darkhand", m: 5, ws: 8, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 140),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Crimson Death:* Magic Weapon. Polearm. Close combat attacks made with the Crimson Death are resolved at an additional +1 Strength.
- *The Armour of Grief:* Magic Armour. Heavy armour. Each time a model makes a successful To Hit roll against Kouran Darkhand in close combat, the model that struck the blow immediately suffers a Strength 5 hit.

#field("SPECIAL RULES", "Elven Grace, Eternal Hatred, Immunity (Psychology), Murderous Prowess, Stubborn")

- *The Right Hand of Darkness:* If Kouran Darkhand is in a unit of Black Guard, he and all models in that unit have the Unbreakable special rule.

#entry("TULLARIS DREADBRINGER")
#namecost("The Hand of Khaine", "")
#profile(
  (name: "Tullaris Dreadbringer", m: 5, ws: 7, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 130),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *The First Draich:* Magic Weapon. Great weapon. Tullaris' Killing Blow special rule takes effect on a 5+, rather than a 6.

#field("SPECIAL RULES", "Elven Grace, Hatred (High Elves), Fear, Frenzy, Khainite, Killing Blow, Murderous")

*Prowess*

- *Blades of the Blood Queen:* Tullaris must be accompanied by a unit of Har Ganeth Executioners chosen from the army list at a cost of +1 point per model. This unit has the Frenzy special rule. Tullaris may never choose to leave this unit.
- *Khaine's Sacred Slaughterer:* Each time Tullaris inflicts a successful Killing Blow, he and his unit gain a +1 bonus to their combat resolution score, in addition to any wounds inflicted by him.

#entry("LOKHIR FELLHEART")
#namecost("Krakenlord of Karond Kar", "")
#profile(
  (name: "Lokhir Fellheart", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 150),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour, Sea Dragon Cloak")
#field("MAGIC ITEMS", "")

- *The Red Blades:* Magic Weapon. Two hand weapons. Any hits made by the Red Blades re-roll any failed To Wound roll.
- *Helm of the Kraken:* Magic Armour. The Helm of the Kraken grants Lokhir Fellheart a 6+ armour save, +1 Toughness, as well as the Regeneration (6+) and Terror special rules.

#field("SPECIAL RULES", "Ambushers, At them, you Curs! (see Black Ark Fleetmaster), Elven Grace, Hatred (High")

*Elves), Murderous Prowess, Show no Weakness* (see Black Ark Fleetmaster)

- *Murderous Swashbuckler:* If Lokhir makes a successful Parry save, he may immediately make an additional Attack back against the model that struck the blow.
- *Merciless Slaver:* If an enemy unit breaks from a close combat that includes Lokhir Fellheart, all units taking Panic tests as a result of that unit breaking suffer a \-1 penalty to their Leadership value for that test.

#entry("SHADOWBLADE")
#namecost("Master of Assassins, the Death that Walks Unseen", "")
#profile(
  (name: "Shadowblade", m: 6, ws: 10, bs: 10, s: 4, t: 3, w: 2, i: 10, a: 3, ld: 9, points: 220),
)
#field("TROOP TYPE", "Infantry (Special Character, Dark Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, throwing weapons")
#field("MAGIC ITEMS", "")

- *Heart of Woe:* Enchanted Item. If Shadowblade is ever slain, centre the small round template over him before removing the model as a casualty. Every model touched by the template immediately suffers a Strength 3 hit. After any damage has been resolved, remove Shadowblade as a casualty as normal.
- *Potion of Diabolic Strength:* Enchanted Item. One use only. The Potion of Diabolic Strength can be drunk at the start of any player's Close Combat phase, after any Hidden models have revealed that they are hiding in a unit. Shadowblade gains +3 Strength until the end of the turn.

#field("GIFTS OF KHAINE", "Black Lotus, Dance of Doom, Dark Venom, Hand of Khaine, Manbane, Touch of Death")
#field("SPECIAL RULES", "Dodge (5+), Hatred (High Elves), Hidden, Immunity (Psychology), Khainite, Murderous")

*Prowess, Poisoned Attacks, Scouts*

- *Master of Disguise:* Shadowblade can deploy using the Hidden special rule like an Assassin. If he does so, he can change which unit he is hiding in at the start of any Movement or Close Combat phase – keep a note of where Shadowblade is each time you change your mind. If an opponent has an ability that forces you to state that there are 'hidden' models within a unit, you only need to say that Shadowblade is hiding within a unit, but not which unit he is currently in.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
