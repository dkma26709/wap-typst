// Skaven 1.9 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "skaven",
  army: "Skaven",
  version: "1.9",
  layout: "army",
  cover: "covers/skaven.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Skaven 1.9")

#cover(
  title: "Skaven",
  subtitle: "Warhammer Armies Project · 1.9",
  art: "/assets/covers/skaven.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Skaven*, version 1.9 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in a Skaven army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Skaven units, and these are detailed here.])[
#upgrade("CLAN ENMITY", none)[
Units belonging to each of the Greater Clans (Pestilens, Eshin, Moulder, Skryre) may only be joined by characters from the same Clan.
]

#upgrade("LIFE IS CHEAP", none)[
All Skaven models can voluntarily target ranged attacks at enemy units engaged in close combat with other friendly units even if they are further than 4" away. However, if they do so, they will hit their own troops on To Hit rolls of both 1's and 2's rather than just 1's. In addition, the normal limitation of templates not being allowed to be placed over friendly troops does not apply.
]

#upgrade("SCURRY AWAY", none)[
All models in the Skaven army roll an additional D6 and discard the lowest result when determining their flee distance.
]

#upgrade("STRENGTH IN NUMBERS", none)[
Units with this special rule add +1 to its Leadership if it has Unit Strength 10 or more, +2 Leadership if it has Unit Strength 15 or more, and +3 Leadership if it has Unit Strength 20 or more. To calculate the Leadership of a unit with the Strength in Numbers rule, first determine the unit's Leadership as normal and then add the Leadership bonus of the unit to this value, up to a maximum Leadership of 10.

Note that a Skaven General confers his basic Leadership and then units modify it with their own Unit Strength. Any bonus from the Unit Strength of the General's unit is not passed on to units within his Inspiring Presence range.
]

#upgrade("UNSTABLE AMMUNITION", none)[
Anytime a weapon that uses Unstable Ammunition scores a result of 1 on its roll To Hit, roll another dice. On a following roll of 1\-2 the gun misfires and the shooter suffers the hit themselves.
]

#upgrade("VERMINOUS VALOUR", none)[
If a Skaven player refuses a challenge, a Skaven character is placed in the back rank of the unit and may not attack, but the unit may still use the model’s Leadership value, Inspiring Presence or Hold Your Ground special rules.
]
]
#lore("THE LORE OF RUIN")[
#spell("MUSK OF FEAR", "Lore Attribute")[Whenever a spell from the Lore of Ruin is successfully cast, all enemy units within 6" of the caster suffer \-1 to their Leadership (to a minimum of 1) until the start of the caster's next magic phase.]

#spell("WARP LIGHTNING", "Signature Spell", cast: "5+")[_Warp Lightning_ is a *magic missile* with a range of 24" that causes D3 Strength 5 hits with the Lightning Attacks special rule. If the number of hits rolled is a natural 1 (using a D6), then the caster suffers a Strength 5 hit instead of the target.]

#spell("DEATH FRENZY", 1, cast: "6+")[_Death Frenzy_ is an *augment* spell with a range of 18". The target unit gains the Frenzy special rule for the remainder of the game, though it can be lost as normal. This spell can be cast multiple times on the same target. If the unit already has the Frenzy special rule, it also suffers D3 Wounds with the Ignores Armour save special rule at the end of each Magic phase.]

#spell("WARP POWER", 1, cast: "6+")[_Warp Power_ is an *augment* spell with a range of 18". The target unit may re-roll failed rolls To Hit and To Wound until the start of the caster's next Magic phase. However, the target unit suffer D3 Wounds with the Ignores Armour save special rule when the spell ends.]

#spell("WARP SHIELD", 1, cast: "6+")[_Warp Shield_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target unit ignores a number of Hits from missile attacks equal to the casting result (to a maximum of 10). However, if the unit suffer more Hits than that, the spell ends after resolving the Hits and the unit suffers D6 Strength 3 Hits.]

#spell("HOWLING WARPGALE", 2, cast: "7+")[_Howling Warpgale_ is an *augment* spell that is cast on the wizard itself. Until the start of the caster's next Magic phase, no units within 18" of the caster may use the Fly special rule, and all non-magical missile attacks suffer \-1 To Hit.]

#spell("SPLINTER", 2, cast: "7+")[_Splinter_ is a *hex* spell that targets all enemy units within 6". All target units must pass a Leadership test or suffer one Wound that Ignores Armour Saves for every point they failed the Leadership test by.]

#spell("PIT OF THE UNDERWORLD", 2, cast: "9+")[_Pit of the Underworld_ is a *summoning* spell with a range of 36". Place a suitable marker over the exact spot affected. Once cast, the Pit cannot be dispelled. For as long as the spell lasts, the player rolls a D6 at the start of each player's following Magic phase. On a 4+, the Pit opens. Place the large template over the centre of the marker. All models under the template must roll a D6 per Wound on their profile – for each roll of a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration. After any casualties have been resolved the spell ends.]

#spell("FLENSING RUIN", 3, cast: "10+")[_Flensing Ruin_ is a *direct damage* spell with a range of 12" that targets a single model (even a character in a unit). The target suffers D3 Strength 6 Hits with the Lightning Attacks special rule.]

#spell("MADNESS", 3, cast: "10+")[_Madness_ is a *hex* spell with a range of 24" that can be cast on an unengaged unit. The target unit will immediately turn on the spot and move 2D6" in a random direction as determined by the scatter dice. They will stop within 1" of any unit or impassable terrain.]

#spell("WARPSTORM", 3, cast: "10+")[_Warpstorm_ is a special type of spell that targets all units within 12", even if they are engaged in close combat. Roll a D6 for each unit within range. On a 4+, enemy units suffer D6 Strength 5 hits with the Lightning Attacks special rule. Friendly units are only affected on a 6.]

#spell("CRACKS CALL", 4, cast: "13+")[_Cracks Call_ is *a direct damage* spell. Extend a straight line, 24" in length, directly away from the caster. Each model in the way (determined using the line template) must roll a D6 per Wound on their profile – for each roll of a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration.]

#spell("SCORCH", 4, cast: "15+")[_Scorch_ is a *direct damage* spell. Place the large round template anywhere within 24" – it then scatters D6". All models under the template suffer a Strength 4 hit with the Flaming Attacks special rule. A unit that suffers one or more casualties from Scorch must take a Panic test.]
]
#lore("THE LORE OF PLAGUE")[
#spell("PLAGUE RASH", "Lore Attribute")[Whenever a spell from the Lore of Plague is successfully cast, all enemy units within 6" of the caster suffer \-1 to their Weapon Skill and Initiative (to a minimum of 1) until the start of the caster's next magic phase.]

#spell("PESTILENT BREATH", "Signature Spell", cast: "5+")[_Pestilent Breath_ is a *direct damage* spell. The caster makes a Strength 2 Breath Weapon Attack with the Ignores Armour Saves special rule. This may be cast in close combat, following the normal rules for Breath Weapons.]

#spell("BLESS WITH FILTH", 1, cast: "5+")[_Bless with Filth_ is an *augment* spell with a range of 18". The target gets the Poisoned Attacks special rule until the start of the caster's next Magic phase.]

#spell("MANTLE OF CONTAGION", 1, cast: "5+")[_Mantle of Contagion_ is an *augment* spell with a range of 18". The target unit and any units in base contact with it suffer 2D6 Strength 3 hits with the Ignores Armour Saves special rule.]

#spell("VEIL OF FLIES", 1, cast: "5+")[_Veil of Flies_ is an *augment* spell with a range of 18". All enemy units in base contact with the target unit suffer \-1 To Hit until the start of the caster's next Magic phase.]

#spell("VERMINTIDE", 2, cast: "7+")[Remains in play. _Vermintide_ is a *magical vortex* that uses the large round template. Any model touched by the template suffers a Strength 1 hit.]

#spell("WEEPING WOUNDS", 2, cast: "8+")[Remains in play. _Weeping Wounds_ is a *hex* spell with a range of 24". The target unit suffer D6 Strength 2 hits with the Ignores Armour Saves special rule. While the spell is in effect, the target unit suffers an additional D6 Strength 2 hits with the Ignores Armour Saves special rule at the start of each subsequent Magic phase.]

#spell("CLOUD OF CORRUPTION", 2, cast: "10+")[_Cloud of Corruption_ is a *direct damage* spell with a range of 24". Place the large template anywhere within this range – it scatters D6". All models touched by the template suffer a Strength 2 Hit with the Ignores Armour Saves special rule.]

#spell("PURULENT WORLD SORES", 3, cast: "9+")[_Purulent World Sores_ is a *summoning* spell with a range of 18". This summons a normal marshland no more than 6" in diameter. In addition, all models within the marsh when it is summoned or who enter later suffer a Strength 1 Hit with the Ignores Armour Saves special rule.]

#spell("AIR OF PESTILENCE", 3, cast: "12+")[_Air of Pestilence_ is a special type of spell that targets all units within 12", even if they are engaged in close combat. Roll a D6 for each unit; enemy units are affected on a 2+, friendly units are affected on a 4+, and models from Clan Pestilens (friend or foe) are affected on a roll of 5+. Each unit that is affected suffers 2D6 Strength 3 hits with the Ignores Armour save special rule. Roll separately for each unit.]

#spell("PUTREFY", 3, cast: "11+")[_Putrefy_ is a *hex* spell with a range of 18". The target suffers \-1 to their Strength for the remainder of the game. This can be cast multiple times on the same target and the effects are cumulative.]

#spell("WITHER", 4, cast: "12+")[_Wither_ is a *hex* spell with a range of 18". The target suffers \-1 to their Toughness for the remainder of the game. This can be cast multiple times on the same target and the effects are cumulative.]

#spell("PLAGUE", 4, cast: "15+")[_Plague_ is a *hex* spell with a range of 18". All models in the target unit must pass a Toughness test or suffer a Wound with the Ignores Armour save special rule. If cast on a unit engaged in close combat, all units in base contact (friend and foe) will be affected. After working out the effects of the spell and removing casualties, roll a D6 and consult the chart below and continue to apply the results until the spell ends or there are no more viable targets. A unit can only be the target of Plague once per Magic phase.

#chart((("D6", "Result"), ("1", "Your opponent can decide to end the spell or
choose any one unit within 6\" of a previous
target to be affected by Plague."), ("2-4", "The spell ends."), ("5-6", "The casting player can decide to end the spell
or choose any one unit within 6\" of a
previous target to be affected by Plague.")))]
]
#lore("THE LORE OF STEALTH")[
#spell("TOXIC RAIN", "Lore Attribute")[Whenever a spell from the Lore of Stealth is successfully cast, all enemy units within 6" of the caster suffer a \-1 penalty to their armour saves until the start of the caster's next magic phase.]

#spell("WARP STARS", "Signature Spell", cast: "6+")[_Warp Stars_ is a *magic missile* with a range of 18" that causes D6 Strength 4 hits with the Armour Piercing (1) and Poisoned Attacks special rule.]

#spell("STICKYPAWS", 1, cast: "5+")[_Stickypaws_ is an *augment* spell with a range of 18" that can be cast on an Infantry unit. The target unit treats cliffs and buildings as open ground (note that it may not end its move within 1" of it as normal) until the start of the caster's next Magic phase.]

#spell("ARMOUR OF DARKNESS", 1, cast: "6+")[_Armour of Darkness_ is an *augment* spell that is cast on the Wizard itself. Until the start of the caster's next turn, the caster and their unit gain a 6+ armour save and all missile fire directed at them suffer \-1 To Hit.]

#spell("MARKED FOR DEATH", 1, cast: "6+")[_Marked for Death_ is a *hex* spell with a range of 24". All attacks against the target gain +1 To Hit until the start of the caster's next Magic phase.]

#spell("BRITTLE BONE", 2, cast: "7+")[_Brittle Bone_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all models in the target unit must take a Dangerous Terrain test every time they attempt to charge, march, flee or pursue. Tests in terrain that is already Dangerous Terrain will fail the tests on a 1 or 2, rather than a 1.]

#spell("PELT OF THE ASSASSIN", 2, cast: "7+")[Remains in play. _Pelt of the Assassin_ is an *augment* spell with a range of 18". While the spell is in effect, no units can draw line of sight to this unit unless they are within 12" of it. However, if the target unit moves for any reason, the spell is immediately dispelled.]

#spell("SHADOW STRIKE", 2, cast: "7+")[_Shadow Strike_ is a *direct damage* spell with a range of 24". The target unit must take 3D6 Weapon Skill tests. For every test that is failed, the unit suffers a Strength 4 Hit.]

#spell("SWIFTSCAMPER", 3, cast: "9+")[_Swiftscamper_ is an *augment* spell with a range of 18". The target unit doubles its Movement rate (to a maximum of 10) and can re-roll their Charge, Flee and Pursuit results until the start of the caster's next Magic phase.]

#spell("SKITTERLEAP", 3, cast: "10+")[_Skitterleap_ is a *conveyance* spell with a range of 12". The target is immediately picked up and may be moved to any position on the battlefield within 24" of their original position, just like a summoning spell.]

#spell("BLACK WHIRLWIND", 3, cast: "10+")[_Black Whirlwind_ is a *direct damage* spell. Place the small round template anywhere within 24" – it then scatters D3". All models underneath the template suffer a Strength 3 hit. The unit then suffers \-1 to its Weapon Skill, Ballistic Skill and Initiative until the start of the caster's next Magic phase.]

