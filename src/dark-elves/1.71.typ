// Dark Elves 1.71 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "dark-elves",
  army: "Dark Elves",
  version: "1.71",
  layout: "army",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Dark Elves 1.71")

#cover(
  title: "Dark Elves",
  subtitle: "Warhammer Armies Project · 1.71",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Dark Elves*, version 1.71 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in a Dark Elf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several Dark Elf units, and these are detailed here.])[
#upgrade("ELVEN GRACE", none)[
Models with this special rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.
]

#upgrade("ETERNAL HATRED", none)[
Models with this special rule have the Hatred special rule in addition to Hatred (High Elves).
]

#upgrade("HEKARTI'S BLESSING", none)[
A Wizard with this special rule adds +1 to all attempts to cast spells.
]

#upgrade("MURDEROUS PROWESS", none)[
Models with this special rule may re-roll all To Wound rolls of 1 when making close combat attacks.
]

#upgrade("KHAINITE", none)[
Characters who are Khainites (except models deploying using the Hidden special rule) may only join units which are also Khainites, and characters who are not Khainites may not join Khainite units.
]

#upgrade("SEA DRAGON CLOAK", none)[
A Sea Dragon Cloak gives the wearer the Natural Armour (5+) special rule against missile attacks.
]

#upgrade("DEATHRAIN CROSSBOW", none)[
Deathrain crossbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "2", "Multiple Shots (3), Rapid Fire"))
]

#upgrade("REPEATER HANDBOW", none)[
Repeater handbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "2", "Multiple Shots (3), Rapid Fire, Quick to Fire"))
]
]
#lore("THE LORE OF DARK MAGIC")[
#spell("SPITEFUL CONJURATION", "Lore Attribute")[When a Wizard successfully casts a *hex*, *magic missile* or *direct damage* spell from this lore, and the casting roll contains any double, the spell's target suffers 2D6 Strength 2 hits after the spell has been resolved. If the casting roll contains any treble, the spell's target instead suffers 3D6 hits instead.]

#spell("DOOMBOLT OF KHARAIDON", "Signature Spell", cast: "6+")[_Doombolt of Kharaidon_ is a *magic missile* with a range of 18" that causes D6 Strength 5 hits.]

#spell("DEATH SPASM", 1, cast: "5+")[_Death Spasm_ is a *direct damage* spell with a range of 18" that targets a single enemy model (even a character in a unit). The target must take D3 Toughness tests. Each failed Toughness test causes a Wound which Ignores Armour Saves. In addition, all models in base contact with the target suffer a Hit at the target's base Strength.]

#spell("NAGAELYTHE THE CHILLWIND", 1, cast: "5+")[_Nagaelythe the Chillwind_ is a *magic missile* with a range of 24" that causes 2D6 Strength 2 hits. If the target suffers any unsaved Wounds, all models in the unit suffer a \-1 penalty to their Ballistic Skill characteristic until the start of the caster's next Magic phase.]

#spell("SHADOW DAGGERS", 1, cast: "5+")[_Shadow Daggers_ is a *magic missile* with a range of 12" that causes D6 Strength 3 Hits with the Armour Piercing (1) special rule on all enemy units in the caster's front arc.]

#spell("SAP STRENGTH", 2, cast: "6+")[_Sap Strength_ is a *hex* spell with a range of 24". All models in the target unit suffer \-1 to their Strength (to a minimum of 1) until the start of the caster's next Magic phase.]

#spell("BLADEWIND", 2, cast: "7+")[_Bladewind_ is a *direct damage* spell. Place the large round template within 18" of the Wizard – it then scatters D3". All models hit by the template must pass a Weapon Skill test or suffer a Strength 4 hit.]

#spell("POWER OF DARKNESS", 2, cast: "8+")[_Power of Darkness_ is an *augment* spell with a range of 18". All models in the target unit gain +1 Strength until the start of the caster's next Magic phase. In addition, add D3 power dice to your power pool. If a natural 6 is rolled when generating these power dice, the caster suffers a Wound which Ignores Armour saves.]

#spell("TENEBRAEL BLADES", 3, cast: "8+")[_Tenebrael Blades_ is an *augment* spell with a range of 18". The target gains the Armour Piercing (2) and Magical Attacks special rule until the start of the caster's next Magic phase.]

#spell("CHROESH – WORD OF PAIN", 3, cast: "9+")[_Chroesh – Word of Pain_ is a *hex* spell with a range of 24". All models in the target unit gain the Always Strikes Last special rule until the start of the caster's next Magic phase.]

#spell("SHROUD OF DESPAIR", 3, cast: "10+")[Remains in play. _Shroud of Despair_ is a *hex* spell that targets all enemy units within 12". While the spell is in effect, the targets cannot benefit from the Hold Your Ground or Inspiring Presence special rules. In addition, whenever a target unit fails a Break, Panic or Terror test, all target units suffer \-1 to their Leadership (this effect is cumulative).]

#spell("OBLIVION", 4, cast: "12+")[_Oblivion_ is a *hex* spell that targets all models (friend and foe) within a 6" of the caster. Each model suffers a Strength 5 Hit.]

#spell("ANCHAN-ROGAR THE SOUL STEALER", 4, cast: "14+")[_Anchan-Rogar the Soul Stealer_ is a *direct damage* spell with a range of 24". All models in the unit suffer a Wound on the roll of a 5+ which Ignores Armour Saves. Roll a D6 for each unsaved Wound inflicted by this spell_._ For each roll of 5+, the caster immediately gains a single Wound (to a maximum of 10).]

#spell("ARNZIPAL'S BLACK HORROR", 4, cast: "15+")[Remains in play. _Arnzipal's Black Horror_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Strength test per Wound on their profile or suffer a Wound which Ignores Armour Saves and Regeneration.]
]
#upgrade-chapter("GIFTS OF KHAINE", intro: [*Characters may choose Gifts of Khaine as detailed in the army list. A model may not have multiples of the same upgrade, but an upgrade can be taken by more than one model in the army.*])[
#upgrade("DANCE OF DOOM", 30, only: "Model on foot")[Enemies targeting the model must re-roll all successful To Hit rolls with missile weapons and in close combat.]

#upgrade("CRY OF WAR", 25)[All enemy units in base contact with the wearer suffer \-1 To Hit in the first round of close combat. This has no effect on models with Immunity (Psychology).]

#upgrade("RENDING STARS", 25, only: "Khainite Assassin")[Rending Stars are missile weapons with the following profile.

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "As user +1", "Multiple Shots (3), Quick to Fire"))
]

#upgrade("TOUCH OF DEATH", 20)[The model gains the Killing Blow special rule.]

#upgrade("WITCHBREW", 25, only: "Death Hag and Hag Queens")[This model, and all models in the same unit, gain the Frenzy special rule and can never lose their Frenzy.]

#upgrade("HAND OF KHAINE", 20)[All enemy units in base contact suffer a \-1 penalty to their Weapon Skill and Initiative.]

#upgrade("RUNE OF KHAINE", 20)[The model gains the Random Attacks (D3) special rule in addition to its normal attacks.]

#upgrade("BLACK LOTUS", 25, only: "Khainite Assassin")[Each unsaved Wound caused in Close Combat counts as two for the purpose of combat resolution. This has no effect against models with Immunity (Poisoned Attacks).]

#upgrade("BLOOD SIGIL", 15, only: "Disciple of Khaine")[The model may re-roll failed Leadership tests when using Blood Rites. However, if they roll double 6's on the second roll, they will suffer a Wound which Ignores Armour Saves.]

#upgrade("DARK VENOM", 15, only: "Khainite Assassin")[A model with Dark Venom gains the Multiple Wounds (D3) special rule (including missile attacks). This has no effect against models with Immunity (Poisoned Attacks).]

#upgrade("MANBANE", 15, only: "Khainite Assassin")[A model with Manbane will automatically Wound on the roll of a 2+ (including missile attacks). This has no effect against models with Immunity (Poisoned Attacks).]

#upgrade("KHAINITE PENDANT", 10, only: "Disciple of Khaine", one-use: true)[The model may attempt to use two Blood Rites this turn.]
]

#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dark Elves. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("CHILLBLADE", 50)[Attacks made with the Chillblade wound automatically and have the Ice Attacks special rule. For each unsaved Wound suffered from the Chillblade, the target suffers \-1 to its Attacks characteristic until the end of this Close Combat phase.]

