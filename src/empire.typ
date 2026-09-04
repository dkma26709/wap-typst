// The Empire 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "empire",
  army: "The Empire",
  version: "3.1",
  layout: "army",
  cover: "covers/empire.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — The Empire 3.1")

#cover(
  title: "The Empire",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/empire.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    The Empire*, version 3.1 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Empire army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Empire units, and these are detailed here.

#namecost("STATE TROOPS", "")

If an enemy unit declares a charge against a State Troop unit, and that unit chooses Hold or Stand & Shoot as a charge reaction, then all non-fleeing and unengaged State Troop units within 3" can make either a *Support Fire* or a *Support Charge* action by passing a Leadership test (which can be re-rolled if the unit has a Leader). If the charged State Troops unit does not get a charge reaction for any reason, then the other State Troops units within range cannot make a Support Fire or a Support Charge action.

Additionally, a State Troop unit can only declare one Support Fire action, one Stand and Shoot reaction or one Support Charge action per turn.

- *Support Fire:* A State Troop unit can only declare a Support Fire action if at least one model in the unit is armed with a missile weapon and the range between the charging unit and the charged State Troops unit is greater than the charging unit's Movement characteristic.

If a Support Fire action is declared, the unit makes an immediate, out of sequence shooting attack, resolved as if it had just declared a Stand & Shoot charge reaction against the charging unit. All unsaved Wounds from the units' Stand & Shoot charge reaction and/or Support Fire actions, are combined when determining if the charging unit is required to take a Heavy Casualties Panic test.

- *Support Charge:* A State Troop unit can declare a Support Charge against an enemy unit's unengaged arc, after your opponent has moved all of their charging units, as long as one or more enemy units has successfully completed a charge against the charged State Troop unit. If a Support Charge action is declared, the unit makes an out of sequence move that is resolved as it had just declared a charge against the charging unit. The enemy does not get to make any charge reactions against a Support Charge, but otherwise all the normal charging rules and bonuses apply.

#diagram("/assets/figures/empire/img-0198.jpg", 0.463)
#namecost("CAVALRY HAMMER", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (1), Requires Two Hands"))
#namecost("GRENADE LAUNCHING BLUNDERBUSS", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "4", "Armour Piercing (1)"))

Each Hit from a grenade launching blunderbuss is multiplied into D6 Hits.

#namecost("HOCHLAND LONG RIFLE", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "5", "Move or Fire, Sniper"))
#namecost("REPEATER HANDGUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Multiple Shots (3), Ponderous, Rapid Fire"))
#namecost("REPEATER PISTOL", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Multiple Shots (3), Quick Shot, Rapid Fire"))

#note[_A repeater pistol can be used in combination with a regular pistol as a brace of pistols, in which case they fire Multiple Shots (4), but do not have Rapid Fire._]

= THE CULT OF ULRIC

#columns(2)[
You may choose to field your army as the Cult of Ulric. If you do, your Army General must have the Crush the Weak special rule. A Cult of Ulric army may not take magic items marked "Sigmarite only" or include Sisters of Sigmar. The following special rules apply to the Cult of Ulric:

#namecost("CRUSH THE WEAK", "")

Models with this special rule have the Hatred special rule against enemy models with a lower Weapon Skill, Strength, Toughness or Leadership characteristic than they have.

#namecost("WHITE WOLF CLOAK", "")

White Wolf Cloaks give the wearer the Natural Armour (6+) special rule against missile attacks.

#namecost("PRIESTS OF ULRIC", "")

High Priests/Warrior Priests of Ulric replace Arch Lectors/Warrior Priests of Sigmar. High Priests/Warrior Priests of Ulric follow all the rules for Arch Lectors/Warrior Priests of Sigmar with the following exceptions:

- High Priests/Warrior Priests of Ulric have the Crush the Weak and White Wolf Cloak special rules.

- *Battle Prayers of Ulric:* Battle Prayers of Ulric replace Battle Prayers of Sigmar. A model with this special rule knows the three Battle Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Battle Howl:* The model and any unit they are with gain D6" to their charge moves until the start of your next turn.
  - *Wrath of Winter:* The model and any unit they are with gain the Multiple Wounds (2) special rule until the start of your next turn.
  - *Winter's Chill:* Any unit in base contact with the model suffer a \-1 to hit until the start of your next turn.

- *Fury of Ulric:* Fury of Ulric replaces Righteous Fury. The Priest and any unit they join gain the Immunity (Psychology) special rule.

#namecost("THE WAR ALTAR OF ULRIC", "")

The War Altar of Ulric replaces the War Altar of Sigmar. The War Altar of Ulric follows all the rules for the War Altar of Sigmar, with the following exceptions:

- *Icy Blast of Ulric*: Icy Blast of Ulric replaces the Golden Griffon. Enchanted Item. Bound Spell (Level 3, 9+ to cast). _Icy Blast of Ulric_ is a *magic missile* with a range of 18" that causes D6 Strength 5 Hits. In addition, the target unit suffers \-1 To Hit with missile weapons and in close combat as well as its Leadership until the start of the caster's next Magic phase. Missile weapons that do not use Ballistics Skull must roll a 4+ on a D6 before firing; if failed they may not shoot that phase.

- *The Power of Ulric:* The Power of Ulric replaces the Power of Sigmar. Any Battle Prayers of Ulric cast by a model who is mounted on the War Altar of Ulric also target all friendly units within 6".

- The Horn of Sigismund may not be taken.

#namecost("WARRIORS OF ULRIC", "")

Free Company Militia may be upgraded to Warriors of Ulric for +2 points per model. They have Weapon Skill 4 and Leadership 7. Crush the Weak replaces the Militia special rule. Warriors of Ulric may take great weapons for +3 points per model. They may not take pistols, bows or crossbows. They may take a Magic Standard worth up to 25 points and ignore the limitation on the number of Free Company Militia units you may take.

#namecost("WINTER WOLF KNIGHTS", "")

Winter Wolves (Canine) replace Demigryphs. They have Movement 9, but may not take barding.

#namecost("WOLF KIN", "")

Wolf Kin replace Flagellants for +3 points per model. They have Weapon Skill 4 and Leadership 8. Crush the Weak, Skirmishers and Stubborn replace The End is Nigh!, Fanatical Zeal, Prophecy of Doom and Unbreakable. They may take great weapons for +3 points per model. They may not take flails.
]

= KNIGHTLY ORDERS

#columns(2)[
*Units of Knights may be upgraded to any one of the Knightly Orders below as detailed in the army list. A Grand Master or Chapter Master may only join a unit that belongs to the same Knightly Order. You may only field one Grand Master for each Knightly Order. Grand Masters and Chapter Masters must either be armed with a hand weapon or the same equipment as the rest of their unit.*

#namecost("REIKSGUARD KNIGHTS", "")
#namecost("Characters free", "")
#namecost("Cavalry/Infantry 1 point per model", "")
#namecost("Monstrous Cavalry 3 points per model", "")

Must take heavy lances or polearms if mounted. The models have the Stubborn special rule. However, they may not take a regular Grand Master.

#namecost("KNIGHTS OF THE BLAZING SUN", "")
#namecost("Characters free", "")
#namecost("Cavalry 1 point per model", "")
#namecost("Monstrous Cavalry 3 points per model", "")

Must take heavy lances or polearms, as well as shields. Whenever a unit where the majority of models have this upgrade declare a charge, the unit being charged suffer \-1 Weapon Skill and Ballistic Skill for the duration of the turn.

#namecost("KNIGHTS PANTHER", "")
#namecost("Characters free", "")
#namecost("Cavalry 1 point per model", "")

Must take heavy lances or polearms. A unit where all models have this upgrade add an extra D3" to their charge distance.

#namecost("KNIGHTS OF THE WHITE WOLF", "")
#namecost("Characters", "10 points")
#namecost("Cavalry/Infantry 1 point per model", "")
#namecost("Monstrous Cavalry free", "")

Must take cavalry hammers. The models have the Crush the Weak and White Wolf Cloak special rules. Monstrous Cavalry replace polearms and shields with cavalry hammers and may only be taken in a Cult of Ulric army.

#namecost("BLACK GUARD OF MORR", "")
#namecost("Characters free", "")
#namecost("Cavalry/Infantry free", "")

Must take polearms on foot. The models have the Fear and Independent special rules.

#namecost("KNIGHTS GRIFFON", "")
#namecost("Characters free", "")
#namecost("Cavalry 1 point per model", "")
#namecost("Monstrous Cavalry 3 points per model", "")

Must take heavy lances or polearms. The models gain the Disciplined special rule. In addition, they may not choose Flee as a charge reaction, refuse a challenge and ignore Swiftstride when fleeing.

#namecost("KNIGHTS OF THE EVERLASTING LIGHT", "")
#namecost("Characters", "10 points")
#namecost("Cavalry 1 point per model", "")

Must take heavy lances or great weapons. The models gain the Magical Attacks special rule and may re-roll failed armour saves in close combat. However, they must re-roll successful armour saves from missile attacks and successful Dangerous Terrain tests.

#namecost("KNIGHTS OF SIGMAR'S BLOOD", "")
#namecost("Characters free", "")
#namecost("Cavalry 1 point per model", "")

Must take heavy lances or polearms. The models have the Inspiring Presence (6) special rule. However, they may not be upgraded to Inner Circle Knights.

#namecost("KNIGHTS OF THE BLACK BEAR", "")
#namecost("Characters free", "")
#namecost("Cavalry free", "")

Must take heavy lances or polearms. This unit always counts as having one more rank than it actually has for the purpose of determining Steadfast, and enemy units cannot claim the Outnumber bonus against it. However, it must re-roll successful Leadership tests for Marching when within 6" of enemy units, Redirecting a Charge, Reforming from Defeat after losing a round of close combat or Restraining from Pursuit.

#namecost("KNIGHTS OF THE TWIN-TAILED ORB", "")
#namecost("Characters", "15 points")
#namecost("Cavalry 2 points per model", "")

The unit is armed with flails instead of heavy lances. The models have the Flaming Attacks and Frenzy special rules.

#namecost("KNIGHTS ENCARMINE", "")
#namecost("Characters", "10 points")
#namecost("Cavalry free", "")

The unit is armed with two hand weapons instead of heavy lances. The models may re-roll 1's To Hit and failed Parry saves. However, they cannot gain any bonus from ranks (including Steadfast) or Disrupt enemy units.

#namecost("SONS OF MANANN", "")
#namecost("Characters", "15 points")
#namecost("Cavalry 2 points per model", "")

The unit is armed with polearms & shields instead of heavy lances. The models (but not their mounts) gain +1 To Hit in the first round of close combat.
]

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Empire. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon")[
#magic-weapon("BEAST SLAYER, THE DRAKWALD RUNEFANG", 60, only: "General")[All hits from the Runefang wound automatically and Ignores Armour saves.]

#magic-weapon("DAEMONSLAYER BLADE", 35)[Against Daemons, all attacks made with the Daemonslayer Blade gain +1 To Wound with the Multiple Wounds (D3) special rule.]

#magic-weapon("SPEAR OF THE HIEROPHANT", 35, type: "Light lance/spear")[Against Daemons, Undead and Vampires, all attacks made with the Spear of the Hierophant gain +1 Strength and any successful Magical Ward saves must be re-rolled.]