#spell("VEIL OF SHADOWS", 4, cast: "15+")[Remains in Play. _Veil of Shadows_ is a *magical vortex* that uses the large round template. Any model touched by the template takes a Strength 4 hit, and the unit will count as being Disrupted for the remainder of the turn.]
]
#upgrade-chapter("SKAVEN WARGEAR")[
#group("WARLORD CLANS")

#upgrade("RAT HOUND BODYGUARD", none)[A model with a Rat Hound upgrade can make an additional Weapon Skill 3, Strength 3, Initiative 3 Attack. However, on a To Hit roll of 1 from this attack, the Rat Hound will instead inflict an automatic hit on its owner.]

#upgrade("RATLING PISTOL", none)[Ratling Pistols have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Armour Piercing (1), Magical Attacks, Multiple Shots (3) Quick to Fire, Unstable Ammunition"))

#note[_In close combat, a Ratling Pistol counts as an additional hand weapon that does not give the model the Parry special rule._]
]

#upgrade("TAIL WEAPON", none)[The model gains +1 Attack. Note that this attack does not gain any of the rules of other weapons the model might carry.]

#upgrade("WARPLOCK PISTOL", none)[Warplock pistols have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Armour Piercing (1), Magical Attacks, Quick to Fire, Unstable Ammunition"))

#note[_In close combat, a Warplock pistol counts as an additional hand weapon that does not give the model the Parry special rule._]
]

#upgrade("WARPSTONE TOKENS", none)[A Wizard may choose to eat some warpstone to boost his powers. Before casting a spell announce which model is eating Warpstone Tokens. Each token can only be used once. For each token consumed, a Wizard can add an additional power dice to his casting attempt. This does allow users to roll more dice than is normally allowed by their level. A spell may be cast entirely with Warpstone Tokens if you wish. However, for every Warpstone generated dice that rolls a 1 the Wizard suffers a Wound with no saves allowed.]

#group("CLAN ESHIN")

#upgrade("SMOKE BOMBS", none)[This item can be used if the bearer breaks from combat before the opponent has declared to pursue. Any units pursuing this model roll one D6 less than normal for their pursuit distance this turn.]

#upgrade("WARPSTONE STARS", none)[Throwing weapon. Warpstone Stars have the Armour Piercing (1), Magical Attacks, and Multiple Wounds (D3) special rules.]

#upgrade("WEEPING BLADES", none)[Two hand weapons. All attacks made by Weeping Blades have the Armour Piercing (1), Magical Attacks and Multiple Wounds (D3) special rules.]

#group("CLAN MOULDER")

#upgrade("SHOCK-PROD", none)[Polearm. A Shock-Prod gives the wielder the Lightning Attacks special rule.]

#upgrade("THINGS-CATCHER", none)[Polearm. A Things-catcher gives the wielder the Killing Blow special rule.]

#upgrade("WHIP", none)[A whip gives the wielder +1 Attack and the Fight in Extra Ranks (2) special rule. In addition, they may make supporting attacks equal to their Attack characteristic.]

#group("CLAN PESTILENS")

#upgrade("PLAGUE CENSER", none)[Flail. At the start of each round of close combat, all enemy models in base contact with one or more models bearing a plague censer, as well the Censer Bearers themselves that are allowed to fight this round, must pass a Toughness test or suffer a single wound with the Ignores Armour Saves and Magical Attacks special rules. All Clan Pestilens models gain a +1 bonus for these tests.]

#upgrade("WARP-BLADES", none)[Warp-Blades give the bearer +1 casting bonus when using the _Warp Lightning_ spell from the Lore of Ruin.]

#upgrade("WARPMUSKET", none)[A Warpmusket has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "5", "Armour Piercing (1), Magical Attacks, Ponderous Unstable Ammunition"))
]

#upgrade("WARPVOLT OBLITERATOR", none)[A Warpvolt Obliterator has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "5", "Lightning Attacks, Magical Attacks"))
]

#group("CLAN SKRYRE")

#upgrade("GAS MASK", none)[When a model with a gas mask is forced to take a Toughness test caused by any weapon or Magic Item in this army book, they get a +2 bonus for the test.]

#upgrade("SUPERCHARGED WARP-POWER ACCUMULATOR", none)[A Supercharged Warp-Power Accumulator allows the bearer to cast spells with one more Power dice than they are normally allowed.]

#upgrade("UPGRADED WARP-ENERGY CONDENSER", none)[An Upgraded Warp-Energy Condenser gives the wearer a +1 bonus when channelling Power dice.]

#upgrade("WARLOCK OPTICS", none)[A Warlock Engineer equipped with Warlock Optics gains +1 to their Ballistic Skill as well as the Sniper special rules.]
]

#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Skaven. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("FELLBLADE", 85)[Warlord only. This foul sword gives the bearer Strength 10 and the Multiple Wounds (D6) special rule, and successful ward saves taken against wounds inflicted by the bearer in close combat must be re-rolled. Roll a D6 at the end of each of the wielder's turns; on a 3+ there is no effect. On a roll of 1\-2 the wielder suffers 1 wound with no armour save allowed.]

#magic-weapon("ELECTRO-WHIP", 40)[Clan Moulder only. Whip. An Electro-whip gives the wielder +D3 Attacks rather than 1 as well as the Lightning Attacks special rule.]

#magic-weapon("DWARF SLAYER", 35)[All attacks made with this weapon are resolved at +1 Strength and have the Multiple Wounds (2) special rule. Against all models from _Warhammer: Dwarfs_, all hits have the Armour Piercing (1) special rule and the wielder may re-roll all failed rolls To Wound.]

#magic-weapon("DESOLATE BLADE", 30)[The Desolate Blade gives the wielder +1 Strength and allows them to re-roll all failed rolls To Wound.]

#magic-weapon("THE FUMIGATOUS", 30)[Clan Pestilens only. Plague Censer. All Toughness tests taken from this weapon suffer a \-1 modifier.]

#magic-weapon("LANGUISHER SWORD", 25)[The Languisher Sword causes all enemy models in base contact with the wielder to be subject to the Always Strikes Last special rule.]

#magic-weapon("THE THREE FANGS", 25)[Two hand weapons & tail weapon. If the wielder of these weapons scores 3 or more Hits against a single model, all those hits automatically Wound with the Ignores Armour Saves special rule.]

#magic-weapon("CURSED BLADE OF DELIRIUM", 20)[The Cursed Blade of Delirium causes all enemy models attempting to strike the wielder in close combat to suffer \-1 To Hit.]

#magic-weapon("HEADSPLITTER", 20)[Clan Eshin only. Sling. Against models with Toughness 5+, Headsplitter automatically Wounds on the roll of a 2+ with the Ignores Armour Saves special rule.]

#magic-weapon("SNAP-SNAP SNAREPOLE", 20)[Clan Moulder only. Things-catcher. One enemy model of your choice suffer a \-1 penalty to their Attacks.]

#magic-weapon("BLADE OF BLACK FURY", 15)[The Blade of Black Fury gives the wielder +2 Initiative and +1 Attack.]

#magic-weapon("GNAWSHARD", 15)[Any character, Monstrous Creature or Monster that suffers one or more unsaved Wounds from this weapon must pass a Toughness test at the start of each subsequent close combat phase for the rest of the game, or suffer one Wound with no saves allowed.]

#magic-weapon("THINGS-BANE", 15)[This weapon gives the bearer the Multiple Wounds (2) special rule.]

#magic-weapon("BROODING BLADE", 10)[Any model that suffers one or more unsaved Wounds from this weapon suffers 2D6 Strength 1 Hits with no saves allowed at the end of that round of close combat.]

#magic-weapon("LASH OF FANGS", 10)[Clan Moulder only. Whip. Any character, Monstrous Creature or Monster that suffers one or more unsaved Wounds from this weapon are subject to the Stupidity special rule for the remainder of the game.]

#magic-weapon("WARPFORGED BLADE", 10)[Clan Skryre only. A Warpforged Blade gives the wielder the Ignores Armour Saves special rule.]
]

#magic-item-section("armour")[
#magic-armour("FOULHIDE", 30)[Medium armour. This armour gives the wearer the Regeneration (4+) special rule.]

#magic-armour("SHIELD OF DISTRACTION", 30)[Shield. The Shield of Distraction causes all enemies in base contact with the bearer to suffer \-1 Attack.]

#magic-armour("RUST ARMOUR", 25)[Medium armour. The first time the wearer is wounded by a Strength high enough to completely cancel his armour save, or is not permitted an armour save for any reason, the Wound is discounted, but the armour is completely destroyed.]
]

#magic-item-section("talisman")[
#talisman("WARPSTONE AMULET", 30)[The Amulet confers to the bearer a 4+ Ward save. At the end of each of your turns, roll a D6. On the result of 1, the character suffers a Wound with no saves allowed.]

#talisman("TENEBROUS CLOAK", 30)[The Tenebrous Cloak gives the wearer a 3+ Ward save against all missile attacks and spells.]

#talisman("TWISTED CROWN OF THE HORNED RAT", 30)[The Twisted Crown of the Horned Rat gives the wearer the Regeneration (4+) special rule.]

#talisman("RIVAL HIDE TALISMAN", 25)[The Rival Hide Talisman forces all enemies attempting to strike the wearer in close combat to re-roll successful rolls To Hit.]

#talisman("SHADOW MAGNET TRINKET", 25)[All missile attacks targeted at the bearer of the Shadow Magnet Trinket or the unit they are with suffer \-1 To Hit.]

#talisman("SUSPICIOUS STONE", 20)[This item gives the wearer a 6+ Ward save which may be re-rolled.]

#talisman("WARPSCALE PENDANT", 15)[The Warpscale Pendant gives the bearer the Immunity (Flaming Attacks, Lightning Attacks) and Magic Resistance (2) special rules. However, at the beginning of the game, the bearer must pass a Toughness test or suffer a Wound with no saves allowed.]

#talisman("AMULET OF DARKNESS", 10)[The Amulet of Darkness gives the wearer the Magical Resistance (1) special rule. In addition, if a spell or magic item that would normally force the wearer and any unit they are with to reveal any Magic Items or Hidden models, they only need to reveal the Amulet of Darkness.]
]

#magic-item-section("arcane")[
#arcane-item("STAFF OF RIGHTFUL SUPREMACY", 25)[All enemy Wizards within 12" of the bearer of this item suffer a \-1 casting penalty. In addition, if the bearer's dispel roll result is 13, the spell is automatically dispelled.]

#arcane-item("WARPSCROLL", 25)[One use only. Bound spell, Power Level 6. The Warpscroll contains a *direct damage* spell with a range of 24". It inflicts a Strength 3 Hit on all models in the unit. If the unit suffers any casualties from the spell, they must also take a Panic test.]

#arcane-item("WARPSTORM SCROLL", 25)[Bound Spell, Power Level 5. One use only. The Warpstorm Scroll contains a *direct damage* spell that targets all units with the Fly special rule within 24". The target units suffer D6 Strength 6 Hits with the Lightning Attacks special rule.]

#arcane-item("ESOTERIC WARP RESONATOR", 20)[Clan Skryre only. The bearer of this item adds a free Power dice to their casting attempt whenever they attempt to cast the _Warp Lightning_ spell from the Lore of Ruin.]

#arcane-item("EYE OF THE HORNED RAT", 15)[The Eye of the Horned Rat may be used at the start of your Magic Phase. Roll a D6, on a 2+, add one dice to your power dice pool. On 1, remove one dice from your power dice pool.]

#arcane-item("SCRYING STONE", 10)[One use only. The bearer of the Scrying Stone gains a 2+ Ward save against their first wounding Hit suffered. However, if this Wound is saved the model gains the Stupidity rule for the remainder of the game.]
]

#magic-item-section("enchanted")[
#enchanted-item("BRASS ORB", 40)[Clan Skryre only. One use only. The bearer can throw the Brass Orb in the Shooting phase. Place the small round template with its centre anywhere within 6" of the character and in his line of sight. The template then scatters D3". Models touched by the template must roll a D6 per Wound on their profile – for each roll of a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration. This has the Magical Attacks special rule. If a 1 is rolled, centre the template on the model throwing the globe.]

#enchanted-item("BILIOUS BELL", 30)[Clan Pestilens only. One use only. This item can be used at the start of any of your turns. When used, all enemy units within 18" of the bearer of this item suffer a Strength 3 Hit, enemy units within 12" suffer D3 Strength 4 Hits and enemy units within 6" suffer D6 Strength 5 Hits.]

#enchanted-item("THE CUBE OF MISTS", 30)[Clan Eshin only. One use only. This item can be used at the start of any round of close combat. Once used, no enemy models can make Supporting Attack this round. In addition, all enemy models in the unit suffer \-1 To Hit.]

#enchanted-item("DOOMROCKET", 30)[Clan Skryre only. One use only. A Doomrocket is a Rocket Launcher with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "5", "Slow to Fire"))

In case a Misfire is rolled, roll a D6 and consult the Doomrocket Misfire chart.

#chartlabel("DOOMROCKET MISFIRE CHART")
#chart((("D6", "Result:"), ("1", "Thoooooom: Place the template over the model
that fired the rocket and resolve the blast as
normal."), ("2-5", "Stabilising Fin Lost: The template scatters
3D6\" from its original position. Resolve any
hits as normal."), ("6", "It's a Dud: Resolve the shot as normal, but do
not place the template. Any model directly
below the impact spot suffers a single Strength
5 hit.")))]

