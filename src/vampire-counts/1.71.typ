// Vampire Counts 1.71 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "vampire-counts",
  army: "Vampire Counts",
  version: "1.71",
  layout: "army",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Vampire Counts 1.71")

#cover(
  title: "Vampire Counts",
  subtitle: "Warhammer Armies Project · 1.71",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Vampire Counts*, version 1.71 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in a Vampire Counts army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Vampire Counts units, and these are detailed here.])[
#upgrade("BLOODLINES", none)[
Most Vampires belong to a certain Bloodline, such as von Carstein, Necrach, Lahmian, Blood Dragon, Strigoi or Vyrkos. Characters belonging to one Bloodline may not join units belonging to another Bloodline, nor may two characters from different Bloodlines join the same unit.
]

#upgrade("THE GENERALS OF UNDEATH", none)[
If your army contains any Undead units, you must include at least one character that is a Wizard that uses the Lore of Necromancy.
]

#upgrade("Slain General", none)[
At the end of the phase in which the General is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the General, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Necromancy, no unit in the army needs to take this Leadership test while at least one of them remain.
]

#upgrade("Battle Standards", none)[
In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's General.
]

#upgrade("Characters and Units", none)[
Characters who are not Undead may join Undead units despite not being Unstable themselves. Mounted Characters ignore the Undead special rule of the mount. If an Undead unit would get destroyed as a result of Unstable, any remaining character(s) will need to take a Break test as normal the same phase, using the Leadership modifier that they lost the combat by.
]

#upgrade("DEATH SHRIEK", none)[
A Death Shriek is a special attack that can be used against a single unit in the Shooting phase, even if the model has marched, charged, or is engaged in close combat. This attack has a range of 8" and needs line of sight to its target. If the model is engaged in combat, its Death Shriek may target a unit in base contact.

To resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-physical Magical Attack and Wounds suffered from it are distributed as if from shooting.
]

#upgrade("MASTER OF THE DEAD", none)[
A model with this special rule can use the _Invocation of Nehek_ spell from the Lore of Necromancy to increase units of Skeleton Warriors beyond their starting size.
]

#upgrade("SPECTRAL STEEDS", none)[
Mounted models with this special rule gain the Ethereal special rule for the purposes of movement only. They do not suffer the movement penalty for being barded. Whilst a unit with this special rule is joined by a character without the Spectral Steeds or Ethereal special rules, it loses this special rule.
]

#upgrade("UNDEAD", none)[
All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. However, they may make march moves if they are within the Army General's Inspiring Presence range or are joined by a character with the Lore of Necromancy.
]

#upgrade("VAMPIRIC", none)[
Models with the Vampiric special rule have the Fear and Immunity (Psychology) special rules. In addition, models suffer \-1 To Wound rolls against them, unless they are using Magical Attacks or Flaming Attacks.
]

#upgrade("THE RED THIRST", none)[
Roll a D6 at the end of each Close Combat phase in which one or more models was slain by a Vampire with this special rule. On a 5+, the Vampire recovers a single Wound lost earlier in the battle. This does not work against models with the Animated Construct, Daemonic, Forest Spirit or Vampiric special rules.
]
]
#lore("THE LORE OF NECROMANCY")[
#spell("THE CURSE OF UNDEATH", "Lore Attribute")[When a spell from the Lore of Necromancy is successfully cast, all Undead units within 6" of the caster regain 1 Wound (Core Units regain D3 Wounds) following the rules for _Invocation of Nehek._]

#spell("INVOCATION OF NEHEK", "Signature Spell", cast: "6+")[_Invocation of Nehek_ is a *summoning* spell with a range of 18" that targets Undead. The target immediately regains a number of Wounds as follows: Core Units gain 2D6 Wounds; Special Units (except Cavalry) gain D6 Wounds. Characters, Special Units that are Cavalry and Rare Units regain D3 Wounds per successful casting. Models gained are distributed as a summoning spell. Any characters in a unit can only be healed if targeted separately from the rest of the unit, in which case only they are healed.]

#spell("HAND OF DUST", 1, cast: "5+")[Remains in play. _Hand of Dust_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the caster gains an additional special attack in close combat that does not benefit from any other magic items or special rule. If this Attack Hits, the target suffers an automatic Wound with the Ignores Armour Saves and Multiple Wounds (D6) special rules.]

#spell("VANHEL'S DANSE MACABRE", 1, cast: "5+")[_Vanhel's Danse Macabre_ is a *conveyance* spell with a range of 24" that targets Undead. The target can immediately make a normal move as if it were the Remaining Moves sub-phase (including any Characters in the unit).]

#spell("HELLISH VIGOUR", 1, cast: "7+")[_Hellish Vigour_ is an *augment* spell with a range of 18". All Undead models in the unit gain the Always Strikes First special rule and may re-roll failed To Hit rolls in Close Combat until the start of the caster's next Magic phase.]

#spell("FOUNTAINS OF BLOOD", 2, cast: "7+")[_Fountains of Blood_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all failed To Wound rolls made against this unit may be re-rolled. In addition, Vampires gain a +1 to bonus to any The Red Thirst rolls for Wounds caused against this unit.]

#spell("GAZE OF NAGASH", 2, cast: "9+")[_Gaze of Nagash_ is a *magic missile* with a range of 24" that causes 2D6 Strength 4 hits.]

#spell("RAISE DEAD", 2, cast: "9+")[_Raise Dead_ is a *summoning* spell with a range of 18" that brings a unit of Zombies into play. Roll 2D6+3. This is how many models comprise the new unit. The caster can choose to summon 2D6+3 Skeleton Warriors with shields instead. If they do so, the casting value is increased to 12+.]

#spell("DEATHLY CABAL", 3, cast: "10+")[_Deathly Cabal_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target gains a 5+ Ward save against non-magical attacks and the Terror special rule.]

#spell("UNQUIET SPIRITS", 3, cast: "10+")[_Unquiet Spirits_ is a *direct damage* spell with a range of 24". The target suffers 3D6 Strength 2 hits with the Ignores Armour Saves special rule.]

#spell("MALEDICTION OF NAGASH", 3, cast: "11+")[_Malediction of Nagash_ is a *hex* spell with a range of 24". The target halves their Strength (rounding down) until the start of the caster's next Magic phase.]

#spell("SPIRITUAL VORTEX", 4, cast: "11+")[Remains in play. _Spiritual Vortex_ is a *summoning* spell with a range of 24" that summons the 5" template. While the spell is in effect, the template counts as Dangerous Terrain, and enemy units within 6" of it suffer \-1 to their Leadership.]

#spell("CURSE OF YEARS", 4, cast: "12+")[Remains in Play. _Curse of Years_ is a *hex* spell with a range of 18". When cast, roll a D6 for every model in the target unit – on a score of 6 the model suffers a Wound which Ignores Armour Saves. At the end of the next Magic phase, roll again for each model in the unit, they will suffer a Wound on a 5+, and so on, to a maximum of 2+.]

#spell("WIND OF UNDEATH", 4, cast: "12+")[_Wind of Undeath_ is a *hex* spell that targets all enemy units within 12". Each enemy unit suffer D6 Strength 3 Hits which Ignores Armour Saves. In addition, if the spell causes any Wounds, a unit of Spirit Hosts is created within 12" of the caster, just like a summoning spell. This unit has a number of Wounds equal to the number of Wounds caused by the spell.]
]
#upgrade-chapter("VAMPIRIC POWERS", intro: [*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish. Each Vampire may only take powers from their own Bloodline (unless specified).*])[
#upgrade("RED FURY", 30, only: "Blood Dragon or Strigoi")[For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.]

#upgrade("UNHOLY REGENERATION", 30, only: "Necrarch or Strigoi")[The model gains the Regeneration (4+) special rule.]

#upgrade("CURSE OF THE REVENANT", 20, only: "Necrarch or Strigoi")[The model has a 3+ Ward save when they have a single Wound remaining (if the model suffers multiple Wounds in a single turn, it is reduced to 1 Wound and may then attempt to take this Ward save).]

#upgrade("FEAR INCARNATE", 20)[All enemy units in base contact with the model must pass a Leadership test at the start of each round of close combat or suffer \-1 To Hit this round.]

#upgrade("FLYING HORROR", 20, only: "Model on foot")[Thе model gains the Fly (10) special rule and may join units of Fell Bats.]

#upgrade("SUPERNATURAL HORROR", 15, only: "Von Carstein, Necrarch or Strigoi")[The model gains the Terror special rule.]

#upgrade("TRANSFIX", 15, only: "Von Carstein or Lahmian")[At the beginning of the Close Combat phase, select one model in base contact with the Vampire. The victim must pass a Leadership test or get reduced to Weapon Skill 1 for the duration of this round of Close Combat phase and all attacks directed against the victim will hit automatically.]

#upgrade("HUNTER IN THE DARK", 10, only: "Lahmian or Strigoi on foot")[The model has the Scouts special rule.]

#upgrade("UNBENDING WILLPOWER", 10, only: "Von Carstein or Necrarch")[Units of Undead within 6" of one or more models with this power suffer one less Wound than they normally would due to the Unstable special rule or following the death of the army's General. Note that this is not cumulative with the Battle Standard.]

#upgrade("HONOUR OR DEATH", 5, only: "Von Carstein or Blood Dragon")[After issuing or accepting a challenge with a model with this power, the enemy character must take a Leadership test. If failed, the enemy model will automatically refuse the challenge following the normal rules.]

#group("VON CARSTEIN")

#upgrade("AURA OF DARK MAJESTY", 30)[All enemy units within 6" of one or more models with the Aura of Dark Majesty suffer a \-1 penalty to their Leadership. This penalty is cumulative with any other modifiers.]

#upgrade("SPECTRAL ATTENDANTS", 25)[All enemy Wizards within 18" of the model must re- roll successful channelling results.]

#upgrade("WALKING DEATH", 20)[Any unit in base contact with the model must re-roll successful Break tests.]

#upgrade("CALL WINDS", 10)[Innate Bound Spell, Power Level 5. _Call Winds_ affects all units within 24" of the Vampire. Until the start of caster's next Magic phase, all missile attacks fired from within or at a target within this distance suffer \-1 To Hit.]

#upgrade("EARTH BIND", 10)[The model gains the Magic Resistance (1) special rule.]

#upgrade("SUMMON CREATURES OF THE NIGHT", 10)[This Vampire can use the _Invocation of Nehek_ spell to heal and increase units of Dire Wolves, Bat Swarms and Fell Bats beyond their starting size, even though they are not all Undead.]

#upgrade("WOLF FORM", 10, only: "Model on foot")[The model gains Movement 9 and the Swiftstride special rule. In addition, they may join units of Dire Wolves.]

#upgrade("WOLF LORD", 10)[The model allows all friendly units of Dire Wolves within 24" of it to March.]

#group("NECRARCH")

#upgrade("WELLSPRING OF DARK MAGIC", 50)[The model and all friendly Wizards within 12" gain +1 to cast spells from the Lore of Necromancy.]

#upgrade("SPECTRAL FORM", 40, only: "Model on foot")[The model gains the Ethereal special rule. However, it may not join non-Ethereal units or take any magic items.]

#upgrade("MASTER OF THE BLACK ARTS", 25)[A player using a model with the Master of the Black Arts power can re-roll the result when it is determining the strength of the Winds of Magic in each of your Magic phases.]

#upgrade("MASTERY OVER FLESH", 25)[When casting the _Invocation of Nehek, Vanhel's Danse Macabre_, _Hellish Vigour_ or _Raise Dead_ spells from the Lore of Necromancy, the model may re-roll all the initial casting dice (unless they have rolled a Miscast).]

#upgrade("UNHOLY CYNOSURE", 25)[Once per Magic phase, the model can re-roll one of the dice rolled to cast a spell. This can be used to negate a Miscast result or could cause an Ultimate Power result.]

#upgrade("FORBIDDEN LORE", 20)[The model has the Loremaster special rule.]

#upgrade("DARK ACOLYTE", 20)[The model adds +1 to the number of Wounds healed (Core Units regain +D3 Wounds) whenever it successfully casts _Invocation of Nehek_.]

#upgrade("NEHEKHARA'S NOBLE BLOOD", 20)[The model adds +6" to the range of all their spells.]

#group("BLOOD DRAGON")