#magic-weapon("SWORD OF FATE", 35)[At the beginning of the battle, nominate one enemy Character, Monstrous Creature or Monster on the battlefield. The Sword of Fate will Wound that model on a 2+ with the Ignores Armour Saves and Multiple Wounds (D3) special rules.]

#magic-weapon("BLADE OF SILVERED STEEL", 30)[This weapon gives the wielder the Hatred (Undead, Vampires) special rule. In addition, no Undead or Vampires may take armour or Regeneration saves against it.]

#magic-weapon("VON TRICKSCHOTTE'S WONDROUS ARQUEBUS", 30, type: "Hochland long rifle")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Multiple Wounds (D3), Ponderous, Sniper"))
]

#magic-weapon("BRONZE SIGIL SWORD", 25, only: "Wizard")[This weapon gives the wielder +1 Strength and Toughness. In addition, the wielder gains the Terror special rule against Goblins.]

#magic-weapon("THE MACE OF HELSTURM", 25, only: "Arch Lector", type: "Great weapon")[The wielder of this weapon gains the Flaming Attacks special rule. In addition, each natural roll of 6 to hit causes that attack to be resolved at Strength 10 and with the Multiple Wounds (D3) special rule.]

#magic-weapon("SWORD OF SIGISMUND", 25, only: "Sigmarite")[The Sword of Sigismund gives the wielder +1 Strength and the Always Strikes First special rule.]

#magic-weapon("HAMMER OF JUDGEMENT", 20, only: "Sigmarite")[Models hit by the Hammer of Judgement must take a Toughness test for every Hit suffered. If the test is failed, the Hit Wounds automatically with the Ignores Armour Saves special rule. If the test is passed, roll to Wound and take armour saves as normal.]

#magic-weapon("SWORD OF RIGHTEOUS STEEL", 15, only: "Sigmarite", common: true)[The Sword of Righteous Steel makes the wielder always Hit any opponent on roll of a 2+. In addition, models Hit must re-roll successful Parry saves.]

#magic-weapon("PEARL DAGGERS", 10, type: "Two hand weapons")[This weapon gives the wielder the Random Attacks (D3) special rule in addition to their normal attacks.]

#magic-weapon("WYRMSLAYER SWORD", 10)[The Wyrmslayer Sword makes the wielder Wound on a 4+ or better, and ignores Natural Armour.]
]

#magic-item-section("armour")[
#magic-armour("THE ARMOUR OF METEORIC IRON", 50, type: "Heavy armour")[The Armour of Meteoric Iron grants the wearer +2 armour save and the Magical Ward (6+) special rule.]

#magic-armour("TWICE-BLESSED ARMOUR", 50, type: "Heavy armour")[This item contains a Bound Spell (Level 1, cast on 3+). This is a *direct damage* spell that causes 2D6 Strength 4 hits on one enemy unit in base contact with the caster.]

#magic-armour("ARMOUR OF RIGHTEOUS FURY", 35, only: "Witch Hunter", type: "Light armour")[The wearer gains +1 Toughness and the Always Strikes First special rule.]

#magic-armour("THE GILDED ARMOUR", 35, type: "Heavy armour")[Models attacking the wearer in close combat must pass a Strength test before rolling to hit for every Attack directed at the target. If the test is failed, the Attack is lost. Attacks that do not roll to Hit are unaffected.]

#magic-armour("ARMOUR OF TARNUS", 30, type: "Light armour")[The Armour of Tarnus gives the wearer the Magical Ward (5+) special rule. This item may be taken by Wizards despite them normally not being allowed to take armour.]

#magic-armour("SHIELD OF THE GORGON", 10, type: "Shield")[At the start of each round of close combat, the Shield of the Gorgon causes one enemy model in base contact of your choosing to suffer a \-1 penalty to their Attack characteristic for the remainder of the close combat phase.]
]

#magic-item-section("talisman")[
#talisman("SHROUD OF MAGNUS", 60, only: "Sigmarite")[This item gives the bearer the Magical Ward (5+) special rule. In addition, they and any unit they join gain the Immunity (Fear, Terror) and Magic Resistance (2) special rules.]

#talisman("AMULET OF THRICE-BLESSED COPPER", 35)[All enemy attacks targeting the model wearing the Amulet of Thrice-Blessed Copper suffer \-1 To Wound. In addition, the bearer gains the Immunity (Poisoned Attacks) special rule.]

#talisman("ICON OF SIGMAR", 20, only: "Arch Lector")[The Icon of Sigmar gives its bearer +1 Toughness.]

#talisman("JADE AMULET", 20, only: "Sigmarite", common: true)[The Jade Amulet allows the wearer to ignore the first wounding Hit they suffer (after saves).]

#talisman("MANTLE OF ILLUSIONS", 20, only: "Wizard with the Lore of Shadows")[All successful rolls To Hit against the wearer must be re-rolled.]

#talisman("WITCH HUNTER'S WARD", 20, only: "Witch Hunter")[This item gives the bearer and any unit they join the Magic Resistance (2) special rule. In addition, their armour save cannot be reduced below a 6+.]

#talisman("THE CRIMSON AMULET", 15)[The Crimson Amulet gives the wearer a Magical Ward (6+). In addition, they automatically pass any Characteristic tests they have to take.]

#talisman("SIGIL OF SIGMAR", 10, only: "Sigmarite", common: true)[The Sigil of Sigmar gives the bearer a 4+ invulnerable save against enemy spells.]

#talisman("SLAYER'S HOURGLASS", 10)[Any Monstrous Beast, Monstrous Creature or Monster (including mounts, but not riders) in base contact with the bearer of this item gains the Always Strikes Last special rule.]
]

#magic-item-section("arcane")[
#arcane-item("GREY WAND", 40, type: "Staff")[The Grey Wand gives the wielder a +D3 casting bonus. Roll for each spell casting attempt.]

#arcane-item("CHALICE OF FATE", 35, type: "Relic")[The Chalice of Fate allows the Wizard to re-roll failed Channelling rolls.]

#arcane-item("ROD OF POWER", 30, type: "Staff")[At the end of each magic phase (yours and enemy's), you can save up to three unused power/dispel dice from the pool and store them in the rod. At the beginning of each successive magic phase (yours and enemy's), roll a dice. If the result is equal or higher to the number of dice stored, add them to the power/dispel dice pool, if the result is lower than the number of dice stored, they are lost.]

#arcane-item("TOME OF MIDNIGHT", 20, type: "Relic")[The bearer of this item gains a +1 casting bonus when using the Lore of Shadow or Death. In addition, they know one more spell than normal. However, they also have the Independant special rule.]

#arcane-item("SEAL OF DESTRUCTION", 15, type: "Charm", one-use: true, common: true)[After the bearer of the Seal of Destruction manages to successfully dispel an enemy spell, they may choose to use the Seal. If they do so, roll a D6. On a 4+, the spell cannot be used by that Wizard for the rest of the game.]

#arcane-item("SHEMTEK'S GRIMOIRE", 15, type: "Charm", one-use: true)[This item can be used at the start of any enemy Magic Phase. Roll a D3, the result is the casting penalty all enemy Wizards suffer for the duration of this Magic Phase.]

#arcane-item("CRYSTAL BALL", 10, type: "Relic", common: true)[The Crystal Ball allows the wearer to pick one enemy unit anywhere on the table at the start of each of your turns. Your opponent must reveal all Magic Items, Hidden models and the like that unit might have.]

#arcane-item("TWIN-TAILED WAND", 10, type: "Staff")[Once per turn, the bearer of this item may attempt to cast the same spell twice. However, any time they roll a miscast, they suffer a +1 modifier to the result on the Miscast table.]

#arcane-item("WIZARD'S STAFF", 10, type: "Staff", common: true)[The bearer can use one more Power dice than they are normally allowed to from their Wizard Level.]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("FOZZRIK'S FOLDING FORTRESS", 100)[After deployment zones have been agreed, but before the armies have been deployed, place a watchtower building no more than 10x10 cm in base size and a maximum of 3 floors in your deployment zone to represent the Folding Fortress. This is treated as a standard building. If you do not have a suitable building to place, you cannot use Fozzrik's Folding Fortress.]

#enchanted-item("VAN HORSTMANN'S SPECULUM", 35)[When the wearer fights in a challenge, he must 'swap' the Weapon Skill, Strength, Toughness, Initiative and Attacks characteristics on his profile with his enemy (but not the enemy's mount, if he has one). So, the wearer fights with his enemy's Strength, Toughness, Initiative and Attacks whilst his enemy fights with the wearer's Strength, Toughness, Initiative and Attacks. Note that you cannot choose not to use Van Horstmann's Speculum and you must swap all of the listed characteristics for the duration of the challenge, not just some of them.]

#enchanted-item("ALDRED'S CASKET OF SORCERY", 35, bound: true)[At the start of each of your Magic phases, roll a D6. On the roll of a 4+, the bearer may remove and capture one randomly determined spell up to Level 2 (excluding Signature Spells) from an enemy Wizard within 12". The bearer can then cast the captured spell in any of your Magic phases by releasing it from the casket just like from a Bound Spell. Any number of spells may be captured by the casket, and the bearer can successfully cast each one once, either over several magic phases or all at the same time if they prefer.]

#enchanted-item("DOOMFIRE RING", 35, bound: true)[The Doomfire Ring contains the _Burning Head_ spell from the Lore of Fire.]

#enchanted-item("RANALD'S COIN", 35)[The bearer of this item may re-roll 1's To Hit, To Wound, when taking armour saves and invulnerable saves.]

#enchanted-item("RING OF TAAL", 35, bound: true)[This item contains the _Shield of Thorns_ spell from the Lore of Life.]

#enchanted-item("ORB OF THUNDER", 35, bound: (level: 1, cast: "3+"))[Remains in play. The Orb of Thunder contains a *hex aura* spell with a range of 24". While the spell is in effect, no models within range may use their Fly special rule and must move on the ground at their normal Movement rate.]

#enchanted-item("THE SILVER HORN", 35, bound: (level: 2, cast: "7+"))[The Silver Horn contains an *augment aura* spell with a range of 12". All affected units gain the Immunity (Psychology) special rule until the start of your next Magic phase.]

#enchanted-item("ANTLER OF THE BLUE STAG", 30)[The bearer of this item and any unit they join gain +1 Weapon Skill and Ballistic Skill.]

#enchanted-item("EICHELBAUM'S SCROLL", 30, only: "Witch Hunter")[Once per turn, when an enemy spell has been cast, the bearer can use this item instead of attempting to dispel the spell by using dispel dice. This gives them 3 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. This may also be used to dispel spells that Remains in Play. However, if the dispel attempt fails, the scroll is destroyed and cannot be used for the remainder of the battle.]

#enchanted-item("HELSTURM'S STAFF", 30, only: "Arch Lector")[The model carrying Helsturm's Staff and any unit they join gain the Cold-blooded special rule.]

#enchanted-item("BALESTORM ORB", 25, only: "Witch Hunter")[Enemy Wizards within 24" of the bearer suffer a \-1 penalty to cast spell.]

#enchanted-item("BRAZIER OF HOLY FLAME", 25)[The bearer of this item gains the Hold Your Ground (6) special rule.]

#enchanted-item("BLACK POMANDER", 20)[Any Undead unit in base contact with the bearer of this item suffer \-1 to their Weapon Skill.]

#enchanted-item("RING OF ST. HORST", 20, only: "Sigmarite")[The model carrying the Ring of St. Horst and any unit they join may re-roll any failed Leadership test.]