#enchanted-item("FLESHGIFT VIAL", 30)[Clan Moulder only. One use only. This item can be used at the start of any Close Combat phase. Roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1", "The bearer suffers 1 Wound with no saves
allowed."), ("2-4", "One enemy unit in base contact suffer D3
Wounds with no saves allowed."), ("5-6", "One enemy unit in base contact suffer D6
Wounds with no saves allowed.")))]

#enchanted-item("INFERNAL BOMB", 30)[Clan Eshin only. One use only. As long as they are not Hidden, the bearer can place an Infernal Bomb anywhere along their Movement path during the Remaining Movement phase. Place a marker where the bomb is placed. You may choose to detonate the bomb at the start of any Movement sub-phase by rolling a D6. On a roll of 1, nothing happens. On a 2+, the bomb will explode; place the large round template centred on the marker. Any model at the template's centre takes a single Strength 10 Hit with the Multiple Wounds (D6) special rule. Any models touched by the template suffer a Strength 3 hit with the Armour Piercing (1) special rule.]

#enchanted-item("SKALM", 30)[One use only. Skalm can be used at the beginning of any phase in either player’s turn. The bearer recovers all Wounds suffered up to that point in the battle.]

#enchanted-item("SCREECHSKULL TROPHIES", 30)[All enemy units within 6" of the bearer of this item must roll an additional D6 when taking Leadership tests and discard the lowest result.]

#enchanted-item("SKAVENBREW", 30)[One use only. This item can be used at the start of the game. Skavenbrew affects all rank-and-file models in the unit. Roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1", "Gone Bad: The unit takes D6 Strength 3
automatic hits with the Ignores Armour save
special rule. The Skavenbrew has no
additional effect."), ("2-3", "Inspired Hatred: The unit gains the Hatred
special rule."), ("4-5", "Frenzied: The unit gains the Frenzy special
rule."), ("6", "Rabid: The unit gains the Frenzy and Hatred
special rules. At the start of each of your
subsequent turns, the unit suffers D6
automatic Wounds.")))]

#enchanted-item("DEATH GLOBE", 25)[Clan Skryre only. One use only. Place the small round template with its centre anywhere within 6" of the character and in his line of sight. The template then scatters D3". All models touched by the template must pass a Toughness test or suffer a Wound with the Ignores Armour Saves and Magical Attacks special rules. If a 1 is rolled, centre the template on the model throwing the globe.]

#enchanted-item("PIPES OF PIEBALD", 25)[All enemy units within 12" of the bearer of the Pipes of Piebald are subject to the Stupidity special rule.

#runin[SKRYRE]'#runin[S-BREATH BELLOWS 25 points] Clan Skryre only. One use only. This is a Breath Weapon Attack. Any model Hit must take a Toughness test or suffer a Wound which Ignores Armour saves.]

#enchanted-item("BLISTREVOUS, THE LIVING CYST", 20)[Clan Pestilens only. The bearer of this item gains the Frenzy and Hatred special rules. At the start of your second turn and onward, if you have any friendly Clan Pestilens character within 12" of the bearer, this item gets transferred to them instead.]

#enchanted-item("FLAYPELT CLOAK", 20)[The bearer of this item may re-roll 1's To Hit and To Wound in Close Combat.]

#enchanted-item("GNAWBOMB", 20)[Clan Eshin only. One use only. This item can be used at the start of any of your turns. When used, remove the bearer of this item and any unit they are with, but place a marker where the bearer was. In the Remaining Moves sub-phase of this turn, place the unit anywhere within 3D6" of the marker, just like a *summoning* spell.]

#enchanted-item("PORTENTS OF VERMINOUS DOOM", 20)[The Portents of Verminous Doom give the bearer the Fear special rule.]

#enchanted-item("RABID CROWN", 20)[Clan Moulder only. All friendly Clan Moulder units (except characters) within 6" of the bearer of this item may re-roll failed rolls To Wound.]

#enchanted-item("SNOUTGROVEL ROBES", 20)[All friendly units within 12" of the bearer of this item gain the Immunity (Fear) special rule.]

#enchanted-item("FARSKITTER CLOAK", 15)[Clan Eshin only. Bound spell, Power Level 3. This item contains the _Skitterleap_ spell from the Lore of Stealth. It can only be cast on the bearer of this item.]

#enchanted-item("ASSASSINS-BANE RIGGING", 10)[Clan Eshin only. All enemy models that Attack this bearer of this item in close combat suffer a Strength 3 Hit for each Hit they inflict on the bearer.]

#enchanted-item("RAT-TAIL SNAKE", 10)[Clan Moulder only. If an enemy model rolls a 6's To Hit against the bearer of this item, they immediately suffer a Strength 4 Hit.]

#enchanted-item("WARPSTONE CHARM", 10)[One use only. The Warpstone Charm allows the bearer to re-roll any one single dice roll that directly affects them.]

#enchanted-item("VIAL OF THE FULMINATOR", 5)[Clan Skryre only. At the start of each of your Remaining Moves sub-phases, you may pick one friendly War Machine within 12" of the bearer. This War Machine may march this turn or move and shoot. However, if they do so, all remaining crew must pass a Toughness test or suffer a Wound with no saves allowed.]
]

#magic-item-section("standard")[
#magic-standard("SACRED STANDARD OF THE HORNED RAT", 75)[All enemy units within 12" of this standard suffer a \-1 penalty to their Leadership and enemy units in base contact with the bearer of this banner must re-roll any successful Leadership tests.]

#magic-standard("STORM BANNER", 50)[One use only.Tthis standard can be activated at the beginning of any player's turn. Within 24" of this standard, no model may use the Fly special rule and units are at \-2 to be Hit with non-magical missile attacks. All non-magical missile attacks that do not use Ballistics Skill to hit need to roll a 4+ on a D6 before they can attempt to fire if they are within 24" of the banner. Roll a D6 at the beginning of each following player turn – the effects of the banner will end on a D6 roll of 4+.]

#magic-standard("UMBRANNER", 35)[The unit carrying this standard gains a 4+ Ward save against non-magical missiles with Strength 4 or less.]

#magic-standard("GRAND BANNER OF CLAN SUPERIORITY", 30)[The unit carrying this standard gains +D3 combat resolution bonus if they have more ranks than each enemy unit in base contact.]

#magic-standard("BANNER OF BURNING HATRED", 25)[The unit carrying this standard gains the Hatred special rule.]

#magic-standard("PLAGUE BANNER", 25)[Plague Monks only. One use only. This standard may be activated at the start of any Close Combat phase. For the remainder of the phase all Plague Monk models in the unit may re-roll failed To Hit rolls and failed To Wound rolls.]

#magic-standard("SHROUD OF DRIPPING DEATH", 25)[Clan Pestilens only. This standard causes all enemy models in base contact with the unit carrying it to suffer a Strength 2 Hit which Ignores Armour Saves at the start of every Close Combat phase.]

#magic-standard("BANNER OF THE UNDER-EMPIRE", 20)[This standard causes all enemy units in base contact with the unit carrying it to suffer 3D6 Strength 1 Hits at the start of every Close Combat phase.]

#magic-standard("DWARF-HIDE BANNER", 20)[The unit carrying this standard gains the Hatred special rule against all units from _Warhammer: Dwarfs_.]

#magic-standard("BANNER OF THE SWARM", 15)[The unit carrying this standard gains +2 to their combat resolution bonus from outnumbering their enemies, rather than +1.]

#magic-standard("BANNER OF THE FOUR BLACK WINDS", 10)[Enemies cannot use the Fly special rule to charge the unit carrying this standard.]

#magic-standard("BANNER OF VERMINOUS SCURRYING", 10)[The unit carrying this standard can march three times their Movement value. However, if they do so, the unit suffers 2D6 Strength 3 Hits with no saves allowed after making their March move.]
]
= LORDS

#unit("GREY SEER",
  first: true,
  profiles: (
    (name: "Grey Seer", m: 5, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 5, a: 1, ld: 6, points: 200),
  ),
  troop-type: "Infantry (Character, Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Grey Seer is a Level 4 Wizard who uses spells from the Lore of Ruin and/or Lore of Plague. They may use",
  magic-body: [
a combination of spells from both Lores. In addition, they can also choose the following spell:

#namecost("CURSE OF THE HORNED RAT", "")
#namecost("Level 4 Cast on 15+", "")

_Curse of the Horned Rat_ is a *direct damage* spell with a range of 18" that targets Infantry. Up to 3D6 models in the unit suffers a Wound which Ignores Armour saves. If the whole unit is removed as casualties, replace them with a number of Clanrats (armed with hand weapons and no other equipment or upgrades) equal to the number of casualties, facing the same direction as before. The casting player now controls this unit. If the casting player does not have enough models to replace the entire unit, the rest are considered destroyed.
  ],
  options: [
- May be mounted on one of the following:
  - War-litter +10 points
  - Screaming Bell +200 points
- May take up to 5 Warpstone Tokens 10 points/token
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("WARLORD",
  profiles: (
    (name: "Warlord", m: 5, ws: 6, bs: 4, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 7, points: 85),
  ),
  troop-type: "Infantry (Character, Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Warplock Pistol +7 points
  - Ratling Pistol +7 points
- May take heavy armour +9 points
- May take a shield +3 points
- May take a tail weapon +5 points
- May take a Rat Hound Bodyguard +3 points
- May be mounted on one of the following:
  - War-litter +12 points
  - Great Pox Rat +21 points
  - Gnaw-beast +36 points
  - Rat Ogre Bonebreaker +75 points
  - Brood Horror +150 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("VERMINLORD",
  profiles: (
    (name: "Verminlord", m: 8, ws: 8, bs: 4, s: 6, t: 6, w: 6, i: 10, a: 5, ld: 8, points: 450),
  ),
  troop-type: "Monster (Character, Daemon, Skaven)",
  base-size: "50x50 or 100x50",
  magic-items: (
    rule("Doom Glaive")[Magic Weapon. Attacks made with this weapon have the Multiple Wounds (D3) special rule.],
  ),
  magic: "A Verminlord is a Level 4 Wizard who uses spells from the Lore of Ruin and/or Lore of Plague. A Warpseer",
  magic-body: [
and Warbringer uses spells from the Lore of Ruin, a Deceiver uses spells from the Lore of Stealth and a Corruptor uses spells from the Lore of Plague.
  ],
  options: [
- May be upgraded to one of the following
  - Corruptor +5 points
  - Deceiver +25 points
  - Warbringer +25 points
  - Warpseer +50 points
  ],
  special-rules: (
    rule("Daemonic")[A Verminlord has the Magical Attacks and Unbreakable special rules. In addition, they have a 5+ Ward save which gets reduced to a 6+ Ward save against Magical Attacks. However, if a Verminlord loses a round of close combat it must take a Daemonic Instability test. This works like a normal Break test, except that for every point it fails the test by, it suffers one additional Wound with no saves allowed. The Daemonic Instability test can use Inspiring Presence and/or Hold Your Ground as normal.],
  ),
  upgrades: [
- *Warpseer:* A Warpseer has the following:
  - *Master of Lightning:* A Verminlord Warpseer must choose all its spells from the Lore of Ruin, and can re- roll failed casting attempts when attempting to cast _Warp Lightning_.
  - *Scry-orb:* Enchanted Item. A Verminlord Warpseer gains a 6+ Ward Save while it carries this item. Once per game, in the Shooting phase, you may choose to throw the Scry-orb. If you do so, the bonus to its Ward Save is immediately lost for the rest of the game.

To throw the Scry-orb, place the small round template with its centre anywhere within 12" and line of sight of the Verminlord Warpseer – it scatters D3". Models touched by the template must pass an Initiative test or be destroyed, with no saves of any kind allowed.

- *Deceiver:* A Deceiver has the following:
  - *Shrouded in Darkness:* Enemy units that target a Verminlord Deceiver with a shooting attack suffer a \-1 To Hit modifier in addition to any other modifiers.
  - *Shadowstrider:* A Verminlord Deceiver must choose all its spells from the Lore of Stealth, and can re-roll failed casting attempts when attempting to cast _Skitterleap_, and can choose itself as the target of this spell.
  - *Warpstiletto*: Magic Weapon. Attacks made with this weapon have the Armour Piercing (1) and Poisoned Attacks special rules. This replaces the Doom-glaive.
  - *Doomstar*: Magic Weapon: This is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "As user", "Arcing Death, Quick to Fire,  Poisoned Attacks"))

*Arcing Death:* A weapon with this special rule makes as many shots as the number of models in the front rank of the target unit that are within range.

- *Corruptor:* A Corruptor has the following:
  - *Plaguemaster:* A Verminlord Corruptor must choose all its spells from the Lore of Plague, and can re-roll failed casting attempts when attempting to cast _Plague_.
  - *Plaguereapers:* Magic Weapon. Two hand weapons. Attacks made with these weapons have the Always Strikes First special rule. This replaces the Doom-glaive.
- *Warbringer:* A Warbringer has the following:
  - *Verminous Fury:* A Verminlord Warbringer must choose all its spells from the Lore of Ruin, and can re- roll failed casting attempts when attempting to cast _Death Frenzy_.
  - *Doom Glaive and Punch-dagger:* Magic Weapon. Two hand weapons. Attacks made with these weapons have the Killing Blow and Multiple Wounds (D3) special rules.
  ],
  order: ("troop-type", "base-size", "magic-items", "magic", "options", "special-rules", "upgrades"),
)

