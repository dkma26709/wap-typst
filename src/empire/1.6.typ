// The Empire 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "empire",
  army: "The Empire",
  version: "1.6",
  layout: "army",
  cover: "covers/empire.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — The Empire 1.6")

#cover(
  title: "The Empire",
  subtitle: "Warhammer Armies Project · 1.6",
  art: "/assets/covers/empire.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    The Empire*, version 1.6 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in an Empire army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Empire units, and these are detailed here.])[
#upgrade("STATE TROOPS", none)[
State Troops are trained to support and protect each other in battle. If an enemy unit declares a charge against a State Troop unit, and that unit does not flee as a charge reaction, then all unengaged State Troop units within 3" can make either a *Support Fire* or a *Counter Charge* action by passing a Leadership test (which can be re-rolled if the unit has a Leader). These actions are declared immediately after their State Troops' charge reaction. If the charged State Troops unit does not get a charge reaction for any reason then the other State Troops units within range cannot make a Support Fire or a Counter Charge action.

Additionally, a State Troop unit can only declare one Support Fire action, one Stand and Shoot reaction or one Counter Charge action per turn.

- *Support Fire:* A State Troop unit can only declare a Support Fire action if at least one model in the unit is armed with a missile weapon and the range between the charging unit and the charged State Troops unit is greater than the charging unit's Movement characteristic.

If a Support Fire action is declared, the unit makes an immediate, out of sequence shooting attack, resolved as if it had just declared a Stand and Shoot charge reaction against the charging unit. All unsaved Wounds from the units' Stand and Shoot charge reaction and/or Support Fire actions, are combined when determining if the charging unit is required to take a Heavy Casualties Panic test.

- *Counter Charge:* A State Troop unit can declare a Counter Charge against an enemy unit's unengaged arc, after your opponent has moved all of their charging units, as long as one or more enemy units has successfully completed a charge against the charged State Troop unit. If a Counter Charge action is declared, the unit makes an out of sequence move that is resolved as it had just declared a charge against the charging unit. The enemy does not get to make any charge reactions against a Counter Charge, but otherwise all the normal charging rules and bonuses apply.

#diagram("/assets/figures/empire/1.6/img-0195.jpg", 0.463)
]

#upgrade("CAVALRY HAMMER", none)[
Cavalry hammers use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (1), Requires Two Hands"))
]

#upgrade("FULL PLATE ARMOUR", none)[
Full plate armour has the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("+4/3+", "+4/3+", "-"))
]

#upgrade("GRENADE LAUNCHING BLUNDERBUSS", none)[
Grenade launching blunderbusses have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "6", "Armour Piercing (1), Move or Fire, Ponderous"))
]

#upgrade("HOCHLAND LONG RIFLE", none)[
Hochland long rifles have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "4", "Armour Piercing (1), Ponderous, Sniper"))
]

#upgrade("REPEATER HANDGUN", none)[
Repeater handguns have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Multiple Shots (3), Ponderous, Rapid Fire"))
]

#upgrade("REPEATER PISTOL", none)[
Repeater pistols have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Armour Piercing (1), Multiple Shots (3), Quick to Fire, Rapid Fire"))

#note[_In close combat, a repeater pistol counts as an additional hand weapon that does not give the model the Parry special rule._]

#note[_A repeater pistol can be used in combination with a regular pistol as a brace of pistols, in which case they fire Multiple Shots (4), but do not have Rapid Fire._]
]
]
#upgrade-chapter("KNIGHTLY ORDERS")[
*Units of Knights be upgraded to any one of the Knightly Orders below as detailed in the army list. A Grand Master or Chapter Master may only join a unit that belongs to the same Knightly Order. You may only field one Grand Master for each Knightly Order. Grand Masters and Chapter Masters must either be armed with a hand weapon or the same equipment as the rest of their unit.*

#upgrade("REIKSGUARD KNIGHTS", (("Characters", "free"), ("Cavalry/Infantry", "1 point per model"), ("Monstrous Cavalry", "3 points per model")))[Must take heavy lances or polearms if mounted. The models have the Stubborn special rule. However, they may not take a regular Grand Master.]

#upgrade("KNIGHTS OF THE BLAZING SUN", (("Characters", "free"), ("Cavalry", "1 point per model"), ("Monstrous Cavalry", "3 points per model")))[Must take heavy lances or polearms. Whenever a unit where the majority of models have this upgrade declare a charge, the unit being charged suffer \-1 Weapon Skill and Ballistic Skill for the duration of the turn.]

#upgrade("KNIGHTS PANTHER", (("Characters", "free"), ("Cavalry", "1 point per model")))[Must take heavy lances or polearms. A unit where all models have this upgrade add an extra D3" to their charge distance.]

#upgrade("KNIGHTS OF THE WHITE WOLF", (("Characters", "5 points"), ("Cavalry", "1 point per model")))[Must take cavalry hammers. The models have the Hatred special rule against enemy models with a lower Weapon Skill, Strength, Toughness or Leadership characteristic than they have. In addition, they have the Natural Armour (6+) special rule against missile attacks.]

#upgrade("BLACK GUARD OF MORR", (("Characters", "free"), ("Cavalry/Infantry", "1 point per model")))[Must take polearms on foot. The models have the Fear and Loner special rules.]

#upgrade("KNIGHTS GRIFFON", (("Characters", "free"), ("Cavalry", "1 point per model"), ("Monstrous Cavalry", "3 points per model")))[Must take heavy lances or polearms. The unit may attempt to use a Swift Reform at the start of the turn instead of the Remaining Moves sub-phase. However, they will halve their Charge distance that turn if they do so. In addition, they may not choose Flee as a charge reaction, refuse a challenge and ignore Swiftstride when fleeing. KNIGHTS OF THE EVERLASTING LIGHT]

#upgrade("Characters", 10)[
]

#upgrade("Cavalry 1 point per model", none)[Must take heavy lances or great weapons. The models gain the Magical Attacks special rule and may re-roll failed armour saves in close combat. However, they must re-roll successful armour saves from missile attacks and successful Dangerous Terrain tests.]

#upgrade("KNIGHTS OF SIGMAR'S BLOOD", (("Characters", "free"), ("Cavalry", "1 point per model")))[Must take heavy lances or polearms. The models have the Inspiring Presence (6) special rule. However, they may not be upgraded to Inner Circle Knights.]

#upgrade("KNIGHTS OF THE BLACK BEAR", (("Characters", "free"), ("Cavalry", "free")))[Must take heavy lances or polearms. This unit always counts as having one more rank than it actually has for the purpose of determining Steadfast, and enemy units cannot claim the Outnumber bonus against it. However, it must re-roll successful Leadership tests for Marching when within 8" of enemy units, Redirecting a Charge, Reforming from Defeat after losing a round of close combat, Restraining from Pursuit or Swift Reform.]

#upgrade("KNIGHTS OF THE TWIN-TAILED ORB", (("Characters", "15 points"), ("Cavalry", "2 points per model")))[The unit is armed with flails instead of heavy lances. The models have the Flaming Attacks and Frenzy special rules.]

#upgrade("KNIGHTS ENCARMINE", (("Characters", "10 points"), ("Cavalry", "free")))[The unit is armed with two hand weapons instead of heavy lances. The models may re-roll 1's To Hit in close combat and can Parry while mounted. However, they cannot gain any bonus from ranks (including Steadfast) or Disrupt enemy units.]

#upgrade("SONS OF MANANN", (("Characters", "15 points"), ("Cavalry", "2 points per model")))[The unit is armed with polearms & shields instead of heavy lances. The models (but not their mounts) gain +1 To Hit in the first round of close combat.]
]

#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Empire. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("RUNEFANG", 60)[Imperial General only. All hits from a Runefang wound automatically and Ignores Armour saves.]

#magic-weapon("SWORD OF SIGISMUND", 40)[The Sword of Sigismund gives the wielder +1 Strength and the Always Strikes First special rule.]

#magic-weapon("DAEMONSLAYER BLADE", 35)[Against Daemons, all attacks made with the Daemonslayer Blade gain +1 To Wound with the Multiple Wounds (D3) special rule.]

#magic-weapon("SPEAR OF THE HIEROPHANT", 35)[Light lance/spear. Against Daemons, Undead and Vampires, all attacks made with the Spear of the Hierophant gain +1 Strength and any successful Ward Saves must be re-rolled.]

#magic-weapon("SWORD OF FATE", 35)[At the beginning of the battle, nominate one enemy Character; Monstrous Creature or Monster. The Sword of Fate will Wound that model on a 2+ with the Ignores Armour Saves and Multiple Wounds (D3) special rules.]

#magic-weapon("SWORD OF POWER", 35)[The Sword of Power gives the wielder +2 Strength and the Armour Piercing (1) special rule.]

#magic-weapon("THE GRIFFON CLAW", 20)[The Griffon Claw gives the model +1 To Hit in close combat as well as the Armour Piercing (1) special rule.]

#magic-weapon("HAMMER OF JUDGEMENT", 20)[Models hit by the Hammer of Judgement must take a Toughness test for every Hit suffered. If the test is failed, the Hit Wounds automatically with the Ignores Armour Saves special rule. If the test is passed, roll to Wound and take armour saves as normal.]

#magic-weapon("THE MACE OF HELSTURM", 20)[Great weapon. Instead of attacking normally, the bearer can choose to forfeit all of his normal Attacks to make a single, special Attack. If this Attack hits, it is resolved at Strength 10 and has both the Flaming Attacks and Multiple Wounds (D3) special rules.]

#magic-weapon("SWORD OF RIGHTEOUS STEEL", 20)[The Sword of Righteous Steel makes the wielder always Hit any opponent on roll of a 2+. In addition, any successful Parry saves must be re-rolled.]

#magic-weapon("BLESSED SWORD", 10)[All failed To Hit rolls made with the Blessed Sword may be re-rolled.]

#magic-weapon("WYRMSLAYER SWORD", 10)[The Wyrmslayer Sword makes the wielder Wound on a 4+ or better, and ignores Natural Armour.]
]

#magic-item-section("armour")[
#magic-armour("THE ARMOUR OF METEORIC IRON", 40)[The Armour of Meteoric Iron grants the wearer both a 1+ armour save and a 6+ Ward save.]

#magic-armour("ARMOUR OF TARNUS", 35)[Light armour. The Armour of Tarnus gives the wearer a 5+ Ward Save. In addition, this armour can be chosen by Wizards even though they are not normally allowed to wear armour.]