#enchanted-item("RING OF VOLANS", 20, one-use: true)[Bound Spell. At the beginning of the game, choose one spell from any of the eight Winds of Magic as if the bearer were a Level 1 Wizard. That spell is bound within the Ring of Volans and is automatically cast with a casting result equal to the normal casting value of the spell, no power dice are required.]

#enchanted-item("BLESSED SILVER HAMMER", 15, only: "Sigmarite", one-use: true)[This item can be used at the start of any round of close combat. All enemy models in base contact with the bearer suffer a Strength 4 Hit with the Magical Attacks special rule. This is increased to Strength 5 for Daemons, Undead and Vampires.]

#enchanted-item("BOOK OF UNCOMMON PRAYER", 15)[The bearer may re-roll one dice when taking Leadership tests to use Battle Prayers of Sigmar.]

#enchanted-item("BOOTS OF BOVVA", 15, only: "Model on foot")[The model wearing the Boots of Boova gains the Stomp (D3) special rule.]

#enchanted-item("ICON OF MAGNUS", 15, only: "Sigmarite")[The Icon of Magnus gives the bearer and any unit they are with the Immunity (Terror) special rule.]

#enchanted-item("POWDERS OF THRICE-DAMNED OSSK", 15, only: "Witch Hunter", one-use: true, common: true)[The Powders may be used immediately when an enemy Wizard miscasts. The Wizard must roll twice on the Miscast table, and you pick which result is used.]

#enchanted-item("RELIQUARY OF LECTOR OSTRANALD", 15, only: "Sigmarite")[Each time the bearer's unit suffers unsaved Wounds from a spell, the first D3 unsaved Wounds are absorbed by the Reliquary and have no effect (unsaved Wounds with the Multiple Wounds special rule still only count as one).]

#enchanted-item("SANCTIFIED SHARD OF LICHEBONE", 15, only: "Witch Hunter", common: true)[No Magical Wards may be used against close combat Attacks made by the bearer.]

#enchanted-item("SKULL CHARM", 15, common: true)[At the start of the game, roll a D6 and consult the chart below to determine which effect the Skull Charm has on the wearer.

#chart((("D6", "Result"), ("1-2", "+1 Weapon Skill"), ("3-4", "+1 Leadership"), ("5-6", "+1 Weapon Skill & Leadership")))
#chartlabel("SQUINTSOFFEN'S MARVELLOUS")
]

#enchanted-item("MAGNIFIER", 10, only: "Master Engineer")[The bearer may re-roll failed rolls To Hit with missile weapons (excluding artillery).]

#enchanted-item("VON MECKLENBURG'S ENCHANTED SHOT", 10, only: "Witch Hunter with pistol(s) or handgun", common: true)[Any shots fired from the bearer's weapons have the Magical Attacks special rule and automatically Wounds.]

#enchanted-item("THE FANG OF ORSKA", 5)[Any War Beast, Monstrous Beast, Monstrous Creature or Monster (including mounts, but not riders) attempting to strike blows against the bearer must first pass a Leadership test or automatically forfeit any attacks directed against the bearer.]

#enchanted-item("RING OF FORTUNE", 5, one-use: true, common: true)[The bearer (but not their mount) of this item can re-roll all failed To Wound rolls in close combat.]

#enchanted-item("SHEEN OF TRUESILVER", 5)[At the end of any close combat in which a Monstrous Infantry, Monstrous Beast, Monstrous Cavalry, Monstrous Creature or Monster model suffers one or more unsaved Wounds from the bearer's close combat attacks, it must take a Toughness test for each such Wound inflicted, and loses a Wound (with no saves allowed) for each test failed.]

#enchanted-item("SANCTIFIED SILVER BULLETS", 5, only: "Witch Hunter with pistol(s) or handgun", common: true)[Any shots fired from the bearer's weapons have the Multiple Wounds (D3) special rule against Daemons, Undead and Vampires.]

#enchanted-item("BANNER OF THE KNIGHTS PANTHER", 40, only: "Knights with the Knights Panther upgrade")[A unit with this standard gains the Unbreakable special rule.]

#enchanted-item("STANDARD OF ARCANE WARDING", 20)[A unit with this standard gains the Magic Resistance (2) special rule.]

#enchanted-item("STEEL STANDARD", 20, only: "Knights or Demigryph Knights")[A unit with this standard ignores the Movement penalties from barding.]

#enchanted-item("BANNER OF VALOUR", 15)[A unit with this standard gains the Immunity (Panic) special rule.]

#enchanted-item("TAPESTRY OF SIGMAR'S TRIUMPH", 15, only: "Sigmarite")[A unit with this standard may re-roll 1's To Wound in the first round of close combat.]

#enchanted-item("BANNER OF DUTY", 5)[A unit with this standard automatically pass any Rally tests.]
]

#magic-item-section("standard")[
#magic-standard("THE IMPERIAL BANNER", 55)[The bearer of this standard gains the Hold Your Ground (6) special rule. In addition, all friendly units within the bearers Hold Your Ground range gain the Disciplined special rule.]

#magic-standard("BANNER OF SIGISMUND", 50, only: "Sigmarite")[A unit with this standard gains the Inspiring Presence (6) and Stubborn special rules.]

#magic-standard("GRIFFON STANDARD", 50, only: "Sigmarite")[A unit with this standard doubles any combat result bonus granted for having extra ranks. However, the unit carrying the Griffon Banner cannot pursue a fleeing enemy and must hold their ground instead.]

#magic-standard("FLAG OF THE CONQUEROR", 40)[All friendly units with the State Troops or Militia special rules within 12" of this standard gain +1 to their Leadership.]
]

#magic-item-chapter(title: "ULRICAN MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Cult of Ulric. These may only be taken in a Cult of Ulric army. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon")[
#magic-weapon("STORM HAMMER", 25, type: "Cavalry hammer")[Models Hit in the turn the wielder charges may not attack that turn.]

#magic-weapon("WINTER'S BITE", 20)[On a to hit roll of 6, this weapon automatically Wounds with the Ignores Armour saves special rule.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF THE KNIGHT ETERNAL", 25, type: "Heavy armour")[Attacks against the wearer in close combat suffer a \-1 To Hit penalty.]

#magic-armour("ARMOUR OF SKOLL", 25, type: "Heavy armour")[Attacks against the wearer in close combat suffer a \-1 Strength penalty. In addition, the wearer gains Immunity (Lore of Light).]

#magic-armour("WOLF HELM OF THE TEUTOGENS", 15)[6+ armour save. The wearer can take a Leadership test at the start of every Close Combat phase. If passed, they gain +1 Strength for the duration of that phase.]

#magic-armour("HELM OF THE SKAVENSLAYER", 15)[6+ armour save. The wearer gains the Fear special rule. Against models from a Skaven army, the wearer causes Terror instead. However, all Skaven gain the Hatred special rule while attacking the wearer.]
]

#magic-item-section("talisman")[
#talisman("THE WHITE CLOAK OF ULRIC", 45)[The wearer gains the Ice Attacks, Immunity (Flaming Attacks) and Magical Ward (5+) special rules.]

#talisman("HEART OF MIDDENHEIM", 30)[The bearer gains +1 Weapon Skill and the Magical Ward (5+) special rule.]

#talisman("CLOAK OF ANRAHEIR", 20)[The wearer gains the Magic Resistance (1) and Magical Ward (6+) special rules. All Beastmen treat the wearer as causing Fear.]

#talisman("SHARD OF SKOLL", 15, only: "Priest of Ulric", common: true)[The Shard adds +1 to the score of every dice rolled when making a Dispel attempt. If the Dispel attempt was successful the Shard is destroyed, but otherwise it can be used again.]

#talisman("WOLFSHEAD EMBLEM", 5, only: "Priest of Ulric", one-use: true, common: true)[The Wolfshead Emblem may be used when attempting to dispel an enemy spell. This adds +1 Dispel dice to the attempt.]
]

#magic-item-section("enchanted")[
#enchanted-item("BANE OF THE CRAVEN", 25)[Neither the bearer of this item nor any unit they charge may ever voluntarily flee as a charge reaction.]

#enchanted-item("AMBER FANG", 25, only: "Priest of Ulric")[The bearer can use up to two Battle Prayers each turn. This overrides the normal limit of a unit not being able to be affected by two Battle Prayers at the same time.]

#enchanted-item("ICE DAGGER", 15, only: "Priest of Ulric", common: true)[The bearer may add the current rank bonus of the unit they accompany to their Leadership when using Battle Prayers.]

#enchanted-item("HORN OF THE WHITE WOLF", 15)[Whenever the bearer of this item declares a charge, the target must take a Panic test before choosing their charge reaction.]

#enchanted-item("FAUSCHLAG RING", 15)[The wearer gains +1 to Hit in close combat.]

#enchanted-item("CLAW TOTEM", 10, common: true)[The character and any unit they are with can roll one additional dice when pursuing fleeing enemies, and discard the lowest roll.]

#enchanted-item("FANG OF THE WINTER WOLF", 10, only: "Priest of Ulric", one-use: true, common: true)[This item may be used at the start of any of your turns. The bearer's Battle Prayer automatically succeeds this turn.]

#enchanted-item("PELT OF HORROS", 10)[The wearer may re-roll one failed to wound roll in each Close Combat phase.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE WARRIOR TRUE", 30)[When the unit carrying this banner takes a Break test, they count as having lost the combat by D3 fewer points than they really did. If this reduces the margin of the loss to 0 or lower, they still count as having lost the combat but test on their unmodified Leadership.]

#magic-standard("THE BANNER OF ULRIC", 25, only: "Knights of the White Wolf, Inner Circle Knights of the White Wolf or Winter Wolf Knights")[The unit carrying this standard causes Fear. When charging, they cause Terror.]

#magic-standard("STANDARD OF THE WHITE WOLF", 25)[All missile fire against the unit (including magic missiles) suffers a \-1 penalty to its Strength. Other types of attack, including spells that are not magic missiles, are unaffected.]

#magic-standard("BANNER OF MIDDENHEIM", 20)[The unit carrying this banner gains the Immunity (Terror) special rule.]
]

= CHARACTERS