#unit("MASTER ASSASSIN",
  profiles: (
    (name: "Master Assassin", m: 6, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 9, a: 4, ld: 8, points: 155),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  options: [
- May replace hand weapons with Weeping Blades +20 points
- May choose one of the following:
  - Blowpipe +6 points
  - Sling +7 points
- May take a tail weapon +5 points
- May take smoke bombs +5 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Dodge (5+), Hidden, Poisoned Attacks, Scouts, Strength in Numbers, Scurry Away",
  special-rules-body: (
    rule("Sensei")[A Master Assassin may be the Army General despite being Hidden. However, he can only pass on his Leadership value to other units if he is not Hidden.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("ESHIN SORCERER LORD",
  profiles: (
    (name: "Eshin Sorcerer Lord", m: 6, ws: 4, bs: 4, s: 3, t: 4, w: 3, i: 5, a: 1, ld: 6, points: 190),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "An Eshin Sorcerer Lord is a Level 3 Wizard who uses spells from the Lore of Stealth.",
  options: [
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Poisoned Attacks, Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("MASTER MUTATOR",
  profiles: (
    (name: "Master Mutator", m: 6, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 3, ld: 7, points: 80),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Moulder)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Whip +6 points
  - Great weapon +9 points
  - Things-catcher +18 points
  - Shock-prod +24 points
- May take a tail weapon +5 points
- May be mounted on one of the following:
  - Great Pox Rat +20 points
  - Gnaw-beast +36 points
  - Rat Ogre Bonebreaker +75 points
  - Brood Horror +150 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Scurry Away, Strength in Numbers",
  special-rules-body: (
    rule("Leader of the Pack")[Models with this special rule may join units of Giant Rats or Rat Ogres and act as their handlers following the Mixed Units special rule, or be deployed in the front rank if they wish. All friendly Clan Moulder units within 6" of a Hero or 12" of a Lord with this special rule gain the Cold-blooded special rule.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("PLAGUELORD",
  profiles: (
    (name: "Plaguelord", m: 5, ws: 5, bs: 3, s: 4, t: 5, w: 3, i: 6, a: 3, ld: 7, points: 190),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Plaguelord is a Level 2 Wizard who uses spells from the Lore of Plague.",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Flail +6 points
  - Great weapon +9 points
  - Plague censer +18 points
- May be mounted on one of the following:
  - Great Pox Rat +20 points
  - Plague Furnace +150 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Frenzy, Scurry Away, Strength in Numbers",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("WARLOCK MASTER",
  profiles: (
    (name: "Warlock Master", m: 5, ws: 3, bs: 4, s: 3, t: 4, w: 3, i: 4, a: 1, ld: 6, points: 160),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Skryre)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  magic: "A Warlock Master is a Level 3 Wizard who can use the spells from the Lore of Ruin.",
  options: [
- May take a polearm +2 points
- May choose one of the following:
  - Warplock Pistol +6 points
  - Ratling Pistol +6 points
  - Warpmusket +9 points
  - Warpvolt Obliterator +15 points
- May choose one of the following:
  - Gas Mask +6 points
  - Warlock Optics +15 points
- May choose one of the following:
  - Warp-Blades +5 points
  - Supercharged Warp-Power Accumulator +10 points
  - Upgraded Warp-Energy Condenser +15 points
- May take a tail weapon +3 points
- May take up to 3 Warpstone Tokens 10 points/token
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

= HEROES

#unit("CHIEFTAIN",
  first: true,
  profiles: (
    (name: "Chieftain", m: 5, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 45),
  ),
  troop-type: "Infantry (Character, Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- One Chieftain may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Polearm +6 points
  - Great weapon +9 points
- May choose one of the following:
  - Warplock Pistol +6 points
  - Ratling Pistol +6 points
- May take heavy armour +6 points
- May take a shield +2 points
- May take a tail weapon +5 points
- May take a Rat Hound Bodyguard +3 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("ASSASSIN",
  profiles: (
    (name: "Assassin", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 8, a: 3, ld: 7, points: 110),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  options: [
- May replace hand weapons with Weeping Blades +20 points
- May choose one of the following:
  - Blowpipe +5 points
  - Sling +6 points
- May take a tail weapon +5 points
- May take smoke bombs +5 points
- May Magic Items up to a total of 50 points
  ],
  special-rules: "Dodge (5+), Hidden, Poisoned Attacks, Scouts, Strength in Numbers, Scurry Away",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("ESHIN SORCERER",
  profiles: (
    (name: "Eshin Sorcerer", m: 6, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 5, points: 75),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "An Eshin Sorcerer is a Level 1 Wizard who uses spells from the Lore of Stealth.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Poisoned Attacks, Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("MASTER MOULDER",
  profiles: (
    (name: "Master Moulder", m: 6, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 6, points: 30),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Moulder)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Whip +4 points
  - Great weapon +6 points
  - Things-catcher +12 points
  - Shock-prod +16 points
- May take a tail weapon +5 points
- May be mounted on one of the following:
  - Great Pox Rat +20 points
  - Gnaw-beast +36 points
  - Rat Ogre Bonebreaker +75 points
- May Magic Items up to a total of 50 points
  ],
  special-rules: "Scurry Away, Strength in Numbers",
  special-rules-body: (
    rule("Leader of the Pack")[Models with this special rule may join units of Giant Rats or Rat Ogres and act as their handlers following the Mixed Units special rule, or be deployed in the front rank if they wish. All friendly Clan Moulder units within 6" of a Hero or 12" of a Lord with this special rule gain the Cold-blooded special rule.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("PLAGUE PRIEST",
  profiles: (
    (name: "Plague Priest", m: 5, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 2, ld: 6, points: 95),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Plague Priest is a Level 1 Wizard who uses spells from the Lore of Plague.",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Flail +6 points
  - Great weapon +9 points
  - Plague censer +18 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Frenzy, Scurry Away, Strength in Numbers",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("WARLOCK ENGINEER",
  profiles: (
    (name: "Warlock Engineer", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 1, ld: 5, points: 65),
  ),
  troop-type: "Infantry (Character, Skaven, Clan Skryre)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  magic: "A Warlock Engineer is a Level 1 Wizard who can use the spells from the Lore of Ruin.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May take a polearm +2 points
- May choose one of the following:
  - Warplock Pistol +4 points
  - Ratling Pistol +4 points
  - Warpmusket +6 points
  - Warpvolt Obliterator +10 points
- May choose one of the following:
  - Gas Mask +4 points
  - Warlock Optics +10 points
- May choose one of the following:
  - Warp-Blades +5 points
  - Supercharged Warp-Power Accumulator +10 points
  - Upgraded Warp-Energy Condenser +15 points
- May take a tail weapon +2 points
- May take a Warpstone Token 10 points
- May Magic Items up to a total of 50 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("WAR-LITTER",
  first: true,
  profiles: (
    (name: "War-litter", m: 5, ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 5, a: 4, ld: 5, points: "-"),
  ),
  troop-type: "Infantry (Skaven)",
  base-size: "40x40 or 50x50",
  special-rules: "Scurry Away, Strength in Numbers.",
  notes: [
- A War-litter has a Line of Sight value of 2.
  ],
)

#unit("GREAT POX RAT",
  profiles: (
    (name: "Great Pox Rat", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 2, points: "-"),
  ),
  troop-type: "War Beast (Skaven)",
  base-size: "20x40, 25x50, 40x40 or 50x50",
  special-rules: "Poisoned Attacks, Scurry Away",
  special-rules-body: (
    rule("Skittering")[A model mounted on a Great Pox Rat is treated as an Infantry model for the purpose of 'Look Out, Sir!'.],
  ),
)

#unit("GNAW-BEAST",
  compact: true,
  profiles: (
    (name: "Gnaw-beast", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 5, points: "-"),
  ),
  troop-type: "Monstrous Beast (Skaven)",
  base-size: "50x75",
  special-rules: "Scurry Away",
)

#unit("RAT OGRE BONEBREAKER",
  compact: true,
  profiles: (
    (name: "Bonebreaker", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 4, ld: 5, points: "-"),
  ),
  troop-type: "Monstrous Beast (Skaven)",
  base-size: "40x40 or 50x50",
  special-rules: "Scurry Away",
)

#unit("PLAGUE FURNACE",
  profiles: (
    (name: "Plague Furnace", m: 5, ws: "-", bs: "-", s: "-", t: 6, w: 6, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Plague Monk", m: "-", ws: 3, bs: "-", s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Shrine",
  crew: "1 Plague Monk (Skaven, Clan Pestilens)",
  base-size: "50x100 or 60x100",
  special-rules: "Fear, Frenzy, Magic Resistance (2)",
  special-rules-body: [
- *Altar of the Horned Rat:* This model and any unit it joins has the Stubborn special rule.
- *Billowing Death:* Billowing Death follows the rules for Breath Weapons, but can be used in every turn. All models Hit must pass a Toughness test or suffer a Wound with the Ignores Armour Saves and Magical Attacks special rules. All Clan Pestilens models gain a +1 bonus for this test.
- *Wrecker Attack:* The Plague Furnace may inflict a special attack after all other attacks have been resolved, inflicting an Artillery dice's worth of Hits against a single enemy unit to their front. A roll of a Misfire means something has gone wrong; roll a D6 on the Plague Furnace Mishap chart below.

#chartlabel("PLAGUE FURNACE MISHAP CHART")
#chart((("D6", "Result:"), ("1-2", "Crunch: The Plague Furnace immediately suffers D3 Wounds and the unit pushing it takes D6
Strength 5 hits."), ("3-5", "Bilious Cloud: Immediately work out a special Billowing Death attack that causes 2D6 hits on any
unit pushing the Plague Furnace."), ("6", "Maddening Fumes: Any unit pushing the Plague Furnace makes an additional full round of close
combat attacks against any enemy unit in base contact. After this, they suffer D6 Wounds. Any
casualties caused count towards combat resolution.")))
  ],
  notes: [
- A Plague Furnace has a Line of Sight value of 5.
  ],
)

#unit("SCREAMING BELL",
  profiles: (
    (name: "Screaming Bell", m: 5, ws: "-", bs: "-", s: "-", t: 6, w: 6, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Rat Ogre", m: "-", ws: 3, bs: "-", s: 5, t: "-", w: "-", i: 4, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Shrine",
  crew: "1 Rat Ogre (Skaven)",
  base-size: "50x100 or 60x100",
  special-rules: "Fear, Magic Resistance (2), Ward save (4+)",
  special-rules-body: [
- *Above the Masses:* The Grey Seer may use Verminous Valor to refuse a challenge, but is not moved to the back of the unit. The Grey Seer is not moved but cannot fight or be attacked for the duration of that round of close combat.
- *Altar of the Horned Rat:* This model and any unit it joins has the Stubborn special rule.
- *Tolling the Bell:* In your Magic phase, immediately after generating power dice, you can choose to ring the Screaming Bell. The owning player can choose to roll between 1\-3 D6's and consult the table below to see what effect it has. If any doubles are rolled, the unit pushing the Screaming Bell immediately takes D6 Strength 4 Hits in addition to the result on the chart. If a triple is rolled, the unit pushing the Bell immediately suffers 2D6 Strength 5 hits, and the Screaming Bell itself suffer a single Strength 5 hit in addition to the result on the chart. If the Screaming Bell suffers one or more wounds inflicted by a shooting attack with a Strength of 5 or more, it will immediately ring once using one D6, even if it is destroyed as a result of the attack.

#chart((("Dice Result", "Effect"), ("1", "Not yet in stride: No effect."), ("2-4", "Unholy Clamour: The unit pushing the Bell immediately moves using the Random
Movement (D6) special rule."), ("5-8", "Emboldened: All friendly Skaven within 24\" of the Bell can re-roll failed Leadership tests
until the start of your next turn."), ("9-10", "Scorch: The Bell itself (not the Grey Seer) immediately casts the Scorch spell from the Lore
of Ruin with a Casting Value of 5 (this requires no power dice and cannot be increased in
any way)."), ("11-12", "Deafening Peals: All enemy Chariots, Shrines and War Machines with Toughness 7 or more
that are within 18\" of the Screaming Bell immediately take a Wound with the Multiple
Wounds (D3) special rule. Roll a D6 for each building within 18\" of the Bell – each
collapses on a roll of 5+. Models inside collapsed buildings are treated the same as per the
Cracks Call spell from the Lore of Ruin."), ("13", "A Stirring Beyond the Veil: All enemy units within 12\" of the Bell take D6 Strength 4 hits
(as from shooting). Additionally, if the unit pushing the Screaming Bell is in combat, it gains
the Fight in Extra Ranks (1) special rule for the remainder of the turn."), ("14-16", "Wall of Unholy Sound: All models in each friendly unit within 12\" of the Screaming Bell
gain +1 Attack until the end of the player turn. Roll a D6 for each building within 24\" - each
collapses on a roll of 4+ (see Deafening Peals)."), ("17", "Avalanche of Energy: All friendly models within 12\" of the Bell gain +1 Attack and may
re-roll failed To Hit and To Wound rolls until the end of the player turn. Any friendly Skaven
units within 12\" of the Screaming Bell and not in close combat can immediately move using
the Random Movement (D6) special rule."), ("18", "Apocalyptic Doom: The Screaming Bell is destroyed. All models within 12\" take a Strength
4 hit with the Ignores Armour saves special rule.")))
  ],
  notes: [
- A Screaming Bell has a Line of Sight value of 5.
  ],
)

= CORE UNITS

#unit("CLANRATS",
  first: true,
  profiles: (
    (name: "Clanrat", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 4),
  ),
  unit-size: "20+",
  troop-type: "Infantry (Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour, shield",
  options: [
- May take spears +0.5 point/model
- May upgrade one Clanrat to a Leader +5 points
- May upgrade one Clanrat to a Musician +5 points
- May upgrade one Clanrat to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Scurry Away, Strength in Numbers",
  notes: [
- You may not have more units of any single Core Unit type than you have units of Clanrats.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("STORMVERMIN",
  profiles: (
    (name: "Stormvermin", m: 5, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 6, points: 6),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  options: [
- May take polearms +2 points/model
- May take shields +1 point/model
- May take heavy armour +1.5 points/model
- May upgrade one Stormvermin to a Leader +5 points
  - May take a Warplock Pistol +5 points
- May upgrade one Stormvermin to a Musician +5 points
- May upgrade one Stormvermin to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Scurry Away, Strength in Numbers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKAVENSLAVES",
  profiles: (
    (name: "Skavenslave", m: 5, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 2, points: 2),
    (name: "Pawleader", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 4, points: 15),
  ),
  unit-size: "20+",
  troop-type: "Infantry (Skaven)",
  handlers: "1 Pawleader (Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take one of the following:
  - Spears +0.5 point/model
  - Shields +1 point/model
  - Polearms +2 points/model
  - Slings +2 points/model
- May upgrade one Skavenslave to a Musician +5 points
  ],
  special-rules: "Expendable, Mixed Unit, Scurry Away, Strength in Numbers",
  special-rules-body: (
    rule("Cornered Rats")[If a unit of Skavenslaves breaks from combat, any units that they flee through (friend or foe) immediately take D6 Strength 3 hits for each complete rank of 5 or more Skavenslaves left in the unit. The broken unit is then removed as casualties.],
  ),
  notes: [
- You must include 1 Pawleader for every 20 Skavenslaves in the unit.
  ],
  order: ("unit-size", "troop-type", "handlers", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("RAT SWARMS",
  compact: true,
  profiles: (
    (name: "Rat Swarm", m: 6, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 4, a: 8, ld: 3, points: 25),
  ),
  unit-size: "2-10",
  troop-type: "Swarm (Skaven)",
  base-size: "40x40",
)

#unit("NIGHT RUNNERS",
  profiles: (
    (name: "Night Runner", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 5, points: 6),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  options: [
- May replace throwing weapons with slings +2 points/model
- May upgrade one Night Runner to a Leader +5 points
  ],
  special-rules: "Scurry Away, Skirmishers, Strength in Numbers",
  notes: [
- If your army General is a Clan Eshin Character, the requirement to take Clanrats does not apply.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("GIANT RATS",
  profiles: (
    (name: "Giant Rat", m: 6, ws: 3, bs: 0, s: 2, t: 2, w: 1, i: 4, a: 1, ld: 3, points: 2),
    (name: "Packmaster", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 5),
  ),
  unit-size: "10+",
  troop-type: "War Beast (Skaven, Clan Moulder)",
  handlers: "2 Packmasters (Skaven, Clan Moulder)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, whip, light armour (Packmaster only)",
  special-rules: "Fight in Extra Ranks (1), Mixed Unit, Scurry Away, Strength in Numbers",
  notes: [
- You must include 1 Packmaster for every 5 Giant Rat in the unit.
  ],
)

#unit("PLAGUE MONKS",
  profiles: (
    (name: "Plague Monk", m: 5, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: 8),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  options: [
- May upgrade one Plague Monk to a Leader +5 points
- May upgrade one Plague Monk to a Musician +5 points
- May upgrade one Plague Monk to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Frenzy, Scurry Away, Strength in Numbers",
  notes: [
- If your army General is a Clan Pestilens Character, the requirement to take Clanrats does not apply.
  ],
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

= SPECIAL UNITS

#unit("GUTTER RUNNERS",
  first: true,
  profiles: (
    (name: "Gutter Runner", m: 6, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 6, points: 10),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  equipment-body: (
    rule("Snare-nets")[When it is their turn to attack, roll a D6 for each model armed with snare-nets. On a 2+, one enemy model in base contact is ensnared and suffers \-1 Attack for the remainder of the close combat phase.],
  ),
  options: [
- May have Poisoned Attacks (excluding slings) +2 points/model
- May take snare-nets +2 points/model
- May replace throwing weapons with slings +2 points/model
- May upgrade one Gutter Runner to a Leader +5 points
  ],
  special-rules: "Ambushers, Dodge (6+), Scurry Away, Strength in Numbers, Scouts, Skirmishers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("WOLF RATS",
  profiles: (
    (name: "Wolf Rat", m: 8, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 4, points: 6),
  ),
  unit-size: "5+",
  troop-type: "War Beast (Skaven, Clan Moulder)",
  base-size: "25x50",
  options: [
- May take one of the following:
  - Pox Feeders +1 point/model
  - Warpstone Shard Teeth +1 point/model
  - Bloated Mutants +2 points/model
  ],
  special-rules: "Frenzy, Scurry Away, Strength in Numbers",
  upgrades: (
    rule("Bloated Mutants")[The Wolf Rats gain +1 Toughness but suffer \-1 to their Initiative.],
    rule("Pox Feeders")[The unit gains the Poisoned Attacks special rule.],
    rule("Warpstone Shard Teeth")[The unit gains the Armour Piercing (1) and Magical Attacks special rules.],
  ),
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules", "upgrades"),
)

#unit("RAT OGRES",
  profiles: (
    (name: "Rat Ogre", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 5, points: 33),
    (name: "Packmaster", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 5),
  ),
  unit-size: "2+",
  troop-type: "Monstrous Infantry (Skaven, Clan Moulder)",
  handlers: "1 Packmaster (Skaven, Clan Moulder)",
  base-size: "40x40 or 50x50 (Rat Ogres), 20x20 or 25x25 (Packmasters)",
  equipment: "Hand weapon, whip, light armour (Packmaster only)",
  options: [
- May choose up to two of the following:
  - Brain Transplant +3 points/model
  - Extra Extremities +3 points/model
  - Quadrupedal +3 points/model
  - Armoured +5 points/model
  - Resilient +6 points/model
  - Troll-blooded +6 points/model
  ],
  special-rules: "Frenzy, Mixed Unit, Scurry Away, Strength in Numbers, Stupidity",
  upgrades: (
    rule("Armoured")[All Rat Ogres in the unit gain medium armour.],
    rule("Brain Transplant")[All Rat Ogres in the unit are no longer subject to Stupidity or Frenzy.],
    rule("Extra Extremities")[All Rat Ogres in the unit gain +1 Attack.],
    rule("Quadrupedal")[All Rat Ogres in the unit gain +1 Movement.],
    rule("Resilient")[All Rat Ogres in the unit gain +1 Toughness.],
    rule("Troll-blooded")[All Rat Ogres in the unit gain the Regeneration (5+) special rule.],
  ),
  notes: [
- You must include 1 Packmaster for every 2 Rat Ogres in the unit.
  ],
  order: ("unit-size", "troop-type", "handlers", "base-size", "equipment", "options", "special-rules", "upgrades", "notes"),
)

#unit("PLAGUE CENSER BEARERS",
  profiles: (
    (name: "Plague Censer Bearer", m: 5, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: 13),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  equipment: "Plague censer",
  options: [
- May upgrade one Plague Censer Bearer to a Leader +5 points
  ],
  special-rules: "Frenzy, Hatred, Scurry Away, Skirmishers, Strength in Numbers",
  special-rules-body: (
    rule("Plague Disciples")[A unit of Plague Censer Bearers within 3" of a friendly units of Plague Monks may use the "Look Out, Sir" rule as if they were characters. In addition, if the Plague Censer Bearers are within 6" of a Plague Furnace they have the Stubborn special rule.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("PLAGUE RAT SWARMS",
  compact: true,
  profiles: (
    (name: "Plague Rat Swarm", m: 6, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 4, a: 8, ld: 3, points: 30),
  ),
  unit-size: "2-10",
  troop-type: "Swarm (Skaven, Clan Pestilens)",
  base-size: "40x40",
  special-rules: "Poisoned Attacks",
)

#unit("WARPLOCK JEZZAILS",
  profiles: (
    (name: "Warplock Jezzail", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 20),
  ),
  unit-size: "3+",
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x25 or 30x60",
  equipment: "Hand weapon, Warplock Jezzail, pavise",
  equipment-body: [
- *Warplock Jezzail:* Warplock Jezzails have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "6", "Armour Piercing (1), Magical Attacks, Move or Fire, Unstable Ammunition"))

- *Pavise:* A pavise gives the model a 4+ armour save against missile attacks to the front.
  ],
  options: [
- May upgrade one Warplock Jezzail to a Leader +5 points
  - May take Warlock Optics +10 points
  ],
  special-rules: "Scurry Away, Strength in Numbers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("POISONED WIND GLOBADIERS",
  profiles: (
    (name: "Poisoned Wind Globadier", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 8),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Poisoned Wind Globes, gas mask",
  equipment-body: [
- *Poisoned Wind Globes:* Poisoned Wind Globes have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8\"", "n/a", "Ignores Armour saves, Magical Attacks, Quick to Fire"))

Models hit by a Poisoned Wind Globe must pass a Toughness test or suffer a Wound. On the To Hit roll of a 1, the Globadier hits himself instead (including when firing into close combat).
  ],
  options: [
- May take light armour +0.5 point/model
- May upgrade one Poisoned Wind Globadier to a Leader +5 points
  ],
  special-rules: "Scurry Away, Skirmishers, Strength in Numbers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("WARPFIRE THROWER",
  profiles: (
    (name: "Warpfire Thrower", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 65),
  ),
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, Warpfire Thrower",
  equipment-body: [
- *Warpfire Thrower:* A Warpfire Thrower is a Fire Thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "5", "Flaming Attacks, Magical Attacks, Multiple Wounds (D3), Slow to Fire"))

In case a Misfire is rolled, roll a D6 and consult the Warpfire Thrower Misfire chart.

#chartlabel("WARPFIRE THROWER MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Whompfff: Place the large round template over the Warpfire Thrower. Any model touched by the
template suffers a Hit from the Warpfire Thrower. After this, the Warpfire Thrower is removed from
play as a casualty."), ("3-4", "Fuel Leak: The Weapon Team flees in random direction as decided by the scatter dice before
exploding. After movement, the Warpfire Thrower explodes exactly as the Whompfff result above."), ("5-6", "Pppphhtt: The Warpfire Thrower may not fire this turn.")))
  ],
  special-rules: "Scurry Away, Weapon Team",
  notes: [
- Each Warpfire Thrower, Ratling Gun, Warpvolt Scourger and Poisoned Wind Mortar counts as the same Special choice for the purpose of taking duplicate units.
  ],
)

#unit("RATLING GUN",
  profiles: (
    (name: "Ratling Gun", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 55),
  ),
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, Ratling Gun",
  equipment-body: [
- *Ratling Gun:* A Ratling Gun is an Organ Gun with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Magical Attacks, Multiple Shots (Artillery Dice), Rapid Fire, Ponderous"))

After the first Artillery Dice is rolled, you can now decide whether to stop or to roll an additional Artillery Dice, and repeat the process up to a maximum of 3 Artillery Dice. In case a Misfire is rolled, roll a D6 and consult the Ratling Gun Misfire chart, no further Artillery Dice may be rolled.

#chartlabel("RATLING GUN MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Slam: Resolve the shots from the previous Artillery Dice rolled. After this, the Ratling Gun is
removed from play as a casualty."), ("3-4", "Spins Wildly: Resolve the shots from the previous Artillery Dice rolled. After this, the Ratling Gun
fires D6 shots at all units (roll separately for each one) within 24\" that you can draw Line of Sight to
in all directions from the Ratling Gun."), ("5-6", "Bbbbrrrrrttt: Resolve the shots from the previous Artillery Dice rolled. The last Artillery Dice is
ignored.")))
  ],
  special-rules: "Scurry Away, Weapon Team",
  notes: [
- Each Warpfire Thrower, Ratling Gun, Warpvolt Scourger and Poisoned Wind Mortar counts as the same Special choice for the purpose of taking duplicate units.
  ],
)

#unit("WARPVOLT SCOURGER",
  profiles: (
    (name: "Warpvolt Scourger", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 50),
  ),
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, Warpvolt Scourger",
  equipment-body: [
- *Warpvolt Scourger:* A Warpvolt Scourger is an Artillery weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "6", "Lightning Attacks, Magical Attacks, Multiple Shots (D6), Ponderous"))

If you roll a 1 when determining the number of shots fired, the Warpvolt Scourger has Misfired. Roll a D6 and consult the Warpvolt Scourger Misfire chart.

#chartlabel("WARPVOLT SCOURGER MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Electric Surge: Place the large round template over the Warpvolt Scourger. Any model touched by
the template suffers a Hit from the Warpvolt Scourger. After this, the Warpvolt Scourger is removed
from play as a casualty."), ("3-4", "Short Circuit: All units within 6\" suffer D3 Hits from the Warpvolt Scourger. The Warpvolt
Scourger suffer 1 Hit."), ("5-6", "Power Outage: The Warpvolt Scourger does not fire this turn.")))
  ],
  special-rules: "Scurry Away, Weapon Team",
  notes: [
- Each Warpfire Thrower, Ratling Gun, Warpvolt Scourger and Poisoned Wind Mortar counts as the same Special choice for the purpose of taking duplicate units.
  ],
)

#unit("POISONED WIND MORTAR",
  profiles: (
    (name: "Poisoned Wind Mortar", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 60),
  ),
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, Poisoned Wind Mortar, gas mask",
  equipment-body: [
- *Poisoned Wind Mortar:* A Poisoned Wind Mortar is a Mortar that uses the small template and the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8-36\"", "n/a", "Ignores Armour Saves, Magical Attacks, Slow to Fire"))

Models hit by a Poisoned Wind Mortar must pass a Toughness test or suffer a Wound. If the Poisoned Wind Mortar moves and fires in the same turn, the shot will always be fired indirectly. In case a Misfire is rolled, roll a D6 and consult the Poisoned Wind Mortar Misfire chart.

#chartlabel("POISONED WIND MORTAR MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Foomph: Place the large round template over the Poisoned Wind Mortar. Any model touched by the
template suffers a Hit from the Poisoned Wind Mortar. After this, the Poisoned Wind Mortar is
removed from play as a casualty."), ("3-4", "Clogged: The Poisoned Wind Mortar may not fire this turn."), ("5-6", "Wildly off Target: The template scatters 3D6\" from its original position. Resolve any hits as normal.")))
  ],
  special-rules: "Scurry Away, Weapon Team",
  notes: [
- Each Warpfire Thrower, Ratling Gun, Warpvolt Scourger and Poisoned Wind Mortar counts as the same Special choice for the purpose of taking duplicate units.
  ],
)

#unit("WARP-GRINDER",
  profiles: (
    (name: "Warp-grinder", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 5, points: 30),
  ),
  troop-type: "Infantry (Skaven, Clan Skryre)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, Warp-grinder",
  equipment-body: [
- *Warp-grinder:* A Warp-grinder uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "4", "Impact Hits (D3), Magical Attacks"))

The Warp-grinder fights in close combat using its crew's Initiative, but not their Attack profile. The Warp- grinder inflicts D3 Strength 4 Hits with the Magical Attacks special rule in each Close Combat phase.

A Warp-grinder must deploy with one friendly Infantry unit chosen before deployment. These units have the Ambushers special rule, with the following exceptions.

When these units enter the battle in the Remaining Moves sub-phase, they do not move onto the board as reinforcements in the normal way. Instead, when the Warpgrinder and their unit enter the battle, place a small marker (such as a coin) anywhere on the battlefield, but not in impassable terrain or within 1" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the Warpgrinder and their unit in a legal formation such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your unit into base contact with the enemy unit in their front arc; your unit will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the Warpgrinder and their unit do not emerge. Instead, remove the marker and roll on the Warp-grinder Misfire table. If they emerge successfully, they may act normally this turn.

#chartlabel("WARP-GRINDER MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Cave-in: The Warp-grinder and any unit deploying with it are removed as casualties."), ("3-4", "Partial Collapse: Make a Strength test for each model in the parent unit, if passed the model is
placed as normal. Models that fail are removed as casualties. Any models that survive may not move
or charge on the turn they emerge after a Partial Collapse. If the models emerge into close combat
they have the Always Strikes Last special rule for the remainder of the turn. After this, the Warp-
grinder is removed from play as a casualty."), ("5-6", "Should Have Taken That Left Turn: Your opponent places the marker anywhere within 18\" of the
original position on the table and this is where the Warp-grinder and any unit deploying with it
emerge. They cannot move or charge on the turn they emerge.")))
  ],
  special-rules: "Scurry Away, Weapon Team",
)

#unit("DOOM-FLAYER",
  profiles: (
    (name: "Doom-flayer", m: 6, ws: "-", bs: "-", s: 4, t: 4, w: 2, i: "-", a: "-", ld: "-", points: 30),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 4, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 6+, Skaven, Clan Skryre)",
  crew: "1 Crew (Skaven)",
  base-size: "25x50, 30x60 or 50x50",
  equipment: "Hand weapon, light armour",
  options: [
- May take an additional crew +5 points
  ],
  special-rules: "Scurry Away",
  special-rules-body: [
- *The Best Defence:* The Doom-flayer gains +2 to its armour save against all models attacking it from the front.
- *Whirling Death:* Instead of attacking normally, the Doom-flayer causes one artillery dice worth of Impact Hits at the start of each close combat phase. In case a Misfire is rolled, roll a D6 and consult the Doom-flayer Mishap chart.

#chartlabel("DOOM-FLAYER MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Ba-Blam: Place the large round template over the Doom-flayer. Any model touched by the template
suffers a Strength 4 Hit with the Armour Piercing (1) special rule. After this, the Doom-flayer is
removed from play as a casualty."), ("3-5", "ZZZZzap: The Doom-flayer and all models in base contact take a Strength 4 Hit with the Lightning
Attacks special rule."), ("6", "Power Failure: The Doom-flayer may not attack or use The Best Defence this turn.")))
  ],
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules"),
)

= RARE UNITS

#unit("ESHIN TRIAD",
  first: true,
  profiles: (
    (name: "Assassin Adept", m: 6, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 2, ld: 7, points: 35),
  ),
  unit-size: "3",
  troop-type: "Infantry (Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  options: [
- May take tail weapons +2 points/model
- May take Smoke Bombs +5 points/model
  ],
  special-rules: "Ambushers, Dodge (5+), Scurry Away, Poisoned Attacks, Scouts, Skirmishers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("STORMFIEND",
  profiles: (
    (name: "Stormfiend", m: 6, ws: 4, bs: 3, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 7, points: 70),
  ),
  troop-type: "Monstrous Creature (Skaven, Clan Moulder)",
  base-size: "50x50",
  equipment: "Hand weapon, light armour",
  equipment-body: [
- *Doom-Flayer Gauntlets:* Doom-Flayer Gauntlets use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "+2D3 Attacks, Impact Hits (D3)"))

- *Grinderfists:* Grinderfists use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Magical Attacks"))

Rather than attacking normally, a model with Grinderfists inflicts 2D3 Impact Hits at the start of each round of Close Combat.

A Stormfiend with Grinderfists has the Ambushers special rule, with the following exceptions.

When the Stormfiend enters the battle in the Remaining Moves sub-phase, it does not move onto the board as reinforcements in the normal way. Instead, when the Stormfiend enters the battle, place a small marker (such as a coin) anywhere on the battlefield, but not in impassable terrain or within 1"" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the Stormfiend such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your unit into base contact with the enemy unit in their front arc; your unit will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the Stormfiend does not emerge. Instead, the unit is delayed and you will need to roll the scatter and artillery dice again for them next round.

- *Ratling Cannons:* Ratling Cannons are Artillery weapons that use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Magical Attacks, Multiple Shots (3D6), Rapid Fire"))

Each To Hit roll result of 1 inflicts one hit on the closest friendly unit in the firing unit's front arc that is within range. If there are no eligible friendly units, then the attack misses.

- *Shock Gauntlets:* Shock Gauntlets use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "+1 Attack, Impact Hits (D3), Lightning Attacks, Magical Attacks"))

- *Warpfire Projectors:* Warpfire Projectors are Fire Throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "5", "Flaming Attacks, Magical Attacks, Multiple Wounds (D3), Slow to Fire"))

Any failed To Wound rolls with Warpfire Projectors may be re-rolled. If the Warpfire Projector misfires, the weapon inflicts D6 automatic hits on the closest friendly unit in the firing unit's front arc that is within 12". If there are no eligible friendly units, the Warpfire Projector simply does not fire this turn.

- *Windlaunchers:* Windlaunchers are Mortars that use the small round temple and the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8-36\"", "n/a", "Ignores Armour saves, Magical Attacks, Slow to Fire"))

Models hit by a Plague Wind must pass a Toughness test or suffer a Wound. Successful tests must be re-rolled. Do not roll on the Stone Thrower Misfire chart if the Windlaunchers misfire. Instead, the template for the attack scatters 2D6"
  ],
  options: [
- Must pick one of the following:
  - Doom-flayer Gauntlets +15 points
  - Grinderfists +20 points
  - Shock Gauntlets +20 points
  - Ratling Cannons +45 points
  - Windlaunchers +50 points
  - Warpfire Projectors +60 points
- May take medium armour (if armed with Doom-flayer Gauntlets, Shock Gauntlets or Grinderfists) +4 points
  ],
  special-rules: "Scurry Away",
  notes: [
- You may take 1\-2 Stormfiends as a single Rare choice.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("BROOD HORROR",
  profiles: (
    (name: "Brood Horror", m: 8, ws: 3, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 5, ld: 6, points: 150),
  ),
  troop-type: "Monster (Skaven, Clan Moulder)",
  base-size: "50x100 or 60x100",
  options: [
- May take one of the following:
  - Skryre Claws +5 points
  - Rusted Armour +10 points
  - Lash Tail +15 points
  - Pestilent Breath +25 points
  ],
  special-rules: "Poisoned Attacks, Scurry Away",
  special-rules-body: (
    rule("Foul Ichor")[If a Brood Horror is slain, all units in base contact with the Brood Horror suffer 2D6 Strength 2 hits, distributed as shooting attacks.],
  ),
  upgrades: (
    rule("Lash Tail")[The Brood Horror gains +1 Attack.],
    rule("Pestilent Breath")[The Brood Horror gains a Strength 2 Breath Weapon which Ignores Armour saves.],
    rule("Rusted Armour")[The Brood Horror gains medium armour.],
    rule("Skryre Claws")[The Brood Horror gains the Armour Piercing (1) and Magical Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "options", "special-rules", "upgrades"),
)

#unit("HELL PIT ABOMINATION",
  profiles: (
    (name: "Hell Pit Abomination", m: "*", ws: 3, bs: 1, s: 6, t: 5, w: 6, i: 4, a: "*", ld: 8, points: 225),
  ),
  troop-type: "Monster (Skaven, Clan Moulder)",
  base-size: "60x100",
  options: [
- May take Warpstone Spikes +10 points
  ],
  special-rules: "Impact Hits (D6), Immunity (Psychology), Random Movement (3D6), Regeneration (4+), Stubborn",
  special-rules-body: [
- *Shambling Horror:* If two or more 1's or any triples are rolled when the Abomination is making its Random Movement, do not move the Hell Pit Abomination; instead roll a D6 on the Berserk Abomination chart.

#chartlabel("BERSERK ABOMINATION CHART")
#chart((("D6", "Result"), ("1", "Grinding Halt: The beast does not move this turn."), ("2-5", "Blind Fury: The model moves the distance rolled in a random direction determined by a scatter
dice."), ("6", "Fluid Injected: The Hell Pit Abomination moves as normal, and will increase its Strength by +1
for the remainder of the game. Further Berserk Abomination rolls of 6 will not increase the beast’s
profile, but will instead immediately inflict D6 wounds on it.")))

- *Special Close Combat Attacks:* Abominations do not attack in the same way as other creatures. Roll a D6 when it is the Hell Pit Abomination's turn to attack to see what the mutated beast does:

#chartlabel("CLOSE COMBAT ATTACKS CHART")
#chart((("D6", "Result"), ("1-2", "Feed: All enemy models in base contact suffer an automatic Strength 6 hit with the Multiple
Wounds (D3) special rules."), ("3-4", "Flailing Fists: The Hell Pit Abomination attacks using the Random Attacks (2D6) special rule."), ("5-6", "Avalanche of Flesh: Every enemy model in base contact with the Abomination must pass an
Initiative test or suffer an automatic Strength 6 hit. Additionally, the Hell Pit Abomination attacks
using the Random Attacks (D6) special rule.")))

- *Too Horrible to Die:* As soon as the Hell Pit Abomination loses its last Wound, roll a D6 and check the Too Horrible to Die chart:

#chartlabel("TOO HORRIBLE TO DIE CHART")
#chart((("D6", "Result"), ("1-3", "Dead: The Hell Pit Abomination is removed from play as casualty."), ("4-5", "The Rats Emerge: All units in base contact with the Abomination take 2D6 Strength 2 Hits. The
Hell Pit Abomination is then removed from play as a casualty."), ("6", "It's Alive: The Hell Pit Abomination remains alive with D3 Wounds left.")))
  ],
  upgrades: (
    rule("Warpstone Spikes")[The Hell Pit Abomination gains the Magic Resistance (1) and Magical Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "options", "special-rules", "upgrades"),
)

#unit("PLAGUECLAW CATAPULT",
  profiles: (
    (name: "Plagueclaw Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Plague Monk Crew", m: 5, ws: 3, bs: 3, s: 3, t: 4, w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "War Machine (Stone Thrower, Clan Pestilens)",
  crew: "3 Plague Monk Crew (Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Plagueclaw Catapult",
  equipment-body: [
- *Plagueclaw Catapult:* The Plagueclaw Catapult uses the large round temple and the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "2", "Ignores Armour Saves"))

Any unit that takes one or more wounds must immediately take a Panic test. In case a Misfire is rolled, roll a D6 and consult the Plagueclaw Misfire chart.

#chartlabel("PLAGUECLAW MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Twang: The war machine is destroyed and is removed from the battle."), ("3-5", "Suspiciously Off Target: The opposing player may reposition the template anywhere within 3D6\" of
the intended target position."), ("6", "Accident: The Plagueclaw Catapult cannot fire this turn.")))
  ],
  special-rules: "Frenzy",
)

#unit("WARP LIGHTNING CANNON",
  profiles: (
    (name: "Warp Lightning Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: "-", i: 4, a: 1, ld: 5, points: ""),
  ),
  troop-type: "War Machine (Great Cannon, Clan Skryre)",
  crew: "3 Crew (Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Warp Lightning Cannon",
  equipment-body: [
- *Warp Lightning Cannon:* The Warp Lightning Cannon uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("72\"", "Artillery", "Lightning Attacks, Magical Attacks, Multiple Wounds (D6)"))

Dice

This is a non-physical attack. In case a Misfire is rolled on the first artillery dice, roll a D6 and consult the Warp Lightning Misfire chart.

The Warp Lightning Cannon fires like the normal cannon, with the following exceptions. A roll of a Misfire on the bounce means no hits at all are suffered. If a number is rolled, centre the small round template where the shot first lands before the bounce, to represent the crackling and exploding ball of energy. The shot then bounces like a normal cannon ball.

All models touched by the template or the bounce suffer a hit at a Strength equal to the result on the Artillery Dice for the bounce roll. Note that only the model under the centre of the template and the bounce itself suffers Multiple Wounds.

The Warp Lightning Cannon cannot fire grapeshot.

#chartlabel("WARP LIGHTNING MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Meltdown: The Warp Lightning Cannon is removed from play as a casualty."), ("3-5", "Energy Overload: Roll the scatter dice and turn the cannon to face the direction rolled. Resolve a
shot at maximum Strength (10) that emanates from the barrel and travels along the ground in a
straight line 4D6\" before terminating in a large round template."), ("6", "Spluttering Fizzle: The Warp Lightning Cannon cannot fire this turn, but can shoot as normal next
turn.")))
  ],
)

#unit("RATLING WARPBLASTER",
  profiles: (
    (name: "Ratling Warpblaster", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  troop-type: "War Machine (Organ Gun, Clan Skryre)",
  crew: "5 Crew (Skaven)",
  base-size: "25x50, 30x60 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Scurry Away",
  special-rules-body: [
- *Ratling Warpblaster:* A Ratling Warpblaster uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Armour Piercing (1), Magical Attacks, Multiple Shots (Artillery Dice), Rapid Fire"))

After the first Artillery Dice is rolled, you can now decide whether to stop or to roll an additional Artillery Dice, and repeat the process up to a maximum of 3 Artillery Dice. In case a Misfire is rolled, roll a D6 and consult the Warpblaster Misfire chart, no further Artillery Dice may be rolled.

#chartlabel("WARPBLASTER MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Slam: Resolve the shots from the previous Artillery Dice rolled. After this, the Ratling Warpblaster is
removed from play as a casualty."), ("3-4", "Uncontrollable Recoil: Resolve the shots from the previous Artillery Dice rolled. After this, the
Ratling Warpblaster fires D6 shots at all units (roll separately for each one) within the model's front
arc that you can draw Line of Sight to."), ("5-6", "Bbbbrrrrrttt: Resolve the shots from the previous Artillery Dice rolled. The last Artillery Dice is
ignored.")))
  ],
)

#unit("DOOMWHEEL",
  profiles: (
    (name: "Doomwheel", m: "*", ws: "-", bs: "-", s: 6, t: 6, w: 5, i: "-", a: "-", ld: "-", points: 175),
    (name: "Warlock Engineer", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 4, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour save 4+, Skaven, Clan Skryre)",
  crew: "1 Warlock Engineer (Skaven)",
  base-size: "50x100",
  equipment: "Hand weapon, scythes",
  special-rules: "Immunity (Psychology), Random Movement (3D6), Terror",
  special-rules-body: [
- *Grind Attack:* At the beginning of each round of combat in which it did not charge, the Doomwheel inflicts D3+1 Impact Hits.
- *Loss of Control:* At the end of any phase in which a Doomwheel that is not in close combat or fleeing suffers a Wound, the Skaven player must take a Loss of Control test. Roll a D6 for each wound suffered in that phase. On the roll of one or more 1's, the Doomwheel goes immediately Out of Control (as detailed in the Doomwheel Misfire chart).
- *Zzzzap:* In each friendly Shooting phase, even when engaged in close combat or when fleeing, the Doomwheel automatically unleashes bolts of warp lightning using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "Artillery", "Lightning Attacks, Magical Attacks, Multiple Shots (3), Multiple Wounds (D3)"))

Each warp lightning bolt will automatically hit the nearest unit (friend or foe), regardless of line of sight and direction. This is a non-physical attack.

The Warlock Engineer may choose to take a Leadership test in an attempt to stop the Doomwheel from firing. If the test is failed, the machine fires as normal.

Roll an Artillery dice to determine the Strength for the bolts, measuring from the Doomwheel's base. If the closest unit dies from the first bolt, the second bolt hits the next closest unit in range, and so on. If two targets are equidistant, the owning player may choose which unit is struck.

If you roll a misfire result something has gone awry. No more shots are fired this turn and you must immediately roll a D6 and consult the Doomwheel Mishap chart.

Dice

#chartlabel("DOOMWHEEL MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "Disaster: The Doomwheel immediately takes D6 Strength 6 hits. In addition, from now on roll one
less D6 for the Doomwheel's movement. If reduced to zero dice the Doomwheel is removed as a
casualty."), ("3-5", "Out of Control: If the Doomwheel is unengaged, it immediately moves in a random direction
determined by the scatter dice. If it hits any unit (friend or foe) the Doomwheel inflicts Impact Hits
as normal and counts as charging if the unit is an enemy. In the case of a Doomwheel hitting a
friendly unit, resolve Impact Hits immediately after contact and then move the Doomwheel back 1\"."), ("6", "Burst of Speed: The Doomwheel gains the Random Movement (4D6) special rule.")))
  ],
)

