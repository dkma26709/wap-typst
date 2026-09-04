// Grand Cathay 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "grand-cathay",
  army: "Grand Cathay",
  version: "3.0",
  layout: "army",
  cover: "covers/grand-cathay.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Grand Cathay 3.0")

#cover(
  title: "Grand Cathay",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/grand-cathay.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Grand Cathay*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Grand Cathayan army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Grand Cathayan units, and these are detailed here.

#namecost("CELESTIAL FORGED ARMOUR", "")

Models with this special rule gain a Magical Ward (6+).

#namecost("HARMONY", "")

Most of Grand Cathay's units are divided into two categories, Yin and/or Yang as described in the army list. Unless specified, models armed with missile weapons counts as Yin, and models armed with only close combat weapons counts as Yang.

When a Yin unit is within 3" of non-fleeing Yang units with a combined Unit Strength 5 or more, they may re- roll 1's To Hit with missile weapons. When a Yang unit is within 3" of non-fleeing Yin units with a combined Unit Strength 5 or more, the Yang unit may re-roll 1's To Wound in close combat.

#namecost("MASTERY OF THE ELEMENTAL WINDS", "")

Models with this special rule gain a +1 casting bonus if there is one or more friendly non-fleeing models with this special rule within 12".

#namecost("WILL OF THE DRAGONS", "")

A unit with this special rule may re-roll failed Panic tests caused by friendly units breaking from combat or getting destroyed within 6" of them, or when it is fled through by a friendly unit.

#namecost("CELESTIAL BLADE", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Parry (6+)"))

#note[_A Celestial Blade gives the wielder +1 To Wound._]

#namecost("CRANE GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Move or Fire*, Ponderous,"))

#note[_\*Does not apply if mounted on a Chariot._]

#namecost("DRAGON FIRE PISTOLS", "")
#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "5", "Armour Piercing (1), Flaming Attacks, Quick Shot"))
#namecost("DRAGON FIRE BOMBS", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "5", "Armour Piercing (1), Flaming Attacks (non- physical), March & Shoot, Quick Shot"))

#note[_Each Hit from a dragon fire bomb is multiplied into D3 Hits._]

#namecost("REPEATER CROSSBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "2", "Multiple Shots (3), Rapid Fire"))
#namecost("THREE-EYED GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Multiple Shots (3), Ponderous, Rapid Fire"))

= THE LORE OF YIN

#namecost("POWER OF YIN", "")
#namecost("Lore Attribute", "")

Whenever a spell from the Lore of Yin is successfully cast, all enemy units within 6" of the caster suffer \-1 to their armour saves until the start of the caster's next magic phase.

#namecost("STORM OF SHADOWS", "")
#namecost("Level 1 Cast on 6+", "")

_Storm of Shadows_ is a *hex* spell with a range of 24". The target unit suffer \-1 to their Movement and have their Line of Sight limited to 12" until the start of the caster's next Magic phase.

#namecost("CLOAK OF JET", "")
#namecost("Level 1 Cast on 6+", "")

_Cloak of Jet_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, no enemy spells can target the unit.

#namecost("MISSILE MIRROR", "")
#namecost("Level 2 Cast on 7+", "")

_Missile Mirror_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, roll a D6 for every shot the target unit fires in the Shooting phase. On a 4+, that shot is instead resolved against the target unit. Attacks that use templates are not affected.

#namecost("BLOSSOM WIND", "")
#namecost("Level 3 Cast on 10+", "")

_Blossom Wind_ is a *direct damage* spell with a range of 24" that causes 2D6 Strength 2 Hits with the Armour Piercing (1) special rule. In addition, the target unit suffer \-1 to its Weapon Skill and Ballistics skill until the start of the caster's next Magic phase.

#namecost("TALONS OF NIGHT", "")
#namecost("Level 3 Cast on 12+", "")

Remains in play. _Talons of Night_ is a *magical vortex* that uses the small round template. Any model touched by the template suffer a Strength 4 Hit with the Armour Piercing (1) special rule.

#namecost("ANCESTRAL WARRIORS", "")
#namecost("Level 4 Cast on 13+", "")

_Ancestral Warriors_ is a *direct damage* spell with a range of 18". The target unit suffers 5D6 Attacks with Weapon Skill 4 and Strength Hits 4, resolved as close combat attacks.

= THE LORE OF YANG

#namecost("STRENGTH OF YANG", "")
#namecost("Lore Attribute", "")

Whenever a spell from the Lore of Yang is successfully cast, all friendly units within 6" of the caster gain the Armour Piercing (1) special rule until the start of the caster's next magic phase.

#namecost("JADE SHIELD", "")
#namecost("Level 1 Cast on 6+", "")

_Jade Shield_ is an *augment* spell with a range of 12". The target unit gains a Magical Ward (6+) until the start of the caster's next Magic phase.

#namecost("STONE GROUND STANCE", "")
#namecost("Level 1 Cast on 6+", "")

_Stone Ground Stance_ is an *augment* spell with a range of 24". Until the start of the caster's next Magic phase, the target unit gains the Stubborn special rule (if they are already Stubborn, they instead become Unbreakable) and enemies charging them lose all charge bonuses.

#namecost("DRAGON'S BREATH", "")
#namecost("Level 2 Cast on 7+", "")

_Dragon's Breath_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 5 Hit with the Flaming Attacks special rule.

#namecost("WALL OF WIND & FIRE", "")
#namecost("Level 3 Cast on 10+", "")

_Wall of Wind & Fire_ is a *direct damage* spell with a range of 24" that causes 2D6 Strength 3 Hits with the Flaming Attacks special rule. In addition, the target unit suffer \-1 to Leadership until the start of the caster's next Magic phase.

#namecost("MIGHT OF HEAVEN & EARTH", "")
#namecost("Level 3 Cast on 11+", "")

_Might of Heaven & Earth_ is an *augment* spell with a range of 18". The target unit gains +1 Weapon Skill, +1 Strength, Flaming Attacks and Magical Attacks special rules until the start of the caster's next Magic phase.

#namecost("CONSTELLATION OF THE DRAGON", "")
#namecost("Level 4 Cast on 13+", "")

_Constellation of the Dragon_ is a *direct damage area* spell with a range of 24" that uses the small round template. All models underneath the template suffer a Strength 5 Hit with the Multiple Wounds (D3) special rule.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Cathayans. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon")[
#magic-weapon("JADE BLADE OF THE GREAT FLEET", 35)[The wielder of this weapon gains +1 Strength and the Regeneration (5+) special rule.]

#magic-weapon("NUKU CHO'S CROSSBOW", 35, type: "Repeater crossbow")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/24\"", "3", "Multiple Shots (6), Rapid Fire"))
]

#magic-weapon("SILVER MOON BOW", 30, type: "Longbow")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Armour Piercing (3), Multiple Shots (3)"))
]

#magic-weapon("SPIRIT LONGMA SPEAR", 30, type: "Light lance/spear")[The wielder of this weapon gains the Ignores Armour saves special rule.]

#magic-weapon("VORPAL SHARD", 30)[The wielder of this weapon always Wounds on a 2+.]

#magic-weapon("THE BRAZEN BLADE", 25)[This weapon has the Multiple Wounds (2) special rule. In addition, Ward saves (except Dodge and Parry) cannot be taken against Wounds caused by it.]

#magic-weapon("DAWN GLAIVE", 25, type: "Polearm")[All enemy attacks against the wielder of this weapon suffer \-1 To Hit in close combat.]

#magic-weapon("THE SWORD OF REASON", 25, type: "Great weapon")[This weapon has the Killing Blow special rules, which takes effect on a 5+ rather than a 6.]

#magic-weapon("ASCENDANT CELESTIAL BLADE", 20, type: "Celestial Blade")[The wielder of this weapon gains +1 Strength.]