#entry("COMMANDERS", first: true)
#profile(
  (name: "General", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 95),
  (name: "Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "")

- *Hold the Line:* If a model with this special rule is in a unit with the State Troops special rule, the unit has the Cold-blooded special rule when taking Break tests.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Pistol +5 points
  - Longbow +6 points
  - Crossbow +7 points
  - Handgun +7 points
  - Repeater pistol +7 points
  - Repeater handgun +9 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Griffon (General only) +125 points
  - Imperial Griffon (General only) +175 points
- One Captain may carry the Battle Standard +25 points
- A Captain may take Magic Items up to a total of 50 points
- A General may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("BATTLE WIZARDS")
#profile(
  (name: "Battle Wizard Lord", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Battle Wizard", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Battle Wizard is a Level 1 Wizard. A Battle Wizard Lord is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Beasts
- Death
- Heavens
- Fire
- Light
- Life
- Metal
- Shadow

#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Luminark of Hysh (Light Battle Wizard Lord only, replacing one of the crew) +120 points
  - Celestial Hurricanum (Heavens Battle Wizard Lord only, replacing one of the crew) +125 points
  - Griffon (Beast Battle Wizard Lord only) +125 points
  - Imperial Griffon (Beast Battle Wizard Lord only) +175 points
- A Battle Wizard may take Magic Items up to a total of 50 points
- A Battle Wizard Lord may take Magic Items up to a total of 100 points

#entry("MASTERS OF THE KNIGHTLY ORDERS")
#profile(
  (name: "Grand Master", m: 4, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 110),
  (name: "Chapter Master", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology)")

- *Master of Battle*: You must include at least one unit of Knights with the same Troop Type if your army includes a character with this special rule. The character must join one of these units and may never leave it.

If a character with this special rule joins a unit of Knights, Foot Knights or Demigryph Knights, the unit gains the Immunity (Psychology) special rule. In addition, for every character with this special rule that is included in your army, you may take one unit of Knights or Foot Knights as a Core Unit instead of a Special Unit.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Cavalry hammer +10 points
  - Flail +10 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May take heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Demigryph +40 points
- May be upgraded to a Knightly Order no points limit
- One Chapter Master may carry the Battle Standard +25 points
- A Chapter Master may take Magic Items up to a total of 50 points
- A Grand Master may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("WARRIOR PRIESTS OF SIGMAR")
#profile(
  (name: "Arch Lector", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 130),
  (name: "Warrior Priest", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Magical Attacks, Magic Resistance (1)")

- *Battle Prayers of Sigmar:* A model with this special rule knows the three Battle Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Hammer of Sigmar:* The model and any unit they are with re-roll failed To Wound rolls in close combat until the start of your next turn.
  - *Shield of Faith:* The model and any unit they are with gain the Magical Ward (5+) special rule in close combat until the start of your next turn.
  - *Soulfire:* The model and any unit they are with gain the Flaming and Magical Attacks special rules until the start of your next turn. In addition, when cast, all enemy models in base contact with the Warrior Priest suffer a Strength 4 Hit with the Magical Attacks special rule. This is increased to Strength 5 for Daemons, Undead and Vampires.
- *Righteous Fury*: The model and any unit they are currently in have the Hatred special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - The War Altar of Sigmar (Arch Lector only) +150 points
- A Warrior Priest may take Magic Items up to a total of 50 points
- An Arch Lector may take Magic Items up to a total of 100 points

#field("NOTES", "")

- You may not have more than 2 Arch Lectors in your army.

#entry("WITCH HUNTERS")
#profile(
  (name: "Witch Hunter General", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 80),
  (name: "Witch Hunter Captain", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 35),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, pistol")
#field("SPECIAL RULES", "Hatred (Chaos, Undead, Wizards), Magic Resistance (1)")

- *Accusation:* After deployment, but before the first turn begins, select a single model in your opponent's army. The Witch Hunter may re-roll all failed To Hit rolls against this model. Every hit they inflict on that model with close combat or shooting attacks also has the Killing Blow special rule. Finally, a Witch Hunter may also choose to shoot at the primary quarry as if they had the Sniper special rule.
- *Grim Resolve:* Witch Hunters, and any unit they are in, have the Immunity (Fear) special rule.
- *Tools of Judgement:* When attacking Daemons, Undead, Vampires or Wizards in close combat, a Witch Hunter has the Magical Attacks special rule and re-rolls failed rolls To Wound.
- *Witch Hunter Retinue:* For every Witch Hunter General in your army, you may upgrade one unit of Free Company Militia to a Witch Hunter Retinue for +1 point per model. The unit gains +1 Leadership, as well as the Hatred (Chaos, Undead, Wizards) and Tools of Judgement special rules.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +10 points
- May take a brace of pistols +5 points
- May choose one of the following:
  - Crossbow +7 points
  - Handgun +7 points
- May take light armour +3 points
- May be mounted on a Warhorse +15 points
- A Witch Hunter Captain may take Magic Items up to a total of 50 points
- A Witch Hunter General may take Magic Items up to a total of 100 points

#field("NOTES", "")

- You may not have more than 3 Witch Hunter Generals in your army.

#entry("MASTER ENGINEER")
#profile(
  (name: "Master Engineer", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 45),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")

- *Pigeon Bombs:* Pigeon bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Slow to Fire"))

This item can be used in addition to any other missile weapon the Master Engineer might have. When a Master Engineer declares they will be using Pigeon Bombs, nominate any enemy model within Line of Sight, roll a D6 and consult the following chart:

#chart((("D6", "Result"), ("1", "Oops! Centre the small round template over the Master Engineer and resolve the explosion."), ("2-4", "Boom! The Pigeon Bomb has no effect this turn."), ("5-6", "Huzzah! Centre the small round template over the target model and resolve the explosion.")))
#field("SPECIAL RULES", "")

- *Master of Ballistics:* One war machine that is within 3" of a Master Engineer can use his Ballistic Skill or re- roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Master Engineer are fired.
- *'Stand Back, Sir!':* A Master Engineer that is within 3" of a war machine is allowed to take a 'Look Out, Sir!' roll just as if he was within 3" of a unit of five or more models of the same troop type as himself. If the roll is successful, the hit is instead resolved against the nearest friendly war machine.

#field("OPTIONS", "")

- May choose one of the following:
  - Repeater pistol +5 points
  - Repeater handgun +8 points
  - Grenade launching blunderbuss +8 points
  - Hochland long rifle +15 points
- May take pigeon bombs +15 points
- May take light armour +3 points
- May be mounted on a Mechanical Steed +20 points
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

#compact-entry("MECHANICAL STEED")[
#profile(
  (name: "Mechanical Steed", m: 7, ws: 1, bs: 0, s: 4, t: 4, w: 1, i: 1, a: 1, ld: "-", points: "-"),
)
#field("TROOP TYPE", "War Beast (Animated Construct)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Impact Hits (D3), Natural Armour (6+)")
]

#entry("DEMIGRYPH")
#profile(
  (name: "Demigryph", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Chimeric)")
#field("BASE SIZE", "40x60, 50x75")
#field("SPECIAL RULES", "Mighty Blow (1)")
#field("OPTIONS", "")

- May take barding +5 points

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

#entry("IMPERIAL GRIFFON")
#profile(
  (name: "Imperial Griffon", m: 6, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 4, a: 4, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monster (Chimeric)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Fly (8), Natural Armour (6+)")
#field("UPGRADES", "")

- *Bloodroar*: Enemy units must roll an additional D6, discarding the lowest result, for Leadership tests caused by this beast's Terror special rule.
- *Razorbeak*: The model gains the Armour Piercing (1) special rule.
- *Shrike Talons*: The model gains the Mighty Blow (1) special rule in turns it charges.
- *Two Heads*: The model gains +1 Attack.

#field("OPTIONS", "")

- May take barding +10 points
- May take Razorbeak +5 points
- May take Shrike Talons +5 points
- May take Bloodroar +10 points
- May take Two Heads +15 points

#entry("WAR ALTAR OF SIGMAR")
#profile(
  (name: "War Altar of Sigmar", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: "-"),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Barding")
#field("MAGIC ITEMS", "")

- *The Golden Griffon:* Enchanted Item. Bound spell. The Golden Griffon contains the spell _Banishment_ from the Lore of Light.

#field("SPECIAL RULES", "Magical Ward (4+), Stubborn")

- *Holy Fervour:* All friendly Human units benefit from the rider's Righteous Fury special rule whilst within 6" of the War Altar of Sigmar.
- *The Power of Sigmar:* Any Battle Prayers of Sigmar cast by a model who is mounted on the War Altar of Sigmar also target all friendly units within 6".

#field("UPGRADES", "")

- *The Horn of Sigismund:* Enchanted Item. The War Altar of Sigmar gains the Terror special rule.

#field("OPTIONS", "")

- May take the Horn of Sigismund +25 points

#field("NOTES", "")

- The War Altar of Sigmar has a Line of Sight value of 4.
- You may not field more than 1 War Altar of Sigmar in your army.

= CORE UNITS

#entry("HALBERDIERS", first: true)
#profile(
  (name: "Halberdier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields +1 point/model
- May upgrade one Halberdier to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Halberdier to a Musician +5 points
- May upgrade one Halberdier to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SPEARMEN")

#profile(
  (name: "Spearman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3.5),
)

#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May choose one of the following:
  - Shields +0.5 point/model
  - Replace spears with pikes +1.5 points/model
- May take light armour +0.5 point/model
- May upgrade one Spearman to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Spearman to a Musician +5 points
- May upgrade one Spearman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SWORDSMEN")
#profile(
  (name: "Swordsman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Swordsman to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Swordsman to a Musician +5 points
- May upgrade one Swordsman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("HANDGUNNERS")
#profile(
  (name: "Handgunner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, handgun")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Handgunner to a Leader +5 points
  - May replace handgun with one of the following:
- Brace of pistols free
- Repeater handgun +5 points
- Hochland long rifle +10 points
- May upgrade one Handgunner to a Musician +5 points
- May upgrade one Handgunner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("CROSSBOWMEN")
#profile(
  (name: "Crossbowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, crossbow")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Crossbowman to a Leader +5 points
- May upgrade one Crossbowman to a Musician +5 points
- May upgrade one Crossbowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ARCHERS")
#profile(
  (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 7),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, longbow")
#field("SPECIAL RULES", "State Troops")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("FREE COMPANY MILITIA")

#profile(
  (name: "Militia Fighter", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 2.5),
)

#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "")

- *Militia:* Models with this special rule can use the Support Fire and Support Charge actions from the State Troops special rule.

#field("OPTIONS", "")

- May be upgraded to Ambushers +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapon +1 point/model
  - Pistols +3 points/model
  - Longbows +4 points/model
  - Crossbows +5 points/model
- May take light armour +0.5 point/model
- May upgrade one Militia Fighter to a Leader +5 points
- May upgrade one Militia Fighter to a Musician +5 points
- May upgrade one Militia Fighter to a Standard Bearer +10 points

#field("NOTES", "")

- You may not have more units of Free Company Militia than you have units with the State Troops special rule.

#entry("PISTOLIERS")
#profile(
  (name: "Pistolier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 17),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Brace of pistols, medium armour")
#field("SPECIAL RULES", "Fast Cavalry")
#field("OPTIONS", "")

- May upgrade one Pistolier to a Leader +5 points
  - May replace one pistol with a repeater pistol +5 points
- May upgrade one Pistolier to a Musician +5 points

#entry("DEMILANCERS")
#profile(
  (name: "Demilancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance, light armour, shield")
#field("SPECIAL RULES", "Fast Cavalry")
#field("OPTIONS", "")

- May take pistols +3 points/model
- May take medium armour +1.5 points/model
- May upgrade one Demilancer to a Leader +5 points
- May upgrade one Demilancer to a Musician +5 points
- May upgrade one Demilancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("HUNTING HOUNDS")
#profile(
  (name: "Hunting Hound", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
  (name: "Hunt Master", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 25),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Canine)")
#field("HANDLER", "1 Hunt Master (Human)")
#field("MOUNT", "1 Warhorse (Equine)")
#field("BASE SIZE", "25x25 or 25x50 (Hunting Hound), 25x50 (Hunt Master)")
#field("EQUIPMENT", "Light lance, light armour (Hunt Master only)")
#field("SPECIAL RULES", "Mixed Unit")
#field("NOTES", "")

- One Hunt Master must be included for every 10 Hunting Hounds in the unit.

= SPECIAL UNITS

#entry("GREATSWORDS", first: true)
#profile(
  (name: "Greatsword", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, light armour")
#field("SPECIAL RULES", "State Troops, Stubborn")
#field("OPTIONS", "")

- May choose one of the following:
  - Medium armour +1 point/model
  - Heavy armour +2.5 points/model
- May upgrade one Greatsword to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Greatsword to a Musician +5 points
- May upgrade one Greatsword to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("KNIGHTS")
#profile(
  (name: "Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 18),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, heavy armour, barding")
#field("UPGRADES", "")

- *Inner Circle Knights:* For each character with the Master of Battle special rule in your army, you may upgrade one unit of Knights or Foot Knights to Inner Circle Knights. Inner Circle Knights gain +1 Strength and +1 Initiative. Inner Circle Knights cannot be taken as Core Units.

#field("OPTIONS", "")

- May replace heavy lances with one of the following:
  - Great weapons free
  - Cavalry hammers +1 point/model
- May take shields (if armed with heavy lances) +3 points/model
- May be upgraded to Inner Circle Knights +2 points/model
- May be upgraded to a Knightly Order no points limit
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("FOOT KNIGHTS")
#profile(
  (name: "Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")
#field("UPGRADES", "")

- *Inner Circle Knights:* For each character with the Master of Battle special rule in your army, you may upgrade one unit of Knights or Foot Knights to Inner Circle Knights. Inner Circle Knights gain +1 Strength and +1 Initiative. Inner Circle Knights cannot be taken as Core Units.

#field("OPTIONS", "")

- May replace shields with one of the following:
  - Polearms free
  - Cavalry hammers +1 point/model
  - Great weapons +1 point/model
- May be upgraded to Inner Circle Knights (see notes) +2 points/model
- May be upgraded to a Knightly Order no points limit
- May upgrade one Knight to a Leader +5 points
  - May take a pistol +3 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("OUTRIDERS")
#profile(
  (name: "Outrider", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 22),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Repeater handgun, medium armour")
#field("SPECIAL RULES", "Fast Cavalry")
#field("OPTIONS", "")

- May take barding free
- May upgrade one Outrider to a Leader +5 points
  - May replace repeater handgun with one of the following:
- Brace of pistols including one repeater pistol free
- Grenade launching blunderbuss free
- Hochland long rifle free
- May upgrade one Outrider to a Musician +5 points

#entry("ROADWARDENS")
#profile(
  (name: "Roadwarden", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 16),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, crossbow, light armour")
#field("SPECIAL RULES", "Fast Cavalry, Independent")

- *Expert Rider:* Models with this special rule may re-roll failed Dangerous Terrain tests. In addition, they ignore the Ponderous special rule.

#field("OPTIONS", "")

- May be upgraded to Ambushers +1 point/model
- May take medium armour +1 point/model
- May upgrade one Roadwarden to a Leader +5 points
- May upgrade one Roadwarden to a Musician +5 points

#entry("HUNTSMEN")
#profile(
  (name: "Huntsman", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, longbow")
#field("SPECIAL RULES", "Forest Strider, Scouts, Skirmishers")
#field("OPTIONS", "")

- May upgrade one Huntsman to a Leader +5 points
- May upgrade one Huntsman to a Musician +5 points

#entry("SISTERS OF SIGMAR")
#profile(
  (name: "Sister of Sigmar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Hatred, Immunity (Fear), Magic Resistance (1)")

- *Absolute Faith:* If a model with the Battle Prayers of Sigmar special rule joins this unit, that model gains +1 to their Leadership when attempting to use their Battle Prayers for every 5 Sisters of Sigmar in the unit.

#field("UPGRADES", "")

- *Augur:* An Augur counts as being part of the unit's Command Group. A unit with an Augur may re-roll 1's To Hit and To Wound in close combat.

#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Shields +1 point/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Sister of Sigmar to an Augur +15 points
- May upgrade one Sister of Sigmar to a Leader +5 points
- May upgrade one Sister of Sigmar to a Musician +5 points
- May upgrade one Sister of Sigmar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("FLAGELLANTS")
#profile(
  (name: "Flagellant", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Frenzy, Unbreakable")

- *The End is Nigh!* If a unit of Flagellants is in base contact with an enemy unit at the start of any Close Combat phase, the Flagellants may immediately sacrifice D3 Wounds worth of models. Casualties inflicted in this way do not count towards combat resolution. The remaining Flagellants in the unit immediately gain one of the special rules listed below for the duration of the close combat phase, depending on the number of models removed.

#chart((("Models removed", "Result"), ("1", "Fanatical Fury: The Flagellants re-rolls all failed rolls To Hit."), ("2", "Strength of the Penitent: The Flagellants re-rolls all failed rolls To Hit and To Wound."), ("3", "Insensible to Pain: The Flagellants gains +1 Toughness, and re-rolls all failed rolls To
Hit and To Wound.")))

- *Fanatical Zeal:* Arch Lectors and Warrior Priests of Sigmar may join units of Flagellants despite being them being Unbreakable. If they do so, they also become Unbreakable as long as there are any Flagellants remaining.
- *Prophecy of Doom:* Friendly units within 6" of Flagellants suffer \-1 to their Leadership, except other Flagellants, Arch Lectors, Warrior Priests, Witch Hunters and Sisters of Sigmar.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Flails +2 points/model
- May upgrade one Flagellant to a Leader +5 points
- May upgrade one Flagellant to a Musician +5 points
- May upgrade one Flagellant to a Standard Bearer +10 points

#entry("DWARFS")
#profile(
  (name: "Dwarf", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Hatred (Orcs, Goblins, Skaven), Independent, Magic Resistance (1)")

- *Relentless:* Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.
- *Resolute:* When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.

#field("OPTIONS", "")

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

#entry("HALFLINGS")
#profile(
  (name: "Halfling", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 3),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Halfling)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Independent")

- *Duck & Weave:* Enemies attacking models with this special rule suffer \-1 To Hit in close combat.

#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Shortbows +3 points/model
- May take shields (unless armed with shortbows) +1 point/model
- May upgrade one Halfling to a Leader +5 points
- May upgrade one Halfling to a Musician +5 points
- May upgrade one Halfling to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("OGRES")
#profile(
  (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 25),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapons")

- *Ogre Pistol:* Ogre pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Quick Shot"))

In close combat, an Ogre pistol counts as an additional hand weapon that does not give the model the Parry special rule.

- *Ogre Handgun:* Ogre handguns use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Ponderous"))
#field("SPECIAL RULES", "Independent, Natural Armour (6+)")

- *Ogre Charge:* Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.

#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +3 points/model
  - Polearms +6 points/model
  - Ogre handguns +6 points/model
  - Ogre pistols +6 points/model
  - Great weapons +9 points/model
- May take light armour +3 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("GREAT CANNON")
#profile(
  (name: "Great Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Great Cannon), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, great cannon")

- *Great Cannon:* A Great Cannon is a cannon that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/72\"", "10", "Cumbersome, Multiple Wounds (D6)"))
#field("OPTIONS", "")

- May take an additional crew +5 points

#entry("MORTAR")
#profile(
  (name: "Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Mortar), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, mortar")
#field("OPTIONS", "")

- May take an additional crew +5 points

= RARE UNITS

#entry("DEMIGRYPH KNIGHTS", first: true)
#profile(
  (name: "Inner Circle Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 50),
  (name: "Demigryph", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Human)")
#field("MOUNT", "Demigryph (Chimeric)")
#field("BASE SIZE", "40x60 or 50x75")
#field("EQUIPMENT", "Polearm, heavy armour, shield")
#field("SPECIAL RULES", "Mighty Blow (1) (Demigryph only)")
#field("OPTIONS", "")

- May be upgraded to a Knightly Order no points limit
- May replace polearms with heavy lances +6 points/model
- May take barding +6 points/model
- May upgrade one Inner Circle Knight to a Leader +5 points
- May upgrade one Inner Circle Knight to a Musician +5 points
- May upgrade one Inner Circle Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("HELBLASTER VOLLEY GUN")
#profile(
  (name: "Helblaster Volley Gun", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Helblaster Volley Gun), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, Helblaster volley gun")

- *Helblaster Volley Gun:* A Helblaster volley gun is an organ gun that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Cumbersome, Multiple Shots (Artillery Dice+D6), Rapid Fire"))

The Helblaster may fire up to three times in each of your Shooting phases. Roll one dice at a time.

If a Misfire is rolled, roll immediately on the Black Powder War Machine Misfire chart before rolling the next Artillery dice.

If a May not Shoot result is rolled, this only applies to the current Artillery dice rolled.

If a Malfunction result is rolled, this only applies to the current and the next Artillery dice rolled (if this is the third Artillery dice rolled this turn, the first Artillery dice the next turn is wasted).

If a Destroyed! result is rolled, all previous Artillery dice shots this turn are still resolved before the war machine is removed. After all Artillery dice are rolled, resolve the number of shots as normal.

#field("OPTIONS", "")

- May take an additional crew +5 points

#entry("HELSTORM ROCKET BATTERY")
#profile(
  (name: "Helstorm Rocket Battery", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Helstorm Rocket Battery), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, helstorm rocket battery")

- *Helstorm Rocket Battery:* A Helstorm Rocket Battery is a rocket launcher that scatter 3 templates from its target position rather than 1. When scattering any templates after the first, only the scatter dice is rolled; the result from the artillery dice first rolled applies to all shots fired that turn. In addition, all shots made with a Helstorm counts as being fired indirectly.

#field("OPTIONS", "")

- May take an additional crew +5 points

#entry("WAR WAGON")
#profile(
  (name: "War Wagon", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 4+)")
#field("CREW", "6 (Human)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Ball & chain, blunderbuss, Hochland long rifle, hook halberd, man catcher, repeater handgun, barding")

- *Ball & Chain:* Flail. Each successful Hit with a ball & chain is multiplied into D3 Hits.
- *Hook Halberd:* Polearm. Against Cavalry and Monstrous Cavalry, attacks made with a hook halberd gains +1 To Hit.
- *Man Catcher:* A model armed with a man catcher has the Killing Blow special rule.

#field("SPECIAL RULES", "")

- *Mixed Weaponry:* Unless they are armed with handguns or a mortar, the crew of a War Wagon are each equipped with one of the following experimental weapons: ball & chain, blunderbuss, Hochland long rifle, hook halberd, man catcher, repeater handgun. You may not take multiples of the same weapon. Unlike other units, each crew model may choose to allocate their missile attack at a different target if they wish.
- *Stable Platform:* The crew ignore the Ponderous special rule of any weapon they carry.

#field("OPTIONS", "")

- May choose one of the following:
  - Replace all weapons with handguns +10 points
  - Replace 3 crew and all weapons with a Mortar +40 points
- May take light armour +15 points
- May take two additional crew (if armed with handguns) +12 points

#field("NOTES", "")

- A War Wagon has a Unit Strength of 8 and Line of Sight value of 4.
- You may take 1\-2 War Wagons a single Rare choice.

#entry("LUMINARK OF HYSH")
#profile(
  (name: "Luminark of Hysh", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 120),
  (name: "Acolyte", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "2 Acolytes (Human)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, barding")
#field("SPECIAL RULES", "")

- *Aura of Protection:* The Luminark of Hysh and all friendly units within 6" gain the Magical Ward (6+) special rule.
- *Locus of Hysh:* For each friendly Luminark of Hysh on the battlefield at the start of the enemy magic phase, add 1 dice to your dispel pool.
- *Solheim's Bolt of Illumination:* Arcane Item. Bound Spell (Level 4, cast on 11+). _Solheim's Bolt of Illumination_ is a *magic missile* with a range of 36". It causes a Strength 8 hit that has the Multiple Wounds (D3) and Flaming Attacks special rules, and penetrates ranks in the same manner as a shot from a bolt thrower. Armour saves are not permitted against Wounds caused by _Solheim's Bolt of Illumination._ If the target is a Daemon, Undead or Vampire, all failed To Wound rolls caused by this spell are re-rolled.

#field("NOTES", "")

- A Luminark of Hysh has a Line of Sight value of 4.

#entry("CELESTIAL HURRICANUM")
#profile(
  (name: "Celestial Hurricanum", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 125),
  (name: "Acolyte", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "2 Acolytes (Human)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, barding")
#field("SPECIAL RULES", "")

- *Locus of Azyr:* For each friendly Celestial Hurricanum on the battlefield at the start of your magic phase, add 1 dice to your power pool.
- *Portents of Battle:* The Hurricanum and all friendly units within 6" re-roll 1's when rolling to Hit.
- *Storm of Shemtek:* Arcane Item. Bound Spell (Level 4, cast on 10+). _Storm of Shemtek_ is a *direct damage area* spell with a range of 24" that uses the small round template. After resolving its placement, roll a D6 and consult the table below to see what effect it has. If the template hits a unit with the Fly special rule, it suffers D6 Strength 4 hits, in addition to any other effects (even if a Sudden Downpour is summoned).

#chart((("D6", "Result"), ("1", "Sudden Downpour: No effect."), ("2", "Iceshard Tempest: All models hit by the template suffer a Strength 2 hit with the Ice Attacks special
rule. In addition, they suffer a -1 modifier to all To Hit rolls (both shooting and close combat) until
the start of the caster's next Magic phase. Shooting attacks that do not use Ballistic Skill are
unaffected."), ("3", "Raging Tornado: If a target unit lies beneath the template's central hole and is not engaged in close
combat, roll a scatter dice and rotate the unit so that it is facing that direction (if a hit is rolled, the
casting player chooses the direction). If, by rotating the unit, it would come within of another unit or
impassable terrain, simply stop rotating the unit as soon as it moves to within 1\"."), ("4-5", "Lightning Strike: The model under the template's central hole suffers a Strength 6 hit. Other models
hit by the template suffer a Strength 3 hit. This is a Lightning Attack."), ("6", "Meteor Strike: The model under the template's central hole suffers a Strength 6 hit with the Multiple
Wounds (D6) Special rule. All other models hit by the template suffer a Strength 4 hit.")))
#field("NOTES", "")

- A Celestial Hurricanum has a Line of Sight value of 4.

#entry("STEAM TANK")
#profile(
  (name: "Steam Tank", m: "*", ws: "-", bs: "-", s: 6, t: 7, w: 10, i: "-", a: "-", ld: "-", points: 250),
  (name: "Engineer Commander", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 2+)")
#field("CREW", "1 Engineer Commander (Human)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, repeater pistol, steam cannon, steam gun")

- *Steam Cannon:* A steam cannon is a cannon. The steam cannon's maximum range is dependent on how many Steam Points (see Steam Engine below) that are expended. If you choose not to expend any Steam Points in the steam cannon, or if the Steam Tank is in base contact with an enemy unit, you cannot fire it that turn.

If you expend a single Steam Point, the steam cannon can fire with a maximum range of 12". For each additional Steam Point you expend, the maximum range of the steam cannon is increased by 12" (to a maximum of 36").

If the first artillery dice rolls a misfire, the steam cannon does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves. The steam cannon cannot fire grapeshot.

- *Steam Gun:* The steam gun is a Breath Weapon attack that can be fired every turn. The steam gun's Strength is dependent on how many Steam Points (see Steam Engine below) that are expended. If you choose not to expend any Steam Points in the Steam Gun, you cannot fire it that turn.

If you expend a single Steam Point, the Steam Gun has Strength 2 Breath Weapon with the Armour Piercing (1) special rule, which uses the Engineer Commander's Initiative. The Strength of the Breath Weapon is increased by 1 (to a maximum of 4) for each additional Steam Point expended in the Steam Gun.

#field("SPECIAL RULES", "Immunity (Poisoned Attacks), Obstacle Strider, Terror, Unbreakable")

- *Steam Engine:* At the start of each turn, declare how many Steam Points your Steam Tank is generating – this can be any number between 0 and 6. After you have generated your Steam Points (if any), roll an artillery dice. If the result is greater than the Steam Tank's current number of Wounds, or if you roll a misfire, roll a D6 and then, for each Steam Point the Steam Tank currently has, add 1 to the result and consult the Steam Boiler Mishap chart below.

You can expend Steam Points in two ways: through the Steam Engine, or Steam Weapons. Any Steam Points left unused at the end of each turn are lost.

The more Steam Points you expend in the Steam Engine, the further the Steam Tank moves in the Movement phase. Declare how many Steam Points you will expend in the Steam Engine before you attempt to move it. If you choose not to expend any Steam Points in the Steam Engine, the Steam Tank's Movement will be 0 that turn and it cannot move at all in the Movement phase. For each Steam Point you chose to expend (to a maximum of 3), the Steam Tank's Movement increases by 4". It gains +D6 Movement when charging rather than 2D6. If the charge fails, it moves D3" for every Steam Point used.

If the Steam Tank is in close combat with an enemy unit to its front, it can expend Steam Points in the Steam Engine to inflict D3 Stomps like a Monster on that unit for each Steam Point expended in this way (to a maximum of 3D3).

If the Steam Tank chooses to overrun or pursue a fleeing enemy, it moves D3" for every Steam Point expended in the close combat phase this round. It otherwise automatically restrains.

#chartlabel("STEAM BOILER MISHAP CHART")
#chart((("Steam Points", "Result"), ("1-4", "Minor Leak: The Steam Tank immediately loses 1 Steam Point."), ("5-6", "Valve Locked: The Steam Tank cannot expend Steam Points in the Steam Engine this
turn."), ("7-8", "Emergency Vent: The Steam Tank immediately loses D3 Steam Points. Any unit in base
contact immediately suffers 2D6 Strength 2 hits, distributed as from shooting (roll for each
unit)."), ("9-10", "Dangerous Overpressure: Roll a D3. The Steam Tank immediately gains a number of
Steam Points and loses a number of Wounds equal to the result."), ("11-12", "Kaboom: All units within 6\" of the Steam Tank (friend or foe) immediately suffer 2D6
Strength 4 hits, distributed as from shooting (roll for each unit). After resolving any
damage, the Steam Tank is removed as a casualty.")))
#field("UPGRADES", "")

- *Implacable:* The Implacable replaces the steam cannon and steam gun with a mortar. The mortar's maximum range is dependent on how many Steam Points that are expended. If you choose not to expend any Steam Points in the mortar, or if the Steam Tank is in base contact with an enemy unit, you cannot fire it that turn.

If you expend a single Steam Point, the mortar can fire with a maximum range of 12". For each additional Steam Point you expend, the maximum range of the mortar is increased by 12" (to a maximum of 36").

If you roll a misfire, the mortar does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves.

In addition, the Steam Tank also gains two swivel guns with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "-"))

- *Old Reliable:* Old Reliable replaces the steam cannon with an organ gun. The organ gun's number of shots is dependent on how many Steam Points that are expended. If you choose not to expend any Steam Points in the organ gun, or if the Steam Tank is in base contact with an enemy unit, you cannot fire it that turn.

If you expend a single Steam Point, the organ gun can fire an artillery dice + D6 shots. For each additional Steam Point you expend, the amount of shots of the organ gun is increased by 6 (to a maximum of 3D6).

If you roll a misfire, the organ gun does not fire and the Steam Tank immediately loses D3 Wounds which Ignores Armour Saves.

- *Sigmar's Hammer:* Sigmar's Hammer does not have a steam cannon or steam gun. Sigmar's Hammer has the Impact Hits (2D6) special rule and may use up to 4 Steam Points in each Movement and Close Combat phase. In addition, it may re-roll 1's when taking armour saves.
- *Von Zeppel:* The von Zeppel replaces the steam gun and Engineer Commander with a Fighting Platform. This includes 6 Crew armed with Mixed Weaponry as described in the War Wagon's entry.

#field("OPTIONS", "")

- May take a Hochland long rifle (unless upgraded) +10 points
- May be upgraded to one of the following:
  - Implacable free
  - Old Reliable free
  - Sigmar's Hammer free
  - Von Zeppel free

#field("NOTES", "")

- A Steam Tank has a Line of Sight value of 4.
- You may not have more than 8 Steam Tanks in your army.

= SPECIAL CHARACTERS

#entry("KARL FRANZ", first: true)
#namecost("The Emperor, Elector Count of Reikland, Prince of Altdorf", "")
#profile(
  (name: "Karl Franz", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 300),
  (name: "Deathclaw (Imperial Griffon)", m: 6, ws: 6, bs: 0, s: 6, t: 5, w: 5, i: 4, a: 5, ld: 8, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Ghal Maraz:* Magic Weapon. Hits from Ghal Maraz Wound automatically with the Ignores Armour Saves and Multiple Wounds (D3) special rules.
- *Dragon Tooth, the Reikland Runefang:* Magic Weapon. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.
- *The Emperor's Armour:* Magic Armour. Heavy armour. This armour allows Karl Franz to re-roll failed armour saves.
- *The Silver Seal:* Talisman. The Silver Seal grants Karl Franz the Magic Resistance (2) and Magical Ward (4+) special rules.

#field("SPECIAL RULES", "Hold the Line (see Commanders), Immunity (Psychology)")

- *Leader of Men:* The Emperor must be your Army General. He has Inspiring Presence (18) special rule in total, and any models using his Leadership may re-roll failed Panic tests. In addition, his Hold the Line special rule also affects units of Reiksguard Knights.
- *Altdorf Company of Honor:* If Karl Franz is included in your army, you may upgrade one unit of Halberdiers to the Altdorf Company of Honor for +1 point per model. This unit has +1 Weapon Skill and +1 Initiative.
- *The Carroburg Greatswords:* If Karl Franz is included in your army, you may upgrade one unit of Greatswords to Carroburg Greatswords for +0.5 point per model. This unit may re-roll failed Break tests.

#field("OPTIONS", "")

- May replace Dragon Tooth with Ghal Maraz +15 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Griffon +125 points
  - Deathclaw (Imperial Griffon) +210 points

#field("NOTES", "")

- Deathclaw has the Bloodroar upgrade.

#entry("KURT HELBORG")
#namecost("Reiksmarshal of the Empire", "")
#profile(
  (name: "Kurt Helborg", m: 4, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 290),
  (name: "Krieglust (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Krieglust (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Barding")
#field("MAGIC ITEMS", "")

- *Grudge Settler, the Solland Runefang:* Magic Weapon. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.
- *Dawn Armour:* Magic Armour. Heavy armour. This armour ignores Strength penalties from attacks and Armour Piercing.
- *Laurels of Victory:* Enchanted Item. Each unsaved Wound caused by Kurt Helborg is multiplied by 2 when calculating the combat result.
- *Rod of Command:* Enchanted Item. One use only. The first time the character and his unit has to take a Break test, they automatically pass it.

#field("SPECIAL RULES", "Immunity (Psychology), Master of Battle (see Masters of the Knightly Orders), Reiksguard")

*Knight*

- *The Emperor's Chosen:* If Kurt Helborg is included in your army, you must upgrade one unit of Reiksguard Knights to Inner Circle Knights. Kurt Helborg must join this unit, and may never leave it. The unit may re-roll failed Break tests for as long as he remains in it.

#entry("LUDWIG SCHWARZHELM")
#namecost("The Emperor's Champion", "")
#profile(
  (name: "Ludwig Schwarzhelm", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 160),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Sword of Justice:* Magic Weapon. The Sword of Justice gives the wielder +1 Attack. In addition, nominate one enemy character or monster at the beginning of the game. Attacks with the Sword of Justice gain +1 To Hit and can re-roll failed To Wound rolls in close combat when attacking the nominated model.
- *The Emperor's Standard:* Magic Standard. The Emperor's Standard gives Ludwig Schwarzhelm the Hold Your Ground (18) special rule in total.

#field("SPECIAL RULES", "Killing Blow")

- *The Emperor's Bodyguard:* If Karl Franz suffers a Hit and Ludwig Schwarzhelm is in the same unit, roll a D6. On a 1, the Hit is resolved as normal, but on a 2+ the Hit is intercepted and reallocated to Ludwig Schwarzhelm. If Karl Franz suffers more than one Hit simultaneously, randomise between them to determine which Ludwig attempts to intercept first. No more than one Hit can be re-allocated to Ludwig Schwarzhelm in this way in each phase. Hits suffered by Karl Franz in a challenge cannot be re-allocated.
- *The Emperor's Herald:* If you take Ludwig Schwarzhelm, he must be your army's Battle Standard Bearer. Ludwig Schwarzhelm can never be your Army General.

#field("OPTIONS", "")

- May be mounted on a Warhorse (with barding) +20 points

#entry("BORIS TODBRINGER")
#namecost("Elector Count of Middenland", "")
#profile(
  (name: "Boris Todbringer", m: 4, ws: 6, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 260),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour, shield")
#field("MAGIC ITEMS", "")

- *Legbiter, the Middenland Runefang:* Magic Weapon. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.
- *The Talisman of Ulric:* Talisman. At the start of every player turn, unless he has been removed as a casualty, Boris Todbringer instantly recovers any lost wounds, up to his starting total of 3. In addition, the Talisman is infused with the power and courage of Ulric, granting Boris Todbringer Magic Resistance (1) and gives him the Immunity (Psychology) special rule.

#field("SPECIAL RULES", "Crush the Weak, Hatred (Beastmen), Hold the Line (see Commanders)")

- *The Swords of Ulric:* If Boris Todbringer is included in your army, you may upgrade one unit of Swordsmen to the Swords of Ulric for +1 point per model. This unit gains the Frenzy special rule in the first round of close combat as well as the Crush the Weak and Hatred (Beastmen) special rules.

#field("OPTIONS", "")

- May be mounted on a Warhorse (with barding) +20 points

#entry("ALDEBRAND LUDENHOF")
#namecost("Elector Count of Hochland", "")
#profile(
  (name: "Aldebrand Ludenhof", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 190),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Goblin Bane, the Hochland Runefang:* Magic Weapon. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.

#field("SPECIAL RULES", "Hold the Line (see Commanders)")

- *Aldebrand's Hawk:* Aldebrand's hawk uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "Sniper"))

Rather than rolling to Hit using Ballistic Skill, the target must pass a Weapon Skill test to avoid being Hit.

- *Hergig Jaegerkorps:* If Aldebrand Ludenhof is included in your army, you may upgrade one unit of Huntsmen to Hergig Jaegerkorps for +3 pts per model. This unit is armed with Hochland Long Rifles (without the Sniper special rule) instead of longbows.
- *Shrewd Tactician:* After finishing deployment, D3 of your units within 12" of Aldebrand Ludenhof may choose to redeploy to a new position up to 6" away from their original position.

#field("OPTIONS", "")

- May be mounted on a Warhorse (with barding) +20 points
- May take Magic Items up to a total of 25 points

#entry("VALMIR VON RAUKOV")
#namecost("Elector Count of Ostland", "")
#profile(
  (name: "Valmir von Raukov", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 190),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Brain Wounder, the Ostland Runefang:* Magic Weapon. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.
- *The Dragon Bow:* Magic Weapon. The Dragon Bow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Multiple Shots (3), Volley Fire"))
#field("SPECIAL RULES", "Hold the Line (see Commanders)")

- *Hammer of the East:* Valmir von Raukov and any unit he joins has the Stubborn special rule in the first round of Close Combat.
- *Fireloques of Ferlangen:* If Valmir von Raukov is included in your army, you may upgrade one unit of Handgunners to Fireloques of Ferlangen for +1 pt per model. This unit has the Stubborn special rule and ignore To Hit penalties for Stand & Shoot.

#field("OPTIONS", "")

- May take a shield +5 points
- May be mounted on a Warhorse (with barding) +20 points

#entry("MARIUS LEITDORF")
#namecost("Elector Count of Averland", "")
#profile(
  (name: "Marius Leitdorf", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 185),
  (name: "Daisy (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Mother's Ruin, the Averland Runefang:* Magic Weapon. Two hand weapons. All hits from this weapon Wound automatically with the Ignores Armour Saves special rule.

#field("SPECIAL RULES", "Hold the Line (see Commanders)")

- *The Mad Count:* At the start of every friendly turn, Marius Leitdorf must take a Leadership test on 3D6, discarding the lowest result. If passed, he acts normally this turn, otherwise roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1", "Lunatic Ravings: Marius must immediately roll on the Stupidity special rule."), ("2", "Berserk Rage: Marius has the Frenzy special rule, and cannot lose it, until he rolls on this table again."), ("3", "Paranoid Delusions: Marius immediately makes one close combat attack against a randomly chosen
friendly model in base contact (if there are none, treat this result as Lunatic Ravings instead)."), ("4", "Tactical Brilliance: Every friendly unit within 12\" of Marius may immediately make a Reform
manoeuvre. These units can still move, charge, march and shoot as normal during this turn."), ("5", "Outrageous Insult: The closest enemy character to Marius has the Hatred (Marius Leitdorf) special
rule for the rest of the game. This has no effect on units that have Immunity (Psychology)."), ("6", "Insane Bravado: Marius is treated as having rolled failed a Berserk Rage test (see Frenzy). In
addition, he has the Stubborn special rule and must accept any challenge until he rolls on this table
again.")))

- *Knights of the Black Lynx:* If Marius Leitdorf is included in your army, you may upgrade one unit of Foot Knights to Knights of the Black Lynx for +1 point per model. This unit must take polearms and has the Ambushers special rule.

#field("OPTIONS", "")

- May be mounted on Daisy (with barding) +20 points
- May take Magic Items up to a total of 25 points

#entry("MARKUS WULFHART")
#namecost("Huntmarshal of the Empire", "")
#profile(
  (name: "Markus Wulfhart", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 100),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *The Amber Bow:* Magic Weapon. Longbow. All shots fired by the Amber Bow are resolved at Strength 4. Against Monstrous Creatures or Monsters, the Amber Bow always wounds on 4+ (unless it would normally need a lower result) and has the Ignores Armour Saves and Multiple Wounds (D3) special rules.

#field("SPECIAL RULES", "Hatred (Monstrous Creatures, Monsters), Immunity (Psychology), Scouts")

- *Monster Hunter:* Models with this special rule re-roll all failed To Wound rolls against Monstrous Creatures and Monsters.
- *Wulfhart's Hunters:* If your army includes Markus Wulfhart, one unit of Huntsmen may be upgraded to be Wulfhart's Hunters for +2 points/model. This unit gains the Monster Hunter and Immunity (Psychology) special rules.

#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#entry("THEODORE BRUCKNER")
#namecost("The Hand of Judgement, the Titan Headsman, Champion of Nuln", "")
#profile(
  (name: "Theodore Bruckner", m: 4, ws: 6, bs: 4, s: 5, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 180),
  (name: "Reaper (Demigryph)", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "25x25 or 30x30 (Theodore Bruckner), 50x100 or 60x100 (Reaper)")
#field("EQUIPMENT", "Pistol, heavy armour")
#field("MAGIC ITEMS", "")

- *Liarsbane:* Magic Weapon. Liarsbane gives Bruckner +1 To Hit and To Wound in close combat.
- *Stormlance:* Magic Weapon. Heavy lance. When using this weapon on the charge, Bruckner has the Killing Blow special rule. At all other times, he will use Liarsbane instead.
- *Baleflame Amulet:* Talisman. The amulet provides Bruckner with a Magical Ward (5+). In addition, if Bruckner is slain by a model in base contact, that model then immediately suffers D3 Wounds with the Ignores Armour Saves special rule.

#field("SPECIAL RULES", "")

- *The Hand of Judgement:* Bruckner cannot be the Army General. In addition, while fighting in a Challenge, Bruckner has the Unbreakable special rule.

#field("OPTIONS", "")

- May take Stormlance and be mounted on Reaper +110 points
- May take Magic Items up to a total of 25 points

#field("NOTES", "")

- Reaper is a Monstrous Creature rather than a Monstrous Beast.

#entry("BALTHASAR GELT")
#namecost("The Supreme Patriarch, Arch-alchemist", "")
#profile(
  (name: "Balthasar Gelt", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 310),
  (name: "Quicksilver (Pegasus)", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Al-kahest")

- *Al-kahest:* Al-kahest is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "n/a", "Flaming Attacks, Ignores Armour Saves, Magical Attacks, Quick Shot"))

Al-kahest Wounds any target on a 4+.

#field("MAGIC", "Balthasar Gelt is a Level 4 Wizard who uses the Lore of Metal.")
#field("MAGIC ITEMS", "")

- *Staff of Volans:* Arcane Item. Staff. The Staff of Volans grants Balthasar Gelt a +2 casting bonus.
- *Amulet of Sea Gold:* Talisman. The Amulet of Sea Gold grants Balthasar Gelt the Magic Resistance (1) special rule, and adds +1 to the Magic Resistance for each enemy wizard currently on the battlefield, up to a maximum of 3.
- *Cloak of Molten Metal:* Talisman. The Cloak of Molten Metal grants Balthasar Gelt a Magical Ward (3+) against missile attacks.

#field("SPECIAL RULES", "Loremaster (Lore of Metal)")
#field("OPTIONS", "")

- May be mounted on Quicksilver (Pegasus) +30 points

#field("NOTES", "")

- Quicksilver has the Swift as the Wind upgrade.

#entry("THYRUS GORMANN")
#namecost("High Wizard of the Bright Order", "")
#profile(
  (name: "Thyrus Gormann", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 325),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light armour")
#field("MAGIC", "Thyrus Gormann is a Level 4 Wizard who uses the Lore of Fire.")
#field("MAGIC ITEMS", "")

- *The Bright Sword:* Magic Weapon. This magic sword gives Thyrus +1 when rolling To Wound as well as Flaming Attacks.
- *Firebrand Staff:* Arcane Item. Staff. Thyrus may add 12" to the range of his spells.
- *The Fire Stone of Agni:* Arcane Item. Relic. Once per turn, Thyrus may add +2 Power Dice to casting one of his spells.
- *The Blazing Ruby:* Talisman. The Blazing Ruby confers the Immunity (Flaming Attacks) and Magical Ward (5+) special rules.

#field("SPECIAL RULES", "Loremaster (Lore of Fire)")
#field("OPTIONS", "")

- May be mounted on a Warhorse +18 points

#entry("ELSPETH VON DRAKEN")
#namecost("The Dark Lady of Nuln, the Graveyard Rose", "")
#profile(
  (name: "Elspeth von Draken", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 255),
  (name: "Carmine Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25 (Elspeth von Draken), 75x75 (Carmine Dragon)")
#field("MAGIC", "Elspeth von Draken is a Level 4 Wizard who uses the Lore of Death.")
#field("MAGIC ITEMS", "")

- *The Pale Scythe:* Magic Weapon. This weapon has the Killing Blow special rule and gives Elspeth von Draken a +1 dispel bonus.
- *Death's Timekeeper:* Enchanted Item. Once per player turn, Elspeth von Draken can re-roll a single dice of your choice concerning her or the Carmine Dragon (this can include attacks, saving throws, magic dice and the Artillery dice used to determine the Carmine Dragon's Coruscating blast if desired). If this re-roll is not used, at the end of her player's turn Elspeth von Draken may recover a wound previously lost in the game.

#field("SPECIAL RULES", "Fly (7) (Carmine Dragon only), Loremaster (Lore of Death), Natural Armour (3+) (Carmine")

Dragon only)

- *Darkwalker:* Elspeth has Immunity (Psychology) and all To Wound rolls made against her suffer a \-1 penalty. However, she also suffers any extra effect that is listed as specifically damaging Undead.
- *Coruscating Blast* (Carmine Dragon only)*:* This is a missile attack that uses the line template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "*", "Cumbersome, Ignores Armour Saves, Magical Attacks, Multiple Wounds (D3)"))