= SPECIAL CHARACTERS (LORDS)

#unit("GREY SEER THANQUOL",
  first: true,
  subtitle: "Favoured agent of the Council of Thirteen",
  profiles: (
    (name: "Thanquol", m: 5, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 6, a: 1, ld: 7, points: 320),
    (name: "Boneripper", m: 6, ws: 3, bs: 1, s: 5, t: 5, w: 4, i: 1, a: 4, ld: 10, points: ""),
    (name: "Boneripper Mk II", m: 6, ws: 3, bs: 1, s: 6, t: 5, w: 5, i: 1, a: 5, ld: 10, points: ""),
  ),
  troop-type: "Infantry (Special Character, Skaven). Boneripper is Monstrous Infantry, Boneripper Mk II is",
  troop-type-body: [
Monster.
  ],
  base-size: "20x20 or 25x25 (Thanquol), 40x40 or 50x50 (Boneripper), 100x50 or 100x60 (Boneripper Mk II)",
  equipment: "Hand weapon, 5 Warpstone Tokens (Thanquol only), Warpfire Thrower (Boneripper and Boneripper",
  equipment-body: [
Mk II only)

- *Warpfire Thrower:* Warpfire Throwers are Fire Throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "5", "Flaming Attacks, Magical Attacks, Multiple Wounds (D3), Slow to Fire"))