#upgrade("DOOMRIDER", 20, only: "Cavalry")[The model and any Cavalry unit it is with can re-roll failed charge distances.]

#upgrade("DREAD KNIGHT", 20)[While fighting in a challenge, the model will gain +1 To Hit and To Wound.]

#upgrade("WARRIOR PRIDE", 20, only: "Infantry or Cavalry")[The model can re-roll failed armour save results of 1.]

#upgrade("HEART PIERCING", 15)[The model can re-roll To Wound rolls of 1 in close combat.]

#upgrade("MASTER STRIKE", 15)[The model has the Killing Blow special rule.]

#upgrade("MIGHT OF ARMS", 15)[The model can re-roll To Hit rolls of 1 in close combat.]

#upgrade("STRENGTH OF STEEL", 10)[The model has the Devastating Charge and Strength Bonus (1) special rule.]

#upgrade("BLADEMASTER", 10)[The model gains the Parry (6+) special rule, even while mounted.]

#upgrade("FURIOUS CHARGE", 10)[In any turn in which the model makes a successful charge, they have the Ignores Armour saves special rule.]

#group("STRIGOI")

#upgrade("LOATHSOME STENCH", 20)[All enemy units in base contact with the model suffer \-1 to their Weapon Skill.]

#upgrade("MASSIVE MONSTROSITY", 20, only: "Model on foot")[The model gains +1 Wound and becomes Monstrous Infantry. It should be placed on a 40x40mm base.]

#upgrade("IRON SINEWS", 15)[The model has +1 Strength.]

#upgrade("TERRIBLE BLOWS", 15)[The model gains the Multiple Wounds (D3) special rule.]

#upgrade("GHOULKIN", 10)[One unit of Crypt Ghouls may be deployed as Scouts.]

#upgrade("INFINITE HATRED", 10)[The model's Hatred special rule applies in every close combat round, not just the first.]

#upgrade("MONSTROUS MASS", 10)[The model gains the Immunity (Killing Blow, Multiple Wounds) special rule.]

#upgrade("RAVENOUS", 10)[The model gains the Frenzy special rule.]

#upgrade("SUMMON GHOULS", 10)[The model allows one unit of Crypt Ghouls to deploy as Ambushers.]

#group("LAHMIAN")

#upgrade("SEDUCTION", 25)[At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. The selected model must take a Leadership test with a \-1 modifier. If the test is failed, the victim is controlled by the Vampire player in that Close Combat phase. The model will direct its attacks against his own side. The model cannot be attacked by either side in that Close Combat phase but, after combat resolution has been worked out, it reverts immediately to the original player's control and can therefore use his Leadership for any Break tests and can be broken and pursued as normal. If the model has no friendly models in base contact, it is unable to attack in that Close Combat phase and all attacks directed against the victim will hit automatically. If the Vampire was in a challenge with a model that it takes control of, the challenge ends and both models may attack other targets as normal.]

#upgrade("LIGHTNING REFLEXES", 25)[Enemies must re-roll successful rolls To Hit in close combat against this model.]

#upgrade("NIGHT CREATURE", 20, only: "Model on foot")[If this model is a lone character, it cannot be targeted by enemy missile attacks or spells unless it is within 12".]

#upgrade("INNOCENCE LOST", 20)[The model has the Always Strikes First special rule.]

#upgrade("DOMINATION", 15)[All enemy units in base contact with this model must re-roll successful Leadership tests (except Break tests).]

#upgrade("QUICKBLOOD", 15)[The model gains the Dodge (5+) special rule.]

#upgrade("BEGUILE", 10)[At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. That model must take a Leadership test with a \-3 modifier; if the test is failed, the Vampire may re-roll failed To Wound rolls against that model that phase.]

#upgrade("SWIFTNESS", 10, only: "Model on foot")[The model gains Movement 10 and the Swiftstride special rule.]
]

#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Vampire Counts. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("FROSTBLADE", 60)[The wielder gains the Ice Attacks and Multiple Wounds (D6) special rules.]

#magic-weapon("SKABSCRATH", 40)[The bearer has the Devastating Charge and Frenzy special rules, and all close combat attacks made by the bearer have the Flaming Attacks special rule. In addition, the bearer of Skabscrath gains the Death Shriek special rule.]

#magic-weapon("SLAKING BLADE", 40)[The wielder of this weapon gains +1 Strength and Attacks at the end of each close combat phase in which they have inflicted at least 1 unsaved Wound (up to a maximum of +3). This bonus lasts for the remainder of the game.]

#magic-weapon("DREADLANCE", 35)[Heavy lance. All attacks with this weapon automatically Hit.]

#magic-weapon("ASP BOW", 25)[Bow. All shots from this item are resolved at Strength 4 with the Poisoned Attacks and Sniper special rules.]

#magic-weapon("REAPER OF SORROWS", 25)[Cairn Wraith only. Great weapon. All attacks with this weapon automatically Wound and have the Ignores Armour saves special rule.]

#magic-weapon("SLITTER", 25)[Additional hand weapon. This adds one special attack. Roll a D3; if the result is higher than the Wound value of the target, the target is instantly slain with no saves allowed.]

#magic-weapon("KEENING BONE", 20)[Strigoi only. Throwing weapon. All shots with this weapon automatically Hits. Characters may take this item despite not normally being allowed to take throwing weapons.]

#magic-weapon("SWORD OF KINGS", 15)[Wight Kings only. This item makes the model's Killing Blow special rule take effect on a 5+.]

#magic-weapon("THE BALEFIRE SPIKE", 15)[Heavy lance. This item gives the wielder the Devastating Charge and Flaming Attacks special rules.]

#magic-weapon("SHADOW'S EDGE", 10)[For every natural 6 rolled To Hit with this weapon, that Attack has the Ignores Armour Saves and Multiple Wounds (D3) special rules.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF NIGHT", 30)[Von Carstein model on foot only. Heavy armour. This item causes any missile attacks targeted at the wearer or any unit they are with to suffer \-2 To Hit.]

#magic-armour("THE FLAYED HAUBERK", 25)[Model on foot only. Heavy armour. This item gives the wearer a 1+ armour save that cannot be improved by any means.]

#magic-armour("HELM OF COMMANDMENT", 25)[This item gives the wearer a 6+ armour save. In addition, if the wearer is not in combat this round, one friendly Undead unit within 12" may use their unmodified Weapon Skill instead of their own in close combat.]

#magic-armour("THE SCABBING PLATE", 25)[Heavy armour. The wearer of this armour automatically restores 1 Wound lost during the battle at the end of each round of close combat in which it has inflicted one or more unsaved Wounds.]

#magic-armour("WAILING HELM", 20)[This item gives the wearer a 6+ armour save and the Terror special rule.]

#magic-armour("THE ACCURSED ARMOUR", 15)[Heavy armour. This item gives the wearer +1 Toughness, but makes them suffer \-1 Weapon Skill and Initiative.]

#magic-armour("ARMOUR OF BONE", 15)[Medium armour. When the wearer fails their first armour save (or if they are wounded by an attack which ignores armour saves), the Armour of Bone crumbles to dust and is destroyed, but the Wound is ignored.]

#magic-armour("THE CADAVEROUS CUIRASS", 15)[Vampires only. Heavy armour. This item gives the wearer the Immunity (Killing Blow) special rule.]

#magic-armour("THE CURSED SHIELD OF MOUSILLON", 10)[Shield. This item causes one enemy model in base contact of your choice to lose 1 Attack. In addition, the bearer gains the Hatred (Bretonnia) special rule, and all models in _Warhammer: Bretonnia_ have the Hatred special rule against the bearer.]

#magic-armour("THE RED CASKET", 10)[Blood Dragon only. Heavy armour. The wearer of this armour gains the Frenzy special rule.]
]

#magic-item-section("talisman")[
#talisman("NIGHTSHROUD", 50)[Infantry or Cavalry only. Enemy models in base contact with the wearer lose all Strength bonuses conferred from normal and magical weapons, and are subject to the Always Strikes Last special rule.]

#talisman("THE GEM OF BLOOD", 25)[Vampires only. One use only. The Gem of Blood activates when the bearer suffers their first Wound in close combat (before saves). Roll a D6; on a roll of a 1 the wearer suffers the Wound as normal, and an additional Wound with no saves allowed. On a 2+ the Wound is saved, and is rebounded onto the model that caused it with no saves allowed.]

#talisman("SPLINTERVANE BROACH", 25)[Strigoi only. All enemy Wizards within 18" of the bearer of this item suffer \-1 to cast spells.]

#talisman("CLOAK OF THE WAXING MOON", 20)[Cairn Wraith only. The wearer of this item does not suffer any penalties to its Ward save from Magical Attacks.]

#talisman("WRISTBANDS OF BLACK GOLD", 20)[The Wristbands of Black Gold gives the wearer a 3+ Ward Save against all missile attacks.]

#talisman("CHIROPTERAN CLOAK", 15)[Von Carstein only. If a model attacking the wearer of this item rolls a natural 1 To Hit in close combat, they suffer a Strength 4 Hit.]
]

#magic-item-section("arcane")[
#arcane-item("THE DERMAL ROBE", 70)[The wearer gains +1 casting and dispel bonus. In addition, they gain +1 to their channelling rolls.]

#arcane-item("STAFF OF RAUKHAMON", 45)[Necrarch only. Bound Spell, power level 4. This staff contains the _Hellish Vigour_ spell from the Lore of Necromancy. Roll a D6 each time the Staff is used. On a roll of 1, the Staff is temporarily exhausted and cannot cast this bound spell for the rest of the battle. In addition, all enemy units within 6" of the Staff\`s bearer suffer a \-1 penalty on their rolls To Hit in close combat.]

#arcane-item("SCEPTRE DE NOIROT", 40)[The bearer of this item may re-roll one dice of their choice when determining the number of Zombies or Skeletons raised with the _Invocation of Nehek_ and _Raise Dead_ spells from the Lore of Necromancy.]

#arcane-item("BOOK OF ARKHAN", 35)[Bound Spell, power level 3. This item casts the _Vanhel's Danse Macabre_ spell from the Lore of Necromancy.]

#arcane-item("CARRION WAND", 35)[Strigoi only. The wielder counts their Wizard level as being 1 higher than normal.]

#arcane-item("THE CURSED BOOK", 35)[At the beginning of the bearer's Magic phase, the bearer may choose to sacrifice one power dice from the pool. If they do so, roll a D6 on the following chart. Assuming there is a viable target for the indicated spell, that spell is automatically cast at its minimum casting value, requiring no power dice. A dispel attempt can be made as normal.

#chart((("D6", "Spell Cast"), ("1", "Melkoth's Mystifying Miasma (Lore of
Shadow)"), ("2", "The Enfeebling Foe (Lore of Shadow)"), ("3", "The Withering (Lore of Shadow)"), ("4", "Portent of Doom (Lore of Heavens)"), ("5", "Doom and Darkness (Lore of Death)"), ("6", "Soulblight (Lore of Death)")))]

#arcane-item("STAFF OF DAMNATION", 35)[Bound Spell, power level 5. If cast successfully, this item casts an *augment* spell. All Undead models in friendly units within 6" of the bearer gain +1 Attack until the start of the bearer's next Magic phase.]

#arcane-item("BLACK PERIAPT", 30)[The Black Periapt allows the bearer to save up to two of his army's unused power dice or dispel dice at the end of any Magic phase, and then add them to his side's power or dispel dice pool at the start of the next Magic phase.]

#arcane-item("WYCHLIGHT LANTERN", 30)[One use only. This item can be used during any of your Magic phases. Once used, it allows the bearer to cast one of their spells automatically without using any power dice, at its minimum casting value.]

#arcane-item("AMULET OF SCREAMS", 20)[Lahmian only. Roll a D6 every time an enemy Wizard within 18" successfully casts a spell. On a 1, that Wizard suffer 1 Wound which Ignores Armour saves.]

#arcane-item("CRIMSON GEM OF LAHMIA", 20)[Lahmian only. Once per magic phase, while casting spells, the bearer of the Crimson Gem of Lahmia can choose to take a Toughness test. If passed, they may re- roll a single power dice of their choice. If failed, they suffer a Wound with no saves allowed.]