#magic-weapon("BLADE OF XEN WU", 20)[The wielder of this weapon gains +1 Strength and +1 Attack. However, any unit joined by them cannot use their Leadership.]

#magic-weapon("SERPENT FANG", 20)[The wielder of this weapon gains the Armour Piercing (2) and Poisoned Attacks special rules.]

#magic-weapon("SWORD OF NAN-GAU", 20)[The wielder of this weapon gains the Armour Piercing (3) and Hatred (Chaos) special rules.]

#magic-weapon("VERMILLION BLADE", 20)[The wielder of this weapon gains +1 To Hit and the Flaming Attacks special rule.]

#magic-weapon("SUN & MOON BLADES", 15, type: "Two hand weapons")[These weapons have the Armour Piercing (1) and Immunity (Killing Blow) special rules.]

#magic-weapon("WRATH OF XEN YANG", 10, type: "Light lance/spear")[The wielder of this weapon gains the Flaming Attacks special rule.]
]

#magic-item-section("armour")[
#magic-armour("JADE ARMOUR OF BEICHAI", 55, type: "Heavy armour")[The wearer of this armour gains a Magical Ward (5+) and the Magic Resistance (2) special rule.]

#magic-armour("QUICKSILVER ARMOUR", 35, type: "Medium armour")[The wearer of this armour gains the Always Strikes First special rule.]

#magic-armour("SCALES OF THE CELESTIAL COURT", 35, type: "Medium armour")[The wearer of this armour gains the Natural Armour (5+) and Strider special rules.]

#magic-armour("ARMOUR OF THE WARBIRD", 30, only: "Infantry", type: "Medium armour")[The wearer of this armour gains the Fly (10) and Independent special rules.]

#magic-armour("ASCENDANT CELESTIAL ARMOUR", 25, type: "Heavy armour")[The wearer of this armour is immune to penalties to any of their characteristics and automatically passes all characteristics tests.]

#magic-armour("LAMINATE SHIELD", 10, type: "Shield")[Every time the bearer of this shield makes a successful Parry save, they may immediately make an additional Attack back against the model that struck the blow.]

#magic-armour("MANTLE OF HEAVEN", 10)[The wearer of this armour gains a 5+ armour save against non-magical missile attacks.]

#magic-armour("SHIELD OF NAN-GAU", 10, type: "Shield")[The bearer gains +2 armour save against all attacks to their front in the first round of close combat.]
]

#magic-item-section("talisman")[
#talisman("GUARDIAN FENG SHI BO", 40)[All close combat and missile attacks targeting the bearer of this item must re-roll successful To Hit rolls.]

#talisman("ROBES OF SHANG YANG", 40, bound: true)[This item contains the _Wall of Wind & Fire_ spell from the Lore of Yang. In addition, the bearer gains a Magical Ward (6+) against missile attacks.]

#talisman("CRYSTAL OF KUNLAN", 30)[The bearer of this item gains a Magical Ward (5+). In addition, for each successful Ward save they make in close combat, the enemy that struck the blow immediately suffers a Strength 3 Hit with the Flaming Attacks special rule.]

#talisman("JET AMULET", 25)[The bearer of this item and any unit they join gain the Magic Resistance (2) special rule. In addition, they may re-roll any failed dispel attempts against spells directly targeting them or their unit.]

#talisman("SIGIL OF SMOKE & POWDER", 25)[All missile attacks targeting the bearer of this item or any unit they are with suffer \-1 To Hit.]

#talisman("JADE BLOOD PENDANT", 20)[Whenever the bearer kills one or more enemy models in close combat, roll a D6 at the end of the Close Combat phase. On the roll of a 5+, the bearer recovers a single Wound lost earlier in the battle.]

#talisman("JAR OF ALL SOULS", 20, one-use: true)[If the bearer of this item is killed, immediately roll a D6. On a 2+, they come back to life with 1 Wound remaining.]

#talisman("CELESTIAL SILK ROBE", 15, common: true)[The wearer of this item gains the Magical Ward (6+) and Magic Resistance (1) special rules.]

#talisman("CROWN OF JADE", 10, common: true)[The bearer of this item gains a 4+ invulnerable save against all enemy spells.]
]

#magic-item-section("arcane")[
#arcane-item("CLOAK OF PO MEI", 40, type: "Relic")[The bearer of this item gains a +1 casting and dispelling bonus.]

#arcane-item("CLOCKWORK COMPASS", 35, type: "Charm", one-use: true)[This item can be used at the start of any of your Magic phases. Once used, all Remains in Play spells within 24" of the bearer that are currently in play are automatically dispelled, and the effects of all other spells within 24" of the bearer immediately come to an end.]

#arcane-item("JADE AMULET", 35, type: "Relic")[The bearer of this item may re-roll failed channelling attempts.]

#arcane-item("SCROLLS OF ASTROMANCY", 35, type: "Relic")[Astromancer only. The bearer can re-roll all of the dice rolled to cast or dispel a spell once per Magic phase. This can effectively cancel a miscast result, and cause Ultimate Power or a miscast.]

#arcane-item("STAFF OF WU XING", 25, type: "Staff")[The bearer of this staff can choose to re-roll all the Winds of Magic dice each Magic phase.]

#arcane-item("SCROLLS OF WEI-JIN", 20, type: "Relic")[The bearer of this item gains the Loremaster special rule. However, they may only attempt to cast a number of spells equal to their Wizard Level.]

#arcane-item("MAW SHARD", 15, type: "Charm", one-use: true)[The Maw Shard may be used in any of your Magic phases. Once used, any double (except double 1's) rolled when the bearer casts spells counts towards Ultimate Power this turn.]

#arcane-item("SEAL OF XING PO", 5, only: "Dragon-Blooded Shugengan or Dragon Descendant", type: "Relic", common: true)[The bearer of this item may choose spells from both the Lore of Yin and Yang in addition to the spells from their other lore.]
]

#magic-item-section("enchanted")[
#enchanted-item("ALCHEMIST'S MASK", 35, bound: true)[This item contains the _Transmutation of Lead_ spell from the Lore of Metal.]

#enchanted-item("ICON OF THE SPIRIT DRAGON", 35, bound: true)[This item contains the _Ancestral Warriors_ spell from the Lore of Yin.]

#enchanted-item("KITE OF THE UTTERMOST AIRS", 35)[The bearer can use this item in the Shooting phase. Choose one enemy unit with the Fly special rule within 12" that is not in close combat; they suffer D6 Strength 4 automatic Hits.]

#enchanted-item("CLEANSING WATER", 30)[The bearer of this item and unit they join gains the Mighty Blow (1) special rule in turns that they charge.]

#enchanted-item("CRACKLEBLAZE", 30, one-use: true)[This item can be used in the Shooting phase. Place the small 3" template with the hole anywhere within 6". It scatters D3". Any model under the template suffer a Strength 4 hits with the Flaming Attacks and Ignores Armour saves special rule.]

#enchanted-item("SPIRIT LANTERN", 30)[The bearer of this item gains the Terror special rule. In addition, they may re-roll To Wound rolls of 1 against Daemons, Undead and Vampires.]

#enchanted-item("CATALYTIC KILN", 25)[All enemy models in base contact with the bearer of this item suffer a Strength 3 Hit with the Flaming Attacks special rule at the start of each close combat phase. Models with Immunity (Flaming Attacks) suffer a Strength 2 Hit.]

#enchanted-item("ASTROMANCER'S SPYGLASS", 20)[The bearer of this item gives you +1 to choose which side of the table to deploy on, choosing the first turn and rolling for Ambushers to arrive. In addition, all enemy units within 30" must reveal all Hidden models and magic items they might have.]

#enchanted-item("FAN OF THE MAGISTER", 20, only: "Lord Magistrate or Magistrate")[The bearer of this item allows friendly units to re-roll failed Leadership tests when attempting to use the Tactician special rule. In addition, enemy units within 12" must re-roll successful tests to march, counter-charge, redirect charges, restrain from pursuit and reform.]