Boneripper may fire one Warpfire Thrower each turn, while Boneripper Mk II can fire two Warpfire Throwers each turn. These attacks are completely resolved one at a time, and may be directed at different targets if desired. Boneripper Mk II may re-roll all failed rolls To Wound with them.

Any failed To Wound rolls with Warpfire Projectors may be re-rolled. If the Warpfire Projector misfires, the weapon inflicts D6 automatic hits on the closest friendly unit in the firing unit's front arc that is within 12". If there are no eligible friendly units, the Warpfire Projector simply does not fire this turn.
  ],
  magic: "Thanquol is a Level 4 Wizard who uses spells from the Lore of Ruin and/or Lore of Plague. In addition, he",
  magic-body: [
can choose the _Curse of the Horned Rat_ spell.
  ],
  magic-items: (
    rule("Amulet of the Horned One")[Talisman. As long as Thanquol has at least a single Wound remaining, at the beginning of each of his turns, Thanquol can use the amulet to heal himself. On a roll of 5+, Thanquol regains a single Wound.],
    rule("Staff of the Horned One")[Arcane Item. The Staff of the Horned One gives Thanquol an additional spell.],
  ),
  options: [
- Must choose one of the following:
  - Be accompanied by Boneripper +160 points
  - Be mounted on Boneripper Mk II +320 points
- May exchange Warpfire Thrower for Warpfire Braziers (Boneripper Mk II only) free
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour, Unbreakable (Bone-Ripper only)",
  special-rules-body: (
    rule("Blessing of the Horned Rat")[Thanquol has a 4+ Ward Save. For every wound Thanquol saves, one friendly model within 6" (owning player's choice) takes a wound instead. Normal saves apply. If no friendly model is within 6" the Wound fails to deflect anywhere and is ignored.],
    rule("Bodyguard of Thanquol")[If, at the start of any friendly turn, Boneripper is not within 12" of Thanquol, he cannot do anything at all, and in combat he will be hit automatically and will not strike back. If the game ends while Boneripper is shut down, he counts as a casualty. If Thanquol is slain or flees off the table, Boneripper is removed as a casualty as well.],
    rule("Warpstone Addiction")[When casting a spell, if Thanquol rolls a 1 with any power dice generated by a Warpstone Token, he can re-roll the dice. The second result will cause a wound on a roll of 1 or a 2.],
  ),
  upgrades: [
- *Warpfire Braziers:* Warpfire Braziers have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Flaming Attacks, Magical Attacks, Multiple Wounds (D3)"))

At the beginning of any Close Combat phase all models in base contact (friend or foe) with Boneripper Mk II must pass a Toughness test or suffer a single wound with the Ignores Armour Saves and Magical Attacks special rules. All Clan Pestilens models gain a +1 bonus for these tests. Because Boneripper Mk II has four Warpfire Braziers, he may re-roll all failed rolls To Wound with them.
  ],
  order: ("troop-type", "base-size", "equipment", "magic", "magic-items", "options", "special-rules", "upgrades"),
)

#unit("QUEEK HEADTAKER",
  subtitle: "Right Claw of Clan Mors",
  profiles: (
    (name: "Queek Headtaker", m: 5, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 8, points: 225),
  ),
  troop-type: "Infantry (Special Character, Skaven)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Dwarf-Gouger")[Magic Weapon. Two hand weapons. Attacks with this weapon have the Ignores Armour saves special rule. In addition, against Dwarfs, it always wounds on a 2+.],
    rule("Warpstone Armour")[Magic Armour. Heavy armour. For each successful armour save made in close combat, the armour inflicts a Strength 5 hit against the enemy that struck the blow.],
    rule("The Foul Pendant")[Talisman. The Foul Pendant gives Queek the Ward Save (5+) special rule.],
  ),
  special-rules: "Hatred (Dwarfs, Goblins, Orcs), Scurry Away, Strength in Numbers",
  special-rules-body: (
    rule("The Red Guard")[Queek must be accompanied by a unit of Stormvermin chosen from the army list at a cost of +2 points per model. This unit has +1 Strength. Queek may never choose to leave this unit. No Grey Seers may join the unit.],
    rule("Trophy Heads")[Queek must issue or accept challenges whenever possible. When fighting in a challenge, Queek gains +1 To Hit and To Wound.],
  ),
)