#arcane-item("MIDNIGHT TOME", 20)[One use only. This item can be used when the wearer successfully casts a spell with a casting value of 10 or less. When used, the opponent cannot attempt to dispel it.

#runin[MORBHEG]'#runin[S CLAW 20 points] Von Carstein only. The wearer of this item gains +2 to cast spells if they have not moved that turn or are not engaged in close combat.]
]

#magic-item-section("enchanted")[
#enchanted-item("MIDNIGHT AMULET", 40)[One use only. This item can be used in any of your Magic phases. Pick one enemy unit within 12"; that unit suffers D6 Strength 4 Hits multiplied by the number of the current game turn.]

#enchanted-item("TALON OF DEATH", 35)[All enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour saves at the start of each round of combat.]

#enchanted-item("DREADBOLT RING", 30)[For each unsaved Wound the bearer of this item inflicts in close combat, one enemy unit in base contact suffer D3 Strength 3 Attacks with the Flaming Attacks special rule after they have resolved their normal attacks.]

#enchanted-item("BLOOD RIVER CHALICE", 25)[Vampire only. One use only. This item can be used at the start of the controlling player's turn. The model immediately recovers all lost Wounds (ignoring any additional Wounds from mounts) up to their starting value.]

#enchanted-item("BREATH OF THE VOID MAW", 25)[Necrarch only. One use only. This item can be used at the start of any Magic phase. Once used, pick one enemy unit within 6" that is not engaged in close combat. Roll a D6; on a 2+ the target unit suffer a number of Strength 5 Hits equal to the roll.]

#enchanted-item("THE CASKET OF AGES", 25)[Bound Spell, power level 3. The Casket of Ages contains a *hex* spell that targets one enemy model in base contact. The target model suffers one Wound which Ignores Armour Saves. If the Wound is not saved, the victim must pass a Toughness test or suffer an additional Wound with no saves allowed.]

#enchanted-item("FRAGMENT OF THE KEEP", 25)[Blood Dragon only. The bearer gains the Always Strikes First special rule.]

#enchanted-item("THE GRIM GARLAND", 25)[Strigoi only. Enemy units in base contact with the bearer must roll 3D6 for their Leadership tests and discard the lowest result.]

#enchanted-item("LIGHTSHARD OF THE HARVEST MOON", 25)[One use only. This item can be used at the start of any close combat phase. The bearer and any unit they are with may re-roll failed rolls To Hit for the duration of the turn.]

#enchanted-item("PENDANT OF THE FELL WIND", 25)[The character and any unit they are with gain +1 Movement.]

#enchanted-item("THE SACCHARINE GOBLET", 25)[Vampire only. This item can be used at the start of any round of close combat. When used, the bearer gains +1 To Hit and To Wound. However, for each of their Attacks that does not inflict an unsaved Wound, they must pass a Toughness test or suffer one Wound with no saves allowed at the end of the combat (before Break tests are taken).]

#enchanted-item("SIGIL OF THE SANGUINE THRONE", 25)[Von Carstein only. The bearer and any friendly Vampire unit within 12" may re-roll one of their charge distance dice.]

#enchanted-item("THE FURIOUS CROWN", 20)[In any turn in which the bearer of this item makes a successful charge, they gain +1 Attack for every enemy model in base contact, up to a maximum of +3.]

#enchanted-item("GRAVE-SAND SHARD", 20)[Blood Dragon only. One use only. This item can be used in any of your Magic phases. Once used, it automatically restores Wounds to any unit they are with following the rules for _Invocation of Nehek_ from the Lore of Necromancy.]

#enchanted-item("MEDAL OF MADNESS", 20)[Strigoi only. The bearer gains the Inspiring Presence (6) special rule.]

#enchanted-item("SOULFIRE RING", 20)[Cairn Wraith only. For every unsaved Wound caused in close combat by bearer, they and/or their unit regain 1 Wound, just like a summoning spell.]

#enchanted-item("NATHMAR'S SKULL", 15)[Master Necromancer or Necromancer only. All friendly units of Skeletons and Zombies within 12" of the bearer may March despite being Undead.]

#enchanted-item("RUBY VIAL", 15)[Vampire only. One use only. This item can be used at the start of any of your turns. Until the start of your next turn, all enemy units within 18" of the bearer suffer \-1 to their Movement.]

#enchanted-item("SIGNET OF THE FIRST COURT", 15)[Strigoi only. The bearer of this item gains the Killing Blow special rule.]

#enchanted-item("THE BILIOUS DECANTER", 10)[Ghoul or Strigoi only. One use only. This item can be used at the start of any close combat phase. The bearer gains the Frenzy special rule and +1 Attack for the remainder of the game. However, they will automatically fail any Berserk Rage tests and must always Pursue.]

#enchanted-item("ORB OF ENCHANTMENT", 10)[Lahmian only. One enemy model in base contact (chosen by the bearer) must take a Leadership test at the start of each round of close combat. If failed, they may not attack this turn.]

#enchanted-item("TALISMAN OF THE LYCNI", 10)[Vampire only. Model on foot only. The bearer of this item gains +4 to their Movement value and the Swiftstride special rule. In addition, they may join units of Dire Wolves.]

#enchanted-item("HEART OF THE GIANT FEAST", 10)[Vampire only. One use only. This item can be used at the start of any close combat phase. The bearer can re- roll failed To Wound rolls for the duration of the turn.]

#enchanted-item("SHARD OF NIGHT", 5)[Vampire only. One use only. This item may be used at the start of any round of Close Combat. When it is, the bearer suffers 1 Wound with no saves allowed. In exchange, they gain +2 Strength for the duration of this round of close combat.]
]

#magic-item-section("standard")[
#magic-standard("THE DRAKENHOF BANNER", 75)[Von Carstein or Wight only. May only be taken if your army includes a von Carstein Vampire Character. All Undead models in the unit carrying this standard gain the Regeneration (4+) special rule.]

#magic-standard("THE FLAG OF BLOOD KEEP", 50)[Blood Knights only. May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains a 4+ Ward save against missile attacks.]

#magic-standard("BANNER OF THE BARROWS", 40)[All Wights in the same unit as this standard receive +1 To Hit in close combat. This does not apply to mounts.]

#magic-standard("HELL BANNER", 40)[All enemy units with Line of Sight to this standard suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).]

#magic-standard("CURSED PENNANT OF MOUSILLON", 35)[Blood Dragon, Skeletons or Wights only. May only be taken if your army includes a Blood Dragon Vampire Character. Any enemy unit that is in base contact with the unit carrying this standard must re-roll 6's when rolling To Hit, To Wound and when taking armour saves.]

#magic-standard("BANNER OF DOOM", 25)[All Undead models in the unit carrying this standard gains the Regeneration (5+) special rule against missile attacks.]

#magic-standard("BANNER OF THE DEAD LEGION", 25)[All Undead models in the unit carrying this standard counts as having twice their actual Unit Strength in close combat.]

#magic-standard("BANNER OF HELLFIRE", 25)[Bound Spell, power level 3. This banner contains the _Flaming Sword of Rhuin_ spell from the Lore of Fire. It can only be cast on the unit carrying this standard.]

#magic-standard("THE FLAYED PENNANT", 25)[Strigoi or Ghoul only. The unit carrying this standard gains the Frenzy special rule.]

#magic-standard("INFERNAL STANDARD", 25)[Wight King with Battle Standard only. The model carrying this standard increases the range of the Battle Standard to 18".]

#magic-standard("ROYAL STANDARD OF STRIGOS", 25)[May only be taken if your army includes a Strigoi Vampire Character. Strigoi or Ghoul only. The unit carrying this standard gains the Hatred special rule.]

#magic-standard("THE SCREAMING BANNER", 25)[Enemy units on base contact with the unit carrying this standard must pass a Leadership test at the start of each close combat phase. If failed, they require 6’s To Hit for the duration of the phase.]

#magic-standard("ICON OF VENGEANCE", 20)[Any Undead model in the unit carrying this standard that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.]

#magic-standard("STANDARD OF HELLISH VIGOUR", 15)[Undead only. May only be taken if your army includes a Necrarch Vampire Character. The unit carrying this standard may March despite being Animated Constructs.]

#magic-standard("BANNER OF THE ENDLESS NIGHTMARE", 10)[The unit carrying this standard counts as having one more rank than normal for the purpose of combat resolution.]

#magic-standard("STANDARD OF EVERLASTING DEATH", 10)[The unit carrying this standard suffers one fewer Wound than they normally would due to the Unstable special rule.]
]
= LORDS

#unit("VON CARSTEIN VAMPIRE LORD",
  first: true,
  profiles: (
    (name: "von Carstein Vampire Lord", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 245),
  ),
  troop-type: "Infantry (Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A von Carstein Vampire Lord is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May be upgraded to a Level 3 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +3 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
)

#unit("NECRARCH VAMPIRE LORD",
  profiles: (
    (name: "Necrarch Vampire Lord", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 245),
  ),
  troop-type: "Infantry (Character, Vampire, Necrarch)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Necrarch Vampire Lord is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Heavens
- Metal
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
)

#unit("LAHMIAN VAMPIRE LADY",
  profiles: (
    (name: "Lahmian Vampire Lady", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 3, i: 8, a: 4, ld: 10, points: 245),
  ),
  troop-type: "Infantry (Character, Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  magic: "A Lahmian Vampire Lady is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  equipment: "Hand weapon",
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  options: [
- May be upgraded to a Level 3 Wizard +35 points
- May take an additional hand weapon +3 points
- May take throwing weapons +6 points
- May take a bow +5 points
- May take a light armour +3 points
- May have Poisoned Attacks +10 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Coven Throne (replacing one of the crew) +200 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules", "options"),
)

#unit("BLOOD DRAGON VAMPIRE LORD",
  profiles: (
    (name: "Blood Dragon Vampire Lord", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 245),
  ),
  troop-type: "Infantry (Character, Vampire, Blood Dragon)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic: "A Blood Dragon Vampire Lord is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
  ),
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +3 points
  - Heavy lance +10 points
  - Great weapon +15 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
)

#unit("STRIGOI VAMPIRE LORD",
  profiles: (
    (name: "Strigoi Vampire Lord", m: 6, ws: 6, bs: 3, s: 5, t: 6, w: 3, i: 7, a: 5, ld: 9, points: 240),
  ),
  troop-type: "Infantry (Character, Vampire, Strigoi)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Strigoi Vampire Lord is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Necromancy
  ],
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on a Terrorgheist +225 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
)

#unit("MASTER NECROMANCER",
  profiles: (
    (name: "Master Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 165),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Master Necromancer is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
  - Abyssal Terror +125 points
- May take Magic Items up to a total of 100 points
  ],
)

#unit("LICHE LORD",
  profiles: (
    (name: "Liche Lord", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 4, i: 2, a: 2, ld: 9, points: 275),
  ),
  troop-type: "Infantry (Character, Undead, Liche)",
  base-size: "20x20 or 25x25",
  magic: "A Liche Lord is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  equipment: "Hand weapon",
  special-rules: "Master of the Dead, Undead",
  options: [
- May choose one of the following:
  - Light armour +4 points
  - Medium armour +12 points
- May be mounted on a Mortis Engine replacing the (Corpsemaster) +220 points
- May take Magic Items up to a total of 100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules", "options"),
)

= HEROES

#unit("VON CARSTEIN VAMPIRE",
  first: true,
  profiles: (
    (name: "von Carstein Vampire", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 80),
  ),
  troop-type: "Infantry (Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A von Carstein Vampire who is a Wizard chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  options: [
- One von Carstein Vampire may carry the Battle Standard +25 points
- May choose one of the following:
  - Upgrade to a Level 1 Wizard +35 points
  - Upgrade to a Level 2 Wizard +70 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Heavy lance +6 points
  - Polearm +6 points
  - Great weapon +9 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour +6 points
  - Heavy armour +12 points
- May be mounted on one of the following:
  - Nightmare +14 points
  - Hellsteed +20 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("NECRARCH VAMPIRE",
  profiles: (
    (name: "Necrarch Vampire", m: 6, ws: 4, bs: 3, s: 5, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 80),
  ),
  troop-type: "Infantry (Character, Vampire, Necrarch)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Necrarch Vampire is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Heavens
- Metal
- Necromancy
- Shadow
  ],
  options: [
- One Necrarch Vampire may carry the Battle Standard +25 points
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points
  ],
  special-rules: "The Red Thirst, Vampiric",
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules", "notes"),
)