#magic-weapon("VENOMFANG BLADE", 50)[Khainite Assassin only. Any model that suffers an unsaved Wound from this weapon must pass a Toughness test on a 2D6 or automatically lose all remaining wounds.]

#magic-weapon("EXECUTIONER'S AXE", 45)[Infantry only. Great weapon. In close combat, the wielder of the Executioner's Axe counts as having a Strength double that of their target's Toughness. In addition, any attacks made with the Executioner's Axe have the Multiple Wounds (D3) special rule. Furthermore, the wielder gains the Khainite special rule.]

#magic-weapon("SHADE CLAW", 30)[The wielder of this weapon gains the Ignores Armour saves special rule. In addition, no Parry saves may be taken against it.]

#magic-weapon("LIFETAKER", 25)[Deathrain crossbow. Lifetaker fires using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "4", "Armour Piercing (1), Multiple Shots (3)"))

Lifetaker ignores all To Hit modifiers.]

#magic-weapon("SOULRENDER", 25)[Great weapon. Attacks made with Soulrender have the Ignores Armour saves special rule. In addition, the wielder gains the Khainite special rule.]

#magic-weapon("WEB OF SHADOWS", 25)[One use only. The model can choose to use the Web of Shadows in addition to their normal attacks. When used, one model in base contact with the character automatically takes 2D6 Strength 3 hits. Wounds caused do not carry over on to other models.]

#magic-weapon("BLADE OF SPITE", 20)[Any To Hit roll of 5+ with the Blade of Spite automatically Wounds. Armour saves apply as normal. This has no effect on models with Immunity (Poisoned Attacks).]

#magic-weapon("CRONE BLADE", 20)[Hag Queen or Death Hag only. Roll a D6 each time the wielder of this weapon causes an unsaved Wound in close combat. On the roll of a 4+, they regain 1 Wound suffered earlier during the game.]

#magic-weapon("DEATHPIERCER", 20)[Heavy lance. Attacks made with Deathpiercer have the Killing Blow special rule.]

#magic-weapon("DRAICH OF DARK POWER", 20)[Model on foot only. Great Weapon. The wielder of the Draich of Dark Power ignores the normal Initiative penalties from great weapons and gains the Killing Blow special rule. In addition, the wielder gains the Khainite special rule.]

#magic-weapon("SHADESLIVER", 20)[Additional hand weapon. After every round of close combat in which the bearer of this item inflicts one or more Unsaved Wounds, this weapon gains +1 Strength for the remainder of the battle. This effect is cumulative.]

#magic-weapon("THE MIRROR GLAIVE", 20)[Polearm. Each time an enemy spell cast at the bearer of this weapon or the unit they are with is dispelled, you may attempt to cast the same spell back as if it was a Bound Spell, using your Dispel dice as if they were Power dice. The enemy may then attempt to dispel it using their Power dice.]

#magic-weapon("SHADRACAR'S FANG", 20)[The wielder of this weapon gains +1 To Hit and the Killing Blow special rule.]

#magic-weapon("SWORD OF RUIN", 20)[Attacks made with the Sword of Ruin have the Armour Piercing (4) special rule.]

#magic-weapon("CALEDOR'S BANE", 15)[Heavy lance. Caledor's Bane gives the wielder the Devastating Charge special rule, and attacks made with it ignore Natural Armour.]

#magic-weapon("HEARTSEEKER", 15)[The model wielding Heartseeker may re-roll all failed rolls To Hit and To Wound in close combat.]

#magic-weapon("HYDRA BLADE", 15)[The wielder of the Hydra Blade has the Random Attacks (D6) special rule in addition to their normal attacks.]

#magic-weapon("DAGGER OF HOTEK", 10)[Additional hand weapon. The Dagger of Hotek gives the wielder the Always Strikes First special rule.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF LIVING DEATH", 35)[Heavy armour. The wearer gains +1 Toughness and +1 Wound. However, they also become subject to Stupidity.]

#magic-armour("ARMOUR OF ETERNAL SERVITUDE", 35)[Heavy armour. The wearer of the Armour of Eternal Servitude gains the Regeneration (4+) special rule.]

#magic-armour("CLOAK OF HAG GRAEF", 25)[Sea Dragon Cloak. Any missile attack on a model wearing the Cloak of Hag Graef has its Strength halved (rounding up) before rolling To Wound.]

#magic-armour("ARMOUR OF DARKNESS", 25)[Heavy armour. The Armour of Darkness gives the wearer a 1+ armour save.]

#magic-armour("SHIELD OF GHROND", 25)[Shield. The Shield of Ghrond causes all Hits on the model to be resolved with \-1 Strength.]

#magic-armour("BLOOD ARMOUR", 10)[Heavy armour. For every unsaved wound the wearer of the Blood Armour inflicts in close combat, their armour save is improved by one point to a maximum total of 1+ for the remainder of the game.]
]

#magic-item-section("talisman")[
#talisman("THE BLACK AMULET", 60)[The wearer of the Black Amulet has a Ward save (4+). In addition, each time the bearer of the Black Amulet makes a successful Ward save in close combat, the Black Amulet inflicts one Wound which Ignores Armour saves on the opponent that struck the blow.]

#talisman("CROWN OF BLACK IRON", 50)[The Crown of Black Iron gives the bearer a 5+ Ward save, +1 Leadership and the Magic Resistance (1) special rule.]

#talisman("RING OF HOTEK", 50)[The bearer has the Magic Resistance (3) special rule. Any enemy Wizard that attempts to cast or target a spell on a unit within 12" of the bearer will suffer a miscast on a roll of double 6, as well as double 1.]

#talisman("PENDANT OF KHAELETH", 45)[Model on foot only. The Pendant of Khaeleth gives the bearer a Ward Save based upon the Strength of the hit. Roll a D6 for every wound suffered by the wearer; on a roll lower than the Strength of the Attack, the Wound is saved. Rolls of 6 always fail.]

#talisman("HEART-STONE OF DARKNESS", 35)[The Heart-stone of Darkness gives the bearer the Ward Save (4+) special rule against close combat attacks.]

#talisman("RING OF DARKNESS", 40)[The Ring of Darkness causes all close combat attacks directed against the bearer to be resolved at half their normal Weapon Skill (rounding up). Any missile attacks directed at the model or their unit resolved at half their normal Ballistic Skill (rounding up).]

#talisman("SHADOWSHROUD RING", 30)[One use only. This ring may be used at the start of any of your turns. Until the start of your next turn, no enemy units can declare a charge or target the unit with spells or missile attacks unless they are within 6" of the bearer of this item.]

#talisman("SEAL OF GHROND", 25)[The Seal of Ghrond adds +1 Dispel dice to your dispel pool at the start of every enemy Magic phase.]

#talisman("AMBER AMULET", 20)[The wearer of the Amber Amulet gains the Regeneration (5+) special rule.]

#talisman("CLOAK OF TWILIGHT", 20)[Infantry or Cavalry only. The wearer of the Cloak of Twilight has a Ward save (2+) against Wounds caused by enemy shooting attacks and spells.]

#talisman("INCORPOREAL RETAINER", 20)[Wizard only. All enemy models attacking the bearer of this item must re-roll successful rolls To Hit.]

#talisman("NULL TALISMAN", 10)[The model carrying the Null Talisman, and any unit they are with, gains a +2 bonus to dispel enemy spells targeting them directly.]

#talisman("CHARM OF HOTEK", 10)[The model wearing the Charm of Hotek gains a 6+ Armour Save and the Immunity (Flaming Attacks) special rule.]
]

#magic-item-section("arcane")[
#arcane-item("BLACK STAFF", 55)[Whenever the bearer casts a spell, they may add an additional free power dice to the result after rolling the dice. However, if this extra dice rolls a 1, the Wizard suffers 1 Wound which Ignores Armour Saves.]

#arcane-item("SHADOW STONE", 55)[When casting spells from the Lore of Shadow, the Wizard gains a +1 casting bonus and may re-roll a single roll of a natural 1 per casting attempt.]