#magic-armour("SHIELD OF THE MEDUSA", 10)[Shield. At the start of each round of close combat, the Shield of the Medusa causes one enemy model in base contact of your choosing to suffer a \-1 penalty to their Attack characteristic for the remainder of the close combat phase.]
]

#magic-item-section("talisman")[
#talisman("SHROUD OF MAGNUS", 60)[This item gives the bearer a 5+ Ward save and the Magic Resistance (2) special rule. In addition, any unit joined by the character wearing the Shroud gain Immunity (Fear, Terror).]

#talisman("AMULET OF THRICE-BLESSED COPPER", 35)[All enemy attacks targeting the model wearing the Amulet of Thrice-Blessed Copper suffer \-1 To Wound. In addition, the bearer gains the Immunity (Poisoned Attacks) special rule.]

#talisman("ICON OF SIGMAR", 20)[Arch Lector only. The Icon of Sigmar gives its bearer +1 Toughness.]

#talisman("JADE AMULET", 20)[The Jade Amulet allows the wearer to ignore the first wounding Hit they suffer (after saves).]

#talisman("THE CRIMSON AMULET", 20)[The Crimson Amulet gives the wearer a 6+ Ward Save. In addition, they automatically pass any Characteristic tests they have to take.]

#talisman("SIGIL OF SIGMAR", 10)[The Sigil of Sigmar gives the bearer a 4+ Ward save against all enemy spells.]
]

#magic-item-section("arcane")[
#arcane-item("GREY WAND", 40)[The Grey Wand gives the wielder a +D3 casting bonus. Roll for each spell casting attempt.]

#arcane-item("CHALICE OF FATE", 35)[The Chalice of Fate allows the Wizard to re-roll failed Channelling rolls.]

#arcane-item("SEAL OF DESTRUCTION", 15)[One use only. After the bearer of the Seal of Destruction manages to successfully dispel an enemy spell, they may choose to use the Seal. If they do so, roll a D6. On a 4+, the spell cannot be used by that Wizard for the rest of the game.]

#arcane-item("SHEMTEK'S GRIMOIRE", 15)[One use only. This item can be used at the start of any enemy Magic Phase. Roll a D3, the result is the casting penalty all enemy Wizards suffer for the duration of this Magic Phase.]

#arcane-item("CRYSTAL BALL", 5)[The Crystal Ball allows the wearer to pick one enemy unit anywhere on the table at the start of each of your turns. Your opponent must reveal all Magic Items, Hidden models and the like that unit might have.]
]

#magic-item-section("enchanted")[
#enchanted-item("VAN HORSTMANN'S SPECULUM", 35)[When the wearer fights in a challenge, he must 'swap' the Weapon Skill, Strength, Toughness, Initiative and Attacks characteristics on his profile with his enemy (but not the enemy's mount, if he has one). So, the wearer fights with his enemy's Strength, Toughness, Initiative and Attacks whilst his enemy fights with the wearer's Strength, Toughness, Initiative and Attacks. Note that you cannot choose not to use Van Horstmann's Speculum and you must swap all of the listed characteristics for the duration of the challenge, not just some of them.]

#enchanted-item("ALDRED'S CASKET OF SORCERY", 35)[Bound Spell (power level variable). At the start of each of his Magic phases, the bearer may remove and capture one randomly determined spell from an enemy Wizard within 12" of him on a roll of 4+. The bearer can then cast the captured spell in any of his own Magic phases by releasing it from the casket just like from a Bound Spell, whereupon the spell is then removed from the game. Any number of spells may be captured by the casket, and the bearer can cast each one once, either over several magic phases or all at the same time if they prefer. The power level of the spell cast by the casket will be equivalent to the normal casting value of the spell.]

#enchanted-item("DOOMFIRE RING", 35)[Bound Spell, Power Level 6. The Doomfire Ring contains the _Burning Head_ spell from the Lore of Fire.]

#enchanted-item("EICHELBAUM'S SCROLL", 30)[Witch Hunter only. Once per turn, when an enemy spell has been cast, the bearer can use this item instead of attempting to dispel the spell by using dispel dice. This gives them 3 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. This may also be used to dispel spells that Remains in Play. However, if the dispel attempt fails, the scroll is destroyed and cannot be used for the remainder of the battle.]

#enchanted-item("HELSTURM'S STAFF", 30)[Arch Lector only. The model carrying Helsturm's Staff and any unit they join gain the Cold-blooded special rule.]

#enchanted-item("BALESTORM ORB", 25)[Witch Hunter only. Enemy Wizards within 24" of the bearer suffer a \-1 penalty to cast spell.]

#enchanted-item("BRAZIER OF HOLY FLAME", 25)[The bearer of this item gains the Hold Your Ground (6) special rule.]

#enchanted-item("BLESSED SILVER HAMMER", 20)[Any enemy model with the Daemonic, Undead or Vampiric special rule in base contact suffers a Strength 4 Hit at the start of each round of close combat.]

#enchanted-item("RING OF ST. HORST", 20)[The model carrying the Ring of St. Horst and any unit they join may re-roll any failed Leadership test.]

#enchanted-item("RING OF VOLANS", 20)[One use only. Bound Spell (power level variable). At the beginning of the game, choose one spells from any of the eight Winds of Magic as if the bearer were a Level 1 Wizard. That spell is bound within the Ring of Volans is automatically cast with a power level equal to the normal casting value of the spell, no power dice are required.]

#enchanted-item("BOOK OF UNCOMMON PRAYER", 15)[The bearer may re-roll one dice when taking Leadership tests to use Battle Prayers of Sigmar.]

#enchanted-item("BOOTS OF BOVVA", 15)[Model on foot only. The model wearing the Boots of Boova gains the Stomp special rule, but it only inflicts D3 hits rather than D6.]

#enchanted-item("ICON OF MAGNUS", 15)[The Icon of Magnus gives the bearer and any unit they are with the Immunity (Terror) special rule.]

#enchanted-item("THE POWDERS OF THRICE-DAMNED OSSK", 15)[Witch Hunter only. One use only. The Powders may be used immediately when an enemy Wizard miscasts. The Wizard must roll twice on the Miscast table, and you pick which result is used.]

#enchanted-item("RELIQUARY OF LECTOR OSTRANALD", 15)[Each time the bearer's unit suffers unsaved Wounds from a spell, the first D3 unsaved Wounds are absorbed by the Reliquary and have no effect (unsaved Wounds with the Multiple Wounds special rule still only count as one).]

#enchanted-item("SANCTIFIED SHARD OF LICHEBONE", 15)[Witch Hunter only. No Ward saves may be taken against close combat Attacks made by the bearer.]

#enchanted-item("THE SILVER HORN", 15)[Bound Spell, Power Level 3. The Silver Horn contains an *augment* spell that targets all fleeing friendly units within 24". The target units will automatically Rally.]

#enchanted-item("SKULL CHARM", 15)[At the start of the game, roll a D6 and consult the chart below to determine which effect the Skull Charm has on the wearer.

#chart((("D6", "Result"), ("1-2", "+1 Weapon Skill"), ("3-4", "+1 Leadership"), ("5-6", "+1 Weapon Skill & Leadership")))
#chartlabel("VON MECKLENBURG'S")]

#enchanted-item("ENCHANTED SHOT", 15)[Witch Hunter with pistol only. Any shots fired from the bearer pistol(s) have the Magical Attacks special rule and automatically Wounds.]

#enchanted-item("DAZH'S FLINT", 5)[The model bearing Dazh's Flint gains the Flaming Attacks special rule.]

#enchanted-item("THE FANG OF ORSKA", 5)[Any War Beast, Monstrous Beast, Monstrous Creature or Monster attempting to strike blows against the bearer must first pass a Leadership test or automatically forfeit any attacks directed against the bearer.]

#enchanted-item("SHEEN OF TRUESILVER", 5)[At the end of any close combat in which a Monstrous Creature or Monster suffers one or more unsaved Wounds from the bearer's close combat attacks, it must take a Toughness test for each such Wound inflict, and loses a Wound (with no saves allowed) for each test failed.]

#enchanted-item("SANCTIFIED SILVER BULLETS", 5)[Witch Hunter with pistol(s) only. Any shots fired from the bearer pistol(s) have the Multiple Wounds (D3) special rule against Daemons, Undead and Vampires.]
]

#magic-item-section("standard")[
#magic-standard("THE IMPERIAL BANNER", 65)[All units within 12" of this banner gain the Cold- blooded special rule.]

#magic-standard("FLAG OF THE CONQUEROR", 50)[All friendly units with the State Troops or Militia special rules within 12" gain +1 to their Leadership.]

#magic-standard("GRIFFON STANDARD", 50)[A unit bearing the Griffon Banner doubles any combat result bonus granted for having extra ranks. However, the unit carrying the Griffon Banner cannot pursue a fleeing enemy and must hold their ground instead.]

#magic-standard("BANNER OF SIGISMUND", 50)[The unit carrying the Banner of Sigismund gains the Stubborn special rule. If the unit is already Stubborn, they instead become Unbreakable.]

#magic-standard("BLACK SKULL OF THE CALIPH", 25)[The unit carrying the Black Skull of the Caliph, and all friendly units within 6" of it, gain the Immunity (Fear) special rule.]

#magic-standard("STEEL STANDARD", 20)[Cavalry or Monstrous Cavalry only. The unit carrying the Steel Standard ignores the Movement penalties from barding.]
]
= LORDS