#enchanted-item("FIRES OF NAN-GAU", 15, one-use: true, common: true)[The bearer of this item gains a Breath Weapon with Strength 4 and the Flaming Attacks special rule.]

#enchanted-item("GOLDEN LION", 15, common: true)[The bearer of this item and any unit they are with may re-roll failed Psychology tests.]

#enchanted-item("VERMILLION QUILLS", 15, one-use: true, common: true)[This item can be used at the start of close combat. The bearer of this item can re-roll all failed To Hit and To Wound rolls this turn.]

#enchanted-item("ALCHEMIST'S ELIXIR OF IRON SKIN", 10, one-use: true, common: true)[This item can be used at the start of any phase. The character gains the Natural Armour save (3+) special rule until the end of the turn.]

#enchanted-item("ALCHEMIST'S ELIXIR OF PUISSANCE", 10, one-use: true, common: true)[This item can be used at the start of any phase. The character gains +1 Strength and Attacks until the end of the turn.]

#enchanted-item("CLOAK OF THE MOON WIND", 10, only: "Model on foot")[The bearer of this item gains the Scouts special rule.]

#enchanted-item("ALCHEMIST'S ELIXIR OF VENOM", 5, one-use: true, common: true)[This item can be used at the start of any phase. The character gains the Poisoned Attacks special rule until the end of the turn.]
]

#magic-item-section("standard")[
#magic-standard("FLAG OF GRAND CATHAY", 55)[The bearer gains the Hold Your Ground (6) special rule. In addition, friendly units within 18" count as being in Harmony if within 6" of eligible Yin/Yang units rather than 3".]

#magic-standard("THE GREAT CELESTIAL BANNER", 50)[The unit carrying this banner gains the Magical Ward (5+) special rule.]

#magic-standard("JADE BANNER", 30)[The unit carrying this banner gains +2 combat resolution bonus.]

#magic-standard("STANDARD OF WEI JIN", 30)[The unit carrying this banner gains +1 to their Leadership, and enemy units in base contact suffer \-1 to their Leadership.]

#magic-standard("BANNER OF FENG SHI", 25)[The unit carrying this banner gains the Immunity (Psychology) and Magical Attacks special rules.]

#magic-standard("BANNER OF THE EMPRESS' EYE", 25)[The unit carrying this banner gains +1 to Hit with missile weapons.]

#magic-standard("BANNER OF THE MOON EMPRESS", 25, only: "Infantry")[The unit carrying this banner gains the Scouts special rule.]

#magic-standard("REVERED BANNER OF THE ANCESTORS", 25)[The unit carrying this banner gains +1 Weapon Skill.]

#magic-standard("SERENE CLOUD PRAYER FLAG", 25)[The unit carrying this banner gains the Cold-blooded special rule.]

#magic-standard("STANDARD OF HEAVENLY FURY", 25, one-use: true)[This item can be used at the start of any enemy Movement phase. Until the start of your next turn, no enemy unit within 24" of this banner can use the Fly special rule.]

#magic-standard("BANNER OF THE DRAGON'S WRATH", 20)[The unit carrying this banner gains the Flaming Attacks and Impact Hits (1) special rules.]

#magic-standard("STANDARD OF SHANG-YANG", 20)[The unit carrying this banner may re-roll 1's when taking armour saves.]

#magic-standard("DRAGON'S EYE BANNER", 15)[Whenever the unit carrying this standard is the target of an enemy spell, roll a D6. On a 3+, the enemy Wizard must choose another target. If no other target is available, the spell cannot be cast.]

#magic-standard("BASTION STANDARD", 15)[The unit carrying this banner only suffer half (rounding up) their normal Leadership penalty when taking Break tests and may re-roll failed Break tests.]

#magic-standard("STANDARD OF NAN-GAU", 10)[The unit carrying this banner gains 6" to the effective range of their missile weapons.]

#magic-standard("BANNER OF XEN WUN", 10)[Enemy units cannot choose to Stand & Shoot against the unit carrying this banner.]
]

= CHARACTERS

#entry("CELESTIAL COMMANDERS", first: true)
#profile(
  (name: "Celestial General", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 105),
  (name: "Celestial Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Celestial Forged Armour, Will of the Dragons, Yin/Yang")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Celestial blade +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Repeater crossbow +5 points
  - Longbow +6 points
  - Crossbow +7 points
  - Handgun +7 points
  - Dragon fire pistol +9 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on one of the following:
  - Warhorse +14 points
  - Jade Longma +40 points
  - Great Spirit Longma +60 points
  - War Chariot (replacing one of the crew) +70 points
  - Great Moon Bird (General/Yin only) +140 points
  - Celestial Lion (General/Yang only) +145 points
- One Celestial Captain may carry the Battle Standard +25 points
- A Celestial Captain may take Magic Items up to a total of 50 points
- A Celestial General may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("DRAGON-BLOODED SHUGENGAN")
#profile(
  (name: "Dragon-Blooded Shugengan", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 240),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Dragon-Blooded Shugengan is a Level 3 Wizard. They must be chosen to be aligned with either Yin or Yang.")

A Yin Wizard uses one of the following Lores of Magic:

- Beasts
- Death
- Metal
- Shadow

A Yang Wizard uses one of the following Lores of Magic:

- Fire
- Heavens
- Light
- Life

In addition to their chosen lore, a Dragon-Blooded Shugengan may also replace any number of spells from that lore with spells from either Yin or Yang depending on their alignment.

#field("SPECIAL RULES", "Celestial Forged Armour, Mastery of the Elemental Winds, Will of the Dragons, Yin/Yang")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Celestial blade +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a dragon fire pistol +9 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on one of the following:
  - Warhorse +18 points
  - Jade Longma +48 points
  - Great Spirit Longma +60 points
  - Great Moon Bird (Yin only) +140 points
  - Celestial Lion (Yang only) +145 points
- May take Magic Items up to a total of 100 points

#entry("DRAGON DESCENDANT")
#profile(
  (name: "Human Form", m: 4, ws: 7, bs: 4, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 340),
  (name: "Dragon Form", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: ""),
)
#field("TROOP TYPE", "Infantry (Character, Human/Dragon)")
#field("BASE SIZE", "20x20 or 25x25 (Dragon Descendant), 50x100, 60x100 or 100x150 (Dragon Form)")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC", "A Dragon Descendant is a Level 3 Wizard. They must be chosen to be aligned with either Yin or Yang.")

A Yin Wizard uses one of the following Lores of Magic:

- Beasts
- Death
- Metal
- Shadow

A Yang Wizard uses one of the following Lores of Magic:

- Fire
- Heavens
- Light
- Life

In addition to their chosen lore, a Dragon Descendant may also replace any number of spells from that lore with spells from either Yin or Yang depending on their alignment.

#field("SPECIAL RULES", "Celestial Forged Armour, Mastery of the Elemental Winds, Will of the Dragons, Yin/Yang")

- *Transformation of the Dragon:* A model with this special rule may transform into their Dragon Form at the start of any of your turns, as long as it has physical space to do so. If they are in a unit, they must immediately leave it and be placed within 1" of that unit, facing the same direction. If they are engaged in combat, they must remain in base contact with the enemy unit if possible.

When transforming, they become a Monster (Draconid) with the Dragon Form profile above and gain the Breath Weapon (Strength 4, Flaming Attacks), Fly (7) and Natural Armour (3+) special rules. However, they cannot use any weapons or armour and counts as Level 1 Wizards. They may choose to transform back into their Human form at the start of any of your turns. Any Wounds suffered in Dragon Form are carried over into their Human form and vice versa, to a minimum of 1 Wounds.