#unit("LAHMIAN VAMPIRE",
  profiles: (
    (name: "Lahmian Vampire", m: 6, ws: 5, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 85),
  ),
  troop-type: "Infantry (Character, Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  magic: "A Lahmian Vampire who is a Wizard chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  equipment: "Hand weapon",
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  options: [
- One Lahmian Vampire may carry the Battle Standard +25 points
- May choose one of the following:
  - Upgrade to a Level 1 Wizard +35 points
  - Upgrade to a Level 2 Wizard +70 points
- May take an additional hand weapon +2 points
- May take throwing weapons +6 points
- May take a bow +5 points
- May take a light armour +2 points
- May have Poisoned Attacks +10 points
- May be mounted on one of the following:
  - Nightmare +14 points
  - Hellsteed +20 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules", "options", "notes"),
)

#unit("BLOOD DRAGON VAMPIRE",
  profiles: (
    (name: "Blood Dragon Vampire", m: 6, ws: 7, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 110),
  ),
  troop-type: "Infantry (Character, Vampire, Blood Dragon)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic: "A Blood Dragon Vampire who is a Wizard chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
  ),
  options: [
- One Blood Dragon Vampire may carry the Battle Standard +25 points
- May be upgraded to a Level 1 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Heavy lance +8 points
  - Great weapon +12 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Nightmare +14 points
  - Hellsteed +20 points
  - Abyssal Terror +125 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("STRIGOI VAMPIRE",
  profiles: (
    (name: "Strigoi Vampire", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 120),
  ),
  troop-type: "Infantry (Character, Vampire, Strigoi)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Strigoi Vampire who is a Wizard chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Necromancy
  ],
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  options: [
- One Strigoi Vampire may carry the Battle Standard +25 points
- May be upgraded to a Level 1 Wizard +35 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("NECROMANCER",
  profiles: (
    (name: "Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Necromancer is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Nightmare +14 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("WIGHT KING",
  profiles: (
    (name: "Wight King", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, Undead, Wight)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  special-rules: "Killing Blow, Magical Attacks, Spectral Steeds, Undead",
  options: [
- One Wight King may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Heavy lance +6 points
  - Great weapon +9 points
- May take heavy armour +6 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Skeletal Steed +12 points
  - Barrow Chariot +50 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("CAIRN WRAITH",
  profiles: (
    (name: "Cairn Wraith", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 3, ld: 7, points: 50),
  ),
  troop-type: "Infantry (Character, Undead, Spirit).",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ethereal, Terror, Undead",
  special-rules-body: (
    rule("Chill Grasp")[A Wraith can substitute all of its Attacks in close combat for a single Chill Grasp Attack. The Wraith makes a single Attack; if this Attack hits, then it will automatically Wound with the Ignores Armour saves special rule.],
    rule("Soulstriders")[Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +9 points
- May be mounted on a Skeletal Steed +12 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("TOMB BANSHEE",
  compact: true,
  profiles: (
    (name: "Tomb Banshee", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 5, points: 80),
  ),
  troop-type: "Infantry (Character, Undead, Spirit)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Death Shriek, Ethereal, Fly (6), Terror, Undead",
)

#unit("SWAIN",
  profiles: (
    (name: "Swain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology)",
  special-rules-body: (
    rule("Until Death Do Us Apart")[Pick one Lahmian Vampire Character in your army to be this model's mistress. If both models are in base contact, the Lahmian gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against the Swain instead. If the Lahmian is slain, the Swain will be subject to the Hatred and Frenzy special rules for the remainder of the game.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Polearm +6 points
  - Great weapon +9 points
- May take a pistol +6 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour +6 points
  - Heavy armour +12 points
- May take a shield +2 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- You may only include a Swain if your army contains at least one Lahmian Vampire Character.
  ],
)

#unit("CRYPT GHAST",
  profiles: (
    (name: "Crypt Ghast", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 3, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Character, Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  options: [
- One Crypt Ghast may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Polearm +6 points
  - Great weapon +9 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("STRIGANY MYSTIC",
  profiles: (
    (name: "Strigany Mystic", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Strigany Mystic is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Heavens
- Necromancy
  ],
  special-rules: "Expendable",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- You may only include a Strigany Mystic if your army contains at least one Strigoi Vampire Character.
- A Strigany Mystic may only join units of Strigany or Ghouls.
  ],
)

= CHARACTER MOUNTS

#unit("SKELETAL STEED",
  first: true,
  profiles: (
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Skeleton)",
  base-size: "25x50 or 30x60",
  special-rules: "Undead",
  options: [
- May take barding +5 points
  ],
)

#unit("NIGHTMARE",
  profiles: (
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Undead",
  options: [
- May take barding +5 points
  ],
)

#unit("HELLSTEED",
  compact: true,
  profiles: (
    (name: "Hellsteed", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9), Undead",
)

#unit("BARROW CHARIOT",
  profiles: (
    (name: "Barrow Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Crew (Undead, Skeleton)",
  drawn-by: "2 Skeletal Steeds (Undead, Skeleton)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May take scythes +5 points
- May take barding +5 points
  ],
)

#unit("ABYSSAL TERROR",
  profiles: (
    (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: "-"),
  ),
  troop-type: "Monstrous Creature (Undead)",
  base-size: "50x50",
  special-rules: "Fly (8), Undead",
  upgrades: (
    rule("Poisonous Tail")[The Abyssal Terror gains the Poisoned Attacks special rule.],
    rule("Sword-claws")[The Abyssal Terror gains the Armour Piercing (1) special rule.],
  ),
  options: [
- May take Poisonous Tail +10 points
- May take Sword-claws +5 points
  ],
)

= CORE UNITS

#unit("SKELETON WARRIORS",
  first: true,
  profiles: (
    (name: "Skeleton Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 3),
  ),
  unit-size: "20+",
  troop-type: "Infantry (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (unless they are armed with great weapons) +1 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SKELETON ARCHERS",
  profiles: (
    (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 5),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, bow",
  special-rules: "Undead",
  options: [
- May replace bows with crossbows +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Skeleton Archer to a Leader +5 points
- May upgrade one Skeleton Archer to a Musician +5 points
- May upgrade one Skeleton Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- You may not have more units of Skeleton Archers than Skeleton Warriors.
  ],
)

#unit("SKELETON HORSEMEN",
  profiles: (
    (name: "Skeleton Horseman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 8),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Undead, Skeleton)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50",
  equipment: "Hand weapon, shield",
  special-rules: "Fast Cavalry, Undead",
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Replace shields with bows free
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- You may not have more units of Skeleton Horsemen than Skeleton Warriors.
  ],
)

#unit("ZOMBIES",
  before: [
*Profile M WS BS S T W I A Ld Points* Zombie 4 1 0 3 3 1 1 1 2 2.5
  ],
  unit-size: "20+",
  troop-type: "Infantry (Undead, Zombie)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Undead",
  special-rules-body: (
    rule("The Newly Dead")[Zombie units can be increased beyond their starting size by spells and effects that add models to an existing unit. In addition, when Zombie units are successfully targeted by the _Invocation of Nehek_ spell from the Lore of Necromancy, they regain an extra D6 Wounds. However, they also suffer D3 more casualties than normal due to being Unstable.],
  ),
  options: [
- May upgrade one Zombie to a Musician +5 points
- May upgrade one Zombie to a Standard Bearer +10 points
  ],
)

#unit("CRYPT GHOULS",
  profiles: (
    (name: "Crypt Ghoul", m: 4, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 6, points: 7),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  options: [
- May be upgraded to Skirmishers free
- May upgrade one Crypt Ghoul to a Leader +5 points
  ],
)

#unit("GLOOMS",
  profiles: (
    (name: "Gloom", m: 4, ws: 2, bs: 0, s: 2, t: 2, w: 1, i: 1, a: 1, ld: 3, points: 6),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead, Spirit)",
  base-size: "20x20 or 25x25",
  special-rules: "Expendable, Ethereal, Undead",
  special-rules-body: (
    rule("Tormented")[Units with this special rule must take a Leadership at the start of each of their turns. For every point they fail the Leadership test by, they suffer 1 Wound. However, they may add their current rank bonus to their Leadership (before any other modifiers).],
  ),
)

#unit("SYLVANIAN LEVY",
  profiles: (
    (name: "Peasant", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
  ),
  unit-size: "20+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Expendable",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Bows +3 points/model
  - Crossbows +5 points/model
- May upgrade one Peasant to a Leader +5 points
- May upgrade one Peasant to a Musician +5 points
- May upgrade one Peasant to a Standard Bearer +10 points
  ],
  notes: [
- You may only include Sylvanian Peasant Levy if your army includes a von Carstein Vampire Character.
  ],
)

#unit("STRIGANY",
  profiles: (
    (name: "Strigany", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Expendable",
  options: [
- May take throwing weapons +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Strigany to a Leader +5 points
- May upgrade one Strigany to a Musician +5 points
- May upgrade one Strigany to a Standard Bearer +10 points
  ],
  notes: [
- You may only include Strigany if your army includes a Strigoi Vampire Character.
  ],
)

#unit("DIRE WOLVES",
  profiles: (
    (name: "Dire Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: 6),
  ),
  unit-size: "10+",
  troop-type: "War Beast (Undead, Canine)",
  base-size: "25x50",
  special-rules: "Undead",
  special-rules-body: (
    rule("Slavering Charge")[In a turn that they successfully charge, models with this special rule gain the Mighty Blow (1) special rule.],
  ),
  options: [
- May upgrade one Dire Wolf to a Leader +5 points
  ],
)

#unit("FELL BATS",
  compact: true,
  profiles: (
    (name: "Fell Bat", m: 1, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 3, points: 12),
  ),
  unit-size: "3+",
  troop-type: "War Beast (Undead, Chiropter)",
  base-size: "40x40",
  special-rules: "Fly (9), Undead",
)

#unit("BAT SWARMS",
  profiles: (
    (name: "Bat Swarm", m: 1, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 4, a: 6, ld: 3, points: 30),
  ),
  unit-size: "2-10",
  troop-type: "Swarm (Chiropter)",
  base-size: "40x40",
  special-rules: "Fly (6)",
  special-rules-body: (
    rule("Cloud of Horror")[An enemy unit that is attacked in the flank or rear by one or more Bat Swarms is automatically Disrupted.],
  ),
  notes: [
- Bat Swarms have a Line of Sight value of 1.
  ],
)

= SPECIAL UNITS

#unit("GRAVE GUARD",
  first: true,
  profiles: (
    (name: "Grave Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 10),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead, Wight)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  special-rules: "Killing Blow, Magical Attacks, Undead",
  options: [
- May choose one of the following:
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take heavy armour +1.5 points/model
- May take shields (unless they are armed with great weapons) +1 point/model
- May upgrade one Grave Guard to a Leader +5 points
- May upgrade one Grave Guard to a Musician +5 points
- May upgrade one Grave Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BLACK KNIGHTS",
  profiles: (
    (name: "Black Knight", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 22),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Undead, Wight)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "Killing Blow, Magical Attacks, Spectral Steeds, Undead",
  options: [
- May take heavy armour +2 points/model
- May take barding +2 points/model
- May upgrade one Black Knight to a Leader +5 points
- May upgrade one Black Knight to a Musician +5 points
- May upgrade one Black Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CRYPT GUARD",
  profiles: (
    (name: "Crypt Guard", m: 4, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 9),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  special-rules-body: (
    rule("Royal Bodyguard")[If a unit of Crypt Guard is joined by a Strigoi Vampire Character, the unit becomes Stubborn as long as the character remains in it.],
  ),
  options: [
- May take polearms +2 points/model
- May upgrade one Crypt Guard to a Leader +5 points
- May upgrade one Crypt Guard to a Musician +5 points
- May upgrade one Crypt Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CRYPT HORRORS",
  profiles: (
    (name: "Crypt Horror", m: 6, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: 35),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ghoul)",
  base-size: "40x40",
  special-rules: "Poisoned Attacks, Regeneration (5+)",
  options: [
- May upgrade one Crypt Horror to a Leader +5 points
  ],
)

#unit("VARGHEISTS",
  profiles: (
    (name: "Vargheist", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 50),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Vampire)",
  base-size: "40x40",
  special-rules: "Fly (8), Frenzy, The Red Thirst, Vampiric",
  options: [
- May upgrade one Vargheist to a Leader +5 points
  ],
)

#unit("FLESH GOLEMS",
  compact: true,
  profiles: (
    (name: "Flesh Golem", m: "*", ws: 2, bs: 0, s: 4, t: 4, w: 3, i: 1, a: "*", ld: 2, points: 20),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Undead)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Random Attacks (D3+1), Random Movement (2D6), Undead",
)

#unit("SKELETON CHARIOT",
  profiles: (
    (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 45),
    (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 6+)",
  crew: "2 Crew (Undead, Skeleton)",
  drawn-by: "2 Skeletal Steeds (Undead, Skeleton)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May take light lances +2 points
- May take bows +2 points
- May take scythes +5 points
- May take barding +5 points
  ],
)

#unit("CORPSE CART",
  profiles: (
    (name: "Corpse Cart", m: 4, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
    (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "The Restless Dead", m: "-", ws: 1, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Shrine (Armour save 6+, Undead)",
  crew: "1 Corpsemaster (Human)",
  drawn-by: "The Restless Dead (Undead, Zombie)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Random Attacks (2D6) (The Restless Dead only), Regeneration (4+), Undead",
  special-rules-body: (
    rule("Vigour Mortis")[All friendly Skeleton and Zombie units (but not any characters) within 6" of the Corpse Cart may re-roll all failed rolls To Wound in close combat and gain the Regeneration (6+) special rule.],
  ),
  upgrades: (
    rule("Balefire")[Enemy Wizards suffer a \-1 casting penalty if there is one or more Corpse Carts with a Balefire within 18".],
    rule("Unholy Lodestone")[When a friendly Wizard within 12" of an Unholy Lodestone successfully casts Invocation of Nehek, they may re-roll a single dice to determine how many Wounds are restored.],
  ),
  options: [
- May choose one of the following:
  - Balefire +20 points
  - Unholy Lodestone +20 points
  ],
)

#unit("WRAITHWISPS",
  profiles: (
    (name: "Wraithwisp", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 13),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Undead, Spirit)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ethereal, Terror, Skirmishers, Undead",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Crossbows +3 points/model
  - Great weapons +3 points/model
- May upgrade one Wraithwisp to a Leader +5 points
- May upgrade one Wraithwisp to a Musician +5 points
- May upgrade one Wraithwisp to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("HEXWRAITHS",
  profiles: (
    (name: "Hexwraith", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 27),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Undead, Spirit)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50",
  equipment: "Great weapon",
  special-rules: "Ethereal, Fast Cavalry, Flaming Attacks, Ignores Armour Saves, Terror, Undead",
  special-rules-body: (
    rule("Soulstriders")[Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.],
  ),
  options: [
- May upgrade one Hexwraith to a Leader +5 points
  ],
)

#unit("SPIRIT HOST",
  profiles: (
    (name: "Spirit Host", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 4, i: 1, a: 4, ld: 4, points: 40),
  ),
  unit-size: "2-10",
  troop-type: "Swarm (Undead, Spirit)",
  base-size: "40x40",
  special-rules: "Ethereal, Undead",
  notes: [
- Spirit Hosts have a Line of Sight value of 1.
  ],
)

#unit("VARGHULF",
  profiles: (
    (name: "Varghulf", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 5, ld: 7, points: 135),
  ),
  troop-type: "Monstrous Creature (Vampire)",
  base-size: "50x50 or 50x100",
  special-rules: "Hatred, The Red Thirst, Regeneration (4+), Vampiric",
  special-rules-body: (
    rule("Bestial Fury")[For the purposes of calculating combat result bonuses, a Varghulf counts as having no flanks or rear.],
  ),
)

#unit("MOURNGUL",
  profiles: (
    (name: "Mourngul", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 5, points: 130),
  ),
  troop-type: "Monstrous Creature (Undead, Spirit)",
  base-size: "50x50",
  special-rules: "Ice Attacks, Killing Blow, Terror, Undead",
  special-rules-body: (
    rule("Carnophage")[For every unsaved Wound the Mourngul inflicts in close combat, it regains one Wound it has previously lost during the battle.],
    rule("Haunter of the Dark")[A Mourngul has a 4+ Ward save against non-magical attacks.],
  ),
)

= RARE UNITS

#unit("BLOOD KNIGHTS",
  first: true,
  profiles: (
    (name: "Blood Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 36),
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Vampire)",
  mount: "Nightmare (Undead, Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Vampiric",
  options: [
- May upgrade one Blood Knight to a Leader +5 points
- May upgrade one Blood Knight to a Musician +5 points
- May upgrade one Blood Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
)

#unit("LAHMIAN HANDMAIDENS",
  profiles: (
    (name: "Handmaiden", m: 6, ws: 5, bs: 4, s: 5, t: 4, w: 1, i: 6, a: 2, ld: 8, points: 21),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour",
  special-rules: "Dodge (6+), Scouts, Skirmishers, Vampiric",
  options: [
- May take throwing weapons +4 points/model
- May upgrade one Handmaiden to a Leader +5 points
  ],
)

#unit("MORBHEG KNIGHTS",
  profiles: (
    (name: "Morbheg Knight", m: 6, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 35),
    (name: "Nightshrieker", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Cavalry (Ghoul)",
  mount: "Nightshrieker (Chiropter)",
  base-size: "50x75",
  equipment: "Light lance, shield",
  special-rules: "Fly (5), Poisoned Attacks",
  special-rules-body: (
    rule("Shrieking Charge")[In any turn that a unit of Morbheg Knights successfully charge an enemy unit, roll 2D6 and add 1 for each Nightshrieker in the unit. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Shrieking Charge is a non-physical attack and Wounds suffered from it are distributed as if from shooting. This has no effect on Animated Constructs.],
  ),
  options: [
- May upgrade one Morbheg Knight to a Leader +5 points
- May upgrade one Morbheg Knight to a Musician +5 points
- May upgrade one Morbheg Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("TERRORGHEIST",
  profiles: (
    (name: "Terrorgheist", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 6, i: 3, a: 4, ld: 4, points: 225),
  ),
  troop-type: "Monster (Undead, Chiropter)",
  base-size: "100x150",
  special-rules: "Death Shriek, Fly (7), Regeneration (6+), Undead",
  upgrades: (
    rule("Infested")[When a Terrorgheist with this upgrade is removed as a casualty, all units that were in base contact (friend or foe) take 3D6 Strength 2 hits.],
    rule("Rancid Maw")[Attacks made by a Terrorgheist with this upgrade have the Poisoned Attacks special rule.],
  ),
  options: [
- May take Infested +10 points
- May take Rancid Maw +10 points
  ],
)

#unit("ZOMBIE DRAGON",
  profiles: (
    (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: 245),
  ),
  troop-type: "Monster (Undead, Dragon)",
  base-size: "50x50 or 100x150",
  special-rules: "Fly (7), Natural Armour (5+), Undead",
  special-rules-body: (
    rule("Pestilential Breath")[A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.],
    rule("Swarm of Flies")[Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.],
  ),
)

#unit("NECROFEX COLOSSUS",
  profiles: (
    (name: "Necrofex Colossus", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: "*", ld: 8, points: 240),
  ),
  troop-type: "Monster (Undead, Animated Construct)",
  base-size: "50x100 or 100x150",
  special-rules: "Regeneration (4+), Undead",
  special-rules-body: [
- *Vortex of Death:* Any Wizard attempting to cast spells from the Lore of Death or Lore of Necromancy within 12" of the Necrofex Colossus gains +1 to their Casting roll.
- *Necrofex Colossus Special Attacks:* A creature of nightmarish power and massive stature, a Necrofex Colossus can make one of a number of attacks in close combat. When it is the Necrofex Colossus' turn to strike in close combat, roll a D6 and consult the table below to determine what kind of attack it will make:

#chart((("D6", "Result"), ("1-2", "Batter and Slash: The Necrofex Colossus fights using the Random Attacks (D6+1) special rule."), ("3-4", "Impale: Select one model in base contact; that model, and all models in the same file, must pass an
Initiative test or suffer a Strength 7 Hit with the Multiple Wounds (D6) special rule."), ("5-6", "Screams of the Damned: The Necrofex Colossus may make a Death Shriek into close combat. To
resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's
Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-
physical Magical Attack and Wounds suffered from it are distributed as if from shooting.")))
  ],
  upgrades: (
    rule("Corpse Killers")[After resolving its regular attacks, all enemy units in base contact with the Necrofex Colossus suffer D6 Strength 2 hits.],
    rule("Dark Soul")[The Necrofex Colossus becomes a Level 1 Wizard who uses spells from the Lore of Death or Lore of Necromancy. However, should the Necrofex Colossus suffer a miscast, in addition to any other effect, the Necrofex Colossus permanently has its Toughness value reduced by 1, as the backlash of the miscast damages the very fabric that holds the horror together.],
    rule("Scythes and Barbs")[The Necrofex Colossus' number of Random Attacks and Stomp hits may be re-rolled.],
    rule("Vampire Blood")[The Necrofex Colossus gains the Regeneration (3+) special rule, but is also subject to the Berserk Rage part of Frenzy.],
  ),
  options: [
- May take Scythes and Barbs +10 points
- May take Vampire Blood +10 points
- May take Corpse Killers +20 points
- May take Dark Soul +45 points
  ],
)

#unit("SKELETON CATAPULT",
  profiles: (
    (name: "Skeleton Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 80),
    (name: "Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, stone thrower",
  special-rules: "Undead",
  options: [
- May take light armour +3 points
  ],
)

#unit("BLACK COACH",
  profiles: (
    (name: "Black Coach", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 140),
    (name: "Wraith", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 2, ld: 5, points: ""),
    (name: "Spectres", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 3, ld: "-", points: ""),
    (name: "Nightmare", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Cairn Wraith (Undead, Spirit)",
  drawn-by: "2 Nightmares (Undead, Equine)",
  base-size: "50x100",
  equipment: "Great weapon (Wraith only)",
  special-rules: "Chill Grasp (see Cairn Wraiths), Magical Attacks, Terror, Undead",
  special-rules-body: [
- *Evocation of Death:* Immediately after the total number of power dice is determined in each player's turn, you may discard one dice from the magic pool for each Black Coach on the battlefield. Each discarded dice increases that Black Coach's abilities for the rest of the game, as detailed on the chart below. All of the increases listed are cumulative.

#chart((("D6:", "Effect:"), ("1", "The Black Coach adds +1 to the number of Impact Hits it inflicts when it charges."), ("2", "The Wraith, Spectres and Nightmares gain +1 Strength."), ("3", "The Black Coach's Impact Hits, Nightmares', Wraith's and Spectres Attacks gain the Killing Blow and
Flaming Attacks special rules."), ("4", "The Black Coach gains the Magic Resistance (2) and Strider special rules."), ("5", "The Black Coach gains the Ethereal special rule."), ("6", "The Black Coach gains the Fly (8) special rule.")))

- *Insubstantial Form:* A model with this special rule has a 4+ Ward Save.
  ],
  options: [
- May take two additional Nightmares +6 points
- May take Spectres +5 points
  ],
)

#unit("COVEN THRONE",
  profiles: (
    (name: "Coven Throne", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 200),
    (name: "Pallid Handmaiden", m: "-", ws: 5, bs: 3, s: 5, t: "-", w: "-", i: 6, a: 2, ld: 8, points: ""),
    (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "3 Pallid Handmaidens (Vampire, Lahmian)",
  drawn-by: "1 Spirit Horde (Undead, Spirit)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Fly (7), Magical Attacks (Spirit Horde only), Random Attacks (2D6) (Spirit Horde only), Spectral Steeds, Terror, Vampiric",
  special-rules-body: [
- *Battle of Wills:* Immediately before the first model in an enemy unit rolls To Hit against the Coven Throne (either in close combat or shooting), the opponent must roll a D6 and add it to their unit's Leadership. Next, roll a D6 and add it to the Coven Throne's Leadership. To find the result of the Battle of Wills, subtract the enemy's total from the Coven Throne's total, and apply the result to the table below – the results last until the end of the turn.

#chart((("Result:", "Effect:"), ("0 or less", "Back off, devils!: No effect."), ("1-2", "Must... resist...: The enemy is at -1 Weapon Skill and -l Ballistic Skill. Artillery weapons that
do not roll to Hit must re-roll the scatter dice."), ("3-5", "Bewitched: The enemy must re-roll successful To Hit rolls. Artillery weapons that do not roll to
Hit must roll a 4+ to be able to fire."), ("6+", "Completely enthralled: Every model in the enemy unit makes a single close combat attack,
resolved against its own unit. Affected units may not otherwise shoot or attack this turn.")))

- *Insubstantial Form:* A model with this special rule has a 4+ Ward Save.
- *Scrying Pool:* Bound Spell, power level 3. This is an *augment* spell that targets the Coven Throne. All crew (including any characters mounted on it) may re-roll all failed To Hit and To Wound rolls for the remainder of the turn.
  ],
  notes: [
- A Coven Throne has a Line of Sight value of 5.
  ],
)

#unit("MORTIS ENGINE",
  profiles: (
    (name: "Mortis Engine", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 220),
    (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "Banshee", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
    (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Corpsemaster (Human), 3 Banshees (Undead, Spirit)",
  drawn-by: "1 Spirit Horde (Undead, Spirit)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Death Shriek, Fly (7), Magical Attacks (Spirit Horde only), Random Attacks (2D6) (Spirit",
  special-rules-body: [
Horde only)*, Regeneration (4+), Spectral Steeds, Terror, Undead*

- *The Reliquary:* At the start of each of your turns, roll 2D6 and add the current turn number. This is range of the reliquary's dark aura this turn in inches. All enemy units within range of the dark aura immediately take D6 hits, with a Strength equal to the current turn number, distributed as from shooting. Also, place a marker next to all friendly Undead units that were within range of the dark aura at the start of the turn. These units improve their Regeneration saves by one point until the start of their next turn, to a maximum of 4+. If they have no Regeneration save, they are treated as having the Regeneration (6+) special rule instead. Finally, if the 2D6 result was a double, then the fell energies prove too powerful; in addition to the usual effects, the Mortis Engine takes 1 Wound with no saves of any kind allowed. When the Mortis Engine suffers its last unsaved Wound, every unit within 12 plus the turn number in inches, friend or foe, must take 2D6 hits with a Strength equal to the current turn number. These hits are distributed as shooting.
  ],
  upgrades: (
    rule("Blasphemous Tome")[All Wizards (friend or foe) within 12" of one or more models with a Blasphemous Tome gain +2 to their casting result when casting spells from the Lore of Necromancy. If any Wizard miscasts within 12" of one or more models with a Blasphemous Tome upgrade, they must roll twice on the Miscast table. The miscasting player's opponent chooses which result applies.],
  ),
  options: [
- May take a Blasphemous Tome +20 points
  ],
  notes: [
- A Mortis Engine has a Line of Sight value of 5.
  ],
)

= SPECIAL CHARACTERS (LORDS)

#unit("VLAD VON CARSTEIN",
  first: true,
  subtitle: "First Count of Sylvania",
  profiles: (
    (name: "Vlad von Carstein", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 435),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic: "Vlad von Carstein is a Level 3 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Necromancy
  ],
  magic-items: (
    rule("Blood Drinker")[Magic Weapon. Close combat attacks made with Blood Drinker are resolved at +1 Strength. In addition, whilst Vlad wields Blood Drinker, he restores lost Wounds on a score of 3+ rather than 5+ for the purposes of the Red Thirst special rule.],
    rule("The Carstein Ring")[Talisman. The Carstein Ring grants Vlad a 4+ Ward save. Furthermore, the first time Vlad is removed from play, roll a D6 at the end of the phase. On a roll of 2+, he is immediately returned to 'life' with a single Wound. Vlad must then be placed in the front rank of a friendly unit anywhere within 12" of the point where he fell (even one in close combat). If there is no such unit for Vlad to join, he is removed as a casualty.],
  ),
  vampiric-powers: "Aura of Dark Majesty, Supernatural Horror, Transfix",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Beloved in Death")[If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.],
  ),
)

#unit("MANNFRED VON CARSTEIN",
  subtitle: "Last of the Von Carsteins",
  profiles: (
    (name: "Mannfred von Carstein", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 565),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic: "Mannfred von Carstein is a Level 4 Wizard who chooses spells from both of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  magic-items: (
    rule("Timor Noctis, the Sword of Unholy Power")[Magic Weapon. For each unsaved Wound caused by the sword, the wielder gains an extra dice at the start of the ensuing Magic phase (this will be a power dice in his own Magic phase, and a dispel dice in the enemy's Magic phase).],
    rule("Armour of Templehof")[Magic Armour. Heavy armour. This item gives the wearer +2 Wounds (in addition to any Wounds he would get from being mounted on a Monster).],
    rule("Cloak of Darkness")[Talisman. This item gives the wearer the Magic Resistance (3) special rule.],
    rule("Ebony Staff")[Arcane Item. This item allows the bearer to cast _Invocation of Nehek_ from the Lore of Necromancy without using any Power dice in each of his Magic phases. The spell is cast with a Power Level equal to its basic casting value and can be dispelled normally.],
  ),
  vampiric-powers: "Dark Acolyte, Master of the Black Arts, Summon Creatures of the Night",
  special-rules: "Loremaster (Lore of Death, Necromancy), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Devils of Swartzhafen")[If Mannfred von Carstein is included in your army, you may upgrade one unit of Vargheists to the Devils of Swartzhafen for +5 points per model. This unit has the Scouts and Terror special rules.],
    rule("Drakenhof Guard")[If Mannfred von Carstein is included in your army, you may upgrade one unit of Grave Guard to the Drakenhof Guard for +1 point per model. This unit ignores casualties caused by being Unstable.],
  ),
  options: [
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
  ],
)

#unit("ZACHARIAS THE EVERLIVING",
  profiles: (
    (name: "Zacharias the Everliving", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 725),
    (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
  ),
  troop-type: "Monster (Special Character, Vampire, Necrarch)",
  mount: "Zombie Dragon (Undead, Dragon)",
  base-size: "50x50",
  equipment: "Hand weapon.",
  magic: "Zacharias is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Fire
- Death
- Heavens
- Light
- Metal
- Necromancy
- Shadow
  ],
  magic-items: (
    rule("Circlet of Rathek")[Talisman. The circlet gives Zacharias a 4+ Ward save.],
    rule("Staff of Kaphamon")[Enchanted Item. Bound Spell, power level 4. This staff contains the _Gaze of Nagash_ spell.],
    rule("Scrolls of Semhtep")[Arcane Item. The Scrolls of Semhtep follow all the rules for Dispel Scrolls, except that you may attempt to use one in each of the opposing player's Magic phases. After the first time you have used one, roll a D6; on a 2+ you can use a scroll the next turn as well. The second time you use one, you need to roll a 3+, the third time a 4+ and so on. A roll of 6 always succeeds.],
    rule("Book of Nagash")[Arcane Item. When casting the spell _Invocation of Nehek_ from the Lore of Necromancy, Zacharias restores 3D6 Wounds instead of 2D6 for Core Units and 2D6 Wounds for Special Units (except Cavalry) instead of D6. Characters, Special Units that are Cavalry and Rare Units regain D6 Wounds per successful casting.],
  ),
  vampiric-powers: "Dark Acolyte, Forbidden Lore, Master of the Black Arts",
  special-rules: "Fly (7), Natural Armour (5+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Pestilential Breath")[A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.],
    rule("Swarm of Flies")[Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.],
  ),
)

#unit("MELKHIOR THE ANCIENT",
  profiles: (
    (name: "Melkhior", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 455),
    (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: ""),
  ),
  troop-type: "Monstrous Creature (Special Character, Vampire, Necrarch)",
  mount: "Abyssal Terror (Undead)",
  base-size: "50x50",
  magic: "Melkhior is a Level 4 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Necromancy
  ],
  magic-items: (
    rule("Painbringer")[Magic Weapon. If the wielder of this item rolls a 6 when rolling To Wound, that attack has the Multiple Wounds (D3) special rule.],
    rule("Grimoire Necronium")[Arcane Item. This item allows the bearer to cast _Invocation of Nehek_ at its basic value without using any Power dice. Each time you use the book roll a D6: on a roll of 1 it runs out of power and cannot be used for the remainder of the battle.],
    rule("Black Cloak of Lahmia")[Talisman. This item makes the wearer unable to be targeted by non-magical shooting attacks.],
  ),
  vampiric-powers: "Dark Acolyte, Forbidden Lore, Nehekhara's Noble Blood",
  special-rules: "Fly (8), Frenzy, Stupidity, The Red Thirst, Vampiric",
)

#unit("NEFERATA",
  subtitle: "The Queen of Mysteries and Shadows",
  profiles: (
    (name: "Neferata", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 9, a: 5, ld: 10, points: 510),
  ),
  troop-type: "Infantry (Special Character, Vampire, Lahmian).",
  base-size: "20x20 or 25x25",
  magic: "Neferata is a Level 3 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadows
  ],
  magic-items: (
    rule("Dagger of Jet")[Magic Weapon. The wielder gains +1 Strength and the Poisoned Attacks special rule.],
    rule("Ruby of Lahmia")[Talisman. At the end of each turn of the game that the bearer is still alive, the Ruby of Lahmia automatically lets them regain one Wound that they has lost during the battle.],
    rule("The Staff of Pain")[Arcane Item. When the bearer successfully casts a *magic missile*, *direct damage* or *hex* spell, each target suffer D3 additional Strength 5 hits after the spell effect has been resolved.],
    rule("Bastet")[Enchanted Item. At the beginning of each of her turns, Neferata can send Bastet to any enemy unit on the battlefield within 12". Place a marker of Bastet next to the affected unit. Bastet looks just like an ordinary black cat and therefore will be ignored by the enemy (the model can be moved through, it doesn't stop the enemy from marching, etc.). The target unit will be afflicted by miserable bad luck and everything that can go wrong will. The unit must re-roll any successful armour save it takes while under Bastet's influence. This lasts for the duration of the Vampire player's turn.],
  ),
  options: [
- May take medium armour +9 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Coven Throne (replacing one of the crew) +200 points
  ],
  vampiric-powers: "Lightning Reflexes, Quickblood, Seduction",
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Heavenly Creature")[Enemy units in base contact with Neferata suffer a \-2 penalty to their Leadership.],
    rule("Queen of Lahmia")[Neferata must be the Army General. In addition, units of Lahmian Handmaidens may be included as Special Units rather than Rare Units.],
    rule("Shadowblood")[Innate bound spell, power level 5. _Shadowblood_ is a *magic missile* with a range of 24". When cast, Neferata must declare how many Wounds she is using to boost the effects of the spell. The spell causes D6 Strength 5 hits with the Flaming Attacks special rule plus an extra D6 hits for each wound Neferata expends. In addition, a unit suffering one or more wounds from this spell must immediately take a Panic test.],
  ),
  order: ("troop-type", "base-size", "magic", "magic-items", "options", "vampiric-powers", "special-rules"),
)

#unit("WALACH HARKON",
  subtitle: "Grand Master of the Blood Knights",
  profiles: (
    (name: "Walach Harkon", m: 6, ws: 9, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 475),
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Vampire, Blood Dragon)",
  mount: "Nightmare (Undead, Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Barding",
  magic: "Walach Harkon is a Level 2 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Necromancy
  ],
  magic-items: [
- *Crimson Blade:* Magic Weapon. The Crimson Blade automatically Wounds on a 2+. In addition, to see what additional effect the attack has, compare the result of each To Wound dice rolled with the table below:

#chart((("D6", "Result"), ("2-3", "Arm wound: The model (or rider if mounted) loses 1 Attack for the remainder of the game."), ("3-5", "Chest wound: The attack is resolved with the Multiple Wounds (D3) special rule."), ("6", "Beheaded: The attack is resolved as a Heroic Killing Blow.")))

- *Walach's Bloody Hauberk:* Magic Armour. Heavy armour. This item gives the wielder a 5+ Ward save.
- *Blood Chalice:* Enchanted Item. At the beginning of each Vampire Counts turn, the bearer can drink from the Blood Chalice allowing them to do one of the following:

\- Heal 1 Wound suffered earlier in the battle. - Gain +D3 Attack until the start of your next turn. - Re-roll 1's To Hit and To Wound and gain the Flaming Attacks special rule until the start of your next turn.

- *Blood Dragon Standard:* Magic Standard. This is the army's Battle Standard, though Walach may still be the Army General. All Blood Dragon Vampires within 12" gain the Hatred special rule.
  ],
  vampiric-powers: "Dread Knight, Doom Rider, Warrior Pride",
  special-rules: "Hatred (The Empire), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Grand Master of the Blood Knights")[If Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units.],
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
  ),
  options: [
- May be mounted on a Zombie Dragon (replacing the Nightmare) +195 points
  ],
)

#unit("THE RED DUKE",
  subtitle: "Scourge of Aquitaine",
  profiles: (
    (name: "The Red Duke", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 375),
  ),
  troop-type: "Infantry (Special Character, Vampire, Blood Dragon)",
  base-size: "20x20 or 25x25",
  magic: "The Red Duke is a Level 1 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Necromancy
  ],
  magic-items: (
    rule("Golden Death")[Magic Weapon. Two hand weapons. This item gives the wielder +1 Strength and +1 To Hit in close combat.],
    rule("The Armour of Blood")[Magic Armour. Heavy armour. This item allows the wielder to automatically regain Wounds through the Red Thirst.],
  ),
  vampiric-powers: "Heart Piercing, Honour or Death, Red Fury",
  special-rules: "Hatred (Bretonnia), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
  ),
  options: [
- May be mounted on a Nightmare (with barding) +26 points
  ],
)

#unit("PRINCE VHORDRAI",
  subtitle: "Lord of Crimson Keep",
  profiles: (
    (name: "Prince Vhordrai", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 600),
    (name: "Shordemaire (Zombie Dragon)", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
  ),
  troop-type: "Monster (Special Character, Vampire, Blood Dragon)",
  mount: "Zombie Dragon (Undead, Dragon)",
  base-size: "100x150",
  equipment: "Heavy armour, shield",
  magic: "Prince Vhordrai is a Level 1 Wizard who chooses spells from the following Lores of Magic:",
  magic-body: [
- Necromancy
  ],
  magic-items: (
    rule("Bloodlance")[Magic Items. Heavy lance. In any turn in which Prince Vhordrai charges, he gains the Multiple Wounds (D3) special rule.],
  ),
  vampiric-powers: "Heart Piercing, Honour or Death, Red Fury",
  special-rules: "Fly (7), Natural Armour (5+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Breath of Shyish")[Shordemaire has a Strength 3 Breath Weapon with the Ignores Armour Saves special rule.],
    rule("Fist of Abhorash")[All units of Blood Knights within 12" of Prince Vhordrai may re-roll failed charge distance rolls.],
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
    rule("Swarm of Flies")[Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.],
  ),
)

#unit("USHORAN",
  subtitle: "The Carrion King",
  profiles: (
    (name: "Ushoran", m: 6, ws: 7, bs: 3, s: 6, t: 6, w: 4, i: 7, a: 5, ld: 10, points: 560),
  ),
  troop-type: "Monstrous Creature (Special Character, Vampire, Strigoi)",
  base-size: "100x100",
  magic: "Ushoran is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Necromancy
  ],
  magic-items: (
    rule("Sceptre of the Carrion King")[Magic weapon. This item gives the wielder the Multiple Wounds (D6) special rule.],
    rule("The King's Chalice")[Talisman. This item gives the bearer a 5+ Ward save. In addition, at the start of each of your turns, it can restore one Wound lost earlier during the game.],
    rule("Shroudcage Fragment")[Enchanted Item. All enemy units in base contact with Ushoran are subject to the Always Strikes Last special rule.],
  ),
  vampiric-powers: "Monstrous Mass, Summon Ghouls",
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  special-rules-body: [
- *The Carrion King:* Ushoran must be the Army General. In addition, all friendly Ghouls within 12" of

Ushoran are subject to the Frenzy special rule.
  ],
)

#unit("BELLADAMMA VOLGA",
  subtitle: "First of the Vyrkos",
  profiles: (
    (name: "Belladamma Volga", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 400),
    (name: "Rothabak (Dire Wolf)", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Vampire, Vyrkos)",
  mount: "Rothabak (Undead, Canine)",
  base-size: "50x50 or 75x75",
  equipment: "Hand weapon",
  magic: "Belladamma Volga is a Level 3 Wizard who chooses spells from the Lore of Beasts.",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Direpack")[If Belladamma Volga is included in your army, you may upgrade one unit of Dire Wolves to the Direpack for +1 point per model. This unit has the Multiple Wounds (2) special rule.],
    rule("First of the Vyrkos")[Belladamma gains +1 to cast and dispel. In addition, every time she suffers an unsaved Wound, roll a D6 if she is within 6" of one more friendly Dire Wolf units. On a 3+, the Wound is allocated to one model in that unit instead of her.],
    rule("Lycancurse")[Innate bound spell, power level 3. _Lycancurse_ is a *direct damage* spell with a range of 18" that targets Infantry. The target unit suffer 2D6 Wounds which Ignores Armour Saves. If this results in all the models getting removed as casualties, the number of slain models gets transformed into a unit of Dire Wolves controlled by you, facing the same direction as before.],
    rule("Pack Alpha")[All friendly units of Dire Wolves within 12" of Belladamma may re-roll failed charge and pursuit rolls.],
    rule("Under a Killing Moon")[Innate bound spell, power level 3. Remains in Play. _Under a Killing Moon_ is an *augment* spell with a range of 18" that targets Dire Wolves. The target unit gains the Frenzy special rule.],
  ),
)

#unit("RADUKAR THE WOLF",
  profiles: (
    (name: "Radukar the Wolf", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 6, a: 5, ld: 9, points: 380),
    (name: "Radukar the Beast", m: 8, ws: 6, bs: 0, s: 6, t: 6, w: 5, i: 7, a: 6, ld: 9, points: ""),
  ),
  troop-type: "Monstrous Infantry (Special Character, Vampire, Vyrkos)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  magic: "Radukar is a Level 1 Wizard who chooses spells from the Lore of Beasts.",
  special-rules: "Hatred, Killing Blow, The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Beast")[Whenever Radukar suffer an unsaved Wound, roll a D6; on a roll of 4+, he will transform into his Beast form for the remainder of the battle and will use those characteristics from then on (note that any Wounds previously suffered are not regained upon transforming). Replace Radukar the Wolf with Radukar the Beast, reforming the unit to make space if needed (this does not count as a reform).],
    rule("Call to the Hunt")[Radukar, and any unit he joins, gains the Devastating Charge special rule.],
    rule("Mustering Howl")[While in his Beast form, Radukar may use this ability once per battle at the start of any of your Remaining Moves phases. If you do so, you can add 1 unit of up 2D6 Dire Wolves to your army. This unit enters the table following the rules for Reinforcements.],
    rule("Supernatural Reflexes")[Enemies targeting Radukar the Beast must re-roll successful rolls To Hit.],
  ),
)

#unit("HEINRICH KEMMLER",
  subtitle: "The Lichemaster",
  profiles: (
    (name: "Heinrich Kemmler", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 1, ld: 8, points: 340),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Heinrich Kemmler is a Level 4 Wizard who chooses spells from the Lore of Necromancy.",
  magic-items: (
    rule("Chaos Tomb Blade")[Magic Weapon. The Chaos Tomb Blade confers +2 Attacks. Furthermore, if the wielder is in a unit of Skeleton Warriors or Grave Guard, for each model he slays in close combat, an extra model is added to his unit following the rules for Resurrecting Fallen Warriors. Newly created models have the same equipment as the rest of the unit.],
    rule("Cloak of Mists and Shadows")[Enchanted Item. At the beginning of each of your turns, choose either the Fly (10) or Ethereal special rule. The wearer has that rule until the beginning of his next turn.],
    rule("Skull Staff")[Arcane Item. At the beginning of the friendly Magic phase, your opponent must declare all of his magic items that are within 12" of the bearer, and the models/units that are carrying them. In addition, the bearer receives a +1 to their dice rolls when they attempt to dispel.],
  ),
  special-rules: "Loremaster (Lore of Necromancy), Master of the Dead",
)

#unit("DIETER HELSNICHT",
  subtitle: "Doom Lord of Middenheim",
  profiles: (
    (name: "Dieter Helsnicht", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 1, ld: 8, points: 335),
    (name: "Manticore", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 5, points: ""),
  ),
  troop-type: "Monstrous Creature (Special Character, Human)",
  mount: "Abyssal Terror (Undead)",
  base-size: "50x50",
  magic: "Dieter Helsnicht is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  magic-items: (
    rule("Chaos Runesword")[Magic Weapon. The runes carved into the blade gives the bearer's +1 Weapon Skill, +1 Strength and +1 Attack.],
    rule("Rod of Flaming Death")[Enchanted Item. Bound Spell (Power Level 4). If cast successfully, this item casts a magic missile with a range of 18 " that inflicts D6 Strength 4 hits with the Flaming Attacks special rule. In addition, if the target unit moves in the Movement phase, flees or pursues during its next turn, every model in the unit suffers an immediate Strength 4 hit with the Flaming Attacks special rule, after which the spell's effects end. If the unit does not move the spell ends at the start of the caster's next Magic phase. Any unit taking one or more unsaved Wounds from this spell must immediately take a Panic test.],
    rule("Power Scroll")[Arcane Item. One use only. The bearer can use the scroll to cast one his spells at its basic power level automatically without using any Power dice. It can be dispelled as normal.],
  ),
  special-rules: "Fly (8), Frenzy (Manticore only), Killing Blow (Manticore only)",
  special-rules-body: (
    rule("Doom Lord")[Dieter does not need to test for Berserk Rage from his Manticore's Frenzy.],
  ),
)

#unit("LADY OLYNDER",
  subtitle: "The Mourning Bride",
  profiles: (
    (name: "Lady Olynder", m: 6, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 400),
    (name: "Banshee Handmaidens", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Undead, Spirit)",
  base-size: "40x40 or 50x50",
  magic: "Lady Olynder is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  magic-items: (
    rule("Staff of Midnight")[Magic Weapon. The Staff of Midnight gives Lady Olynder the Killing Blow special rule.],
    rule("Grave-sands of Time")[Enchanted Item. One use only. The Grave-sands can be used at the start of any close combat phase to target one enemy model in base contact. The target model suffers D3 Wounds which Ignores Armour saves. Alternatively, Lady Olynder can use the Grave-sands to heal D3 Wounds previously lost during the game, up to her starting value.],
  ),
  special-rules: "Death Shriek, Ethereal, Fly (6), Terror, Undead",
  special-rules-body: (
    rule("Grief-stricken")[Bound Spell, power level 5. _Grief-stricken_ is a *hex* spell with a range of 18". Until the start of the caster's next turn, the target unit suffer \-1 To Hit in close combat, and models targeting them in close combat gain +1 To Hit.],
    rule("Lifting the Veil")[This is a shooting attack with a range of 12", Strength 4, Ignores Armour saves, Killing Blow and Multiple Shots (6) special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties. Each model slain by this attack allows Lady Olynder to regain 1 Wound previously lost during the game, up to her starting value.],
    rule("The Mourning Lady")[All enemy models within 6" of Lady Olynder must re-roll successful Psychology tests.],
    rule("No Rest for the Wicked")[When casting the Invocating of Nehek spell on a unit with the Ethereal special rule, Lady Olynder may re-roll the number of Wounds restored.],
  ),
  notes: [
- If Lady Olynder is your Army General, Glooms are no longer Expendable.
- Lady Olynder has a Unit Strength of 3.
  ],
)

#unit("KURDOSS VALENTIAN",
  subtitle: "The Craven King",
  profiles: (
    (name: "Kurdoss Valentian", m: "-", ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 4, ld: 7, points: 200),
    (name: "Wraith Heralds", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Undead, Spirit)",
  base-size: "40x40 or 50x50",
  magic-items: (
    rule("Sepulchral Sceptre")[Magic Weapon. Great weapon. All attacks made with the Sepulchral Sceptre have the Multiple Wounds (D3) special rule. However, for each natural To Wound roll of 6, that attack has the Multiple Wounds (D6) special rule instead.],
  ),
  special-rules: "Chill Grasp (Kurdoss Valentian only, see Cairn Wraiths), Ethereal, Fly (5), Terror, Undead",
  special-rules-body: [
- *If I Cannot Rule, None Shall Rule!* Kurdoss Valentian or any other Army General cannot make use of their Inspiring Presence special rule while they are within 12" of him.
- *Suffer No Rival:* Kurdoss may re-roll failed rolls To Hit in close combat against the enemy Army General.
  ],
  notes: [
- If Kurdoss Valentian is your Army General, Glooms are no longer Expendable.
- Kurdoss Valentian has a Line of Sight value of 2 and a Unit Strength of 3.
  ],
)

= SPECIAL CHARACTERS (HEROES)

#unit("KONRAD VON CARSTEIN",
  first: true,
  subtitle: "The Mad Blood Count",
  profiles: (
    (name: "Konrad von Carstein", m: 6, ws: 7, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 215),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("Sword of Waldenhof")[Magic Weapon. Two hand weapons. The wielder gains the Multiple Wounds (2) special rule.],
    rule("Ring of the Night")[Talisman. The bearer gains a 5+ Ward save*.* In addition, all missile attacks targeted at the bearer of the Ring of the Night or the unit they are with suffer \-1 To Hit.],
  ),
  vampiric-powers: "Red Fury",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("One Bat Short of a Belfry")[At the start of each of Konrad's turns, you must determine the state of the mad Vampire's fragile mind. Roll a D6. On a roll of a 1\-3, Konrad is subject to the rules for Stupidity until the start of his next turn. On a roll of a 4\-6, Konrad is subject to Frenzy until the start of his next turn],
  ),
)

#unit("ISABELLA VON CARSTEIN",
  subtitle: "Beloved of Vlad",
  profiles: (
    (name: "Isabella von Carstein", m: 6, ws: 6, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  magic-items: (
    rule("Blood Chalice of Bathori")[Enchanted Item. The bearer, or another Vampiric character in the same unit, may drink from the Blood Chalice of Bathori at the start of each friendly Magic phase. The chosen model regains a single Wound lost earlier in the battle.],
  ),
  vampiric-powers: "Beguile",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Beloved in Death")[If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.],
  ),
)

#unit("SEKHAR",
  subtitle: "The Fang of Lahmia",
  profiles: (
    (name: "Sekhar", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 190),
    (name: "Ouboroth", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Vampire, Lahmian)",
  base-size: "40x60 or 50x75",
  equipment: "Polearm, medium armour",
  magic: "Sekhar is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadows
  ],
  vampiric-powers: "Seduction, Lightning Reflexes",
  special-rules: "Dodge (6+), Poisoned Attacks (Ouboroth only), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Time-Swallower’s Maw")[This ability can be used once per game, at the start of any close combat phase. All enemy models in base contact with Sekhar must pass an Initiative test or suffer 1 Wound for every point they failed the Initiative test by.],
  ),
  notes: [
- Sekhar has a Unit Strength of 2.
  ],
)

#unit("CADO EZECHIAR",
  subtitle: "The Hollow King",
  profiles: (
    (name: "Cado Ezechiar", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 165),
  ),
  troop-type: "Infantry (Special Character, Vampire, Lahmian).",
  base-size: "20x20 or 25x25",
  magic: "Cado Ezechiar is a Level 1 Wizard who chooses spells from the Lore of Death.",
  equipment: "Great weapon, light armour",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: [
- *The Court of the Lost:* At the start of each of your turn, Cado can summon a spirit from the Court of the Lost. If he does so, pick one of the effects below. That effect lasts until the start of your next turn.
  - *Spirit of the Steed:* Cado gains Movement 10 and the Swiftstride special rule.
  - *Spirit of the Tutor:* Cado gains a +1 casting and dispel bonus as well as +1 to his channelling rolls.
  - *Spirit of the Fallen:* Cado gains the Killing Blow and Multiple Wounds (2) special rules.
- *Retribution or Salvation:* Bound Spell, power level 3. _Retribution or Salvation_ has a range of 18". If targeting an enemy unit, it is a *magic missile* that causes D6 Strength 4 hits. If that enemy unit is from _Warhammer: Daemons of Chaos_ or _Warriors of Chaos_ it causes 2D6 hits. If the target is a friendly Undead Infantry unit it is an *summoning* spell. The target unit immediately regains Wounds as described in the _Invocation of Nehek_.
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules"),
)

#unit("GORMAYNE",
  subtitle: "Grand Justice",
  profiles: (
    (name: "Gormayne", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 180),
  ),
  troop-type: "Infantry (Special Character, Vampire, Strigoi)",
  base-size: "20x20 or 25x25",
  vampiric-powers: "Unholy Regeneration",
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  special-rules-body: [
- *Pronounce Judgement:* At the start of each of your turns, pick one of the following judgements to pronounce:
  - *Petty Transgression:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed rolls To Wound against that unit.
  - *Dishonourable Conduct in Battle:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed charge rolls against that unit.
  - *Grievous Insult to the Court:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed rolls To Hit against that unit.
  - *Regicide:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls gain the Killing Blow special rule against that unit.
  ],
)

#unit("IVYA VOLGA",
  subtitle: "The Outcast",
  profiles: (
    (name: "Ivya Volga", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Special Character, Vampire, Vyrkos)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Behemoth's Bane")[Any enemy Monster in base contact with Ivya have their Attack characteristic reduced to 1.],
    rule("Shrieking Swarm")[Any enemy unit in base contact with Ivya at the start of each close combat phase take 2D6 Strength 2 Hits. In addition, they also suffer \-1 to their Weapon Skill.],
  ),
)

#unit("LADY ANNIKA",
  subtitle: "The Thirsting Blade",
  profiles: (
    (name: "Lady Annika", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 8, a: 3, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Vampire, Vyrkos)",
  base-size: "20x40 or 25x50",
  magic-items: (
    rule("Blade Proboscian")[Magic Weapon. All attacks made this weapon automatically Wound. If any enemy models were slain with this weapon during a close combat phase, the wielder regains any Wounds lost during the game.],
  ),
  special-rules: "Always Strikes First, Dodge (4+), Loner, The Red Thirst, Scouts, Vampiric",
)

#unit("KRITZA",
  subtitle: "The Rat Prince",
  profiles: (
    (name: "Kritza", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 135),
  ),
  troop-type: "Infantry (Special Character, Vampire, Vyrkos)",
  base-size: "20x40 or 25x50",
  equipment: "Hand weapon",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Scurrying Retreat")[If Kritza is slain in close combat, roll a D6 at the end of that phase. On a 1\-3, he is removed as a casualty as normal. On a 4+, move Kritza 3D6" in any direction, stopping at least 1" away from other units or impassable terrain. He is restored to his starting number of Wounds and may act normally from his next turn.],
    rule("Nauseating Aroma")[All enemy models in base contact with Kritza suffer \-1 To Hit in close combat.],
  ),
)

#unit("HELMAN GHORST",
  profiles: (
    (name: "Helman Ghorst", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 165),
  ),
  troop-type: "Infantry (Special Character, Human).",
  base-size: "20x20 or 25x25",
  magic: "Helman Ghorst is a Level 2 Wizard who chooses spells from the Lore of Necromancy.",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Liber Noctis")[Arcane Item. This tome gives the bearer +1 Power dice in each of their Magic phases. Only they may use this dice.],
  ),
  special-rules: "Loremaster (Lore of Necromancy), Master of the Dead",
  special-rules-body: (
    rule("Awaken from the Grave")[When Helman Ghorst successfully casts the _Invocation of Nehek_ or _Raise Dead_ spells, he can add +D3 to the total number of Skeletons or Zombies created.],
    rule("The Brothers Ghorst")[If Helman Ghorst is mounted on a Corpse Cart, all attacks from the Restless Dead pulling it are resolved at Strength 4.],
    rule("The Konigstein Stalkers")[If Helman Ghorst is included in your army, you may upgrade one unit of Skeleton Warriors to the Konigstein Stalkers for +1 point per model. This unit has the Poisoned Attacks special rule.],
  ),
  options: [
- May be mounted on a Corpse Cart (replacing the Corpsemaster) +100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules", "options"),
)