#unit("IMPERIAL GENERAL",
  first: true,
  profiles: (
    (name: "Imperial General", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 100),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +4 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Bow +5 points
  - Pistol +6 points
  - Handgun +7 points
- May choose one of the following:
  - Heavy armour +9 points
  - Full plate armour +21 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Warhorse +18 points
  - Pegasus +30 points
  - Griffon +125 points
  - Imperial Griffon +175 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: (
    rule("Hold the Line")[If a model with this special rule is in a unit with the State Troops special rule, the unit has the Cold-blooded special rule when taking Break tests.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("WIZARD LORD",
  profiles: (
    (name: "Wizard Lord", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 165),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Wizard Lord is a Level 3 Wizard which can use spells from one of the eight Winds of Magic.",
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following:
  - Warhorse +18 points
  - Pegasus +30 points
  - Luminark of Hysh (Wizard with Lore of Light only, replacing one of the crew) +120 points
  - Celestial Hurricanum (Wizard with Lore of Heavens only, replacing one of the crew) +125 points
  - Griffon (Wizard with Lore of Beasts only) +125 points
  - Imperial Griffon (Wizard with Lore of Beasts only) +175 points
- May take Magic Items up to a total of 100 points
  ],
)

#unit("GRAND MASTER",
  profiles: (
    (name: "Grand Master", m: 4, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, full plate armour",
  options: [
- May be upgraded to a Knightly Order no points limit
- May choose one of the following:
  - Additional hand weapon +3 points
  - Cavalry hammer +8 points
  - Flail +8 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Warhorse (with barding) +23 points
  - Demigryph (with barding) +53 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Immunity (Psychology),",
  special-rules-body: [
- *Master of Battle*: If a model with this special rule is in a unit of Imperial Knights, Imperial Foot Knights or Demigryph Knights, the unit gains the Immunity (Psychology) special rule.
  ],
  notes: [
- You must include at least one unit of Knights with the same Troop Type if your army includes a Grand Master. The Grand Master must join one of these units, and may never leave it.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("ARCH LECTOR OF SIGMAR",
  profiles: (
    (name: "Arch Lector", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Great weapon +6 points
- May take heavy armour +9 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Warhorse +18 points
  - The War Altar of Sigmar +150 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Magic Resistance (2)",
  special-rules-body: [
- *Battle Prayers of Sigmar:* A model with this special rule knows the three Battle Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Hammer of Sigmar:* The model and any unit they are with re-roll failed To Wound rolls in close combat until the start your next turn.
  - *Shield of Faith:* The model and any unit they are with gain a 6+ Ward save in close combat until the start your next turn.
  - *Soulfire:* The model and any unit they are with gain the Flaming and Magical Attacks special rules until the start your next turn. In addition, when cast, all enemy models in base contact with the Warrior Priest suffer a Strength 4 hit. Models with the Daemons, Undead and Vampires suffer a Strength 5 hit instead.
- *Righteous Fury*: The model and any unit they are currently in have the Hatred special rule.
  ],
  notes: [
- You may not field more than 2 Arch Lectors in your army.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("WITCH HUNTER GENERAL",
  profiles: (
    (name: "Witch Hunter General", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 95),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, pistol",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Great weapon +9 points
- May take a brace of pistols +5 points
- May take a crossbow +7 points
- May take light armour +2 points
- May be mounted on a Warhorse +18 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Hatred (Chaos, Undead, Wizards), Magic Resistance (2)",
  special-rules-body: (
    rule("Accusation")[After deployment, but before the first turn begins, select a single model in your opponent's army. The Witch Hunter may re-roll all failed To Hit against this model. Every hit he inflicts on that model with close combat or shooting attacks also has the Killing Blow special rule. Finally, a Witch Hunter may also choose to shoot at the primary quarry as if he had the Sniper special rule.],
    rule("Grim Resolve")[Witch Hunters, and any unit they are in, have the Immunity (Fear) special rule.],
    rule("Tools of Judgement")[When attacking Daemons, Undead, Vampires or Wizards in close combat, a Witch Hunter has the Magical Attacks special rule and re-rolls failed rolls To Wound.],
  ),
  upgrades: (
    rule("Witch Hunter Retinue")[For every Witch Hunter General in your army, you may upgrade one unit of Free Company Militia to a Witch Hunter Retinue for +1 point per model. The unit gains +1 Leadership, as well as the Hatred (Chaos, Undead, Wizards) and Tools of Judgement special rules.],
  ),
  notes: [
- You may not field more than 3 Witch Hunter Generals in your army.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades", "notes"),
)

= HEROES

#unit("IMPERIAL CAPTAIN",
  first: true,
  profiles: (
    (name: "Imperial Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 60),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- One Imperial Captain may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +3 points
  - Heavy lance +6 points
  - Polearm +6 points
  - Great weapon +9 points
- May choose one of the following:
  - Pistol +5 points
  - Bow +6 points
  - Handgun +7 points
- May choose one of the following:
  - Heavy armour +6 points
  - Full plate armour +14 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Warhorse +12 points
  - Pegasus +20 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: (
    rule("Hold the Line")[If a model with this special rule is in a unit with the State Troops special rule, the unit has the Cold-blooded special rule when taking Break tests.],
  ),
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("BATTLE WIZARD",
  profiles: (
    (name: "Battle Wizard", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Wizard Lord is a Level 1 Wizard which can use spells from one of the eight Winds of Magic.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on a Warhorse +12 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("CHAPTER MASTER",
  profiles: (
    (name: "Chapter Master", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, full plate armour",
  options: [
- One Chapter Master may carry the Battle Standard +25 points
- May be upgraded to a Knightly Order no points limit
- May choose one of the following:
  - Additional hand weapon +2 points
  - Cavalry hammer +6 points
  - Flail +6 points
  - Heavy lance +6 points
  - Polearm +6 points
  - Great weapon +9 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Warhorse (with barding) +23 points
  - Demigryph (with barding) +37 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Immunity (Psychology)",
  special-rules-body: [
- *Master of Battle*: If a model with this special rule is in a unit of Imperial Knights, Imperial Foot Knights or Demigryph Knights, the unit gains the Immunity (Psychology) special rule.
  ],
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  notes: [
- You must include at least one unit of Knights with the same Troop Type if your army includes a Chapter

Master. The Chapter Master must join one of these units, and may never leave it.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades", "notes"),
)

#unit("WARRIOR PRIEST OF SIGMAR",
  profiles: (
    (name: "Warrior Priest", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 95),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +6 points
- May take heavy armour +6 points
- May take a shield +2 points
- May be mounted on a Warhorse +12 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Magic Resistance (1)",
  special-rules-body: [
- *Battle Prayers of Sigmar:* A model with this special rule knows the three Battle Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Hammer of Sigmar:* The model and any unit they are with re-roll failed To Wound rolls in close combat until the start your next turn.
  - *Shield of Faith:* The model and any unit they are with gain a 6+ Ward save in close combat until the start your next turn.
  - *Soulfire:* The model and any unit they are with gain the Flaming and Magical Attacks special rules until the start your next turn. In addition, when cast, all enemy models in base contact with the Warrior Priest suffer a Strength 4 hit. Models with the Daemons, Undead and Vampires suffer a Strength 5 hit instead.
- *Righteous Fury*: The model and any unit they are currently in have the Hatred special rule.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("WITCH HUNTER CAPTAIN",
  profiles: (
    (name: "Witch Hunter Captain", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 40),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, pistol",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +6 points
- May take a brace of pistols +4 points
- May take a crossbow +6 points
- May take light armour +2 points
- May be mounted on a Warhorse +12 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Hatred (Chaos, Undead, Wizards), Magic Resistance (1)",
  special-rules-body: (
    rule("Accusation")[After deployment, but before the first turn begins, select a single model in your opponent's army. The Witch Hunter may re-roll all failed To Hit against this model. Every hit he inflicts on that model with close combat or shooting attacks also has the Killing Blow special rule. Finally, a Witch Hunter may also choose to shoot at the primary quarry as if he had the Sniper special rule.],
    rule("Grim Resolve")[Witch Hunters, and any unit they are in, have the Immunity (Fear) special rule.],
    rule("Tools of Judgement")[When attacking Daemons, Undead, Vampires or Wizards in close combat, a Witch Hunter has the Magical Attacks special rule and re-rolls failed rolls To Wound.],
  ),
  upgrades: (
    rule("Witch Hunter Retinue")[For every Witch Hunter Captain in your army, you may upgrade one unit of Free Company Militia to a Witch Hunter Retinue for +1 point per model. The unit gains +1 Leadership, as well as the Hatred (Chaos, Undead, Wizards) and Tools of Judgement special rules.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("MASTER ENGINEER",
  profiles: (
    (name: "Master Engineer", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 45),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  equipment-body: [
- *Pigeon bombs:* Pigeon bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("∞", "4", "Armour Piercing (1), Slow to Fire"))

This item can be used in addition to any other missile weapon the Master Engineer might have. When a Master Engineer declares they will be using Pigeon Bombs, nominate any enemy model within Line of Sight, roll a D6 and consult the following chart:

#chart((("D6", "Result"), ("1", "Oops! Centre the small round template over the Master Engineer and resolve the explosion."), ("2-4", "Boom! The Pigeon Bomb has no effect this turn."), ("5-6", "Huzzah! Centre the small round template over the target model and resolve the explosion.")))
  ],
  options: [
- May choose one of the following:
  - Repeater pistol +6 points
  - Repeater handgun +8 points
  - Grenade launching blunderbuss +8 points
  - Hochland long rifle +15 points
- May take pigeon bombs +20 points
- May take light armour +2 points
- May be mounted on a Mechanical Steed +20 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: (
    rule("Master of Ballistics")[One war machine that is within 3" of a Master Engineer can use his Ballistic Skill or re- roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Master Engineer are fired.],
    rule("'Stand Back, Sir!'")[A Master Engineer that is within 3" of a war machine is allowed to take a 'Look Out, Sir!' roll just as if he was within 3" of a unit of five or more models of the same troop type as himself. If the roll is successful, the hit is instead resolved against the nearest friendly war machine.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("WARHORSE",
  first: true,
  profiles: (
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
)

#unit("PEGASUS",
  profiles: (
    (name: "Pegasus", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  options: [
- May take Iron-hard Hooves +5 points
- May take Swift as the Wind +5 points
  ],
  special-rules: "Fly (9)",
  upgrades: (
    rule("Iron-hard Hooves")[A Pegasus with this upgrade re-roils failed To Wound rolls.],
    rule("Swift as the Wind")[A Pegasus with this upgrade re-rolls any dice results of a 1 when determining its charge range.],
  ),
  order: ("troop-type", "base-size", "options", "special-rules", "upgrades"),
)

#unit("MECHANICAL STEED",
  compact: true,
  profiles: (
    (name: "Mechanical Steed", m: 7, ws: 1, bs: 0, s: 4, t: 4, w: 1, i: 1, a: 1, ld: "-", points: "-"),
  ),
  troop-type: "War Beast (Animated Construct)",
  base-size: "25x50 or 30x60",
  special-rules: "Impact Hits (D3), Natural Armour (6+)",
)

#unit("DEMIGRYPH",
  compact: true,
  profiles: (
    (name: "Demigryph", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Beast (Animal)",
  base-size: "40x60, 50x75",
)

#unit("GRIFFON",
  profiles: (
    (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Creature (Animal)",
  base-size: "50x50",
  special-rules: "Fly (8), Natural Armour (6+)",
  options: [
- May take Shredding Talons +5 points
- May take Swooping Strike +5 points
  ],
  upgrades: (
    rule("Shredding Talons")[The model gains the Armour Piercing (1) special rule.],
    rule("Swooping Strike")[The model gains the Devastating Charge special rule.],
  ),
  order: ("troop-type", "base-size", "special-rules", "options", "upgrades"),
)

#unit("IMPERIAL GRIFFON",
  profiles: (
    (name: "Imperial Griffon", m: 6, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monster (Animal)",
  base-size: "50x100 or 60x100",
  special-rules: "Fly (8), Natural Armour (6+)",
  options: [
- May take barding +10 points
- May take Razorbeak +5 points
- May take Shrike Talons +5 points
- May take Bloodroar +10 points
- May take Two Heads +15 points
  ],
  upgrades: [
- *Bloodroar*: Enemy units must roll an additional D6, discarding the lowest result, for Leadership tests caused by this beast's Terror special rule.
- *Razorbeak*: The model gains the Armour Piercing (1) special rule.
- *Shrike Talons*: The model gains the Mighty Blow (1) special rule in turns it charges.
- *Two Heads*: The model gains +1 Attack.
  ],
  order: ("troop-type", "base-size", "special-rules", "options", "upgrades"),
)

#unit("WAR ALTAR OF SIGMAR",
  profiles: (
    (name: "War Altar of Sigmar", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  drawn-by: "2 Warhorses (Animal)",
  base-size: "50x100 or 60x100",
  equipment: "Barding",
  magic-items: (
    rule("The Golden Griffon")[Enchanted Item. Innate bound spell (power level 6). The Golden Griffon contains the spell _Banishment_ from the Lore of Light.],
  ),
  options: [
- May take the Horn of Sigismund +25 points
  ],
  special-rules: "Stubborn",
  special-rules-body: (
    rule("Divine Protection")[This model has a 4+ Ward save.],
    rule("Holy Fervour")[All friendly Human units benefit from the rider's Righteous Fury special rule whilst within 6" of the War Altar of Sigmar.],
    rule("The Power of Sigmar")[Any Battle Prayers of Sigmar cast by a model who is mounted on the War Altar of Sigmar also target all friendly units within 6".],
  ),
  upgrades: (
    rule("The Horn of Sigismund")[Enchanted Item. The War Altar of Sigmar gains the Terror special rule.],
  ),
  notes: [
- The War Altar of Sigmar has a Line of Sight value of 4.
- You may not field more than 1 War Altar of Sigmar in your army.
  ],
  order: ("troop-type", "drawn-by", "base-size", "equipment", "magic-items", "options", "special-rules", "upgrades", "notes"),
)

= CORE UNITS

#unit("HALBERDIERS",
  first: true,
  profiles: (
    (name: "Halberdier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm",
  options: [
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields +1 point/model
- May upgrade one Halberdier to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Halberdier to a Musician +5 points
- May upgrade one Halberdier to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SPEARMEN",
  before: [
*Profile M WS BS S T W I A Ld Points* Spearman 4 3 3 3 3 1 3 1 7 3.5
  ],
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Spear",
  options: [
- May choose one of the following:
  - Shields +1 point/model
  - Replace spears with pikes +1.5 points/model
- May take light armour +0.5 point/model
- May upgrade one Spearman to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Spearman to a Musician +5 points
- May upgrade one Spearman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SWORDSMEN",
  profiles: (
    (name: "Swordsman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Swordsman to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Swordsman to a Musician +5 points
- May upgrade one Swordsman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("HANDGUNNERS",
  profiles: (
    (name: "Handgunner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, handgun",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Handgunner to a Leader +5 points
  - May replace handgun with one of the following:
- Brace of pistols free
- Repeater handgun +5 points
- Hochland long rifle +10 points
- May upgrade one Handgunner to a Musician +5 points
- May upgrade one Handgunner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("CROSSBOWMEN",
  profiles: (
    (name: "Crossbowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, crossbow",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Crossbowman to a Leader +5 points
- May upgrade one Crossbowman to a Musician +5 points
- May upgrade one Crossbowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("ARCHERS",
  profiles: (
    (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, bow",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "State Troops",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("FREE COMPANY MILITIA",
  before: [
*Profile M WS BS S T W I A Ld Points* Militia Fighter 4 3 3 3 3 1 3 1 6 3.5
  ],
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  options: [
- May be upgraded to Ambushers +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May replace one hand weapon with one of the following:
  - Bucklers free
  - Bows +2 points/model
  - Pistols +2 points/model
  - Crossbows +4 points/model
- May take light armour +0.5 point/model
- May upgrade one Militia Fighter to a Leader +5 points
- May upgrade one Militia Fighter to a Musician +5 points
- May upgrade one Militia Fighter to a Standard Bearer +10 points
  ],
  special-rules: (
    rule("Militia")[Models with this special rule can use the Support Fire and Counter Charge actions from the State Troops special rule.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("PISTOLIERS",
  profiles: (
    (name: "Pistolier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 18),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Brace of pistols, medium armour",
  options: [
- May upgrade one Pistolier to a Leader +5 points
  - May replace one pistol with a repeater pistol +5 points
- May upgrade one Pistolier to a Musician +5 points
  ],
  special-rules: "Fast Cavalry",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("DEMILANCERS",
  profiles: (
    (name: "Demilancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance, light armour, shield",
  options: [
- May take medium armour +1.5 point/model
- May upgrade one Demilancer to a Leader +5 points
- May upgrade one Demilancer to a Musician +5 points
- May upgrade one Demilancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Fast Cavalry",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

= SPECIAL UNITS

#unit("GREATSWORDS",
  first: true,
  profiles: (
    (name: "Greatsword", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, light armour",
  options: [
- May choose one of the following:
  - Medium armour +1 point/model
  - Heavy armour +2.5 points/model
- May upgrade one Greatsword to a Leader +5 points
- May upgrade one Greatsword to a Musician +5 points
- May upgrade one Greatsword to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "State Troops, Stubborn",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("IMPERIAL KNIGHTS",
  profiles: (
    (name: "Imperial Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 18),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, barding",
  options: [
- May be upgraded to Inner Circle Knights (see notes) +2 points/model
- May be upgraded to a Knightly Order no points limit
- May replace heavy lances with one of the following:
  - Great weapons free
  - Cavalry hammers +1 point/model
- May take shields (if armed with heavy lances) +3 points/model
- May take full plate armour +3 points/model
- May upgrade one Imperial Knight to a Leader +5 points
- May upgrade one Imperial Knight to a Musician +5 points
- May upgrade one Imperial Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  upgrades: (
    rule("Inner Circle Knights")[The model gains +1 Strength, +1 Initiative.],
  ),
  notes: [
- For every Grand Master or Chapter Master that is included in your army, you may may upgrade one unit to Inner Circle Knights. In addition, you may take one unit of Imperial Knights (unless they have full plate

armour or are Inner Circle Knights) as a Core Unit instead of a Special Unit.
  ],
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "upgrades", "notes"),
)

#unit("IMPERIAL FOOT KNIGHTS",
  profiles: (
    (name: "Imperial Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour, shield",
  options: [
- May be upgraded to Inner Circle Knights (see notes) +4 points/model
- May be upgraded to a Knightly Order no points limit
- May replace shields with one of the following:
  - Polearms free
  - Great weapons +1 point/model
- May take full plate armour +3 points/model
- May upgrade one Imperial Knight to a Leader +5 points
- May upgrade one Imperial Knight to a Musician +5 points
- May upgrade one Imperial Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  upgrades: (
    rule("Inner Circle Knights")[The model gains +1 Strength and full plate armour.],
  ),
  notes: [
- For every Grand Master or Chapter Master that is included in your army, you may may upgrade one unit to Inner Circle Knights. In addition, you may take one unit of Imperial Foot Knights (unless they have full plate armour or are Inner Circle Knights) as a Core Unit instead of a Special Unit.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "upgrades", "notes"),
)

#unit("OUTRIDERS",
  profiles: (
    (name: "Outrider", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 20),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Repeater handgun, medium armour",
  options: [
- May take barding +1 point/model
- May upgrade one Outrider to a Leader +5 points
  - May replace repeater handgun with one of the following:
- Brace of pistols including one repeater pistol free
- Grenade launching blunderbuss free
- Hochland long rifle +5 points
- May upgrade one Outrider to a Musician +5 points
  ],
  special-rules: "Fast Cavalry",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("HUNTSMEN",
  profiles: (
    (name: "Huntsman", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 9),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, bow",
  options: [
- May replace bows with longbows +1 point/model
- May upgrade one Huntsman to a Leader +5 points
- May upgrade one Huntsman to a Musician +5 points
  ],
  special-rules: "Scouts, Skirmishers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SISTERS OF SIGMAR",
  profiles: (
    (name: "Sister of Sigmar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May be upgraded to Skirmishers free
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Shields +1 point/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Sister of Sigmar to a Leader +5 points
- May upgrade one Sister of Sigmar to a Musician +5 points
- May upgrade one Sister of Sigmar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Hatred, Immunity (Fear), Magic Resistance (1)",
  special-rules-body: (
    rule("Faith in Sigmar")[Any model in the unit gains +1 to their Leadership when attempting to use Battle Prayers of Sigmar for every 5 Sisters of Sigmar in the unit. In addition, if a unit of Sister of Sigmar is joined by a model with the Righteous Fury special rule, their Hatred special rule applies in every round of close combat.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("FLAGELLANTS",
  profiles: (
    (name: "Flagellant", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Flails +2 points/model
- May upgrade one Flagellant to a Leader +5 points
- May upgrade one Flagellant to a Musician +5 points
- May upgrade one Flagellant to a Standard Bearer +10 points
  ],
  special-rules: "Frenzy, Unbreakable",
  special-rules-body: [
- *The End is Nigh!* If a unit of Flagellants is in base contact with an enemy unit at the start of any Close Combat phase, the Flagellants may immediately sacrifice D3 Wounds worth of models. Casualties inflicted in this way do not count towards combat resolution. The remaining models in the unit immediately gain one of the special rules listed below depend on the number of models removed. In addition, friendly units within 6" of Flagellants suffer \-1 to their Leadership, except other Flagellants, Warrior Priests, Arch Lectors and Sisters of Sigmar.

#chart((("Models removed", "Result"), ("1", "Fanatical Fury: The unit re-rolls all failed rolls To Hit."), ("2", "Strength of the Penitent: The unit re-rolls all failed rolls To Hit and To Wound."), ("3", "Insensible to Pain: The unit gains +1 Toughness, and re-rolls all failed rolls To Hit
and To Wound.")))

- *Fanatical Zeal:* Arch Lectors and Warrior Priests of Sigmar may join units of Flagellants despite being them being Unbreakable. If they do so, they also become Unbreakable as long as there are any Flagellants remaining.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("IMPERIAL DWARFS",
  profiles: (
    (name: "Dwarf", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 5),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
  - Crossbows +5 points/model
  - Handguns +5 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (if armed with hand weapons, spears or polearms) +1 point/model
- May upgrade one Dwarf to a Leader +5 points
- May upgrade one Dwarf to a Musician +5 points
- May upgrade one Dwarf to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Hatred (Orcs, Goblins, Skaven), Loner",
  special-rules-body: (
    rule("Relentless")[Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.],
    rule("Resolute")[When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("IMPERIAL HALFLINGS",
  profiles: (
    (name: "Halfling", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 3),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Shortbows +3 points/model
- May take shields (unless armed with shortbows) +1 point/model
- May upgrade one Halfling to a Leader +5 points
- May upgrade one Halfling to a Musician +5 points
- May upgrade one Halfling to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Loner",
  special-rules-body: (
    rule("Duck & Weave")[Enemies attacking models with this special rule suffer \-1 To Hit in close combat.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("IMPERIAL OGRES",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapons",
  equipment-body: [
- *Ogre Pistol:* Ogre pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Quick to Fire"))

In close combat, an Ogre pistol counts as an additional hand weapon that does not give the model the Parry special rule.

- *Ogre Handgun:* Ogre handguns use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Armour Piercing (1), Ponderous"))
  ],
  options: [
- May choose one of the following:
  - Bucklers +3 points/model
  - Ogre pistols +3 points/model
  - Polearms +6 points/model
  - Ogre handguns +6 points/model
  - Great weapons +9 points/model
- May take light armour +3 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Loner, Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("GREAT CANNON",
  profiles: (
    (name: "Great Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Great Cannon)",
  crew: "3 Crew (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take an additional crew +6 points
  ],
)

#unit("MORTAR",
  profiles: (
    (name: "Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Mortar)",
  crew: "3 Crew (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take an additional crew +6 points
  ],
)

= RARE UNITS

#unit("DEMIGRYPH KNIGHTS",
  first: true,
  profiles: (
    (name: "Inner Circle Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 68),
    (name: "Demigryph", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Cavalry (Human)",
  mount: "Demigryph (Animal)",
  base-size: "40x60 or 50x75",
  equipment: "Polearm, full plate armour, shield, barding",
  options: [
- May be upgraded to a Knightly Order no points limit
- May replace polearms with heavy lances +6 points/model
- May upgrade one Inner Circle Knight to a Leader +5 points
- May upgrade one Inner Circle Knight to a Musician +5 points
- May upgrade one Inner Circle Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("HELBLASTER VOLLEY GUN",
  profiles: (
    (name: "Helblaster Volley Gun", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Organ Gun)",
  crew: "3 Crew (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  equipment-body: [
- *Helblaster Volley Gun:* A Helblaster volley gun uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24", "5", "Armour Piercing (1), Multiple Shots (Artillery Dice), Rapid Fire, Slow to Fire"))

The Helblaster may fire up to three Artillery dice worth of shots in each of your Shooting phases. Roll one dice at a time.

If a Misfire is rolled, roll immediately on the Black Powder War Machine Misfire chart before rolling the next Artillery dice.

If a May not Shoot result is rolled, this only applies to the current Artillery dice rolled.

If a Malfunction result is rolled, this only applies to the current and the next Artillery dice rolled (if this is the third Artillery dice rolled this turn, the first Artillery dice the next turn is wasted).

If a Destroyed! result is rolled, all previously Artillery dice shots this turn are still resolved before the war machine is removed. After all Artillery dice are rolled, resolve the number of shots as normal
  ],
  options: [
- May take an additional crew +6 points
  ],
)

#unit("HELSTORM ROCKET BATTERY",
  profiles: (
    (name: "Helstorm Rocket Battery", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Rocket Launcher)",
  crew: "3 Crew (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  equipment-body: [
- *Helstorm Rocket Battery:* A Helstorm Rocket Battery fires in the same manner as an ordinary Rocket Launcher, except that you scatter 3 templates from its target position rather than 1.

When scattering any templates after the first, only the scatter dice is rolled; the result from the artillery dice first rolled applies to all shots fired that turn.

In addition, all shots made with a Helstorm counts as being fired indirectly.
  ],
  options: [
- May take an additional crew +6 points
  ],
)

#unit("WAR WAGON",
  profiles: (
    (name: "War Wagon", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 4+)",
  crew: "6 (Human)",
  drawn-by: "2 Warhorses (Animal)",
  base-size: "50x100 or 60x100",
  equipment: "Ball & chain, blunderbuss, Hochland long rifle, hook halberd, man catcher, repeater handgun, barding",
  equipment-body: (
    rule("Ball & Chain")[Flail. Each successful Hit with a ball & chain is multiplied into D3 Hits.],
    rule("Hook Halberd")[Polearm. Against Cavalry and Monstrous Cavalry, attacks made with a hook halberd gains +1 To Hit.],
    rule("Man Catcher")[A model armed with a man catcher has the Killing Blow special rule.],
  ),
  options: [
- May choose one of the following:
  - Replace all equipment (except barding) with handguns +10 points
  - Replace 3 crew and all equipment (except barding) with a Mortar +40 points
- May take light armour +15 points
- May take two additional crew (if armed with handguns) +12 points
  ],
  special-rules: (
    rule("Mixed Weaponry")[Unless they are armed with handguns or a mortar, the crew of a War Wagon are each equipped with one of the following experimental weapons: ball & chain, blunderbuss, Hochland long rifle, hook halberd, man catcher, repeater handgun. You may not take multiples of the same weapon. Unlike other units, each crew model may choose to allocate their missile attack at a different target if they wish.],
    rule("Stable Platform")[The crew ignore the Ponderous special rule of any weapon they carry.],
  ),
  notes: [
- A War Wagon has a Unit Strength of 8 and Line of Sight value of 4.
- You may take 1\-2 War Wagons a single Rare choice.
  ],
  order: ("troop-type", "crew", "drawn-by", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("LUMINARK OF HYSH",
  profiles: (
    (name: "Luminark of Hysh", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 120),
    (name: "Acolyte", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "2 Acolytes (Human)",
  drawn-by: "2 Warhorses (Animal)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon, barding",
  special-rules: (
    rule("Locus of Hysh")[For each friendly Luminark of Hysh on the battlefield at the start of the enemy magic phase, add 1 dice to your dispel pool.],
  ),
  upgrades: (
    rule("Aura of Protection")[The Luminark of Hysh and all friendly units within 6" of have a 6+ Ward save.],
    rule("Solheim's Bolt of Illumination")[Innate bound spell (power level 4). _Solheim's Bolt of Illumination_ is a *magic missile* with a range of 36". It causes a Strength 8 hit that has the Multiple Wounds (D3) and Flaming Attacks special rules, and penetrates ranks in the same manner as a shot from a bolt thrower. Armour saves are not permitted against Wounds caused by _Solheim's Bolt of Illumination._ If the target is a Daemon, Undead or Vampire, all failed To Wound rolls caused by this spell are re-rolled.],
  ),
  notes: [
- A Luminark of Hysh has a Line of Sight value of 4.
  ],
)

#unit("CELESTIAL HURRICANUM",
  profiles: (
    (name: "Celestial Hurricanum", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 125),
    (name: "Acolyte", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "2 Acolytes (Human)",
  drawn-by: "2 Warhorses (Animal)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon, barding",
  special-rules: (
    rule("Locus of Azyr")[For each friendly Celestial Hurricanum on the battlefield at the start of your magic phase, add 1 dice to your power pool.],
  ),
  upgrades: [
- *Portents of Battle:* The Hurricanum and all friendly units within 6" re-roll 1's when rolling to Hit.
- *Storm of Shemtek:* Innate bound spell (power level 4). _Storm of Shemtek_ is a *direct damage* spell with a range of 24". Place the small round template over the target – it scatters D3". Then roll a D6 and consult the table below to see what effect it has. If the template hits a unit with the Fly special rule, it suffers D6 Strength 4 hits, in addition to any other effects (even if a Sudden Downpour is summoned).

#chart((("D6", "Result"), ("1", "Sudden Downpour: No effect."), ("2", "Iceshard Tempest: All models hit by the template suffer a Strength 2 hit with the Ice Attacks special
rule. In addition, they suffer a -1 modifier to all To Hit rolls (both shooting and close combat) until
the start of the caster's next Magic phase. Shooting attacks that do not use Ballistic Skill are
unaffected."), ("3", "Raging Tornado: If a target unit lies beneath the template's central hole and is not engaged in close
combat, roll a scatter dice and rotate the unit so that it is facing that direction (if a hit is rolled, the
casting player chooses the direction). If, by rotating the unit, it would come within of another unit or
impassable terrain, simply stop rotating the unit as soon as it moves to within 1\"."), ("4-5", "Lightning Strike: The model under the template's central hole suffers a Strength 6 hit. Other models
hit by the template suffer a Strength 3 hit. This is a Lightning Attack."), ("6", "Meteor Strike: The model under the template's central hole suffers a Strength 6 hit with the Multiple
Wounds (D6) Special rule. All other models hit by the template suffer a Strength 3 hit.")))
  ],
  notes: [
- A Celestial Hurricanum has a Line of Sight value of 4.
  ],
)

#unit("STEAM TANK",
  profiles: (
    (name: "Steam Tank", m: "*", ws: "-", bs: "-", s: 6, t: 6, w: 10, i: "-", a: "-", ld: "-", points: 250),
    (name: "Engineer Commander", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour save 1+)",
  crew: "1 Engineer Commander (Human)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon, repeater pistol, steam cannon, steam gun",
  equipment-body: [
- *Steam Cannon:* A steam cannon is a cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24/36\"", "10", "Multiple Wounds (D6/D3)"))

- The steam cannon's maximum range is dependent on how many Steam Points (see Steam Engine below) that are expended. If you choose not to expend any Steam Points in the Steam Cannon, or if the Steam Tank is in base contact with an enemy unit, you cannot fire it that turn.

If you expend a single Steam Point, the Steam Cannon can fire with a maximum range of 12". For each additional Steam Point you expend, the maximum range of the Steam Cannon is increased by 12". The Steam Cannon can only be fired directly ahead.

If the first artillery dice rolls a misfire, the Steam Cannon does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves. The Steam Cannon cannot fire grapeshot.

- *Steam Gun:* The steam gun is a Breath Weapon attack that can be fired every turn. The steam gun's Strength is dependent on how many Steam Points (see Steam Engine below) that are expended. If you choose not to expend any Steam Points in the Steam Gun, you cannot fire it that turn.

If you expend a single Steam Point, the Steam Gun has Strength 2 Breath Weapon with the Armour Piercing (1) special rule, which uses the Engineer Commander's Initiative. The Strength of the Breath Weapon is increased by 1 for each additional Steam Point expended in the Steam Gun.
  ],
  options: [
- May take a Hochland long rifle +10 points
- May be upgraded to one of the following:
  - Implacable free
  - Old Reliable free
  - Sigmar's Hammer free
  - Von Zeppel free
  ],
  special-rules: "Animated Construct, Terror",
  special-rules-body: [
- *Steam Engine:* At the start of your turn, declare how many Steam Points your Steam Tank is generating – this can be any number between 0 and 5. After you have generated your Steam Points (if any), roll an artillery dice. If the result is greater than the Steam Tank's current number of Wounds, or if you roll a misfire, roll a D3 and then, for each Steam Point the Steam Tank currently has, add 1 to the result and consult the Steam Boiler Mishap chart.

You can expend Steam Points in three ways: through the Steam Engine, or Steam Weapons. You can expend up to 3 Steam Points in each of these categories, as long as you have enough Steam Points remaining. Any Steam Points left unused at the end of your turn are lost.

The more Steam Points you expend in the Steam Engine, the further the Steam Tank moves in the Movement phase. Declare how many Steam Points you will expend in the Steam Engine before you attempt to move it. If you choose not to expend any Steam Points in the Steam Engine, the Steam Tank's Movement will be 0 that turn and it cannot move at all in the Movement phase. For each Steam Point you chose to expend, the Steam Tank's Movement increases by 4". It does not gain any additional Movement when charging.

If the Steam Tank charges an enemy unit, it will inflict an additional D3 Impact Hits for each Steam Point expended in the Steam Engine that turn.

If the Steam Tank is in base contact with an enemy unit, it cannot move but can instead expend Steam Points in the Steam Engine to grind foes beneath its wheels in the close combat phase. Select one enemy unit in base contact – it immediately suffers D3 Impact Hits for each steam point expended in this way.

#chartlabel("STEAM BOILER MISHAP CHART")
#chart((("Steam Points", "Result"), ("1-4", "Valve Locked: Roll a D6. On a 1-2, you cannot expend Steam Points in the Steam Engine
this turn. On a 3-4, you cannot expend Steam Points in the Steam Gun this turn. On a 5-6,
you cannot expend Steam Points in the Steam Cannon this turn."), ("5", "Minor Leak: The Steam Tank immediately loses D3 Steam Points."), ("6", "Emergency Vent: The Steam Tank immediately loses D6 Steam Points. The Steam Tank,
and any unit in base contact, immediately suffers 2D6, Strength 2 hits, distributed as from
shooting (roll for each unit)."), ("7", "Dangerous Overpressure: Roll a D6. The Steam Tank immediately gains a number of
Steam Points and loses a number of Wounds equal to the result."), ("8", "Kaboom: All units within 6\" of the Steam Tank (Friend or foe) immediately suffer 2D6
Strength 4 hits, distributed as from shooting (roll for each unit). After resolving any
damage, the Steam Tank is removed as a casualty.")))

- *Steel Behemoth:* A Steam Tank, and its crew, can shoot missile weapons with the Move or Fire special rule even if it moved in its Movement phase. In addition, a Steam Tank cannot overrun or pursue a fleeing enemy – it automatically restrains and is unable to perform combat reforms.
  ],
  upgrades: [
- *Implacable:* The Implacable replaces the steam cannon and steam gun with a Mortar. If the first artillery dice rolls a misfire, the Mortar does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves. In addition, it also gains swivel guns with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "6", "Armour Piercing (1), Multiple Shots (2), Rapid Fire"))

- *Old Reliable:* Old Reliable replaces the steam cannon with an Organ Gun. If you roll a misfire, the Organ Gun does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves.
- *Sigmar's Hammer:* Sigmar's Hammer does not have a steam cannon or steam gun. When charging or using its grinding attack, the Sigmar's Hammer inflicts D6 hits per Steam point spent rather than D3. In addition, it may re-roll 1's when taking armour saves.
- *Von Zeppel:* The von Zeppel replaces the steam gun with a Fighting Platform. This includes 6 Crew armed with Mixed Weaponry as described in the War Wagon's entry.
  ],
  notes: [
- A Steam Tank has a Line of Sight value of 4.
- You may not have more than 8 Steam Tanks in your army.
  ],
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules", "upgrades", "notes"),
)

= SPECIAL CHARACTERS (LORDS)

#unit("KARL FRANZ",
  first: true,
  subtitle: "The Emperor, Elector Count of Reikland, Prince of Altdorf",
  profiles: (
    (name: "Karl Franz", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 310),
    (name: "Deathclaw (Imperial Griffon)", m: 6, ws: 6, bs: 0, s: 6, t: 5, w: 5, i: 4, a: 5, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Ghal Maraz")[Magic Weapon. Hits from Ghal Maraz Wound automatically with the Ignores Armour Saves and Multiple Wounds (D3) special rules.],
    rule("Dragon Tooth, the Reikland Runefang")[Magic Weapon. All hits from the Reikland Runefang Wound automatically with the Ignores Armour Saves special rule.],
    rule("The Emperor's Armour")[Magic Armour. Full plate armour. This armour allows Karl Franz to re-roll failed armour saves.],
    rule("The Silver Seal")[Talisman. The Silver Seal grants Karl Franz a Ward save (4+) and the Magic Resistance (2) special rule.],
  ),
  options: [
- May replace Dragon Tooth with Ghal Maraz +15 points
- May be mounted on one of the following:
  - Warhorse +18 points
  - Pegasus +30 points
  - Griffon +125 points
  - Deathclaw +210 points
  ],
  special-rules: "Hold the Line (see Imperial General), Immunity (Psychology)",
  special-rules-body: (
    rule("Leader of Men")[The Emperor must be your Army General. He has Inspiring Presence (18) special rule in total, and any models using his Leadership may re-roll failed Panic tests. In addition, his Hold the Line special rule also affects units of Reiksguard Knights.],
    rule("Altdorf Company of Honor")[If Karl Franz is included in your army, you may upgrade one unit of Halberdiers to the Altdorf Company of Honor for +1 point per model. This unit has +1 Weapon Skill and +1 Initiative.],
    rule("The Carroburg Greatswords")[If Karl Franz is included in your army, you may upgrade one unit of Greatswords to Carroburg Greatswords for +0.5 point per model. This unit may re-roll failed Break tests.],
  ),
  notes: [
- Deathclaw has the Bloodroar upgrade.
  ],
  order: ("troop-type", "base-size", "magic-items", "options", "special-rules", "notes"),
)

#unit("KURT HELBORG",
  subtitle: "Reiksmarshal of the Empire",
  profiles: (
    (name: "Kurt Helborg", m: 4, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 300),
    (name: "Krieglust (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Krieglust (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Barding",
  magic-items: (
    rule("Grudge Settler, the Solland Runefang")[Magic Weapon. All hits from the Solland Runefang Wound automatically with the Ignores Armour Saves special rule.],
    rule("Dawn Armour")[Magic Armour. Full plate armour. This armour ignores Strength penalties from attacks and Armour Piercing, so Kurt Helborg's armour save can never fall below 3+.],
    rule("Laurels of Victory")[Enchanted Item. Each unsaved Wound caused by Kurt Helborg is multiplied by 2 when calculating the combat result.],
    rule("Rod of Command")[Enchanted Item. One use only. The first time the character and his unit has to take a Break test, they automatically pass it.],
  ),
  special-rules: "Immunity (Psychology), Master of Battle (see Grand Masters), Stubborn",
  special-rules-body: (
    rule("The Emperor's Chosen")[If Kurt Helborg is included in your army, your must upgrade one unit of Reiksguard Knights to Inner Circle Knights. Kurt Helborg must join this unit, and may never leave it. The unit may re-roll failed Break tests for as long as he remains in it.],
  ),
)

#unit("VOLKMAR THE GRIM",
  subtitle: "The Grand Theogonist",
  profiles: (
    (name: "Volkmar the Grim", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 9, points: 195),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Staff of Command")[Magic Weapon. As long as Volkmar the Grim is mounted upon the War Altar of Sigmar, all close combat attacks made with the Staff of Command are resolved at +2 Strength, at other times it gives +1 Strength.],
    rule("Jade Griffon")[Talisman. The Jade Griffon makes the bearer regain 1 Wound suffered earlier in the game at the start of each turn, up to their starting value.],
  ),
  options: [
- May be mounted on the War Altar of Sigmar +150 points
  ],
  special-rules: "Battle Prayers of Sigmar (see Arch-Lector), Magic Resistance (2), Righteous Fury (see Arch-",
  special-rules-body: [
Lector)

- *Grand Theogonist:* Volkmar the Grim may re-roll failed Leadership tests when using Battle Prayers. In addition, if Volkmar is your Army General, Flagellants count as Core Units rather than Special Units.
  ],
  order: ("troop-type", "base-size", "magic-items", "options", "special-rules"),
)

#unit("BALTHASAR GELT",
  subtitle: "The Supreme Patriarch, Arch-alchemist",
  profiles: (
    (name: "Balthasar Gelt", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 350),
    (name: "Quicksilver (Pegasus)", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Quicksilver (Animal)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon, Al-kahest",
  equipment-body: [
- *Al-kahest:* Al-kahest is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "n/a", "Flaming Attacks, Ignores Armour Saves, Magical Attacks, Quick to Fire"))

Al-kahest Wounds any target on a 4+.
  ],
  magic: "Balthasar Gelt is a Level 4 Wizard who uses spells from the Lore of Metal.",
  magic-items: (
    rule("Staff of Volans")[Arcane Item. The Staff of Volans grants Balthasar Gelt a +2 casting bonus.],
    rule("Amulet of Sea Gold")[Talisman. The Amulet of Sea Gold grants Balthasar Gelt the Magic Resistance (1) special rule, and adds +1 to the Magic Resistance for each enemy wizard currently on the battlefield, up to a maximum of 3.],
    rule("Cloak of Molten Metal")[Talisman. The Cloak of Molten Metal grants Balthasar Gelt a 3+ Ward save against missile attacks.],
  ),
  special-rules: "Fly (9), Loremaster (Lore of Metal)",
)

#unit("THYRUS GORMANN",
  subtitle: "High Wizard of the Bright Order",
  profiles: (
    (name: "Thyrus Gormann", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 350),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Barding",
  magic: "Thyrus Gormann is a Level 4 Wizard who uses spells from the Lore of Fire.",
  magic-items: (
    rule("The Bright Sword")[Magic Weapon. This magic sword gives Thyrus +1 when rolling To Wound as well as Flaming Attacks.],
    rule("Firebrand Staff")[Arcane Item. Thyrus may add 12" to the range of his spells.],
    rule("The Fire Stone of Agni")[Arcane Item. Once per turn, Thyrus may add +2 Power Dice to casting one of his spells.],
    rule("The Blazing Ruby")[Talisman. The Blazing Ruby confers the Ward save (5+) and the Immunity (Flaming Attacks) special rules.],
  ),
  special-rules: "Loremaster (Lore of Fire)",
)

#unit("ELSPETH VON DRAKEN",
  subtitle: "The Dark Lady of Nuln, the Graveyard Rose",
  profiles: (
    (name: "Elspeth von Draken", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 265),
    (name: "Carmine Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25 (Elspeth von Draken), 75x75 (Carmine Dragon)",
  magic: "Elspeth von Draken is a Level 4 Wizard who uses spells from the Lore of Death.",
  magic-items: (
    rule("The Pale Scythe")[Magic Weapon. This weapon has the Killing Blow special rule and gives Elspeth von Draken a +1 dispel bonus.],
    rule("Death's Timekeeper")[Enchanted Item. Once per player turn, Elspeth von Draken can re-roll a single dice of your choice concerning her or the Carmine Dragon (this can include attacks, saving throws, magic dice and the Artillery dice used to determine the Carmine Dragon's Coruscating blast if desired). If this re-roll is not used, at the end of her player's turn Elspeth von Draken may recover a wound previously lost in the game.],
  ),
  options: [
- May be mounted on one of the following:
  - Warhorse +18 points
  - Carmine Dragon +320 points
  ],
  special-rules: "Fly (7) (Carmine Dragon only), Loremaster (Lore of Death), Natural Armour (3+) (Carmine",
  special-rules-body: [
Dragon only)

- *Darkwalker:* Elspeth has Immunity (Psychology) and all To Wound rolls made against her suffer a \-1 penalty. However, she also suffers any extra effect that is listed as specifically damaging Undead.
- *Coruscating Blast* (Carmine Dragon only)*:* This is a missile attack that uses the line template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "*", "Ignores Armour Saves, Magical Attacks, Multiple Wounds (D3), Slow to Fire"))

This weapon has a Strength equivalent to 10 minus the target's Toughness.
  ],
  order: ("troop-type", "base-size", "magic", "magic-items", "options", "special-rules"),
)

#unit("MARIUS LEITDORF",
  subtitle: "Elector Count of Averland",
  profiles: (
    (name: "Marius Leitdorf", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 185),
    (name: "Daisy (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Mothers Ruin, the Averland Runefang")[Magic Weapon. Two hand weapons. All hits from the Averland Runefang Wound automatically with the Ignores Armour Saves special rule.],
  ),
  options: [
- May be mounted on Daisy (with barding) +23 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Hold the Line (see Imperial General)",
  special-rules-body: [
- *The Mad Count:* At the start of every friendly turn, Marius Leitdorf must take a Leadership test on 3D6, discarding the lowest result. If passed, he behaves himself and acts normally this turn, otherwise roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1", "Lunatic Ravings: For the remainder of the turn, Marius is treated as though he has failed a Stupidity
test."), ("2", "Berserk Rage: Marius has the Frenzy special rule, and cannot lose it, until he rolls on this table again."), ("3", "Paranoid Delusions: Marius immediately makes one close combat attack against a randomly chosen
friendly model in base contact (if there are none, treat this result as Lunatic Ravings instead)."), ("4", "Tactical Brilliance: Every friendly unit within 12\" of Marius may immediately make a Reform
manoeuvre. These units can still move, charge, march and shoot as normal during this turn."), ("5", "Outrageous Insult: The closest enemy character to Marius has the Hatred (Marius Leitdorf) special
rule for the rest of the game. This has no effect on units that have Immunity (Psychology)."), ("6", "Insane Bravado: Marius is treated as having rolled a Berserk Rage result. In addition he has the
Stubborn special rule and must accept any challenge until he rolls on this table again.")))

- *Knights of the Black Lynx:* If Marius Leitdorf is included in your army, you may upgrade one unit of Imperial Foot Knights to Knights of the Black Lynx for +1 point per model. This unit must take polearms and has the Ambushers special rule.
  ],
  order: ("troop-type", "base-size", "magic-items", "options", "special-rules"),
)

#unit("ALDEBRAND LUDENHOF",
  subtitle: "Elector Count of Hochland",
  profiles: (
    (name: "Aldebrand Ludenhof", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 170),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Full plate armour",
  magic-items: (
    rule("Goblin Bane, the Hochland Runefang")[Magic Weapon. All hits from the Averland Runefang Wound automatically with the Ignores Armour Saves special rule.],
  ),
  options: [
- May be mounted on a Warhorse +18 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Hold the Line (see Imperial General)",
  special-rules-body: (
    rule("Aldebrand's Hawk")[The hawk may target models using the Sniper special rule. The target must pass a Weapon Skill test or suffer a Strength 3 hit.],
    rule("Hergig Jaegerkorps")[If Aldebrand Ludenhof is included in your army, you may upgrade one unit of Huntsmen to Hergig Jaegerkorps for +3 pts per model. This unit is armed with Hochland Long Rifles (without the Sniper special rule) instead of bows.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("VALMIR VON RAUKOV",
  subtitle: "Elector Count of Ostland",
  profiles: (
    (name: "Valmir von Raukov", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 190),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: [
- *Brain Wounder, the Ostland Runefang:* Magic Weapon. All hits from the Averland Runefang Wound automatically with the Ignores Armour Saves special rule.
- *The Dragon Bow:* Magic Weapon. The Dragon Bow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Multiple Shots (3), Volley Fire"))
  ],
  options: [
- May take a shield +3 points
- May be mounted on a Warhorse +18 points
  ],
  special-rules: "Hold the Line (see Imperial General)",
  special-rules-body: (
    rule("Hammer of the East")[Valmir von Raukov and any unit he joins has the Stubborn special rule in the first round of Close Combat.],
    rule("Fireloques of Ferlangen")[If Valmir von Raukov is included in your army, you may upgrade one unit of Handgunners to Fireloques of Ferlangen for +1 pt per model. This unit has the Stubborn special rule and ignore To Hit penalties for Stand & Shoot.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("MAGNUS THE PIOUS",
  subtitle: "Saviour of the Empire, Bane of Chaos",
  profiles: (
    (name: "Magnus the Pious", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 180),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("The Gilded Armour")[Magic Armour. Heavy armour. Models attacking the wearer in close combat must pass a Strength test before rolling to hit for every Attack directed at the target. If the test is failed, the Attack is lost. Attacks that do not roll to Hit are unaffected.],
  ),
  options: [
- May be mounted on a Warhorse +18 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Hold the Line (see Imperial General), Immunity (Psychology), Inspiring Presence (6), Righteous Fury (see Arch-Lector)",
  special-rules-body: (
    rule("The Power of Sigmar")[Magnus the Pious has a 5+ Ward save and the Magic Resistance (2) special rule. In close combat Magnus may make a special Attack at Strength 10 with the Multiple Wounds (D3) special rule instead of his normal attacks.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("JOHANN VAN HAL & WILHELM HASBURG",
  subtitle: "Witch Hunters",
  profiles: (
    (name: "Johann van Hal", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 130),
    (name: "Wilhelm Hasburg", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 135),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Brace of pistols (Johann van Hal only)",
  magic-items: (
    rule("Stake of Sigmar")[Johann van Hal only. Magic Weapon. The Stake of Sigmar doubles Johann's Strength when he is fighting against Daemons, Undead or Vampires. An unsaved wound caused by the Stake automatically slays Daemons, Undead or Vampires, with no saves allowed.],
    rule("Holy Staff")[Wilhelm Hasburg only. Magic Weapon. Great weapon. The staff will automatically Wound any Daemons, Skaven, Undead or Vampires.],
    rule("The Hammer of Witches")[Wilhelm Hasburg only. Talisman. Wilhelm and Johann gain the Magic Resistance (1) special rule against any spells from the Lore of Dark Magic, Necromancy, Nurgle, Slaanesh and Tzeentch.],
  ),
  special-rules: "Accusation (Johann van Hal only, see Witch Hunter Captain), Battle Prayers of Sigmar",
  special-rules-body: [
(Wilhelm Hasburg only, see Warrior Priest)*, Grim Resolve* (Johann van Hal only, see Witch Hunter Captain)*, Hatred (Chaos, Wizards)* (Johann van Hal only)*, Magic Resistance (2), Righteous Fury* (Wilhelm Hasburg only, see Warrior Priest)*, Tools of Judgement* (Johann van Hal only, see Witch Hunter Captain)
  ],
  upgrades: (
    rule("Witch Hunter Retinue")[If Johann van Hal is in your army, you may upgrade one unit of Free Company Militia to a Witch Hunter Retinue for +1 point per model. The unit gains +1 Leadership, as well as the Hatred (Chaos, Undead, Wizards) and Tools of Judgement special rules.],
  ),
)

#unit("GOTREK & FELIX",
  subtitle: "Legendary Adventurers",
  profiles: (
    (name: "Gotrek Gurnisson", m: 3, ws: 7, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 270),
    (name: "Felix Jaeger", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Special Character, Dwarf – Gotrek, Human – Felix)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour (Felix only)",
  magic-items: (
    rule("Gotrek's Axe")[Magic Weapon. Gotrek only. For each of Gotrek's initial Attacks that Hit, he gains one extra Attack. In addition, Gotrek's axe also has the Ignore Armour saves special rule, and against enemies with Toughness 5 or more he may re-roll failed rolls To Wound.],
    rule("Wyrmslayer Blade")[Magic Weapon. Felix only. The Wyrmslayer Blade gives +2 Attacks. In addition, Felix must always declare a charge against a Dragon or Drake if it is possible to do so. Against Dragons and Drakes, the Wyrmslayer blade allows Felix to re-roll failed rolls To Hit and To Wound.],
  ),
  special-rules: "Hatred (Orcs, Goblins, Skaven) (Gotrek only), Loner",
  special-rules-body: (
    rule("Gotrek's Doom")[As long as Gotrek is alive, he and Felix have a 4+ Ward Save as well as the Magic Resistance (2) and Unbreakable special rules.],
    rule("Relentless")[Gotrek does not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.],
    rule("Daemon Slayer")[Gotrek always Wounds on a To Wound roll of 4+, unless he would need a lower result. Use his Strength to determine the armour save modifier for any successful Wounds. In addition, he has the Multiple Wounds (D3) special rule when attacking Monstrous Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creatures and Monsters. Finally, any Ward saves (except Dodge, Regeneration and Parry) successfully made against Attacks made by the model must be re-rolled.],
    rule("Deathblow")[If a model with this special rule is killed by normal Close Combat Attacks, it will immediately make a single Attack back against the unit or model that killed it before the Slayer is removed as a casualty.],
  ),
)

= SPECIAL CHARACTERS (HEROES)

#unit("LUDWIG SCHWARZHELM",
  first: true,
  subtitle: "The Emperor's Champion",
  profiles: (
    (name: "Ludwig Schwarzhelm", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Full plate armour",
  magic-items: (
    rule("Sword of Justice")[Magic Weapon. Attacks made with the Sword of Justice have the Killing Blow special rule. In addition, all failed To Wound rolls made with the Sword of Justice are re-rolled.],
    rule("The Emperor's Standard")[Magic Standard. The Emperor's Standard gives Ludwig Schwarzhelm the Hold Your Ground (18) special rule in total.],
  ),
  options: [
- May be mounted on a Warhorse (with barding) +17 points
  ],
  special-rules: (
    rule("The Emperor's Bodyguard")[If Karl Franz suffers a Hit (before armour saves are taken) and Ludwig Schwarzhelm is in the same unit, roll a D6. On a 1, the Hit is resolved as normal, but on a 2+ the Wound is intercepted and reallocated to Ludwig Schwarzhelm. If Karl Franz suffers more than one Hit simultaneously, randomise between them to determine which Ludwig attempts to intercept first. No more than one Hit can be re-allocated to Ludwig Schwarzhelm in this way in each phase. Wounds suffered by Karl Franz in a challenge cannot be re-allocated.],
    rule("The Emperor's Herald")[If you take Ludwig Schwarzhelm, he must be your army's Battle Standard Bearer. Ludwig Schwarzhelm can never be your Army General.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("MARKUS WULFHART",
  subtitle: "Huntmarshal of the Empire",
  profiles: (
    (name: "Markus Wulfhart", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Amber Bow")[Magic Weapon. Longbow. All shots fired by the Amber Bow are resolved at Strength 4. Against Monsters, the Amber Bow always wounds on 4+ (unless it would normally need a lower result) and has the Multiple Wounds (D3) special rule.],
  ),
  options: [
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Hatred (Monstrous Creatures, Monsters), Immunity (Psychology), Scouts",
  special-rules-body: (
    rule("Monster Hunter")[Models with this special rule re-roll all failed To Hit rolls when shooting at Monstrous Creatures or Monsters.],
    rule("Wulfhart's Hunters")[If your army includes Markus Wulfhart, one unit of Huntsmen may be upgraded to be Wulfhart's Hunters for +2 points/model. This unit gains the Monster Hunter and Immunity (Psychology) special rules.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("THEODORE BRUCKNER",
  subtitle: "The Hand of Judgement, the Titan Headsman, Champion of Nuln",
  profiles: (
    (name: "Theodore Bruckner", m: 4, ws: 6, bs: 4, s: 5, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 190),
    (name: "Reaper (Demigryph)", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 6, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "25x25 or 30x30 (Theodore Bruckner), 50x100 or 60x100 (Reaper)",
  equipment: "Pistol, full plate armour",
  magic-items: (
    rule("Liarsbane")[Magic Weapon. Liarsbane give Bruckner +1 To Hit and To Wound in close combat.],
    rule("Stormlance")[Magic Weapon. Heavy lance. When charging, Bruckner has the Killing Blow special rule. At all other times, he will use Liarsbane instead.],
    rule("Baleflame Amulet")[Talisman. The amulet provides Bruckner with a Ward save (5+). In addition, if Bruckner is slain by a model in base contact, that model then immediately suffers D3 Wounds with the Ignores Armour saves special rule.],
  ),
  options: [
- May take Stormlance and be mounted on Reaper +135 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: (
    rule("The Hand of Judgement")[Bruckner cannot be the Army General. In addition, while fighting in a Challenge, Bruckner has the Unbreakable special rule.],
  ),
  notes: [
- Reaper is a Monster rather than a Monstrous Beast.
  ],
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules", "notes"),
)

#unit("LUTHOR HUSS",
  subtitle: "Prophet of Sigmar",
  profiles: (
    (name: "Luthor Huss", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 175),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Great weapon, heavy armour, barding",
  special-rules: "Battle Prayers of Sigmar (see Warrior Priest), Magic Resistance (1), Righteous Fury",
  special-rules-body: [
- *Chosen of Sigmar:* Luthor Huss has a 4+ Ward save. In addition, once per game, he may harness the very power of Sigmar. Luthor must declare that he is harnessing this power at the start of any Close Combat phase. Roll a D3 – Luthor adds this number to his Weapon Skill, Strength, Toughness, and Attacks characteristics until the end of the turn.
- *Fiery Demagogue:* In addition to Hammer of Sigmar, Shield of Faith and Soulfire, Luthor Huss also knows the following Battle Prayer:
  - *Unbending Righteousness:* Luthor Huss and his unit gain the Stubborn special rule until the start of your next turn.
  ],
)

#unit("VALTEN",
  subtitle: "Champion of Sigmar",
  profiles: (
    (name: "Valten", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 4, ld: 9, points: 260),
    (name: "Althandin (Elven Steed)", m: 9, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25 (Valten), 50x50 (Althandin)",
  equipment: "Two hand weapons",
  magic-items: (
    rule("Ghal Maraz")[Magic Weapon. Hits from Ghal Maraz Wound automatically with the Ignores Armour Saves and Multiple Wounds (D3) special rules.],
    rule("Armour of the Heldenhammer")[Magic Armour. Full plate armour. The Armour of the Heldenhammer provides +1 armour save and Magic Resistance (2). No model in base contact may cast any spells.],
  ),
  options: [
- May replace two hand weapons with one of the following:
  - Ghal Maraz & heavy armour +70 points
  - Ghal Maraz & Armour of the Heldenhammer +115 points
- May be mounted on one of the following:
  - Warhorse (with barding) +17 points
  - Althandin (with barding) +25 points
  ],
  special-rules: (
    rule("Against The Odds")[Enemy units can never gain the combat resolution bonus points for attacking in the flank or rear in a combat involving Valten. In addition, Valten and any unit he leads have Immunity (Psychology) and are Stubborn.],
    rule("Awesome Presence")[Wounds inflicted by Valten in close combat are counted towards the Empire combat resolution score of any combat within 12" of him, not just the one he is taking part in. However, Valten may never be the Army General.],
    rule("Iron Resolve")[Valten has a 5+ Ward save. If Valten is killed, take a Leadership test for him at the end of that phase. If he passes, his astounding strength of will allows him to ignore the wound and continue fighting. He remains alive on 1 Wound, and the wounds that killed him are discounted. The effects of combat resolution, are worked out after determining whether Valten recovers. This rule does not apply if he is fleeing and is run down by chargers or pursuers, or slain by a Killing Blow.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("BERTHA BESTRAUFRUNG",
  subtitle: "High Matriarch of the Sisterhood of Sigmar",
  profiles: (
    (name: "Bertha Bestraufrung", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 140),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("Sigmarite Hammers")[Magic Weapon. Two hand weapons. The Sigmarite Warhammers give Bertha the Armour Piercing (1) special rule. In addition, she gains +1 To Wound against Daemons, Undead or Vampires.],
    rule("Blessed Water")[Magic Weapon. One use only. Throwing weapon. If it hits, it inflicts one automatic Wound with the Ignores Armour Saves special rule against Daemons, Undead or Vampires.],
    rule("Holy Relic")[Talisman. One use only. The Holy Relic allows Bertha and any unit she joins to automatically pass the first Leadership they are required to make during the game.],
  ),
  special-rules: "Battle Prayers of Sigmar (see Warrior Priest), Immunity (Fear), Magic Resistance (2), Righteous Fury",
  special-rules-body: (
    rule("High Matriarch")[If Bertha Bestraufrung is included in your army, you must also include at least one unit of Sisters of Sigmar. Bertha Bestraufrung must join such a unit, and may not leave it. In addition, the unit becomes Stubborn while she remains with it.],
    rule("Sigmar's Handmaiden")[Bertha may re-roll failed Leadership tests when using Battle Prayers of Sigmar.],
  ),
)

#unit("JUBAL FALK",
  subtitle: "Castellan-Engineer of Nuln",
  profiles: (
    (name: "Jubal Falk", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 8, points: 60),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, pistol, Hochland Long Rifle, medium armour.",
  magic-items: [
- *Mercurial Shot:* Enchanted Item. One use only. This is missile attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "6", "Armour piercing (1), Multiple Wounds (2), Sniper"))

The Mercurial Shot can be used instead of firing normally.
  ],
  options: [
- May take Magic Items up to a total of 25 points
  ],
  special-rules: (
    rule("Black Powder Discipline")[Jubal Falk may re-roll 1's To Hit with missile attacks.],
    rule("The Nuln Ironsides")[Jubal Falk must be accompanied by a unit of Handgunners chosen from the army list at a cost of 10 points per model. This unit has medium armour and may re-roll 1's To Hit with missile attacks. The unit must be given a Standard Bearer and Musician. Jubal Falk is the unit's Leader and may never choose to leave this unit.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)