#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Celestial blade +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take light armour +3 points
- May take Magic Items up to a total of 100 points

#entry("ALCHEMISTS")
#profile(
  (name: "Grand Alchemist", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Alchemist", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Alchemist is a Level 1 Wizard. A Grand Alchemist is a Level 3 Wizard. They use the Lore of Metal.")
#field("SPECIAL RULES", "Mastery of the Elemental Winds, Will of the Dragons, Yin")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take light armour +3 points
- May be mounted on a Warhorse +15 points
- An Alchemist may take Magic Items up to a total of 50 points
- A Grand Alchemist may take Magic Items up to a total of 100 points

#entry("ASTROMANCERS")
#profile(
  (name: "Supreme Astromancer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Astromancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Astromancer is a Level 1 Wizard. A Supreme Astromancer is a Level 3 Wizard. They use the Lore of Heavens.")
#field("SPECIAL RULES", "Mastery of the Elemental Winds, Will of the Dragons, Yang")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Wu Xing War Compass (Supreme Astromancer, only replacing the Apprentice Astromancer) +120 points
- An Astromancer may take Magic Items up to a total of 50 points
- A Supreme Astromancer may take Magic Items up to a total of 100 points

#entry("GATE MASTERS")
#profile(
  (name: "Gate Master", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 70),
  (name: "Gate Keeper", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 45),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Will of the Dragons, Yin/Yang")

- *Bastion's Defenders:* If a unit that is joined by a Gate Master gets charged in the flank or rear, they cannot be Disrupted, enemy units do not gain flank or rear bonuses against them, they do not lose Parry and can make supporting attacks in all directions.
- *Harmony of Stone & Steel:* A Gate Master and any unit they join gain the Disciplined special rule.

#field("OPTIONS", "")

- May choose one of the following:
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
- May choose one of the following:
  - Shortbow +4 points
  - Longbow +6 points
  - Crossbow +7 points
  - Repeater crossbow +6 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May be mounted on a Warhorse +15 points
- One Gate Keeper may carry the Battle Standard +25 points
- A Gate Keeper may take Magic Items up to a total of 50 points
- A Gate Master may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("MAGISTRATES")
#profile(
  (name: "Lord Magistrate", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 9, points: 85),
  (name: "Magistrate", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 8, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Inspiring Presence (6), Will of the Dragons, Yin/Yang")

- *Tactician:* Unless the Magistrate is fleeing, one friendly Human unit with the Yin and/or Yang special rule within 12" may be given one of the following bonuses at the start of each of your turns by passing a Leadership test. Each bonus lasts until the start of your next turn. A unit can only benefit from one of these bonuses at a time.
  - *Inspired Assault:* The unit gains the Devastating Charge special rule.
  - *Inspired Defence:* Enemy units charging this unit to the front lose all their charge bonuses.
  - *Inspired Marksmanship:* The unit ignores all negative shooting modifiers not caused by spells or magic items.

#field("OPTIONS", "")

- May take dragon fire bombs +10 points
- May take light armour +3 points
- May be mounted on one of the following
  - Warhorse +15 points
  - Sky Lantern (replacing one of the crew) +85 points
- A Magistrate may take Magic Items up to a total of 50 points
- A Lord Magistrate may take Magic Items up to a total of 100 points

#entry("BLADEMASTER")
#profile(
  (name: "Blademaster", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 120),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (5+), Killing Blow, Will of the Dragons, Yang")

- *Duellist:* A Blademaster must always attempt to issue and accept challenges. While fighting in a challenge, they may re-roll all failed rolls To Hit and To Wound.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Celestial blade +5 points
  - Spear +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take light armour +2 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- A Blademaster may never be the Army General.

= CHARACTER MOUNTS

#entry("WARHORSE", first: true)
#profile(
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take barding +5 points

#entry("JADE LONGMA")
#profile(
  (name: "Jade Longma", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: "-"),
)
#field("TROOP TYPE", "War Beast (Chimeric)")
#field("BASE SIZE", "25x50, 30x60, 40x40, 40x60")
#field("SPECIAL RULES", "Fear, Fly (9), Natural Armour (6+)")

- *Impale:* Mounts with this special rule gain the Mighty Blow (1) special rule when they charge.

#entry("GREAT SPIRIT LONGMA")
#profile(
  (name: "Great Spirit Longma", m: 8, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Chimeric)")
#field("BASE SIZE", "50x75 or 60x100")
#field("SPECIAL RULES", "Fear, Fly (9), Impale, Natural Armour (5+)")

- *Impale:* Mounts with this special rule gain the Mighty Blow (1) special rule when they charge.

= CORE UNITS

#entry("PEASANT MILITIA", first: true)
#profile(
  (name: "Peasant Militiaman", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 2),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable, Will of the Dragons, Yang")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Pikes +2 points/model
  - Polearms +2 points/model
- May take light armour +0.5 point/model
- May take shields (unless armed with pikes) +1 point/model
- May upgrade one Peasant Militiaman to a Leader +5 points
- May upgrade one Peasant Militiaman to a Musician +5 points
- May upgrade one Peasant Militiaman to a Standard Bearer +10 points

#entry("PEASANT BOWMEN")
#profile(
  (name: "Peasant Bowmen", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 4),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Expendable, Will of the Dragons, Yin")
#field("OPTIONS", "")

- May replace bows with one of the following:
  - Repeater crossbows +1 point/model
  - Longbows +2 points/model
  - Crossbows +3 points/model
- May take light armour +0.5 point/model
- May upgrade one Peasant Bowmen to a Leader +5 points
- May upgrade one Peasant Bowmen to a Musician +5 points
- May upgrade one Peasant Bowmen to a Standard Bearer +10 points

#entry("PEASANT HORSEMEN")
#profile(
  (name: "Peasant Horseman", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 9),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable, Fast Cavalry, Will of the Dragons, Yin/Yang")
#field("OPTIONS", "")

- May choose one of the following:
  - Light lances +1 point/model
  - Shortbows +1 point/model
  - Crossbows +2 points/model
  - Javelins +2 points/model
- May take shields (unless armed with shortbows or crossbows) +0.5 point/model
- May take light armour +1 point/model
- May upgrade one Peasant Horseman to a Leader +5 points
- May upgrade one Peasant Horseman to a Musician +5 points
- May upgrade one Peasant Horseman to a Standard Bearer +10 points

#entry("JADE WARRIORS")

#profile(
  (name: "Jade Warrior", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3.5),
)

#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Will of the Dragons, Yang")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Pikes +2 points/model
  - Polearms +2 points/model
- May take medium armour +1 point/model
- May take shields (unless they have pikes) +1 point/model
- May upgrade one Jade Warrior to a Leader +5 points
- May upgrade one Jade Warrior to a Musician +5 points
- May upgrade one Jade Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("JADE BOWMEN")
#profile(
  (name: "Jade Bowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow, light armour")
#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("OPTIONS", "")

- May replace shortbows with one of the following:
  - Repeater crossbows +1 point/model
  - Longbows +2 points/model
  - Crossbows +3 points/model
- May take medium armour +1 point/model
- May upgrade one Jade Bowman to a Leader +5 points
- May upgrade one Jade Bowman to a Musician +5 points
- May upgrade one Jade Bowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("JADE HORSEMEN")
#profile(
  (name: "Jade Horseman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Fast Cavalry, Will of the Dragons, Yin/Yang")
#field("OPTIONS", "")

- May choose one of the following:
  - Shortbows +1 point/model
  - Crossbows +2 points/model
  - Light lances & shields +2 points/model
  - Flails +2 points/model
  - Polearms +2 points/model
  - Three-eyed guns +5 points/model
- May take medium armour +1 point/model
- May take barding +1 point/model
- May upgrade one Jade Horseman to a Leader +5 points
- May upgrade one Jade Horseman to a Musician +5 points
- May upgrade one Jade Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("IRON HAIL GUNNERS")
#profile(
  (name: "Iron Hail Gunner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 9),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, blunderbuss, light armour")