#unit("KRELL",
  subtitle: "Lord of Undeath",
  profiles: (
    (name: "Krell", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 3, ld: 9, points: 200),
  ),
  troop-type: "Infantry (Special Character, Undead, Wight)",
  base-size: "20x20, 25x25 or 30x30",
  magic-items: (
    rule("The Black Axe of Krell")[Magic Weapon. Great weapon. This item confers the Multiple Wounds (D3) special rule. Furthermore, any model taking an unsaved Wound from the Black Axe must roll a D6 at the start of each of its subsequent turns. If the result is higher than the number of Wounds it has remaining, that model suffers an additional Wound which Ignores Armour saves.],
    rule("Armour of the Barrows")[Magic Armour. Heavy armour. If an enemy with a magic weapon Wounds the wearer in close combat and the wearer passes their armour save, that magic weapon's abilities are nullified; it is treated as a normal, non-magical weapon of the same type for the remainder of the game.],
    rule("Crown of the Damned")[Talisman. This item grants the wearer a 4+ Ward save and the Stupidity special rule.],
  ),
  special-rules: "Killing Blow, Terror, Undead",
  special-rules-body: (
    rule("Champion of the Dead")[Krell must always issue and accepts challenges whenever possible. If Krell is fighting a challenge whilst in the same unit as Heinrich Kemmler, he has the Heroic Killing Blow special rule.],
  ),
)