#unit("SPINETAIL",
  subtitle: "Warlord of Clan Klaw",
  profiles: (
    (name: "Spinetail", m: 5, ws: 6, bs: 4, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 7, points: 160),
  ),
  troop-type: "Infantry (Special Character, Skaven)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Blade of Corruption")[Magic Weapon. Two hand weapons. The wielder of this sword always wounds on at least a 3+, regardless of the enemy's Toughness. For each wound suffered (after saves), the enemy model must pass a Toughness test or suffer an additional Wound, with no saves allowed.],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  special-rules-body: (
    rule("Spined Tail")[If Warlord Spinetail is in base contact with an enemy Infantry Character at the start of any close combat phase, he can attempt to throttle them with his tail. If he does, both you and your opponent roll a D6. If you roll the higher result, the enemy Character suffers one Wound which Ignores Armour Saves. If your result is at least double your opponent’s, that model suffers D3 Wounds which Ignores Armour Saves instead.],
    rule("Attack-attack")[Any unit joined by Spinetail may re-roll To Wound rolls of 1 in close combat.],
  ),
  order: ("troop-type", "base-size", "magic-items", "options", "special-rules"),
)

#unit("SKREECH VERMINKING",
  subtitle: "The Rat King",
  profiles: (
    (name: "Skreech Verminking", m: 8, ws: 8, bs: 4, s: 6, t: 6, w: 6, i: 10, a: 5, ld: 8, points: 470),
  ),
  troop-type: "Mosnter (Special Character, Skaven)",
  base-size: "100x50 or 100x60",
  magic: "Skreech Verminking is a Level 4 Wizard who uses spells from the Lore of Ruin, Lore of Plague and/or Lore",
  magic-body: [
of Stealth. In addition, he knows the _Curse of the Horned Rat_ spell.
  ],
  magic-items: (
    rule("Doom Glaive")[Magic Weapon. Attacks made with this weapon have the Multiple Wounds (D3) special rule.],
    rule("Plaguereaper")[Magic Weapon. Attacks made with these weapons have the Always Strikes First special rule. This replaces the Doom-glaive.],
  ),
  special-rules: "Daemonic (see Verminlords)",
  special-rules-body: (
    rule("Master of Ruin")[Skreech Verminking re-rolls failed casting attempts when attempting to cast _Curse of the Horned Rat._],
    rule("Ruinous Arsenal")[At the start of each round of Close Combat, you must declare which weapon Skreech Verminking is going to use for that turn.],
  ),
)