#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("OPTIONS", "")

- May replace blunderbusses with one of the following:
  - Handguns free
  - Three-eyed guns +3 points/model
- May take medium armour +1 point/model
- May upgrade one Iron Hail Gunner to a Leader +5 points
- May upgrade one Iron Hail Gunner to a Musician +5 points
- May upgrade one Iron Hail Gunner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("HILL TRIBESMEN")

#profile(
  (name: "Hill Tribesman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 2.5),
)

#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable, Independent")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Javelins +2 points/model
  - Shortbows +2 points/model
- May take shields (unless they have two hand weapon or shortbows) +1 point/model
- May be upgraded to Ambushers +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Hill Tribesman to a Leader +5 points
- May upgrade one Hill Tribesman to a Musician +5 points
- May upgrade one Hill Tribesman to a Standard Bearer +10 points

#entry("MONKEY WARRIORS")
#profile(
  (name: "Monkey Warrior", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 6, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Beastman)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (6+), Expendable, Forest Strider, Independent, Obstacle Strider, Skirmishers")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Blowpipes +3 points/model
- May upgrade one Monkey Warrior to a Leader +5 points

= SPECIAL UNITS

#entry("CELESTIAL DRAGON GUARD", first: true)
#profile(
  (name: "Celestial Dragon Guard", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, medium armour")

- *Dragon Crossbow:* Dragon crossbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "3", "Multiple Shots (2), Rapid Fire"))
#field("SPECIAL RULES", "Stubborn, Will of the Dragons, Yin/Yang")
#field("OPTIONS", "")

- May replace polearms with one of the following:
  - Great weapons +1 point/model
  - Dragon crossbows +4 points/model
- May take shields (if armed with polearms) +1 point/model
- May take heavy armour +1.5 points/model
- May upgrade one Celestial Dragon Guard to a Leader +5 points
- May upgrade one Celestial Dragon Guard to a Musician +5 points
- May upgrade one Celestial Dragon Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("CELESTIAL DRAGON LANCERS")
#profile(
  (name: "Celestial Dragon Lancer", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 18),
  (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Warhorse (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance, medium armour, shield, barding")

- *Fire Lance:* A Fire Lance may be used in the first round of combat as an additional Strength 4 Attack with the Armour Piercing (1) and Flaming Attacks special rules.

#field("SPECIAL RULES", "Stubborn, Will of the Dragons, Yang")
#field("OPTIONS", "")

- May replace light lances & shields with one of the following:
  - Polearms free
  - Flails free
- May take fire lances (if armed with light lances) +2 points/model
- May take heavy armour +2 points/model
- May upgrade one Celestial Dragon Lancer to a Leader +5 points
- May upgrade one Celestial Dragon Lancer to a Musician +5 points
- May upgrade one Celestial Dragon Lancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("CELESTIAL DRAGON MONKS")
#profile(
  (name: "Celestial Dragon Monk", m: 5, ws: 5, bs: 5, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 15),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (6+), Immunity (Psychology), Skirmishers, Strider, Yang")

- *Martial Arts Fighting Styles:* At the start of each round of combat in which a Dragon Monk fights, they must choose one of the following Fighting Styles to perform. They may not use the same Fighting Style in two consecutive turns of the same combat engagement.
  - *Black Tiger:* The Dragon Monks gain +1 Attack.
  - *White Crane:* The Dragon Monks gain the Always Strikes First special rule.
  - *Fanged Snake:* The Dragon Monks gain the Killing Blow special rule.
  - *Great Dragon:* The Dragon Monks gain +1 Strength.
  - *Praying Mantis:* The Dragon Monks gain the Dodge (5+) special rule.

#field("OPTIONS", "")

- May take one of the following:
  - Additional hand weapons +1.5 points/model
  - Polearms +2 points/model
- May upgrade one Celestial Dragon Monk to a Leader +5 points

#entry("CRANE GUNNERS")
#profile(
  (name: "Crane Gunner", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 7, points: 15),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x40 or 25x50")
#field("EQUIPMENT", "Hand weapon, crane gun, light armour, tower shield")

- *Tower Shield:* Tower Shields add +3 to the model's armour save against missile attacks to its front.

#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("OPTIONS", "")

- May upgrade to medium armour +2 points/model

#field("NOTES", "")

- Crane Gunners have a Unit Strength of 2.

#entry("GRENADIERS")
#profile(
  (name: "Grenadier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 9),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, grenades, light armour")

- *Sky Rockets:* Sky rockets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "3", "Flaming Attacks, Multiple Shots (D6), Ponderous"))
#field("SPECIAL RULES", "Skirmishers, Will of the Dragons, Yin")
#field("OPTIONS", "")

- May replace gunpowder bombs with sky rockets +2 points/model
- May take medium armour +1 point/model
- May upgrade one Grenadier to a Leader +5 points

#entry("FLAMETHROWER")
#profile(
  (name: "Flamethrower", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 2, ld: 7, points: 20),
)
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x40 or 25x50")
#field("EQUIPMENT", "Hand weapon, flamethrower, medium armour")

- *Flamethrower:* Flamethrowers are fire throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3", "Cumbersome, Flaming Attacks"))
#field("SPECIAL RULES", "Weapon Team, Will of the Dragons, Yin")
#field("NOTES", "")

- You may take 1\-2 Flamethrowers as a single Special choice.

#entry("WAR CHARIOT")
#profile(
  (name: "War Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
  (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Crew (Human)")
#field("DRAWN BY", "2 Warhorses (Animal)")
#field("BASE SIZE", "50x100 or 100x100")
#field("EQUIPMENT", "Light lance, bow, light armour")
#field("SPECIAL RULES", "Will of the Dragons, Yin & Yang")
#field("OPTIONS", "")

- May replace light lances with polearms +5 points/model
- May replace bows with crossbows +5 points/model
- May take medium armour +8 points/model
- May take scythes +5 points/model
- May take up to two additional Crew +6 points/Crew
- May take two additional Warhorses +6 points
- May upgrade one War Chariot to a standard bearer +10 points

#entry("SKY LANTERN")
#profile(
  (name: "Sky Lantern", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 90),
  (name: "Crew", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 5+)")
#field("CREW", "5 Crew (Human)")
#field("BASE SIZE", "100x100")
#field("EQUIPMENT", "Hand weapon, crane gun, light armour")
#field("SPECIAL RULES", "Fly (6), Will of the Dragons, Yin")

- *Heavenly Beacon:* Friendly units within 12" of this model gain +1 Leadership when making Rally tests.

#field("UPGRADES", "")

- *Sky Bombs:* During the Remaining Moves sub-phase, models with this upgrade may drop a bomb unless they are fleeing or have declared a charge that turn. To make a bombing run, select one unengaged enemy unit that the Sky-junk moved over in that turn and place the large round template anywhere over the target unit; it scatters D3". If a natural 1 is rolled, use the Bomb Misfire chart below. Sky bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "4(6)", "Multiple Wounds (D3)"))
#chartlabel("BOMB MISFIRE TABLE")
#chart((("D6", "Result"), ("1", "Premature Detonation: The Sky Lantern suffers a Strength 6 hit with the and Multiple Wounds (D3)
special rule."), ("2-3", "Jammed Release. Centre the 3\" template over the Sky Lantern before scattering it and resolving
damage as normal."), ("4-6", "Dud. Only the model under the template's central hole is hit, suffering a single Strength 4 hit.")))
#field("OPTIONS", "")

- May replace crane guns with blunderbusses & gunpowder bombs free
- May take sky bombs +15 points

#field("NOTES", "")

- A Sky Lantern has a Line of Sight value of 10.

#entry("MERCENARY OGRES")
#profile(
  (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapons, light armour")
#field("SPECIAL RULES", "Independent, Natural Armour (6+)")

- *Ogre Charge:* Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.

#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +3 points/model
  - Addditional hand weapons +3 points/model
  - Great weapons +9 points/model
- May take medium armour +6 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#compact-entry("TEMPLE DOGS")[
#profile(
  (name: "Temple Dog", m: 7, ws: 4, bs: 0, s: 4, t: 5, w: 2, i: 3, a: 2, ld: 7, points: 25),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "War Beast (Animated Construct)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Animated Construct, Fear, Impact Hits (1), Unstable")
]

#entry("TERRACOTTA WARRIORS")
#profile(
  (name: "Terracotta Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: 3),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Animated Construct)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Animated Construct, Unstable")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Shortbows +1 point/model
  - Polearms +2 points/model
  - Crossbows +3 points/model
- May take shields (unless armed with bows or crossbows) +1 point/model
- May upgrade one Terracotta Warrior to a Leader +5 points
- May upgrade one Terracotta Warrior to a Musician +5 points
- May upgrade one Terracotta Warrior to a Standard Bearer +10 points

#entry("ONYX CROWMEN")
#profile(
  (name: "Onyx Crowman", m: 4, ws: 4, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 2, ld: 7, points: 16),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Elemental)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable, Fear, Fly (10), Magical Attacks, Scouts, Yin, Unstable")