#unit("REIKENOR THE GRIMHAILER",
  profiles: (
    (name: "Reikenor", m: 5, ws: 4, bs: 0, s: 4, t: 3, w: 2, i: 3, a: 4, ld: 6, points: 245),
    (name: "Kyllaron (Hellsteed)", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Undead, Spirit)",
  mount: "Kyllaron (Undead, Equine)",
  base-size: "25x50, 30x60 or 50x75",
  magic: "Reikenor is a Level 2 Wizard who chooses spells from the Lore of Death.",
  magic-items: (
    rule("Fellreaper")[Magic Weapon. Great weapon. Reikenor gains +1 Attack for each rank of 5 or more models the target unit has, up to maximum of +3 Attacks.],
    rule("Corpse Candles")[Arcane Item. At the start of your Magic phase, before attempting to cast a spell, Reikenor may snuff out a corpse candle. If he does so, pick one enemy unit within 12". The target unit suffers 1 Wound which Ignores Armour saves. In addition, Reikenor gains +1 to cast for his first spell this turn.],
  ),
  special-rules: "Chill Grasp, Ethereal, Fly (9), Terror, Undead",
  special-rules-body: (
    rule("The Chillgheists")[If Reikenor is included in your army, you may upgrade one unit of Hexwraiths to the Chillgheists for +1 point per model. This unit has the Ice Attacks special rule. In addition, enemy units in base contact with them roll one dice less than normal for their flee distance.],
    rule("Wraithstorm")[Bound Spell, power level 4. _Wraithstorm_ is a *direct damage* spell with a range of 12". The target unit inflicts D6 close combat attacks on itself. If any models in that unit are slain as a result of this spell, that unit immediately inflicts another D6 close combat attacks on itself. This has no effect on single model units.],
  ),
)

#unit("AWLRACH THE DROWNER",
  profiles: (
    (name: "Awlrach", m: 8, ws: 3, bs: 0, s: 4, t: 5, w: 4, i: 2, a: 3, ld: 6, points: 210),
  ),
  troop-type: "Chariot (Armour save 5+, Special Character, Undead, Spirit)",
  base-size: "50x100 or 60x100",
  equipment: "Polearm",
  special-rules: "Chill Grasp, Ethereal, Fly (6), Terror, Undead",
  special-rules-body: (
    rule("Passage Through the Underworlds")[In your remaining moves sub-phase, pick one friendly unit within 12". That unit may make a Fly move up to 10" and be placed facing in any direction of your choice.],
    rule("Scything Ram")[Awlrach gains +1 Attack for every unsaved Wound caused by his Impact Hits for the duration of the close combat base.],
  ),
)

#upgrade-chapter("CREDITS", whole: true)[
#group("Written & Edited by:")

#namecost("Mathias Eliasson", "")
#upgrade("Based on Warhammer Fantasy by Games-Workshop", none)[]
#upgrade("Special thanks to all the people that have contributed with feedback and ideas", none)[]
]