This weapon has a Strength equivalent to 10 minus the target's Toughness.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Warhorse +15 points
  - Carmine Dragon +320 points

#entry("VOLKMAR THE GRIM")
#namecost("The Grand Theogonist", "")
#profile(
  (name: "Volkmar the Grim", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 190),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Staff of Command:* Magic Weapon. As long as Volkmar the Grim is mounted upon the War Altar of Sigmar, all close combat attacks made with the Staff of Command are resolved at +2 Strength, at other times it gives +1 Strength.
- *Jade Griffon:* Talisman. The Jade Griffon makes the bearer regain 1 Wound suffered earlier in the game at the start of each turn, up to their starting value.

#field("SPECIAL RULES", "Battle Prayers of Sigmar (see Warrior Priests of Sigmar), Magic Resistance (1), Righteous")

*Fury* (see Warrior Priests of Sigmar)

- *Grand Theogonist:* Volkmar the Grim may re-roll failed Leadership tests when using Battle Prayers. In addition, if Volkmar is your Army General, Flagellants count as Core Units rather than Special Units.

#field("OPTIONS", "")

- May be mounted on the War Altar of Sigmar +150 points

#entry("LUTHOR HUSS")
#namecost("Prophet of Sigmar", "")
#profile(
  (name: "Luthor Huss", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 200),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy armour, barding")