- *Eyes of the Empress:* A unit of Onyx Crowmen with Line of Sight of any enemy unit within 12" may choose to force the opponent to reveal all magic items and Hidden units they might have.

#field("OPTIONS", "")

- May upgrade one Onyx Crowman to a Leader +5 points

#entry("STORMHURLER CROSSBOW")
#profile(
  (name: "Stormhurler Crossbow", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 40),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Stormhurler Crossbow), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, repeater bolt thrower")
#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +1 point/Crew
  - Medium armour +2 points/Crew

#entry("DRAGON CANNON")
#profile(
  (name: "Dragon Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 (Dragon Cannon), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, cannon")
#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +1 point/Crew
  - Medium armour +2 points/Crew

#entry("FIRE RAIN ROCKET")
#profile(
  (name: "Fire Rain Rocket", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  (name: "Ogre Loader", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 or 60x100 (Fire Rain Rocket), 20x20 or 25x25 (Crew), 40x40 (Ogre Loader)")
#field("EQUIPMENT", "Hand weapon, rocket launcher, bastion rocket")

- *Bastion Rocket:* Instead of firing normally, a Fire Rain Rocket may fire a bastion rocket. Bastion rockets are rocket launchers that do not fire indirectly by default, and uses the small template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Flaming Attacks, Multiple Wounds (D3)"))
#field("SPECIAL RULES", "Will of the Dragons, Yin")
#field("UPGRADES", "")

- *Ogre Loader:* An Ogre Loader has the Fear and Natural Armour (6+) special rule. In addition, it increases the Unit Strength of the war machine by 3 rather than 1 and gives it Line of Sight (2).

#field("OPTIONS", "")

- May have an Ogre Loader +20 points
- May choose one of the following:
  - Light armour +1 point/Crew
  - Medium armour +2 points/Crew

= RARE UNITS

#entry("LONGMA RIDERS", first: true)
#profile(
  (name: "Longma Rider", m: 4, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 48),
  (name: "Longma", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Cavalry (Human)")
#field("MOUNT", "Longma (Chimeric)")
#field("BASE SIZE", "25x50, 30x60, 40x40, 40x60")
#field("EQUIPMENT", "Light lance, medium armour, shield")
#field("SPECIAL RULES", "Celestial Forged Armour, Fear, Fly (9), Natural Armour (6+), Stubborn, Will of the Dragons, Yang")

- *Impale:* Mounts with this special rule gain the Mighty Blow (1) special rule when they charge.

#field("OPTIONS", "")

- May replace light lances & shields with polearms free
- May take heavy armour +4 points/model
- May take barding +2 points/model
- May upgrade one Longma Rider to a Leader +5 points
- May upgrade one Longma Rider to a Musician +5 points
- May upgrade one Longma Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("GRAND CANNON")
#profile(
  (name: "Grand Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 125),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  (name: "Ogre Loader", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Human)")
#field("BASE SIZE", "50x75 or 60x100 (Grand Cannon), 20x20 or 25x25 (Crew), 40x40 (Ogre Loader)")
#field("EQUIPMENT", "Hand weapon, great cannon")
#field("SPECIAL RULES", "Will of the Dragons, Yin")

- *Flaming Ammunition:* All shots from a Grand Cannon have the Flaming Attacks special rule.
- *Thunderous Impact:* Place the small round template with the centre where the cannon ball lands before the bounce. All models touched by the template that are not struck by the cannon ball suffer a Strength 3 Hit.

#field("UPGRADES", "")

- *Ogre Loader:* An Ogre Loader has the Fear and Natural Armour (6+) special rule. In addition, it increases the Unit Strength of the war machine by 3 rather than 1 and gives it Line of Sight (2).

#field("OPTIONS", "")

- May have an Ogre Loader +20 points
- May choose one of the following:
  - Light armour +1 point/Crew
  - Medium armour +2 points/Crew

#entry("ZHANGU WAR DRUM")
#profile(
  (name: "Zhangu War Drum", m: 7, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 120),
  (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+, Human)")
#field("CREW", "2 Crew (Human)")
#field("DRAWN BY", "2 Warhorses (Equine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Will of the Dragons, Yang")

- *Icon of the Great Cities:* All friendly units within 12" of one or more Zhangu War Drums gain +1 to their Leadership.
- *War Drum:* At the start of each of your shooting phases, the Zhangu War Drum may choose one of the following:
  - *Disdain of the Dragon Emperor:* All friendly units within 12" of one or more Zhangu War Drums gain the Fight in Extra Ranks (1) and Immunity (Psychology) special rules until the start of your next Shooting phase.
  - *Bastion of the Great Cities:* All friendly units within 12" of one or more Zhangu War Drums gain +1 to their armour saves until the start of your next Shooting phase.

#field("OPTIONS", "")

- May take medium armour +10 points

#entry("WU XING WAR COMPASS")
#profile(
  (name: "Wu Xing War Compass", m: 7, ws: "-", bs: "-", s: 4, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 125),
  (name: "Apprentice Astromancer", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 6+)")
#field("CREW", "1 Apprentice Astromancer (Human)")
#field("DRAWN BY", "4 Warhorses (Equine)")
#field("BASE SIZE", "100x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Will of the Dragons, Yang")

- *Nexus of Elemental Winds:* Arcane Item. A Wu Xing War Compass can cast the following Bound Spells (Level 4, cast on 15+):
  - *Celestial Comet: *_Celestial Comet_ is a *direct damage area* spell with a range of 24" that uses the small round template. Any models under the template suffer a Strength 5 Hit. The model under the hole suffers Multiple Wounds (D6).
  - *Celestial Lightning: *_Celestial Lightning_ is a *direct damage* spell with a range of 24". It causes a 2D6 Strength 5 hits that have the Lightning Attacks special rule.

#entry("SKY-JUNK")
#profile(
  (name: "Sky-junk", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 7, i: "-", a: "-", ld: "-", points: 150),
  (name: "Crew", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 4+, Human)")
#field("CREW", "5 Crew (Human)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Hand weapon, crane guns, rocket salvo, light armour")

- *Rocket Salvo:* Rocket salvo uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "5", "Flaming Attacks, Multiple Shots (5), Rapid Fire"))
#field("SPECIAL RULES", "Fly (6), Heavenly Beacon (see Sky Lantern), Sky Bombs (see Sky Lantern), Will of the Dragons, Yin")
#field("OPTIONS", "")

- May replace crane guns with blunderbusses & gunpowder bombs free

#field("NOTES", "")

- A Sky-junk has a Line of Sight value of 10.

#compact-entry("CELESTIAL LION")[
#profile(
  (name: "Celestial Lion", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 7, points: 145),
)
#field("TROOP TYPE", "Monstrous Creature (Feline-avian)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Fly (8), Mighty Blow (1), Natural Armour (6+), Yang")
]