#arcane-item("THE SACRIFICIAL DAGGER", 25)[Once per casting attempt, after the casting dice are rolled but before a dispel attempt is made, the bearer of this magic item can sacrifice one model in her unit. Choose which model is sacrificed – it is immediately removed as a casualty with no saves of any kind allowed – then roll a D6. On a 2+, the Sorceress gains an extra power dice that must be rolled and added to the casting result; dispel attempts can now be made and the spell resolved. This can be used to allow the Wizard to use more dice than is normally allowed by their Wizard level. On a roll of a 1, the sacrifice has not generated enough power – you can either immediately sacrifice another model from the unit and roll again, following the procedure above, or accept the original casting result (if the bearer is the only model remaining in the unit, no further sacrifices can be attempted).]

#arcane-item("TOME OF FURION", 15)[The bearer of the Tome of Furion gains the Loremaster (Lore of Dark Magic) special rule.]

#arcane-item("SOULSTONE", 25)[One use only. The Soulstone makes the Sorceress immune to the effects of her first Miscast.]

#arcane-item("FOCUS FAMILIAR", 20)[The Focus Familiar allows the wielder to cast spells from a different position on the battlefield. Place a marker at the start of each Dark Elf Magic phase within 6" of the Wizard and at least 1" away from units or impassable terrain. They may use this position when determining range and line of sight for their spells.]

#arcane-item("DARKSTAR CLOAK", 25)[The Darkstar Cloak gives the Wizard +1 Power dice in each of your Magic phases. Only they may use this extra dice.]

#arcane-item("CRYSTAL HEART", 15)[The bearer of this item may choose to cast the same spell twice per Magic phase. However, every time they choose to do so, roll a D6 first. On the roll of a 1, the model suffer a Wound which Ignores Armour saves.]

#arcane-item("THE GEM OF SPITE", 15)[Whenever the bearer suffers a miscast, the Gem of Spite inflicts a single Strength 6 hit on every enemy Wizard within 18".]

#arcane-item("WAND OF THE KHARAIDON", 15)[When casting the _Doombolt_ spell from the Lore of Dark Magic, you may re-roll the number of Hits caused.]

#arcane-item("ANKLET OF EPIPHANY", 10)[The bearer of this item gains +6" to the range of their spells if they are within 6" of a terrain feature.]
]

#magic-item-section("enchanted")[
#enchanted-item("BLACK DRAGON EGG", 25)[One use only. The bearer may consume this item at the start of any player turn. For the rest of that turn, the consumer has Strength and Toughness 6, and the Noxious Breath special rule.]

#enchanted-item("ASPHYXICA CENSER", 30)[Disciple of Khaine only. At the start of each round of close combat, all enemy models in base contact with the bearer must take a Toughness test or suffer a Wound with no saves allowed.]

#enchanted-item("CROWN OF WOE", 30)[Hag Queen or Death Hag only. Enemy units cannot use the Inspiring Presence special rule while they are within 6" of the bearer of this item. After the bearer has slain one or more models in close combat, the range is increased to 12" for the remainder of the game.]

#enchanted-item("DEATHMASK", 25)[The wearer of the Deathmask causes Terror.]

#enchanted-item("RUBRIC OF DARK DIMENSIONS", 25)[Bound spell. Power level 5. The Rubric of Dark Dimensions contains a *direct damage* spell which targets all enemy models in base contact with the caster. The target models must pass a Strength test for each Wound on their profile or suffer a Wound which Ignores Armour Saves.]

#enchanted-item("DECANTER OF EGOS", 20)[Wizard only. One use only. This item can be used at the start of any of your turns. For the duration of the turn, all friendly units within 6" gain +3 to their Movement characteristic.]

#enchanted-item("THE HYDRA'S TEETH", 20)[One use only. The Hydra's Teeth can be used at the start of any close combat phase. Once used, they inflict 5D6 Weapon Skill 2, Strength 3 Attacks on one enemy unit in base contact.]

#enchanted-item("THE GUIDING EYE", 20)[The bearer of the Guiding Eye and any unit they are with may re-roll 1's To Hit with missile weapons.]

#enchanted-item("PEARL OF INFINITE BLEAKNESS", 30)[The model bearing the Pearl of Infinite Bleakness and any unit they are with gain the Immunity (Psychology) special rule. In addition, any enemy unit in base contact with the bearer suffers \-1 to their Leadership. This has no effect on models with Immunity (Psychology).]

#enchanted-item("CRYSTAL OF MIDNIGHT", 20)[Nominate another enemy Wizard within 12" at the start of any Dark Elves turn. The Wizard must pass a Leadership test or lose one randomly determined spell for the rest of the battle.]

#enchanted-item("THE CLOAK OF DARK SOULS", 10)[Model on foot only. The wearer of the Cloak of Dark Souls gains the Hidden and Scouts special rules.]

#enchanted-item("ORB OF GHROND", 15)[The model carrying the Orb of Ghrond may consult it at the start of each of your turns as long as they are not in close combat. If they do so, they must take a Stupidity test. If passed, the model may re-roll all failed rolls To Hit and re-roll one power or dispel dice when casting or dispelling until the start of your next turn.]

#enchanted-item("SEVENFOLD SHADOW", 10)[Model on foot only. One use only. Instead of moving normally in the Remaining Moves sub-phase, the model may be moved to anywhere on the battlefield, as long as they do not end their move within 6" of any enemy unit or 1" of impassable terrain.]

#enchanted-item("GEM OF NIGHTMARES", 5)[One use only. The Gem of Nightmares can be used at the start of any turn. Until the end of that turn, the model and any unit it is with has the Fear special rule.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF NAGARYTHE", 50)[All friendly units of Dark Elves within 12" of this standard gain the Eternal Hatred special rule.]

#magic-standard("HYDRA BANNER", 50)[All models in the unit carrying this standard gain +1 Attack in the first round of any close combat (including mounts).]

#magic-standard("STANDARD OF HAG GRAEF", 50)[The unit carrying this standard gains the Always Strikes First special rule.]

#magic-standard("BANNER OF COLD BLOOD", 30)[The unit carrying this standard gains the Cold-Blooded special rule.]

#magic-standard("BANNER OF MURDER", 25)[The unit carrying this standard adds an additional D6" to their charge range.]

#magic-standard("THE BLOOD BANNER", 25)[Cold One Knights only. The unit carrying this banner do not need to take Stupidity tests caused by Cold Ones.]

#magic-standard("SEA SERPENT STANDARD", 25)[Corsairs only. The unit carrying this standard gains the Frenzy special rule.]

#magic-standard("STANDARD OF HAR GANETH", 25)[Executioners only. The unit carrying this standard causes Terror.]

#magic-standard("STANDARD OF SLAUGHTER", 20)[The unit carrying this standard gains +D3 to their combat resolution bonus on any turn the unit charges.]

#magic-standard("SACRIFICIAL BANNER", 25)[All enemy Monsters with Line of Sight to the unit carrying this standard gain the Berserk Rage portion of the Frenzy special rule against it. In addition, they suffer a \-3 Leadership modifier for any Berserk Rage tests against the unit bearing this standard.]

#magic-standard("SOUL SHADOWS STANDARD", 15)[If the unit carrying this standard chooses Flee as a charge reaction it automatically rallies at the end of their Flee move (as long as the charging unit does not reach it).]

#magic-standard("TRAITOR'S BANNER", 10)[Enemy units attempting to target the unit carrying this standard with missile attacks or spells must pass a Leadership test. If failed, they must choose another target.]
]
= LORDS