#field("MAGIC ITEMS", "")

- *Hammer of Ensorcelled Iron:* Magic Weapon. Great weapon. This weapon allows the wielder to re-roll failed rolls To Wound.

#field("SPECIAL RULES", "Battle Prayers of Sigmar (see Warrior Priests of Sigmar), Magical Ward (4+), Magic")

*Resistance (1), Righteous Fury* (see Warrior Priests of Sigmar)

- *Chosen of Sigmar:* Once per game, at the start of any Close Combat phase you may roll a D3; Luthor adds this number to his Weapon Skill, Strength, Toughness, and Attacks characteristics until the end of the turn.
- *Fiery Demagogue:* In addition to his other Battle Prayers, Luthor Huss also knows the following:
  - *Unbending Righteousness:* Luthor Huss and his unit gain the Stubborn special rule until the start of your next turn.

#entry("MAGNUS THE PIOUS")
#namecost("Saviour of the Empire, Bane of Chaos", "")
#profile(
  (name: "Magnus the Pious", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 160),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("SPECIAL RULES", "Hold the Line (see Commanders), Immunity (Psychology), Inspiring Presence (6), Magical")

*Ward (5+), Magic Resistance (2), Righteous Fury* (see Warrior Priests of Sigmar)

- *The Power of Sigmar:* In close combat Magnus may make a special Attack at Strength 10 with the Magical Attacks and Multiple Wounds (D3) special rules instead of his normal attacks.