#entry("GREAT MOON BIRD")
#profile(
  (name: "Great Moon Bird", m: 2, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 7, points: 140),
)
#field("TROOP TYPE", "Monstrous Creature (Avian)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Fly (9), Yin")

- *Moon Flare:* If a Great Moon Bird moves over an enemy unit in the Remaining Moves sub-phase, that unit suffer D6 Strength 3 hits. In addition, it suffers \-2 to its Movement until the start of your next turn.

#entry("TERRACOTTA SENTINEL")
#profile(
  (name: "Terracotta Sentinel", m: 6, ws: 4, bs: 0, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 10, points: 235),
)
#field("TROOP TYPE", "Monster (Animated Construct)")
#field("BASE SIZE", "50x75, 60x100 or 100x150")
#field("EQUIPMENT", "Polearm, heavy armour")
#field("SPECIAL RULES", "Animated Construct, Regeneration (6+), Unstable, Yang")
#field("UPGRADES", "")

- *Granite Sentinel:* The Sentinel gains +1 armour and the Immunity (Multiple Wounds) special rule.
- *Jade Sentinel:* The Sentinel gains the _Earthblood_ spell from the Lore of Life as a Bound Spell.
- *Obsidian Sentinel:* The Sentinel gains the Magic Resistance (2) special rule. In addition, enemy Wizards within 12" suffer a \-1 casting penalty.
- *Warpstone Sentinel:* The Sentinel gains the Magical Attacks special rule, and models in base contact with one or more Warpstone Sentinels suffer \-1 to their Toughness (to a minimum of 1).

#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Jade Sentinel +10 points
  - Obsidian Sentinel +20 points
  - Warpstone Sentinel +20 points
  - Granite Sentinel +25 points

#entry("GUARDIAN LION")
#profile(
  (name: "Guardian Lion", m: 7, ws: 4, bs: 0, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 10, points: 240),
)
#field("TROOP TYPE", "Monster (Animated Construct)")
#field("BASE SIZE", "50x100")
#field("SPECIAL RULES", "Animated Construct, Impact Hits (D6), Unstable")

- *Jade Lion:* Jade Lions have the Yang special rule and generate one Power Dice to your power pool each Magic Phase. In addition, they know the _Dragon's Breath_ spell from the Lore of Yang as a Bound Spell.
- *Jet Lion:* Jet Lions have the Yin special rule and generate one Dispel Dice to your power pool each Magic Phase. In addition, they know the _Missile Mirror_ spell from the Lore of Yin as a Bound Spell.

#field("NOTES", "")

- Each Guardian Lion must either be a Jade Lion or Jet Lion.

= SPECIAL CHARACTERS

#entry("MIAO YING", first: true)
#namecost("The Storm Dragon, Master of the Storm Winds, Supreme Matriarch of Nan-Gau", "")
#profile(
  (name: "Human Form", m: 4, ws: 7, bs: 4, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 525),
  (name: "Dragon Form", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "40x40 or 50x50 (Miao Ying), 50x100, 60x100 or 100x150 (Dragon Form)")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC", "Miao Ying is a Level 4 Wizard who uses spells from the Lore of Life. In addition, she may also replace any")

number of spells from those lores with spells from the Lore of Yin. In addition, she knows the following spells:

- *Wrath of the Storm:* Level 2, cast on 7+. _Wrath of the Storm_ is an *augment* spell with a range of 24". The target unit gains the Immunity (Psychology) and Magical Attacks special rules until the start of your next Magic phase.
- *The Storm Dragon's Fury:* Level 3, cast on 10+. _The Storm Dragon's Fury_ is a *magic missile* with a range of 24" that causes 2D3 Strength 5 Hits with the Lightning Attacks special rule.

#field("MAGIC ITEMS", "")

- *Storm Wind Coronal:* Magic Armour. The Storm Wind Coronal gives the wearer a 6+ armour save, +1 Power dice each Magic phase and a Magical Ward (5+).
- *Vambraces of Yin:* Talisman. All enemy attacks against the bearer suffer \-1 to their Strength.

#field("SPECIAL RULES", "Celestial Forged Armour, Hatred (Daemons of Chaos, Warriors of Chaos), Mastery of the Elemental Winds, Stubborn, Transformation of the Dragon (see Dragon Descendant), Will of the Dragons, Yin")

- *Disdain of the Dragons:* All enemy units in base contact with Miao Ying suffer \-1 to their Weapon Skill.
- *Eye of the Storm:* While in Dragon Form, Miao Ying gains the Lightning Attacks special rule.
- *Supreme Matriarch of Nan-Gau:* Miao Ying must always be the Army General.

#entry("ZHAO MING")
#namecost("The Iron Dragon, Lord of Shang-Yang", "")
#profile(
  (name: "Human Form", m: 4, ws: 7, bs: 4, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 480),
  (name: "Dragon Form", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25 (Zhao Ming), 50x100, 60x100 or 100x150 (Dragon Form)")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC", "Zhao Ming is a Level 4 Wizard who uses spells from Lore of Metal. In addition, he may also replace any")

number of spells from those lores with spells from the Lore of Yang. In addition, he knows the following spell:

- *Master of Alchemy:* Level 1, cast on 6+. _Master of Alchemy_ is an *augment* spell with a range of 24". The target unit gains the Armour Piercing (1) and Magical Attacks special rules until the start of your next Magic phase.

#field("MAGIC ITEMS", "")

- *Horns of Shang-Yang:* Magic Armour. The Horns of Shang-Yang gives the wearer a 6+ armour save and the Magic Resistance (2) special rule.
- *The Burning Vambraces:* Talisman. The Burning Vambraces gives the wearer +1 Toughness.

#field("SPECIAL RULES", "Celestial Forged Armour, Mastery of the Elemental Winds, Transformation of the Dragon")

(see Dragon Descendant)*, Will of the Dragons, Yang*

- *Hardened Scale:* While in Dragon Form, Zhao Ming may re-roll failed armour saves.
- *Lord of Shang-Yang:* Zhao Ming must always be the Army General.
- *Warding Iron:* Zhao Ming and any unit joined by him gains a Magical Ward (6+).