#unit("DREADLORD",
  first: true,
  profiles: (
    (name: "Dreadlord", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 125),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +4 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Medium armour +6 points
  - Heavy armour +15 points
- May take a Deathrain crossbow +5 points
- May take a shield +3 points
- May take a Sea Dragon Cloak +3 points
- May be mounted on one of the following:
  - Dark Steed +21 points
  - Cold One +24 points
  - Dark Pegasus +30 points
  - Cold One Chariot (replacing one of the crew) +100 points
  - Manticore +150 points
  - Black Dragon +300 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SUPREME SORCERESS",
  profiles: (
    (name: "Supreme Sorceress", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 5, a: 1, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Supreme Sorceress is a Level 3 Wizard who uses spells from any of the eight Winds of Magic or Dark",
  magic-body: [
Magic.
  ],
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following:
  - Dark Steed +21 points
  - Cold One +24 points
  - Dark Pegasus +30 points
  - Manticore +150 points
  - Black Dragon +300 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Hekarti's Blessing, Murderous Prowess",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("HAG QUEEN",
  profiles: (
    (name: "Hag Queen", m: 5, ws: 7, bs: 5, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 140),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Polearm +8 points
- May take light armour +3 points
- May be mounted on a Cauldron of Blood (replacing the Keeper of the Cauldron) +160 points
- May take Magic Items and/or Gifts of Khaine up to a total of 100 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

= HEROES

#unit("MASTER",
  first: true,
  profiles: (
    (name: "Master", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- One Master may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +3 points
  - Heavy lance +6 points
  - Polearm +6 points
  - Great weapon +8 points
- May choose one of the following:
  - Medium armour +4 points
  - Heavy armour +10 points
- May take a Deathrain crossbow +5 points
- May take a shield +2 points
- May take a Sea Dragon Cloak +2 points
- May be mounted on one of the following:
  - Dark Steed +14 points
  - Cold One +16 points
  - Dark Pegasus +20 points
  - Cold One Chariot (replacing one of the crew) +100 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("SORCERESS",
  profiles: (
    (name: "Sorceress", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Sorceress is a Level 1 Wizard who uses spells from any of the eight Winds of Magic or Dark Magic.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Dark Steed +14 points
  - Cold One +16 points
  - Dark Pegasus +20 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Hekarti's Blessing, Murderous Prowess",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("BLACK ARK FLEETMASTER",
  profiles: (
    (name: "Fleetmaster", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 80),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour, Sea Dragon Cloak",
  options: [
- May replace additional hand weapon with repeater handbow free
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Ambushers, Elven Grace, Hatred (High Elves), Murderous Prowess",
  special-rules-body: (
    rule("At Them, You Curs!")[If a Black Ark Fleetmaster joins a unit of Black Ark Corsairs, they may both re-roll failed To Hit rolls of 1 in close combat.],
    rule("Show no Weakness")[Each unsaved Wound caused by a Fleetmaster counts as two Wounds when calculating combat resolution. In addition, a Fleetmaster must always accept challenges. While fighting challenges, the Fleetmaster may re-roll all failed rolls To Hit.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("BEASTMASTER",
  profiles: (
    (name: "Beastmaster", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 45),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +4 points
- May take light armour +2 points
- May take a Sea Dragon Cloak +2 points
- May be mounted on one of the following:
  - Scourgerunner Chariot (replacing one of the crew) +70 points
  - Manticore +150 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  special-rules-body: (
    rule("Beastslaver")[At the start of each of your turns, choose a friendly monster within 6" of the Beastmaster. That monster has +D3 Attacks until the start of your next turn. A monster can only be affected by this special rule once in each turn.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("DEATH HAG",
  profiles: (
    (name: "Death Hag", m: 5, ws: 6, bs: 5, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 70),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- One Death Hag may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Polearm +6 points
- May take light armour +2 points
- May be mounted on a Cauldron of Blood (replacing the Keeper of the Cauldron) +160 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks",
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("DISCIPLE OF KHAINE",
  profiles: (
    (name: "Disciple of Khaine", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 100),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May take an additional hand weapon +2 points
- May take medium armour +4 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Khainite, Murderous Prowess",
  special-rules-body: [
- *Blessing of Khaine:* The model and any unit they join gain a 6+ Ward save.
- *Blood Rites:* A model with this special rule knows the three Blood Rites listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. Each Blood Rite lasts until the start of your next turn. A friendly unit can only be under the effect of one Blood Rite at a time.
  - *Catechism of Murder:* Whenever a model in the unit causes an unsaved Wound close combat, they may immediately make an additional Attack.
  - *Crimson Rejuvenation:* All models in the unit gain the Regeneration (6+) special rule.
  - *Sacrament of Blood:* All models in the unit gain the Swiftstride special rule.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("KHAINITE ASSASSIN",
  profiles: (
    (name: "Khainite Assassin", m: 5, ws: 9, bs: 9, s: 4, t: 3, w: 2, i: 10, a: 3, ld: 9, points: 105),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take an additional hand weapon +2 points
- May choose one of the following:
  - Repeater handbow +2 points
  - Throwing weapons +2 points
- May take light armour +2 points
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points
  ],
  special-rules: "Dodge (5+), Hatred (High Elves), Hidden, Immunity (Psychology), Khainite, Murderous",
  special-rules-body: [
*Prowess, Poisoned Attacks, Scouts*
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("HIGH GLADIATRIX",
  profiles: (
    (name: "High Gladiatrix", m: 5, ws: 8, bs: 5, s: 4, t: 3, w: 2, i: 7, a: 4, ld: 9, points: 145),
  ),
  troop-type: "Infantry (Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Buckler +2 points
  - Polearm +8 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Hatred (High Elves), Immunity (Fear), Killing Blow, Murderous Prowess",
  special-rules-body: (
    rule("Dance of Death")[Models with this special rule have the Dodge (5+) special rule in close combat and can re- roll failed Dodge saves. In addition, at the start of each round of close combat, each unit with this special rule chooses one enemy unit in base contact. That unit gains no Rank Bonus and cannot make Parry saves this turn.],
    rule("Paragon of Slaughter")[A High Gladiatrix and all Sisters of Slaughter in a unit that is joined by one or more High Gladiatrixes gain the Armour Piercing (1) special rule.],
    rule("The Trial of Blades")[Models with this rule receive +1 To Hit and To Wound if at least one enemy model in base contact with the unit has a Weapon Skill characteristic of 5+ and/or a Strength characteristic of 4+.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("MELUSAI IRONSCALE",
  profiles: (
    (name: "Melusai Ironscale", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 9, points: 190),
  ),
  troop-type: "Large Infantry (Character, Dark Elf)",
  base-size: "30x30 or 40x40",
  equipment: "Keldrisaíth, medium armour",
  equipment-body: [
- *Keldrisaíth:* Polearm. A Keldrisaíth gives the wielder the Killing Blow and Magical Attacks special rules. A Keldrisaíth can also fire in the shooting phase using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Killing Blow, Magical Attacks, Multiple Shots (2), Quick to Fire"))
  ],
  options: [
- May take Magic Items and/or Gifts of Khaine up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Khainite, Magic Resistance (1), Murderous Prowess, Natural Armour (6+), Swiftstride, Vanguard",
  special-rules-body: (
    rule("Gory Offering")[If any enemy models are slain by a Melusai Ironscale in close combat, any Melusai in the same unit as her gain the Frenzy special rule for the remainder of the close combat phase.],
    rule("Wrath of the Melusai")[Any unit of Melusai joined by a Melusai Ironscale can re-roll failed charge and pursue distances.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("DARK STEED",
  first: true,
  profiles: (
    (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
)

#unit("COLD ONE",
  profiles: (
    (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  special-rules: "Fear, Natural Armour (6+), Stupidity",
  options: [
- May take barding free
  ],
)

#unit("DARK PEGASUS",
  profiles: (
    (name: "Dark Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9)",
  special-rules-body: (
    rule("Impale")[Dark Pegasi gain +1 Strength to their Impact Hits.],
  ),
)

#unit("MANTICORE",
  profiles: (
    (name: "Manticore", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 5, points: "-"),
  ),
  troop-type: "Monstrous Creature (Chaos Beast)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fly (8), Frenzy, Killing Blow",
  options: [
- May take Rending Fangs +5 points
- May take Bloodrage +15 points
- May take Iron-hard Skin +15 points
- May take Venom Tail +15 points
  ],
  upgrades: (
    rule("Bloodrage")[The Manticore gains the Hatred special rule.],
    rule("Iron-hard Skin")[The Manticore gains the Natural Armour (5+) special rule.],
    rule("Rending Fangs")[The Manticore gains the Armour Piercing (1) special rule.],
    rule("Venom Tail")[The Manticore gains an additional Attack that has the Poisoned Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "special-rules", "options", "upgrades"),
)

#unit("BLACK DRAGON",
  profiles: (
    (name: "Black Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: "-"),
  ),
  troop-type: "Monster (Dragon)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fly (7), Natural Armour (3+).",
  special-rules-body: (
    rule("Noxious Breath")[A Black Dragon has a Strength 3 Breath Weapon. All models in a unit that has suffered one or more casualties from the attack suffer a \-1 penalty to their Weapon Skill and Ballistic Skill until the end of the following turn.],
  ),
)

= CORE UNITS

#unit("DREADSPEARS",
  first: true,
  profiles: (
    (name: "Dreadspear", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, medium armour, shield",
  options: [
- May upgrade one Dreadspear to a Leader +5 points
- May upgrade one Dreadspear to a Musician +5 points
- May upgrade one Dreadspear to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("BLEAKSWORDS",
  profiles: (
    (name: "Bleaksword", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour, shield",
  options: [
- May upgrade one Bleaksword to a Leader +5 points
- May upgrade one Bleaksword to a Musician +5 points
- May upgrade one Bleaksword to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("DARKSHARDS",
  profiles: (
    (name: "Darkshard", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 13),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Deathrain crossbow, medium armour",
  options: [
- May take shields +1 point/model
- May upgrade one Darkshard to a Leader +5 points
- May upgrade one Darkshard to a Musician +5 points
- May upgrade one Darkshard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("BLACK ARK CORSAIRS",
  profiles: (
    (name: "Corsair", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour, Sea Dragon Cloak",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May replace one hand weapon with repeater handbows +2 points/model
- May upgrade one Corsair to a Leader +5 points
- May upgrade one Corsair to a Musician +5 points
- May upgrade one Corsair to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Ambushers, Elven Grace, Hatred (High Elves), Murderous Prowess",
  special-rules-body: (
    rule("Slavers")[Whenever a unit containing at least 5 models with this special rule breaks an enemy unit in close combat and pursues them, the fleeing unit must re-roll the highest result on their flee roll.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("DARK RIDERS",
  profiles: (
    (name: "Dark Rider", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 16),
    (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Dark Elf)",
  mount: "Dark Steed (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance, light armour",
  options: [
- May take Deathrain crossbows +5 points/model
- May take shields +1 point/model
- May take barding free
- May upgrade one Dark Rider to a Leader +5 points
- May upgrade one Dark Rider to a Musician +5 points
- May upgrade one Dark Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Elven Grace, Fast Cavalry, Hatred (High Elves), Murderous Prowess",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("SLAVES",
  profiles: (
    (name: "Slave", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 4, points: 2),
    (name: "Slave Master", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 25),
  ),
  unit-size: "20+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapons",
  special-rules: "Elven Grace (Slave Master only), Expendable, Hatred (High Elves) (Slave Master only), Mixed Unit, Murderous Prowess (Slave Master only), Vanguard",
  notes: [
- You must include one Slave Master for every 20 Slaves in the unit.
  ],
)

#unit("HARPIES",
  profiles: (
    (name: "Harpy", m: 5, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 6, points: 12),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Harpy)",
  base-size: "20x20 or 25x25",
  options: [
- May upgrade one Harpy to a Leader +5 points
  ],
  special-rules: "Expendable, Fly (10)",
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules"),
)

= SPECIAL UNITS

#unit("WITCH ELVES",
  first: true,
  profiles: (
    (name: "Witch Elf", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Witch Elf to a Leader +5 points
- May upgrade one Witch Elf to a Musician +5 points
- May upgrade one Witch Elf to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks",
  notes: [
- You may take one unit of Witch Elves as a Core Unit instead of a Special Unit for every Hag Queen or Death Hag in your army.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("HAR GANETH EXECUTIONERS",
  profiles: (
    (name: "Executioner", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, heavy armour",
  options: [
- May upgrade one Executioner to a Leader +5 points
- May upgrade one Executioner to a Musician +5 points
- May upgrade one Executioner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Killing Blow, Khainite, Murderous Prowess",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SISTERS OF SLAUGHTER",
  profiles: (
    (name: "Sister of Slaughter", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 15),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Sister of Slaughter to a Leader +5 points
- May upgrade one Sister of Slaughter to a Musician +5 points
- May upgrade one Sister of Slaughter to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Hatred (High Elves), Immunity (Fear), Murderous Prowess",
  special-rules-body: (
    rule("Dance of Death")[Models with this special rule have the Dodge (5+) special rule in close combat and can re- roll failed Dodge saves. In addition, at the start of each round of close combat, each unit with this special rule chooses one enemy unit in base contact. That unit gains no Rank Bonus and cannot make Parry saves this turn.],
    rule("The Trial of Blades")[Models with this rule receive +1 To Hit and To Wound if at least one enemy model in base contact with the unit has a Weapon Skill characteristic of 5+ and/or a Strength characteristic of 4+.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SHADES",
  profiles: (
    (name: "Shade", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 16),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Deathrain crossbow",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Shade to a Leader +5 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess, Scouts, Skirmishers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("COLD ONE KNIGHTS",
  profiles: (
    (name: "Cold One Knight", m: 7, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 6, a: 1, ld: 9, points: 32),
    (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Dark Elf)",
  mount: "Cold One (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield",
  options: [
- May take barding free
- May upgrade one Cold One Knight to a Leader +5 points
- May upgrade one Cold One Knight to a Musician +5 points
- May upgrade one Cold One Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Elven Grace, Fear, Hatred (High Elves), Murderous Prowess, Natural Armour (6+), Stupidity",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("COLD ONE CHARIOT",
  compact: true,
  profiles: (
    (name: "Cold One Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
    (name: "Charioteer", m: "-", ws: 5, bs: 4, s: 4, t: "-", w: "-", i: 6, a: 1, ld: 9, points: ""),
    (name: "Cold One", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Charioteers (Dark Elf)",
  drawn-by: "2 Cold Ones (Animal)",
  base-size: "50x100",
  equipment: "Light lance, Deathrain crossbow, heavy armour, scythes",
  special-rules: "Elven Grace, Fear, Hatred (High Elves), Murderous Prowess, Natural Armour (6+), Stupidity",
)

#unit("SCOURGERUNNER CHARIOT",
  profiles: (
    (name: "Scourgerunner Chariot", m: 8, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Beastmaster Crew", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Dark Steed", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Beastmaster Crew (Dark Elf)",
  drawn-by: "2 Dark Steeds (Animal)",
  base-size: "50x100",
  equipment: "Light lance, Deathrain crossbow, Ravager Harpoon, Sea Dragon Cloak",
  equipment-body: [
- *Ravager Harpoon:* A Ravager Harpoon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "5", "Armour Piercing (1), Multiple Wounds (D3)"))

If a Monstrous Creature or Monster is Hit by this weapon but survives, it must immediately turn and move D6" towards the Scourgerunner Chariot, stopping within 1" of other units or impassable terrain. In its following turn, the target may choose to either suffer 1 Wound with no saves allowed or be forced to keep moving D6" towards the Scourgerunner Chariot instead of moving normally.
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
)

#unit("REAPER BOLT THROWER",
  profiles: (
    (name: "Reaper Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
    (name: "Crew", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine (Repeater Bolt Thrower)",
  crew: "2 (Dark Elf)",
  base-size: "50x100",
  equipment: "Hand weapon, medium armour",
  options: [
- May take an additional Crew 11 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess",
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules"),
)

#unit("MELUSAI",
  profiles: (
    (name: "Melusai", m: 6, ws: 5, bs: 5, s: 3, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 28),
  ),
  unit-size: "5+",
  troop-type: "Large Infantry (Dark Elf)",
  base-size: "30x30 or 40x40",
  equipment: "Heartshard Glaive, medium armour",
  equipment-body: (
    rule("Heartshard Glaive")[Polearm. All attacks made with this weapon have the Magical Attacks and Killing Blow special rules.],
    rule("Heartseeker Bows")[Warbow. All attacks made with this weapon have the Magical Attacks and Killing Blow special rules.],
  ),
  options: [
- May replace Heartshard Glaives & medium armour with light armour & Heartseeker Bows +2 points/model
- May upgrade one Melusai to a Leader +5 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Khainite, Murderous Prowess, Natural Armour (6+), Swiftstride, Vanguard",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("KHINERAI",
  profiles: (
    (name: "Khinerai", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 15),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon, light armour, shield",
  options: [
- May take javelins +2 points/model
- May upgrade one Khinerai to a Leader +5 points
  ],
  special-rules: "Ambushers, Elven Grace, Fly (10), Hatred (High Elves), Khainite, Murderous Prowess",
  special-rules-body: (
    rule("Fight and Flight")[In any close combat phase in which a unit with this special rule does not break or break their enemy, it may choose to disengage from combat instead of doing a combat reform (if the unit lost the combat they must pass a Leadership test just like when attempting to Reform from Defeat). If the unit manages to disengage from combat, the unit will make a Flee move as if it had broken from combat. This Flee move follows the rules for Feigned Flight. After finishing its move, the unit rallies automatically. The enemy unit is not allowed to Pursue, but may make a Combat Reform as normal.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("BLOODWRACK MEDUSA",
  profiles: (
    (name: "Bloodwrack Medusa", m: 6, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 60),
  ),
  troop-type: "Monstrous Beast (Dark Elf)",
  base-size: "40x40",
  equipment: "Polearm",
  special-rules: "Elven Grace, Frenzy, Hatred (High Elves), Murderous Prowess, Natural Armour (6+)",
  special-rules-body: [
- *Avert Your Gaze!:* At the start of each Close Combat phase, before challenges are issued, enemy models in base contact with this model suffer a Strength 4 hit with the Ignores Armour Saves, Magical Attacks and Killing Blow special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value.
- *Bloodwrack Stare:* Bloodwrack Stare has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Killing Blow, Magical Attacks, Multiple Shots (5)"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.
  ],
)

= RARE UNITS

#unit("BLACK GUARD OF NAGGAROND",
  first: true,
  profiles: (
    (name: "Black Guard", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 18),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, heavy armour",
  options: [
- May upgrade one Black Guard to a Leader +5 points
- May upgrade one Black Guard to a Musician +5 points
- May upgrade one Black Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
  special-rules: "Elven Grace, Eternal Hatred, Immunity (Psychology), Murderous Prowess, Stubborn",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SHADOWSTALKERS",
  profiles: (
    (name: "Shadowstalker", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 16),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  options: [
- May replace throwing weapons with repeater handbows +2 points/model
- May upgrade one Shadowstalker to a Leader +5 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Loner, Murderous Prowess, Poisoned Attacks, Scouts, Skirmishers",
  special-rules-body: (
    rule("Harness Shadow")[Missile attacks targeting a unit containing one or more models with this special rule suffer \-1 To Hit.],
    rule("Shadowleap")[Instead of moving normally in the Remaining Moves sub-phase, this unit may make a Fly (6) move.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("DOOMFIRE WARLOCKS",
  profiles: (
    (name: "Doomfire Warlock", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 26),
    (name: "Dark Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Dark Elf)",
  mount: "Dark Steed (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon",
  magic: "A unit of Doomfire Warlocks is a Level 1 Wizard that can use spells from the Lore of Shadow, Death or Dark",
  magic-body: [
Magic.
  ],
  options: [
- May take barding free
- May upgrade one Doomfire Warlock to a Leader +5 points
  ],
  special-rules: "Fast Cavalry, Hatred (High Elves), Hekarti's Blessing, Murderous Prowess, Poisoned",
  special-rules-body: [
*Attacks, Ward Save (4+)*

- *Cursed Coven:* The unit receives an additional +1 to cast for each rank of 5 or more models it has, after the first, to a maximum of +3. Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Doomfire Warlock as the caster (or target) for the purposes of line of sight, range, etc. In the event of a Doomfire Warlock unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.
  ],
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("CAULDRON OF BLOOD",
  profiles: (
    (name: "Cauldron of Blood", m: 5, ws: "-", bs: "-", s: 5, t: 6, w: 5, i: "-", a: "-", ld: "-", points: 165),
    (name: "Keeper of the Cauldron", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 6, a: 2, ld: 8, points: ""),
    (name: "Guardian", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 6, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Shrine (Armour Save 6+)",
  crew: "1 Keeper of the Cauldron and 2 Guardians (Dark Elf)",
  base-size: "60x100",
  equipment: "Two hand weapons",
  special-rules: "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Large Target (5), Murderous Prowess, Poisoned Attacks, Terror",
  special-rules-body: (
    rule("Bloodshield of Khaine")[The Cauldron of Blood has a 4+ Ward save, and models in the same unit have a 6+ Ward save.],
    rule("Fury of Khaine")[Innate Bound Spell, power level 5. Fury of Khaine is an *augment* spell with a range of 12". The target gains the Frenzy special rule until the start of the Cauldron of Blood's next Magic phase.],
    rule("Strength of Khaine")[Friendly units with the Murderous Prowess special rule within 6" of the Cauldron of Blood re-roll failed To Wound rolls in close combat.],
  ),
  notes: [
- A Cauldron of Blood has a Line of Sight value of 5.
  ],
)

#unit("BLOODWRACK SHRINE",
  profiles: (
    (name: "Bloodwrack Shrine", m: 5, ws: "-", bs: "-", s: 5, t: 6, w: 5, i: "-", a: "-", ld: "-", points: 140),
    (name: "Shrinekeeper", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Bloodwrack Medusa", m: "-", ws: 5, bs: 5, s: 4, t: "-", w: "-", i: 5, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Shrine (Armour Save 6+)",
  crew: "1 Bloodwrack Medusa and 2 Shrinekeepers (Dark Elf)",
  base-size: "60x100",
  equipment: "Polearm",
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess, Natural Armour (6+), Terror",
  special-rules-body: [
- *Aura of Agony:* Enemy units within 6" suffer a \-2 penalty to their Weapon Skill and Initiative (to a minimum of 1) as well as \-1 to their Leadership.
- *Avert Your Gaze!:* At the start of each Close Combat phase, before challenges are issued, enemy models in base contact with this model suffer a Strength 4 hit with the Ignores Armour Saves, Magical Attacks and Killing Blow special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value.
- *Bloodwrack Stare:* Bloodwrack Stare has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Killing Blow, Magical Attacks, Multiple Shots (5)"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.
  ],
  notes: [
- A Bloodwrack Shrine has a Line of Sight value of 5.
  ],
)

#unit("WAR HYDRA",
  profiles: (
    (name: "War Hydra", m: 6, ws: 4, bs: 4, s: 5, t: 5, w: 5, i: 2, a: 8, ld: 6, points: 200),
    (name: "Beastmaster Apprentice", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Monster (Hydra)",
  handlers: "2 Beastmaster Apprentices (Dark Elf)",
  base-size: "50x100",
  equipment: "Two hand weapons (Beastmaster Apprentices only)",
  options: [
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
  ],
  special-rules: "Elven Grace (Beastmaster Apprentice only), Hatred (High Elves) (Beastmaster Apprentice",
  special-rules-body: [
only)*, Mixed Unit, Murderous Prowess* (Beastmaster Apprentice only)*, Natural Armour (4+), Regeneration (4+)*

- *Loss of Heads:* For each unsaved Wound the War Hydra has lost during the battle, it loses one Attack.
  ],
  upgrades: [
- *Acid Breath:* The model gains a Strength 2 Breath Weapon with the Ignores Armour Saves special rule.
- *Battle Lover:* The model gains the Vanguard special rule.
- *Bloodthirsty:* The model gains the Devastating Charge special rule.
- *Chameleon Skin:* All enemy missile attacks targeting the model suffer \-1 To Hit.
- *Daerlythe's Aura:* The model gains the Magic Resistance (2) special rule.
- *Fiery Breath:* The model gains a Breath Weapon with the Flaming Attacks special rule. The Strength of this attack is equal to the War Hydra's remaining Wounds.
- *Armour Plates:* The model gains the Natural Armour (6+) special rule.
- *Spit Fire:* The model gains a shooting attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "*", "Flaming Attacks, Quick to Fire, Multiple Shots (*), Rapid Fire"))

\*The Strength and Multiple Shots value of this attack is equal to the War Hydra's remaining number of Wounds.
  ],
  order: ("troop-type", "handlers", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("KHARIBDYSS",
  profiles: (
    (name: "Kharibdyss", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 5, i: 4, a: 5, ld: 6, points: 210),
    (name: "Beastmaster Apprentice", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Monster (Sea Creature)",
  handlers: "2 Beastmaster Apprentices (Dark Elf)",
  base-size: "50x100",
  equipment: "Two hand weapons (Beastmaster Apprentices only)",
  special-rules: "Aquatic, Elven Grace (Beastmaster Apprentice only), Hatred (High Elves) (Beastmaster",
  special-rules-body: [
Apprentice only)*, Mixed Unit, Murderous Prowess* (Beastmaster Apprentice only)*, Multiple Wounds (D3), Natural Armour (4+), Poisoned Attacks*

- *Abyssal Howl:* Enemy units that are in base contact with a Kharibdyss must re-roll successful Leadership tests. This has no effect on models that have Immunity (Fear/Terror/Psychology).
- *Feast of Bones:* Roll a D6 for each unsaved Wound caused by this model. On the roll of a 6+, the Kharibdyss regains 1 Wound lost previously during the game.
  ],
)

#unit("AVATAR OF KHAINE",
  profiles: (
    (name: "Avatar of Khaine", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 5, ld: 10, points: 250),
  ),
  troop-type: "Monster (Animated Construct)",
  base-size: "50x50",
  equipment: "Hand weapon, heavy armour",
  special-rules: "Animated Construct, Hatred, Killing Blow, Unstable, Ward Save (5+)",
  special-rules-body: (
    rule("Idol of Worship")[All friendly Dark Elves within 12" of an Avatar of Khaine gain +1 Leadership.],
    rule("Wrath of Khaine")[For each successful Killing Blow scored (before any saves), the Avatar of Khaine immediately gets to make an additional Attack.],
  ),
)

= SPECIAL CHARACTERS (LORDS)

#unit("MALEKITH",
  first: true,
  subtitle: "The Witch King of Naggaroth",
  profiles: (
    (name: "Malekith", m: 5, ws: 8, bs: 7, s: 5, t: 4, w: 3, i: 8, a: 4, ld: 10, points: 495),
    (name: "Seraphon (Black Dragon)", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 6, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  magic: "Malekith is a Level 4 Wizard who uses spells from the Lore of Dark Magic.",
  magic-items: (
    rule("Destroyer")[Magic Weapon. At the start of every Close Combat phase, all enemy models in base contact with Malekith must reveal their magic items. Furthermore, if Malekith scores one or more hits against a model with any magic items, roll a D6; on a 4+, one randomly determined magic item is immediately destroyed and cannot be used further in this game. Do not include Magic items that are mounts, magic items that contain bound spells that miscast earlier in the game, or any magic items labelled as 'one use only' that have been used. In addition, if a Wizard suffers one or more unsaved Wounds from Destroyer, roll a D6; on a 4+, the Wizard immediately loses a Wizard level.],
    rule("Hand of Khaine")[Magic Weapon. The Hand of Khaine gives Malekith an extra Attack at Strength 6 which Ignores armour saves.],
    rule("Armour of Midnight")[Magic Armour. Heavy armour. The Armour of Midnight grants Malekith a 2+ Ward save against all non-magical attacks and the Immunity (Killing Blow/Multiple Wounds) special rule.],
    rule("Supreme Spellshield")[Magic Armour. Shield. This item grants Malekith the Magic Resistance (2) special rule. If Malekith is ever the target of an enemy spell that he successfully dispels, the caster's unit immediately suffers D6 magical Strength 6 hits.],
    rule("Circlet of Iron")[Arcane Item. Once per Magic phase, Malekith can use the Circlet of Iron to add a single bonus dice to any of his failed casting or dispel attempts. This bonus dice can contribute to irresistible force (and a miscast).],
  ),
  options: [
- May be mounted on one of the following:
  - Cold One +24 points
  - Cold One Chariot (replacing one of the crew) +100 points
  - Seraphon (Black Dragon) +320 points
  ],
  special-rules: "Elven Grace, Fear, Eternal Hatred, Hekarti's Blessing, Immunity (Psychology), Murderous",
  special-rules-body: [
*Prowess*

- *Absolute Power:* If you take Malekith, he must be your Army General. Malekith has the Inspiring Presence (18) special rule.
- *Black Guard:* If your army includes Malekith, units of Black Guard are taken as Special Units instead of Rare units.
  ],
  notes: [
- At the start of each close combat, you must choose whether Malekith uses the Hand of Khaine or the Supreme Spellshield.
  ],
  order: ("troop-type", "base-size", "magic", "magic-items", "options", "special-rules", "notes"),
)

#unit("MORATHI",
  subtitle: "The Hag Sorceress of Ghrond",
  profiles: (
    (name: "Morathi", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 3, ld: 10, points: 355),
    (name: "Sulephet (Dark Pegasus)", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 6, points: ""),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  magic: "Morathi is a Level 4 Wizard who uses spells from the Lore of Death, the Lore of Shadow and the Lore of Dark Magic. She can choose all her spells from the same lore, or from two or more of the above lores in any",
  magic-body: [
combination.
  ],
  magic-items: (
    rule("Heartrender and the Darksword")[Magic Weapon. Light lance. Hits from this weapon have the Killing Blow special rule in the turn Morathi charges. In addition, for each Hit a Monstrous Creature, Monster or character take from these weapons they suffer \-1 to their Strength, Toughness and Attack characteristics (to a minimum of 1) for the remainder of the close combat phase.],
  ),
  options: [
- May be mounted on Sulephet (Dark Pegasus) +40 points
  ],
  special-rules: "Hatred (High Elves), Hekarti's Blessing, Khainite, Magic Resistance (2), Murderous",
  special-rules-body: [
*Prowess, Ward Save (4+)*

- *Beloved of Khaine:* All Khainite models always treat Morathi as the Army's General for all purposes, regardless of what character is the Army General.
- *Enchanting Beauty:* All models suffer \-1 To Hit against Morathi in close combat. This has no effect on models with the Immunity (Psychology) special rule.
- *The First Sorceress:* Morathi has a +2 casting bonus.
  ],
  order: ("troop-type", "base-size", "magic", "magic-items", "options", "special-rules"),
)

#unit("MALUS DARKBLADE",
  subtitle: "Scion of Hag Graef",
  profiles: (
    (name: "Malus Darkblade", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 210),
    (name: "Spite", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 3, ld: 4, points: ""),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour, Sea Dragon Cloak",
  magic-items: (
    rule("Warpsword of Khaine")[Magic Weapon. The Warpsword of Khaine allow Malus to re-roll failed rolls To Wound and Ignores Armour saves.],
  ),
  options: [
- May be mounted on Spite (Cold One) +50 points
  ],
  special-rules: "Elven Grace, Eternal Hatred, Murderous Prowess",
  special-rules-body: [
- *Tz'arkan:* Malus Darkblade may unleash the power of Tz'arkan at the start of any friendly Movement phase. Once the Daemon is released, he cannot be bound back during the battle. If Malus releases Tz'arkan, the following rules apply for the rest of the game:
  - Malus Darkblade immediately gains the Frenzy and Ward Save (5+) special rules, but loses Elven Grace, Hatred, Hatred (High Elves) and Murderous Prowess.
  - Malus Darkblade gains +1 Weapon Skill, +1 Strength, +2 Toughness and +1 Initiative. However, friendly units can no longer use his Leadership.
  - Each time Malus Darkblade makes a To Hit roll of 1, a friendly model in base contact (of your choice) is struck by Malus attack instead. Roll to Wound as normal.
- *Not Just a Dumb Brute:* Any unit of Cold One Knights joined by Spite are not subject to their normal Stupidity.
  ],
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("CRONE HELLEBRON",
  subtitle: "The Blood Queen of Har Ganeth",
  profiles: (
    (name: "Crone Hellebron", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 4, ld: 10, points: 280),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Deathsword and the Cursed Blade")[Magic Weapon. Two hand weapons. Hits from Deathsword and the Cursed Blade are resolved at Strength 10. If a model rolls a 1 To Hit whilst attacking Hellebron in close combat, it suffers an automatic Strength 4 hit for each 1 rolled.],
    rule("Amulet of Dark Fire")[Talisman. Dispel attempts made against spells that target Hellebron or her unit receive a +4 bonus to dispel.],
  ),
  gifts-of-khaine: "Cry of War, Rune of Khaine, Witchbrew",
  options: [
- May be mounted on one of the following:
  - Manticore +150 points
  - Cauldron of Blood (replacing the Keeper of the Cauldron) +160 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Frenzy, Khainite, Murderous Prowess, Poisoned Attacks",
  special-rules-body: (
    rule("Queen of Khaine")[If Hellebron is your General, all Witch Elves are taken as Core units rather than as Special units.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "gifts-of-khaine", "options", "special-rules"),
)

#unit("RAKARTH",
  subtitle: "Beastlord of Clar Karond",
  profiles: (
    (name: "Rakarth", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 3, i: 6, a: 3, ld: 10, points: 445),
    (name: "Bracchus (Black Dragon)", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: ""),
  ),
  troop-type: "Monster (Special Character, Dark Elf)",
  mount: "Bracchus (Dragon)",
  base-size: "50x50, 50x100 or 60x100",
  magic-items: (
    rule("Whip of Agony")[Magic Weapon. The Whip of Agony gives Rakarth +1 Strength. In addition, at the beginning of any close combat phase, Rakarth may make a special attack with the Always Strikes First rule. If this attack causes an unsaved Wound but does not kill the target, it is overcome with pain and must roll 6's to Hit in that round of close combat.],
    rule("Beast Armour of Clar Karond")[Magic Armour. Heavy armour. This armour allows Rakarth to re-roll failed armour saves.],
  ),
  special-rules: "Beastslaver (see Beastmaster), Hatred (High Elves), Fly (7), Murderous Prowess, Natural",
  special-rules-body: [
*Armour (3+)*, *Noxious Breath* (see Black Dragon)*.*

- *Beastlord:* Any friendly Monster within 12" of Rakarth treat him as having the Hold Your Ground! special rule.
  ],
)

#unit("KRETHUSA THE CRONESEER",
  subtitle: "Prophetess of Morai-Heg",
  profiles: (
    (name: "Krethusa", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 5, a: 2, ld: 9, points: 295),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "Krethusa is a Level 3 Wizard who uses spells from the Lore of Shadow.",
  special-rules: "Fly (10), Hatred (High Elves), Murderous Prowess, Ward Save (4+)",
  special-rules-body: [
- *Burnt Offerings:* Krethusa knows the three prophecies listed below. She may attempt to use one at the start of each of your Magic phases by taking a Leadership test on her own unmodified Leadership If passed, the prophecy is fulfilled and takes immediate effect. Each prophecy targets one friendly unit within 12".
  - *Prophecy of Silence:* Enemy units within 6" of the unit cannot benefit from the Inspiring Presence, Hold Your Ground or Follow Me rules.
  - *Prophecy of Dark Wings:* The unit may immediately make an additional move as if it were the Remaining Moves sub-phase.
  - *Prophecy of Reclamation:* Enemy units in base contact with the unit do not gain Combat Resolution bonuses from anything except the number of Wounds inflicted unless they contain at least one character.
- *Murder of Crows:* Krethusa knows the _Flock of Doom_ spell from the Lore of Beasts as an innate Bound Spell, power level 4.
  ],
)

= SPECIAL CHARACTERS (HEROES)

#unit("KOURAN DARKHAND",
  first: true,
  subtitle: "Captain of the Black Guard",
  profiles: (
    (name: "Kouran Darkhand", m: 5, ws: 8, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 140),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Crimson Death")[Magic Weapon. Polearm. Close combat attacks made with the Crimson Death are resolved at an additional +1 Strength.],
    rule("The Armour of Grief")[Magic Armour. Heavy armour. Each time a model makes a successful To Hit roll against Kouran Darkhand in close combat, the model that struck the blow immediately suffers a Strength 5 hit.],
  ),
  special-rules: "Elven Grace, Hatred, Hatred (High Elves), Immunity (Psychology), Murderous Prowess, Stubborn",
  special-rules-body: (
    rule("The Right Hand of Darkness")[If Kouran Darkhand is in a unit of Black Guard, he and all models in that unit have the Unbreakable special rule.],
  ),
)

#unit("TULLARIS DREADBRINGER",
  subtitle: "The Hand of Khaine",
  profiles: (
    (name: "Tullaris Dreadbringer", m: 5, ws: 7, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("The First Draich")[Magic Weapon. Great weapon. Tullaris' Killing Blow special rule takes effect on a 5+, rather than a 6.],
  ),
  special-rules: "Elven Grace, Hatred (High Elves), Fear, Khainite, Killing Blow, Murderous Prowess",
  special-rules-body: (
    rule("Khaine's Sacred Slaughterer")[Each time Tullaris inflicts a successful Killing Blow, he and his unit gain a +1 bonus to their combat resolution score, in addition to any wounds inflicted by him.],
  ),
)

#unit("MENGIL MANHIDE",
  subtitle: "Captain of the Manflayers",
  profiles: (
    (name: "Mengil Manhide", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 95),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, repeater handbow, medium armour",
  magic-items: (
    rule("Banner of Kalad")[Magic Standard. Any unit wishing to target Mengil's Manflayers with missile attacks suffer \-1 to hit. This is increased to \-2 if the Manflayers are more than 12" away from the shooters.],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Elven Grace, Hatred (High Elves), Murderous Prowess, Poisoned Attacks, Scouts, Skirmishers",
  special-rules-body: (
    rule("The Manflayers")[Mengil Manhide must be accompanied by a unit of Shades chosen from the army list at a cost of 22 points per model. This unit is armed with Deathrain crossbows, great weapons and medium armour and have the Poisoned Attacks special rule. The unit must be given a full command at a cost of +20 points. The Standard Bearer carries the Banner of Kalad above. Mengil Manhide is the unit's Leader and may never choose to leave this unit. The regiment may never pursue enemies that they break in close combat. For each enemy unit that they break or wipe out in close combat they gain +100 Victory Points.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("LOKHIR FELLHEART",
  subtitle: "Krakenlord of Karond Kar",
  profiles: (
    (name: "Lokhir Fellheart", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 150),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour, Sea Dragon Cloak",
  magic-items: (
    rule("The Red Blades")[Magic Weapon. Two hand weapons. Any hits made by the Red Blades re-roll any failed To Wound roll.],
    rule("Helm of the Kraken")[Magic Armour. The Helm of the Kraken grants Lokhir Fellheart a 6+ armour save, +1 Toughness, as well as the Regeneration (6+) and Terror special rules.],
  ),
  special-rules: "Ambushers, At them, you Curs! (see Black Ark Fleetmaster), Elven Grace, Hatred (High",
  special-rules-body: [
*Elves), Murderous Prowess, Show no Weakness* (see Black Ark Fleetmaster)

- *Murderous Swashbuckler:* If Lokhir makes a successful Parry save, he may immediately make an additional Attack back against the model that struck the blow.
- *Merciless Slaver:* If an enemy unit breaks from a close combat that includes Lokhir Fellheart, all units taking Panic tests as a result of that unit breaking suffer a \-1 penalty to their Leadership value for that test.
  ],
)

#unit("SHADOWBLADE",
  subtitle: "Master of Assassins, the Death that Walks Unseen",
  profiles: (
    (name: "Shadowblade", m: 6, ws: 10, bs: 10, s: 4, t: 3, w: 2, i: 10, a: 3, ld: 9, points: 220),
  ),
  troop-type: "Infantry (Special Character, Dark Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  magic-items: (
    rule("Heart of Woe")[Enchanted Item. If Shadowblade is ever slain, centre the small round template over him before removing the model as a casualty. Every model touched by the template immediately suffers a Strength 3 hit. After any damage has been resolved, remove Shadowblade as a casualty as normal.],
    rule("Potion of Diabolic Strength")[Enchanted Item. One use only. The Potion of Diabolic Strength can be drunk at the start of any player's Close Combat phase, after any Assassins have revealed that they are hiding in a unit. Shadowblade gains +3 Strength until the end of the turn.],
  ),
  gifts-of-khaine: "Black Lotus, Dance of Doom, Dark Venom, Hand of Khaine, Manbane, Touch of Death",
  special-rules: "Dodge (5+), Hatred (High Elves), Hidden, Immunity (Psychology), Khainite, Murderous",
  special-rules-body: [
*Prowess, Poisoned Attacks, Scouts*

- *Master of Disguise:* Shadowblade can deploy using the Hidden special rule like an Assassin. If he does so, he can change which unit he is hiding in at the start of any Movement or Close Combat phase – keep a note of where Shadowblade is each time you change your mind. (Clearly Shadowblade is not 'moving' between units, his disguise was simply so good that he was hiding just where he needed to be all along, waiting for the perfect time to strike!). If an opponent has an ability that forces you to state that there are 'hidden' models within a unit, you only need to say that Shadowblade is hiding within a unit, but not which unit he is currently in.
  ],
)