#field("OPTIONS", "")

- May be mounted on a Warhorse (with barding) +20 points
- May take Magic Items up to a total of 50 points

#entry("EMIL VALGEIR")
#namecost("High Priest of Ar-Ulric", "")
#profile(
  (name: "Emil Valgeir", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 260),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Blitzbeil, the Hammer-axe of Skoll:* Magic Weapon. The gains +1 Strength, Ice Attacks and Ignores Armour saves special rules.
- *Wolfplate Armour:* Magic Armour. Heavy armour. The wearer gains the Immunity (Flaming Attacks), Magical Ward (5+) and Magic Resistance (1) special rules.

#field("SPECIAL RULES", "Battle Prayers of Ulric, Crush the Weak, Fury of Ulric, Magic Resistance (1)")

- *Strength in Faith, Faith in Strength:* Emil Valgeir may re-roll failed Leadership tests when attempting to use Battle Prayers of Ulric.
- *The Teutogen Guard:* If Emil Valgeir is included in your army, you may upgrade one unit of Foot Knights with the Knights of the White Wolf upgrade to the Teutogen Guard for +1 point per model. This unit gains the Immunity (Flaming Attacks) and Stubborn special rules.

#field("OPTIONS", "")

- May be mounted on the War Altar of Ulric +150 points