#entry("YUAN BO")
#namecost("The Jade Dragon, Master of the Meteor Winds, Lord of the Jade Court", "")
#profile(
  (name: "Human Form", m: 4, ws: 7, bs: 4, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 455),
  (name: "Dragon Form", m: 6, ws: 7, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25 (Yuan Bo), 50x100, 60x100 or 100x150 (Dragon Form)")
#field("MAGIC", "Yuan Bo is a Level 4 Wizard who uses spells from the Lore of Heavens and the Lore of Light. In addition, he")

may also replace any number of spells from those lores with spells from the Lore of Yin and/or Yang.

#field("MAGIC ITEMS", "")

- *The Dragon's Fang:* Magic Weapon. The Dragon's Fang gives the wielder +1 Strength and the Armour Piercing (2) special rule.
- *Armour of the Dragon's Gaze:* Magic Armour. Light armour. The Armour of the Dragon's Gaze gives the wearer a Magical Ward (6+). In addition, all friendly units within 6" gain the Immunity (Psychology) special rule.

#field("SPECIAL RULES", "Celestial Forged Armour, Mastery of the Elemental Winds, Transformation of the Dragon")

(see Dragon Descendant)*, Will of the Dragons, Yin & Yang*

- *The Emperor's Executioner:* While fighting in a challenge, Yuan Bo gains the Heroic Killing Blow special rule.
- *Lord of the Jade Court:* Yuan Bo must always be the Army General.

#entry("LUI YUN")
#namecost("Lord of War", "")
#profile(
  (name: "Liu Yun", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 190),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *Fierce Dragon:* Magic Weapon. Light lance/spear. Fierce Dragon adds +1 Strength to the wielder's Attacks. Instead of attacking normally, they may make a special attack; if this attack hits, resolve it in the same manner as a hit from a Bolt Thrower.
- *Dragon Scale Armour:* Magic Armour. Heavy armour. The Dragon Scale Armour gives wearer +1 Toughness, and any successful To Wound rolls against them must be re-rolled.

#field("SPECIAL RULES", "Celestial Forged Armour, Will of the Dragons, Yang")

- *Grand General:* All friendly units with the Yin or Yang special rules within 12" of Liu Yun have the Disciplined special rule.

#field("OPTIONS", "")

- May be mounted on a Warhorse +15 points

#entry("HUA GONGZHU")
#namecost("General of the Army of the Lady", "")
#profile(
  (name: "Hua Gongzhu", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 175),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Blade of the Two Moons:* Magic Weapon. Celestial blade. This weapon gives Hua Gongzhu the Parry (6+) special rule. For each successful Parry she makes, she may make a single attack back against the model that struck the blow.
- *Amulet of the Emperor's Favour:* Enchanted Item. This Amulet causes the bearer and any unit they join to count their Unit Strength as double its actual value for all purposes.

#field("SPECIAL RULES", "Celestial Forged Armour, Will of the Dragons, Yang")

- *Beloved General:* All friendly models with the Yin or Yang special rule within 12" of Hua Gongzhu may re- roll failed Panic tests and Rally tests.

#field("OPTIONS", "")

- May be mounted on a Warhorse +15 points

#entry("GUAN FEI")
#namecost("Captain of the Celestial Dragon Guard", "")
#profile(
  (name: "Guan Fei", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 130),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Green Dragon Glaive:* Magic Weapon. Polearm. Each successful Hit in close combat is multiplied into D3 Hits, and all attacks have the Armour Piercing (1) special rule. In addition, he gains the Parry (5+) special rule.

#field("SPECIAL RULES", "Celestial Forged Armour, Stubborn, Will of the Dragons, Yang")

- *Captain of the Celestial Dragon Guard:* Guan Fei must be accompanied by a unit of Celestial Dragon Guard or Celestial Dragon Lancers, and he may not leave this unit. He and his unit have the Cold-blooded special rule when taking Break tests.

#field("OPTIONS", "")

- May be mounted on a Warhorse +15 points

#entry("TIAN SHI")
#namecost("Master of the Heavens, Sage of the Stars", "")
#profile(
  (name: "Tian Shi", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 335),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Tian Shi is a Level 4 Wizard who uses spells from the Lore of Heavens.")
#field("MAGIC ITEMS", "")

- *Staff of Overwhelming Thunder:* Arcane Item. The bearer of the Staff of Overwhelming Thunder may re-roll the number of Hits caused by _Urannon's Thunderbolt_ and _Chain Lightning_.
- *Celestial Robe:* Arcane Item. The Celestial Robe generates D3 Power Dice in the Magic Phase. Once per battle, the bearer may elect to cast a single spell automatically without any Power dice at its lowest power level. After this ability is used however, the Robe has no further effect and will not generate any additional Power dice for the remainder of the battle.

#field("SPECIAL RULES", "Loremaster (Lore of Heavens), Mastery of the Elemental Winds, Will of the Dragons, Yang")

- *Master of the Heavens:* Tian Shi may re-roll one Power dice on each casting attempt.

#field("OPTIONS", "")

- May take light armour +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Wu Xing War Compass (replacing the Apprentice Astromancer) +120 points

#entry("ZHUGE YI")
#namecost("Master of Tactics", "")
#profile(
  (name: "Zhuge Yi", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 9, points: 210),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *Lotus Needle:* Magic Weapon. This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "Multiple Shots (2), Poisoned Attacks, Rapid Fire"))

- *Phoenix Feather Fan:* Talisman. At the beginning of the Close Combat phase, select one enemy model in base contact with Zhuge Li. This model loses 1 Attack and is subject to the Always Strikes Last special rule for the duration of the turn.
- *Guqin of Everlasting Repose:* Enchanted Item. The Guqin may be played in the Shooting phase. When it is played, one unengaged enemy unit within 12" must pass a Psychology test, or they will fall into a deep sleep and may do nothing for their entire next turn.

#field("SPECIAL RULES", "Inspiring Presence (6), Tactician (see Lord Magistrate), Will of the Dragons, Yin")

- *Grand Strategist:* Zhuge Yi's Tactician special rule has a range of 18". In addition, he may use all three bonuses in each of your turns.

#field("OPTIONS", "")

- May be mounted on one of the following
  - Warhorse +15 points
  - Sky Lantern (replacing one of the crew) +85 points

#entry("CHENG LONG")
#namecost("Grand Master of the Celestial Dragon Monks", "")
#profile(
  (name: "Cheng Long", m: 5, ws: 7, bs: 7, s: 4, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 190),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (5+), Immunity (Psychology), Strider, Yang")

- *Supreme Martial Arts Fighting Styles:* At the start of each round of combat in which Cheng Long fights, he must choose one of the following Fighting Styles to perform. He may not use the same Fighting Style in two consecutive turns of the same combat engagement.
  - *Black Tiger:* Cheng Long gains +D3 Attacks.
  - *White Crane:* Cheng Long gains the Always Strikes First special rule and +1 To Hit in close combat.
  - *Fanged Snake:* Cheng Long gains the Heroic Killing Blow special rule.
  - *Great Dragon:* Cheng Long gains +2 Strength.
  - *Praying Mantis:* Cheng Long gains the Dodge (3+) special rule.
- *Fiery Breath:* Cheng Long has a Strength 3 Breath Weapon with the Flaming Attacks special rule.
- *Grandmaster:* A unit of Celestial Dragon Monks joined by Cheng Long becomes Stubborn as long as he remains with it. However, he must always accept challenges when possible, and may not be the Army General.

#entry("SAYTANG THE WATCHER")
#namecost("Sentinel of the Heavens", "")
#profile(
  (name: "Saytang the Watcher", m: 6, ws: 4, bs: 4, s: 6, t: 6, w: 6, i: 1, a: 5, ld: 10, points: 295),
)
#field("TROOP TYPE", "Monster (Special Character, Animated Construct)")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC ITEMS", "")

- *Wind Bow:* Magic Weapon. Bolt thrower. This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("32/48\"", "6", "Ignores Armour Saves, Multiple Wounds (D3)"))
#field("SPECIAL RULES", "Animated Construct, Loner, Fly (7), Regeneration (6+), Unstable, Yin")

- *Master of the Stone Legions:* Saytang and any friendly Animated Constructs within 12" gain a Magical Ward (6+) and suffer 1 Wound less from Unstable than normal.

#entry("THE MONKEY KING")
#namecost("The Great Trickster", "")
#profile(
  (name: "The Monkey King", m: 5, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 155),
)
#field("TROOP TYPE", "Infantry (Special Character, Beastman)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Ideal Golden-bound Cudgel:* Magic Weapon. The Ideal Golden-Bound Cudgel gives the Monkey King +2 Strength. In addition, models attacking him in close combat suffer \-1 To Hit.

#field("SPECIAL RULES", "Dodge (6+), Independent, Martial Arts Fighting Styles (see Celestial Dragon Monks), Strider")

- *Trickster:* The Monkey King may never be the Army General, and he may only join units of Monkey Warriors. In addition, enemies within charge distance of him counts as being subject to the Berserk Rage part of the Frenzy special rule, unless they have the Immunity (Psychology) special rule (not including Frenzied models).

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Stefan Wolf", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