#unit("DEATHMASTER SNIKCH",
  subtitle: "Chief Assassin of Clan Eshin",
  profiles: (
    (name: "Deathmaster Snikch", m: 6, ws: 8, bs: 6, s: 4, t: 4, w: 3, i: 10, a: 5, ld: 8, points: 280),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Weeping Blades, Warpstars",
  magic-items: (
    rule("Bands of Power")[Enchanted Item. Bound Spell (power level 4). The Bands of Power contain an *augment* spell that can be cast on Snikch himself. If cast, Snikch will double his Strength until the start of his next Magic phase.],
    rule("The Cloak of Shadows")[Talisman. Enemy units cannot charge or target Snikch with missile attacks or spells if they are more than 12" away from him. Within 12", he can only be charged or targeted by first rolling a 4+. If the test is failed, the unit may choose a new target as normal. This item has no effect as long as Snikch is Hidden.],
  ),
  special-rules: "Dodge (5+), Hidden, Poisoned Attacks, Scouts, Scurry Away, Sensei (see Master Assassin)",
  special-rules-body: [
SPECIAL CHARACTERS
  ],
)

#unit("THROT THE UNCLEAN",
  subtitle: "Master Mutator of Clan Moulder",
  profiles: (
    (name: "Throt the Unclean", m: 5, ws: 6, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 7, points: 175),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Moulder)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Creature-killer")[Magic Weapon. Things-catcher. The Creature-killer gives Throt the Heroic Killing Blow special rule.],
    rule("Whip of Domination")[Magic Weapon. Whip. This whip gives Throt +1 Attack. Any enemy unit that takes an unsaved wound from the Whip of Domination suffers a \-2 penalty to its Leadership for the remainder of the player turn.],
  ),
  special-rules: "Fear, Leader of the Pack (see Master Mutators), Regeneration (4+), Scurry Away, Strength in",
  special-rules-body: [
*Numbers*

- *Extra Arm:* Throt may use both his Magic Weapons in each round of Close Combat.
- *Master Controller:* Throt has the Inspiring Presence (6) special rule for all Clan Moulder units.
- *Ravening Hunger:* At the start of each of his turns, Throt must pass a Toughness test or start to eat one model in base contact of your choosing. This model suffers 1 Wound which Ignores Armour Saves and does not allow Ward Saves. If this is not possible, Throt will suffer 1 Wound with no saves allowed.
  ],
)

#unit("NURGLITCH",
  subtitle: "Arch-Plaguelord of Clan Pestilens",
  profiles: (
    (name: "Nurglitch", m: 5, ws: 6, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 3, ld: 7, points: 420),
    (name: "Bilios", m: 5, ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 2, ld: 6, points: ""),
    (name: "Pox (Great Pox Rat)", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 2, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Skaven, Clan Pestilens)",
  base-size: "40x40 or 50x50",
  equipment: "Plague Censer (Bilios only)",
  magic: "Nurglitch is a Level 3 Wizard who uses spells from the Lore of Plague. In addition, he always knows the Plague spell from that lore.",
  magic-items: (
    rule("Blade of Nurglitch")[Magic Weapon. Enemy models lose 1 point of Toughness from their profile for each Wound they suffer from this blade.],
    rule("Bubonic Sceptre")[Arcane Item. Bound Spell, power level 5. The Bubonic Sceptre contains a *direct damage* spell with a range of 18". Roll a D6 for every model in the unit. For every roll of a 6, that unit suffers a wound with the Ignores Armour Saves special rule.],
  ),
  special-rules: "Frenzy, Hatred, Scurry Away, Skittering (see Great Pox Rat), Strength in Numbers, Terror, Ward Save (5+)",
  special-rules-body: (
    rule("The Passion of the Putrid")[No friendly Clan Pestilens units will lose their Frenzy whilst Nurglitch is still alive.],
    rule("Scion of Corruption")[Neither Nurglitch nor any unit he joins will ever suffer wounds from spells cast from the Lore of Plague or Lore of Nurgle. Furthermore, they automatically pass the test for the effects of Plague Censers.],
    rule("The Grim Ague")[Any non-Clan Pestilens unit within 6" of Nurglitch suffer \-1 to their Weapon Skill. Furthermore, any such model in base contact with Nurglitch at the end of any close combat phase automatically takes a Strength 4 hit with the Ignores Armour Saves special rule that counts towards combat resolution.],
  ),
)

#unit("LORD SKROLK",
  subtitle: "Plaguelord of Clan Pestilens",
  profiles: (
    (name: "Lord Skrolk", m: 5, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 6, a: 4, ld: 7, points: 385),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  magic: "Skrolk is a Level 3 Wizard who uses spells from the Lore of Plague.",
  magic-items: [
- *Rod of Corruption:* Magic Weapon. Plague Censer. Models hit by the rod must pass a single Toughness test (regardless of the number of hits) or instantly be removed as a casualty with no saves allowed. If the victim passes the Toughness test, roll To Wound as normal.
- *The Liber Bubonicus:* Arcane Item. Bound Spell (power level 5). The Liber Bubonicus contains a *direct damage* spell with a range of 24". When cast, roll a D6 to see the effect:

#chart((("D6", "Result"), ("1", "Squeaking, Squealing Nonsense: No effect."), ("2-4", "A Withering Pox: Each model in the unit suffers a Strength 1 hit with the Ignores Armour saves
special rule."), ("5-6", "Death Plague: Each model in the unit suffers a Strength 2 hit with the Ignores Armour saves special
rule.")))
  ],
  special-rules: "Frenzy, Scurry Away, Strength in Numbers, Terror",
  special-rules-body: (
    rule("Aura of Pestilence")[Any units in base contact with Lord Skrolk that are not part of Clan Pestilens suffer \-1 To Hit.],
  ),
)

#unit("IKIT CLAW",
  subtitle: "Chief Warlock of Clan Skryre",
  profiles: (
    (name: "Ikit Claw", m: 5, ws: 5, bs: 3, s: 5, t: 4, w: 3, i: 3, a: 2, ld: 7, points: 340),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Skryre)",
  base-size: "20x20 or 25x25",
  magic: "Ikit Claw is a Level 4 Wizard who can use the spells from the Lore of Ruin.",
  equipment: "Warp-Blades, Supercharged Warp-Power Accumulator, Upgraded Warp-Energy Condenser",
  magic-items: [
- *Storm Daemon:* Magic Weapon. Polearm. Attacks with this weapon have the Lightning Attacks special rule. In addition, the Storm Daemon contains a Bound Spell (power level 6). This is a *magic missile* with a range of 24" that causes an artillery dice worth of Strength 5 hits with the Lightning Attacks special rule. In the case of a misfire, no shots are fired, but instead, roll a D6 and consult the Storm Daemon Misfire Chart.

#chartlabel("STORM DAEMON MISFIRE CHART")
#chart((("D6", "Result"), ("1-2", "ZZZzark: Ikit Claw and every model in base contact with him suffer a Strength 5 hit."), ("3-5", "Disruption: Ikit may not cast spells for the rest of this Skaven Magic phase while he sorts his power
cables out."), ("6", "Full Power: Ikit may immediately add D3 power dice to the pool for the current Magic phase.")))

- *Iron Frame:* Magic Armour. Medium armour. The suit gives Ikit +2 Strength (included in his profile) and a 5+ Ward Save. Once per game, Ikit can fire the warpfire projector housed in the device. This is Strength 5 Breath Weapon attack with the Flaming Attacks, Magical Attacks and Multiple Wounds (D3) special rules.
  ],
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules"),
)

= SPECIAL CHARACTERS (HEROES)

#unit("TRETCH CRAVENTAIL",
  first: true,
  subtitle: "Chieftain of Clan Rictus",
  profiles: (
    (name: "Tretch Craventail", m: 5, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 110),
  ),
  troop-type: "Infantry (Special Character, Skaven)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour, tail weapon",
  magic-items: (
    rule("Lucky Skullhelm")[Magic Armour. The Skullhelm gives Tretch a 6+ armour save and a 4+ Ward save (4+). In addition, once per game he can re-roll a dice roll. The re-roll can be one of his To Hit, To Wound, armour or Ward save, Leadership test, or a Stay Here, I'll Get Help roll.],
  ),
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour.",
  special-rules-body: (
    rule("Tretch's Raiders")[Tretch can choose one unit of Clanrats or Stormvermin in your army to deploy as Ambushers. If so, Tretch must deploy with this unit. In addition, he and his unit re-roll all failed To Hit rolls when attacking in the flank or rear.],
    rule("Stay Here, I'll Get Help")[Once per friendly turn, at the start of any phase, Tretch can leave any unit he is with and make a move of 2D6" as if it was the Remaining Moves phase.],
  ),
)

#unit("VESKIT",
  subtitle: "High Executioner of Clan Eshin",
  profiles: (
    (name: "Veskit", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 8, a: 4, ld: 8, points: 165),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Eshin)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  equipment-body: [
- *Eshin Fighting Claws:* Two hand weapons. These claws give Veskit the Armour Piercing (1) and Magical Attacks special rules. In addition, they have the following missile profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Armour Piercing (1), Magical Attacks, Multiple Shots (2), Quick to Fire, Unstable Ammunition"))
  ],
  special-rules: "Dodge (5+), Hidden, Poisoned Attacks, Scouts, Scurry Away, Sniper",
  special-rules-body: (
    rule("No Pain")[Successful To Wound rolls against Veskit must be re-rolled.],
  ),
)

#unit("SKWEEL GNAWTOOTH",
  subtitle: "Packmaster of Hell Pit",
  profiles: (
    (name: "Skweel Gnawtooth", m: 6, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 6, a: 2, ld: 6, points: 85),
    (name: "Gutsnagger (Rat Hound Bodyguard)", m: 6, ws: 3, bs: 0, s: 2, t: "-", w: "-", i: "-", a: 2, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Moulder)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Warp-lash")[Magic Weapon. Whip. Warp-lash gives Skweel the Armour Piercing (1) and Multiple Wounds (2) special rules.],
  ),
  special-rules: "Mixed Unit, Scurry Away!, Strength in Numbers, Verminous Valour.",
  special-rules-body: [
- *Exceptional Pack:* If you include Skweel Gnawtooth in your army, you must also include a unit of Giant Rats that he must join. After deploying Skweel into his unit, roll a D6 and consult the chart below to determine the Giant Rats' special attributes. Skweel will never leave his special pack and may never join another unit.

#chart((("D6", "Result"), ("1-2", "Poisoned Attacks: The Giant Rats have the Poisoned Attacks special rule."), ("3-4", "Additional Attacks. The Giant Rats have +1 Attack."), ("5-6", "Regenerate: The Giant Rats have the Regeneration (4+) special rule.")))
  ],
)

#unit("GHORITCH",
  subtitle: "Castellan of Hell Pit",
  profiles: (
    (name: "Ghoritch", m: 6, ws: 6, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 5, ld: 7, points: 180),
  ),
  troop-type: "Monstrous Infantry (Special Character, Skaven, Clan Moulder)",
  base-size: "40x40 or 50x50",
  special-rules: "Armour Piercing (3), Leader of the Pack (see Master Mutators), Scurry Away, Strength in",
  special-rules-body: [
*Numbers*

- *Brain Transplant:* Ghoritch has the Frenzy special rule. If he ever loses his Frenzy, he will become subject to Stupidity for the rest of the game.
  ],
)

#unit("MORBUS SANGUIS",
  profiles: (
    (name: "Morbus Sanguis", m: 5, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 2, ld: 6, points: 125),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Pestilens)",
  base-size: "20x20 or 25x25",
  magic: "Morbus Sanguis is a Level 1 Wizard who uses spells from the Lore of Plague.",
  magic-items: (
    rule("Censer Mace")[Magic Weapon. Great weapon. At the start of each round of close combat, all enemy models in base contact with Morbus Sanguis must pass a Toughness test or suffer a single wound with the Ignores Armour Saves and Magical Attacks special rules. All Clan Pestilens models gain a +1 bonus for these tests.],
  ),
  special-rules: "Fear, Frenzy, Scurry Away, Strength in Numbers",
  special-rules-body: (
    rule("Warp Fleas")[All models in base contact with Morbus suffer a \-1 To Hit penalty in close combat as they are distracted by the biting fleas.],
    rule("The Yellow Death")[If Morbus is included in your army, you may upgrade one unit of Plague Rats to Yellow Death Rats for +10 points per model. Yellow Death Rats have +1 Weapon Skill and Strength.],
  ),
)

#unit("KLAWMUNKAST",
  profiles: (
    (name: "Klawmunkast", m: 5, ws: 3, bs: 4, s: 3, t: 4, w: 3, i: 4, a: 1, ld: 6, points: 165),
  ),
  troop-type: "Infantry (Special Character, Skaven, Clan Skryre)",
  base-size: "20x20 or 25x25",
  magic: "Klawmunkast is a Level 2 Wizard who uses the Lore of Ruin.",
  magic-items: (
    rule("Eye of Skraw")[Arcane Item. Bound Spell (Power Level 4). The Eye of Skraw contains the _Warp Lightning_ spell from the Lore of Ruin. Roll a D6 every time it is used. On a 1, the Eye of Skraw runs out of power and cannot be used for the rest of the battle. In addition, the Eye gives Klawmunkast a 6+ Ward save.],
  ),
  special-rules: "Scurry Away, Strength in Numbers, Verminous Valour",
  special-rules-body: (
    rule("Rodent Genius")[Any rolls on the Misfire table for all Clan Skryre units within 12" may be re-rolled.],
    rule("Warpstone Mutants")[If Klawmunkast is included in your army, you may upgrade one unit of Skavenslaves to Warpstone Mutants for +3 points per model. Warpstone Mutants have +1 Strength and Attacks.],
  ),
)