#field("NOTES", "")

- If Emil Valgeir is included in your army, your army must be a Cult of Ulric.

#entry("HANS VON LOWENHACKE")
#namecost("Mercenary Commander", "")
#profile(
  (name: "Hans von Löwenhacke", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 9, points: 255),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Judgement:* Magic Weapon. Great weapon. All hits from this weapon have the Multiple Wounds (2) special rule.
- *The Griffon Helm:* Magic Armour. This item gives the wearer a 6+ armour save as well as the Immunity (Killing Blow) and Magical Ward (5+) special rules.

#field("SPECIAL RULES", "Hold the Line (see Commanders), Stubborn")

- *Mercenary Commander:* If Hans von Löwenhacke is included in your army, the limitation on the amount of Free Company Militia units you may take is ignored.
- *Strategic Mastery:* If Hans von Löwenhacke is included in your army, you gain +1 to the dice roll when determining who chooses to take the first turn.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("HARALD GEMUNSEN")
#namecost("Grand Master of the Knights Panther", "")
#profile(
  (name: "Harald Gemunsen", m: 4, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 175),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy armour, barding")
#field("MAGIC ITEMS", "")

- *Beast Reaver:* Magic Weapon. This weapon gives the wielder +1 Strength and the Killing Blow special rule. In addition, they may re-roll all failed To Wound rolls against Beastmen.

#field("SPECIAL RULES", "Hatred (Beastmen, Daemons of Chaos, Warriors of Chaos), Immunity (Psychology), Master")

*of Battle* (see Masters of the Knightly Orders)

- *Grand Master of the Knights Panther:* Harald Gemunsen has the Knight's Panther special rule. You may not take another Grand Master with this special rule if he is included in your army.
- *Skilled Duellist:* Harald Gemunsen may re-roll failed To Hit rolls in challenges.

#field("OPTIONS", "")

- May take Magic Items up to a total of 75 points

#entry("VALTEN")
#namecost("Champion of Sigmar", "")
#profile(
  (name: "Valten", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 4, ld: 9, points: 260),
  (name: "Althandin (Elven Steed)", m: 9, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 7, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25 (Valten), 50x50 (Althandin)")
#field("EQUIPMENT", "Two hand weapons")
#field("MAGIC ITEMS", "")

- *Ghal Maraz:* Magic Weapon. Hits from Ghal Maraz Wound automatically with the Ignores Armour Saves and Multiple Wounds (D3) special rules.
- *Armour of the Heldenhammer:* Magic Armour. Heavy armour. The Armour of the Heldenhammer provides +1 armour save and the Magic Resistance (2) special rule. No model in base contact may cast any spells.

#field("SPECIAL RULES", "")

- *Against The Odds:* Valten or any unit he is with. Valten and any unit he is with gains the Immunity (Psychology) Stubborn special rules. In addition, enemy units can never gain the combat resolution bonus points for attacking in the flank or rear against them.
- *Awesome Presence:* Wounds inflicted by Valten in close combat are counted towards the Empire combat resolution score of any combat within 12" of him, not just the one he is taking part in. However, Valten may never be the Army General.
- *Iron Resolve:* Valten has a 5+ invulnerable save. If Valten is killed, take a Leadership test for him. If he passes, he remains alive with 1 Wound, and the Wounds that killed him are discounted. This rule does not apply if he is killed while fleeing or slain by a Killing Blow.

#field("OPTIONS", "")

- May replace two hand weapons with one of the following:
  - Ghal Maraz & heavy armour +70 points
  - Ghal Maraz & Armour of the Heldenhammer +85 points
- May be mounted on one of the following (if armed with Ghal Maraz):
  - Warhorse (with barding) +20 points
  - Althandin (with barding) +25 points

#field("NOTES", "")

- Valten may not carry Ghal Maraz if Karl Franz is already using it, and vice versa.

#entry("BERTHA BESTRAUFRUNG")
#namecost("High Matriarch of the Sisterhood of Sigmar", "")
#profile(
  (name: "Bertha Bestraufrung", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 140),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Sigmarite Hammers:* Magic Weapon. Two hand weapons. These weapons give Bertha the Armour Piercing (1) special rule. In addition, she gains +1 To Wound against Daemons, Undead or Vampires.
- *Blessed Water:* Magic Weapon. This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "n/a", "Ignores Armour Saves, Magical Attacks, March & Shoot, Quick Shot"))

If the weapon hits, it inflicts one automatic Wound against Daemons, Undead or Vampires. Against other targets, it has no effect.

- *Holy Relic:* Talisman. One use only. The Holy Relic allows Bertha and any unit she joins to automatically pass the first Leadership test they are required to make during the game.

#field("SPECIAL RULES", "Battle Prayers of Sigmar (see Warrior Priest of Sigmar), Immunity (Fear), Magic Resistance")

*(2), Righteous Fury* (see Warrior Priest of Sigmar)

- *High Matriarch:* If Bertha Bestraufrung is included in your army, you must also include at least one unit of Sisters of Sigmar. Bertha Bestraufrung must join such a unit, and may not leave it. In addition, the unit becomes Stubborn while she remains with it.
- *Sigmar's Handmaiden:* Bertha may re-roll failed Leadership tests when using Battle Prayers of Sigmar.

#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#entry("JUBAL FALK")
#namecost("Castellan-Engineer of Nuln", "")
#profile(
  (name: "Jubal Falk", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 8, points: 60),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, pistol, Hochland Long Rifle, medium armour")
#field("MAGIC ITEMS", "")

- *Mercurial Shot:* Enchanted Item. One use only. This is missile attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Armour piercing (1), Multiple Wounds (2), Ponderous, Sniper"))
#field("SPECIAL RULES", "")

- *Black Powder Discipline:* Models with this special rule may re-roll 1's To Hit with missile attacks.
- *The Nuln Ironsides:* Jubal Falk must be accompanied by a unit of Handgunners chosen from the army list at a cost of 10 points per model. This unit has medium armour and the Black Powder Discipline special rule. The unit must be given a Standard Bearer and Musician. Jubal Falk is the unit's Leader and may never choose to leave this unit.

#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
