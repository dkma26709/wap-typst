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

= ARMY SPECIAL RULES

#columns(2)[
This section of the book describes all the different units used in a Vampire Counts army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Vampire Counts units, and these are detailed here.

#namecost("BLOODLINES", "")

Most Vampires belong to a certain Bloodline, such as von Carstein, Necrach, Lahmian, Blood Dragon, Strigoi or Vyrkos. Characters belonging to one Bloodline may not join units belonging to another Bloodline, nor may two characters from different Bloodlines join the same unit.

#namecost("THE GENERALS OF UNDEATH", "")

If your army contains any Undead units, you must include at least one character that is a Wizard that uses the Lore of Necromancy.

#namecost("Slain General", "")

At the end of the phase in which the General is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the General, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Necromancy, no unit in the army needs to take this Leadership test while at least one of them remain.

#namecost("Battle Standards", "")

In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's General.

#namecost("Characters and Units", "")

Characters who are not Undead may join Undead units despite not being Unstable themselves. Mounted Characters ignore the Undead special rule of the mount. If an Undead unit would get destroyed as a result of Unstable, any remaining character(s) will need to take a Break test as normal the same phase, using the Leadership modifier that they lost the combat by.

#namecost("DEATH SHRIEK", "")

A Death Shriek is a special attack that can be used against a single unit in the Shooting phase, even if the model has marched, charged, or is engaged in close combat. This attack has a range of 8" and needs line of sight to its target. If the model is engaged in combat, its Death Shriek may target a unit in base contact.

To resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-physical Magical Attack and Wounds suffered from it are distributed as if from shooting.

#namecost("MASTER OF THE DEAD", "")

A model with this special rule can use the _Invocation of Nehek_ spell from the Lore of Necromancy to increase units of Skeleton Warriors beyond their starting size.

#namecost("SPECTRAL STEEDS", "")

Mounted models with this special rule gain the Ethereal special rule for the purposes of movement only. They do not suffer the movement penalty for being barded. Whilst a unit with this special rule is joined by a character without the Spectral Steeds or Ethereal special rules, it loses this special rule.

#namecost("UNDEAD", "")

All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. However, they may make march moves if they are within the Army General's Inspiring Presence range or are joined by a character with the Lore of Necromancy.

#namecost("VAMPIRIC", "")

Models with the Vampiric special rule have the Fear and Immunity (Psychology) special rules. In addition, models suffer \-1 To Wound rolls against them, unless they are using Magical Attacks or Flaming Attacks.

#namecost("THE RED THIRST", "")

Roll a D6 at the end of each Close Combat phase in which one or more models was slain by a Vampire with this special rule. On a 5+, the Vampire recovers a single Wound lost earlier in the battle. This does not work against models with the Animated Construct, Daemonic, Forest Spirit or Vampiric special rules.
]

= THE LORE OF NECROMANCY

#columns(2)[
#namecost("THE CURSE OF UNDEATH", "")
#namecost("Lore Attribute", "")

When a spell from the Lore of Necromancy is successfully cast, all Undead units within 6" of the caster regain 1 Wound (Core Units regain D3 Wounds) following the rules for _Invocation of Nehek._

#namecost("INVOCATION OF NEHEK", "")
#namecost("Signature Spell Cast on 6+", "")

_Invocation of Nehek_ is a *summoning* spell with a range of 18" that targets Undead. The target immediately regains a number of Wounds as follows: Core Units gain 2D6 Wounds; Special Units (except Cavalry) gain D6 Wounds. Characters, Special Units that are Cavalry and Rare Units regain D3 Wounds per successful casting. Models gained are distributed as a summoning spell. Any characters in a unit can only be healed if targeted separately from the rest of the unit, in which case only they are healed.

#namecost("HAND OF DUST", "")
#namecost("Level 1 Cast on 5+", "")

Remains in play. _Hand of Dust_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the caster gains an additional special attack in close combat that does not benefit from any other magic items or special rule. If this Attack Hits, the target suffers an automatic Wound with the Ignores Armour Saves and Multiple Wounds (D6) special rules.

#namecost("VANHEL'S DANSE MACABRE", "")
#namecost("Level 1 Cast on 5+", "")

_Vanhel's Danse Macabre_ is a *conveyance* spell with a range of 24" that targets Undead. The target can immediately make a normal move as if it were the Remaining Moves sub-phase (including any Characters in the unit).

#namecost("HELLISH VIGOUR", "")
#namecost("Level 1 Cast on 7+", "")

_Hellish Vigour_ is an *augment* spell with a range of 18". All Undead models in the unit gain the Always Strikes First special rule and may re-roll failed To Hit rolls in Close Combat until the start of the caster's next Magic phase.

#namecost("FOUNTAINS OF BLOOD", "")
#namecost("Level 2 Cast on 7+", "")

_Fountains of Blood_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all failed To Wound rolls made against this unit may be re-rolled. In addition, Vampires gain a +1 to bonus to any The Red Thirst rolls for Wounds caused against this unit.

#namecost("GAZE OF NAGASH", "")
#namecost("Level 2 Cast on 9+", "")

_Gaze of Nagash_ is a *magic missile* with a range of 24" that causes 2D6 Strength 4 hits.

#namecost("RAISE DEAD", "")
#namecost("Level 2 Cast on 9+", "")

_Raise Dead_ is a *summoning* spell with a range of 18" that brings a unit of Zombies into play. Roll 2D6+3. This is how many models comprise the new unit. The caster can choose to summon 2D6+3 Skeleton Warriors with shields instead. If they do so, the casting value is increased to 12+.

#namecost("DEATHLY CABAL", "")
#namecost("Level 3 Cast on 10+", "")

_Deathly Cabal_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target gains a 5+ Ward save against non-magical attacks and the Terror special rule.

#namecost("UNQUIET SPIRITS", "")
#namecost("Level 3 Cast on 10+", "")

_Unquiet Spirits_ is a *direct damage* spell with a range of 24". The target suffers 3D6 Strength 2 hits with the Ignores Armour Saves special rule.

#namecost("MALEDICTION OF NAGASH", "")
#namecost("Level 3 Cast on 11+", "")

_Malediction of Nagash_ is a *hex* spell with a range of 24". The target halves their Strength (rounding down) until the start of the caster's next Magic phase.

#namecost("SPIRITUAL VORTEX", "")
#namecost("Level 4 Cast on 11+", "")

Remains in play. _Spiritual Vortex_ is a *summoning* spell with a range of 24" that summons the 5" template. While the spell is in effect, the template counts as Dangerous Terrain, and enemy units within 6" of it suffer \-1 to their Leadership.

#namecost("CURSE OF YEARS", "")
#namecost("Level 4 Cast on 12+", "")

Remains in Play. _Curse of Years_ is a *hex* spell with a range of 18". When cast, roll a D6 for every model in the target unit – on a score of 6 the model suffers a Wound which Ignores Armour Saves. At the end of the next Magic phase, roll again for each model in the unit, they will suffer a Wound on a 5+, and so on, to a maximum of 2+.

#namecost("WIND OF UNDEATH", "")
#namecost("Level 4 Cast on 12+", "")

_Wind of Undeath_ is a *hex* spell that targets all enemy units within 12". Each enemy unit suffer D6 Strength 3 Hits which Ignores Armour Saves. In addition, if the spell causes any Wounds, a unit of Spirit Hosts is created within 12" of the caster, just like a summoning spell. This unit has a number of Wounds equal to the number of Wounds caused by the spell.
]

= VAMPIRIC POWERS

*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish. Each Vampire may only take powers from their own Bloodline (unless specified).*

#namecost("RED FURY", "30 points")

Blood Dragon or Strigoi only. For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.

#namecost("UNHOLY REGENERATION", "30 points")

Necrarch or Strigoi only. The model gains the Regeneration (4+) special rule.

#namecost("CURSE OF THE REVENANT", "20 points")

Necrarch or Strigoi only. The model has a 3+ Ward save when they have a single Wound remaining (if the model suffers multiple Wounds in a single turn, it is reduced to 1 Wound and may then attempt to take this Ward save).

#namecost("FEAR INCARNATE", "20 points")

All enemy units in base contact with the model must pass a Leadership test at the start of each round of close combat or suffer \-1 To Hit this round.

#namecost("FLYING HORROR", "20 points")

Model on foot only. Thе model gains the Fly (10) special rule and may join units of Fell Bats.

#namecost("SUPERNATURAL HORROR", "15 points")

Von Carstein, Necrarch or Strigoi only. The model gains the Terror special rule.

#namecost("TRANSFIX", "15 points")

Von Carstein or Lahmian only. At the beginning of the Close Combat phase, select one model in base contact with the Vampire. The victim must pass a Leadership test or get reduced to Weapon Skill 1 for the duration of this round of Close Combat phase and all attacks directed against the victim will hit automatically.

#namecost("HUNTER IN THE DARK", "10 points")

Lahmian or Strigoi on foot only. The model has the Scouts special rule.

#namecost("UNBENDING WILLPOWER", "10 points")

Von Carstein or Necrarch only. Units of Undead within 6" of one or more models with this power suffer one less Wound than they normally would due to the Unstable special rule or following the death of the army's General. Note that this is not cumulative with the Battle Standard.

#namecost("HONOUR OR DEATH", "5 points")

Von Carstein or Blood Dragon only. After issuing or accepting a challenge with a model with this power, the enemy character must take a Leadership test. If failed, the enemy model will automatically refuse the challenge following the normal rules.

#entry("VON CARSTEIN")
#namecost("AURA OF DARK MAJESTY", "30 points")

All enemy units within 6" of one or more models with the Aura of Dark Majesty suffer a \-1 penalty to their Leadership. This penalty is cumulative with any other modifiers.

#namecost("SPECTRAL ATTENDANTS", "25 points")

All enemy Wizards within 18" of the model must re- roll successful channelling results.

#namecost("WALKING DEATH", "20 points")

Any unit in base contact with the model must re-roll successful Break tests.

#namecost("CALL WINDS", "10 points")

Innate Bound Spell, Power Level 5. _Call Winds_ affects all units within 24" of the Vampire. Until the start of caster's next Magic phase, all missile attacks fired from within or at a target within this distance suffer \-1 To Hit.

#namecost("EARTH BIND", "10 points")

The model gains the Magic Resistance (1) special rule.

#namecost("SUMMON CREATURES", "")
#namecost("OF THE NIGHT", "10 points")

This Vampire can use the _Invocation of Nehek_ spell to heal and increase units of Dire Wolves, Bat Swarms and Fell Bats beyond their starting size, even though they are not all Undead.

#namecost("WOLF FORM", "10 points")

Model on foot only. The model gains Movement 9 and the Swiftstride special rule. In addition, they may join units of Dire Wolves.

#namecost("WOLF LORD", "10 points")

The model allows all friendly units of Dire Wolves within 24" of it to March.

#entry("NECRARCH")
#namecost("WELLSPRING OF DARK MAGIC", "50 points")

The model and all friendly Wizards within 12" gain +1 to cast spells from the Lore of Necromancy.

#namecost("SPECTRAL FORM", "40 points")

Model on foot only. The model gains the Ethereal special rule. However, it may not join non-Ethereal units or take any magic items.

#namecost("MASTER OF THE BLACK ARTS", "25 points")

A player using a model with the Master of the Black Arts power can re-roll the result when it is determining the strength of the Winds of Magic in each of your Magic phases.

#namecost("MASTERY OVER FLESH", "25 points")

When casting the _Invocation of Nehek, Vanhel's Danse Macabre_, _Hellish Vigour_ or _Raise Dead_ spells from the Lore of Necromancy, the model may re-roll all the initial casting dice (unless they have rolled a Miscast).

#namecost("UNHOLY CYNOSURE", "25 points")

Once per Magic phase, the model can re-roll one of the dice rolled to cast a spell. This can be used to negate a Miscast result or could cause an Ultimate Power result.

#namecost("FORBIDDEN LORE", "20 points")

The model has the Loremaster special rule.

#namecost("DARK ACOLYTE", "20 points")

The model adds +1 to the number of Wounds healed (Core Units regain +D3 Wounds) whenever it successfully casts _Invocation of Nehek_.

#namecost("NEHEKHARA'S NOBLE BLOOD", "20 points")

The model adds +6" to the range of all their spells.

#entry("BLOOD DRAGON")
#namecost("DOOMRIDER", "20 points")

Cavalry only. The model and any Cavalry unit it is with can re-roll failed charge distances.

#namecost("DREAD KNIGHT", "20 points")

While fighting in a challenge, the model will gain +1 To Hit and To Wound.

#namecost("WARRIOR PRIDE", "20 points")

Infantry or Cavalry only. The model can re-roll failed armour save results of 1.

#namecost("HEART PIERCING", "15 points")

The model can re-roll To Wound rolls of 1 in close combat.

#namecost("MASTER STRIKE", "15 points")

The model has the Killing Blow special rule.

#namecost("MIGHT OF ARMS", "15 points")

The model can re-roll To Hit rolls of 1 in close combat.

#namecost("STRENGTH OF STEEL", "10 points")

The model has the Devastating Charge and Strength Bonus (1) special rule.

#namecost("BLADEMASTER", "10 points")

The model gains the Parry (6+) special rule, even while mounted.

#namecost("FURIOUS CHARGE", "10 points")

In any turn in which the model makes a successful charge, they have the Ignores Armour saves special rule.

#entry("STRIGOI")
#namecost("LOATHSOME STENCH", "20 points")

All enemy units in base contact with the model suffer \-1 to their Weapon Skill.

#namecost("MASSIVE MONSTROSITY", "20 points")

Model on foot only. The model gains +1 Wound and becomes Monstrous Infantry. It should be placed on a 40x40mm base.

#namecost("IRON SINEWS", "15 points")

The model has +1 Strength.

#namecost("TERRIBLE BLOWS", "15 points")

The model gains the Multiple Wounds (D3) special rule.

#namecost("GHOULKIN", "10 points")

One unit of Crypt Ghouls may be deployed as Scouts.

#namecost("INFINITE HATRED", "10 points")

The model's Hatred special rule applies in every close combat round, not just the first.

#namecost("MONSTROUS MASS", "10 points")

The model gains the Immunity (Killing Blow, Multiple Wounds) special rule.

#namecost("RAVENOUS", "10 points")

The model gains the Frenzy special rule.

#namecost("SUMMON GHOULS", "10 points")

The model allows one unit of Crypt Ghouls to deploy as Ambushers.

#entry("LAHMIAN")
#namecost("SEDUCTION", "25 points")

At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. The selected model must take a Leadership test with a \-1 modifier. If the test is failed, the victim is controlled by the Vampire player in that Close Combat phase. The model will direct its attacks against his own side. The model cannot be attacked by either side in that Close Combat phase but, after combat resolution has been worked out, it reverts immediately to the original player's control and can therefore use his Leadership for any Break tests and can be broken and pursued as normal. If the model has no friendly models in base contact, it is unable to attack in that Close Combat phase and all attacks directed against the victim will hit automatically. If the Vampire was in a challenge with a model that it takes control of, the challenge ends and both models may attack other targets as normal.

#namecost("LIGHTNING REFLEXES", "25 points")

Enemies must re-roll successful rolls To Hit in close combat against this model.

#namecost("NIGHT CREATURE", "20 points")

Model on foot only. If this model is a lone character, it cannot be targeted by enemy missile attacks or spells unless it is within 12".

#namecost("INNOCENCE LOST", "20 points")

The model has the Always Strikes First special rule.

#namecost("DOMINATION", "15 points")

All enemy units in base contact with this model must re-roll successful Leadership tests (except Break tests).

#namecost("QUICKBLOOD", "15 points")

The model gains the Dodge (5+) special rule.

#namecost("BEGUILE", "10 points")

At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. That model must take a Leadership test with a \-3 modifier; if the test is failed, the Vampire may re-roll failed To Wound rolls against that model that phase.

#namecost("SWIFTNESS", "10 points")

Model on foot only. The model gains Movement 10 and the Swiftstride special rule.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Vampire Counts. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("FROSTBLADE", "60 points")

The wielder gains the Ice Attacks and Multiple Wounds (D6) special rules.

#namecost("SKABSCRATH", "40 points")

The bearer has the Devastating Charge and Frenzy special rules, and all close combat attacks made by the bearer have the Flaming Attacks special rule. In addition, the bearer of Skabscrath gains the Death Shriek special rule.

#namecost("SLAKING BLADE", "40 points")

The wielder of this weapon gains +1 Strength and Attacks at the end of each close combat phase in which they have inflicted at least 1 unsaved Wound (up to a maximum of +3). This bonus lasts for the remainder of the game.

#namecost("DREADLANCE", "35 points")

Heavy lance. All attacks with this weapon automatically Hit.

#namecost("ASP BOW", "25 points")

Bow. All shots from this item are resolved at Strength 4 with the Poisoned Attacks and Sniper special rules.

#namecost("REAPER OF SORROWS", "25 points")

Cairn Wraith only. Great weapon. All attacks with this weapon automatically Wound and have the Ignores Armour saves special rule.

#namecost("SLITTER", "25 points")

Additional hand weapon. This adds one special attack. Roll a D3; if the result is higher than the Wound value of the target, the target is instantly slain with no saves allowed.

#namecost("KEENING BONE", "20 points")

Strigoi only. Throwing weapon. All shots with this weapon automatically Hits. Characters may take this item despite not normally being allowed to take throwing weapons.

#namecost("SWORD OF KINGS", "15 points")

Wight Kings only. This item makes the model's Killing Blow special rule take effect on a 5+.

#namecost("THE BALEFIRE SPIKE", "15 points")

Heavy lance. This item gives the wielder the Devastating Charge and Flaming Attacks special rules.

#namecost("SHADOW'S EDGE", "10 points")

For every natural 6 rolled To Hit with this weapon, that Attack has the Ignores Armour Saves and Multiple Wounds (D3) special rules.

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF NIGHT", "30 points")

Von Carstein model on foot only. Heavy armour. This item causes any missile attacks targeted at the wearer or any unit they are with to suffer \-2 To Hit.

#namecost("THE FLAYED HAUBERK", "25 points")

Model on foot only. Heavy armour. This item gives the wearer a 1+ armour save that cannot be improved by any means.

#namecost("HELM OF COMMANDMENT", "25 points")

This item gives the wearer a 6+ armour save. In addition, if the wearer is not in combat this round, one friendly Undead unit within 12" may use their unmodified Weapon Skill instead of their own in close combat.

#namecost("THE SCABBING PLATE", "25 points")

Heavy armour. The wearer of this armour automatically restores 1 Wound lost during the battle at the end of each round of close combat in which it has inflicted one or more unsaved Wounds.

#namecost("WAILING HELM", "20 points")

This item gives the wearer a 6+ armour save and the Terror special rule.

#namecost("THE ACCURSED ARMOUR", "15 points")

Heavy armour. This item gives the wearer +1 Toughness, but makes them suffer \-1 Weapon Skill and Initiative.

#namecost("ARMOUR OF BONE", "15 points")

Medium armour. When the wearer fails their first armour save (or if they are wounded by an attack which ignores armour saves), the Armour of Bone crumbles to dust and is destroyed, but the Wound is ignored.

#namecost("THE CADAVEROUS CUIRASS", "15 points")

Vampires only. Heavy armour. This item gives the wearer the Immunity (Killing Blow) special rule.

#namecost("THE CURSED SHIELD", "")
#namecost("OF MOUSILLON", "10 points")

Shield. This item causes one enemy model in base contact of your choice to lose 1 Attack. In addition, the bearer gains the Hatred (Bretonnia) special rule, and all models in _Warhammer: Bretonnia_ have the Hatred special rule against the bearer.

#namecost("THE RED CASKET", "10 points")

Blood Dragon only. Heavy armour. The wearer of this armour gains the Frenzy special rule.

#entry("TALISMANS")
#namecost("NIGHTSHROUD", "50 points")

Infantry or Cavalry only. Enemy models in base contact with the wearer lose all Strength bonuses conferred from normal and magical weapons, and are subject to the Always Strikes Last special rule.

#namecost("THE GEM OF BLOOD", "25 points")

Vampires only. One use only. The Gem of Blood activates when the bearer suffers their first Wound in close combat (before saves). Roll a D6; on a roll of a 1 the wearer suffers the Wound as normal, and an additional Wound with no saves allowed. On a 2+ the Wound is saved, and is rebounded onto the model that caused it with no saves allowed.

#namecost("SPLINTERVANE BROACH", "25 points")

Strigoi only. All enemy Wizards within 18" of the bearer of this item suffer \-1 to cast spells.

#namecost("CLOAK OF THE WAXING MOON", "20 points")

Cairn Wraith only. The wearer of this item does not suffer any penalties to its Ward save from Magical Attacks.

#namecost("WRISTBANDS OF BLACK GOLD", "20 points")

The Wristbands of Black Gold gives the wearer a 3+ Ward Save against all missile attacks.

#namecost("CHIROPTERAN CLOAK", "15 points")

Von Carstein only. If a model attacking the wearer of this item rolls a natural 1 To Hit in close combat, they suffer a Strength 4 Hit.

#entry("ARCANE ITEMS")
#namecost("THE DERMAL ROBE", "70 points")

The wearer gains +1 casting and dispel bonus. In addition, they gain +1 to their channelling rolls.

#namecost("STAFF OF RAUKHAMON", "45 points")

Necrarch only. Bound Spell, power level 4. This staff contains the _Hellish Vigour_ spell from the Lore of Necromancy. Roll a D6 each time the Staff is used. On a roll of 1, the Staff is temporarily exhausted and cannot cast this bound spell for the rest of the battle. In addition, all enemy units within 6" of the Staff\`s bearer suffer a \-1 penalty on their rolls To Hit in close combat.

#namecost("SCEPTRE DE NOIROT", "40 points")

The bearer of this item may re-roll one dice of their choice when determining the number of Zombies or Skeletons raised with the _Invocation of Nehek_ and _Raise Dead_ spells from the Lore of Necromancy.

#namecost("BOOK OF ARKHAN", "35 points")

Bound Spell, power level 3. This item casts the _Vanhel's Danse Macabre_ spell from the Lore of Necromancy.

#namecost("CARRION WAND", "35 points")

Strigoi only. The wielder counts their Wizard level as being 1 higher than normal.

#namecost("THE CURSED BOOK", "35 points")

At the beginning of the bearer's Magic phase, the bearer may choose to sacrifice one power dice from the pool. If they do so, roll a D6 on the following chart. Assuming there is a viable target for the indicated spell, that spell is automatically cast at its minimum casting value, requiring no power dice. A dispel attempt can be made as normal.

#chart((("D6", "Spell Cast"), ("1", "Melkoth's Mystifying Miasma (Lore of
Shadow)"), ("2", "The Enfeebling Foe (Lore of Shadow)"), ("3", "The Withering (Lore of Shadow)"), ("4", "Portent of Doom (Lore of Heavens)"), ("5", "Doom and Darkness (Lore of Death)"), ("6", "Soulblight (Lore of Death)")))
#namecost("STAFF OF DAMNATION", "35 points")

Bound Spell, power level 5. If cast successfully, this item casts an *augment* spell. All Undead models in friendly units within 6" of the bearer gain +1 Attack until the start of the bearer's next Magic phase.

#namecost("BLACK PERIAPT", "30 points")

The Black Periapt allows the bearer to save up to two of his army's unused power dice or dispel dice at the end of any Magic phase, and then add them to his side's power or dispel dice pool at the start of the next Magic phase.

#namecost("WYCHLIGHT LANTERN", "30 points")

One use only. This item can be used during any of your Magic phases. Once used, it allows the bearer to cast one of their spells automatically without using any power dice, at its minimum casting value.

#namecost("AMULET OF SCREAMS", "20 points")

Lahmian only. Roll a D6 every time an enemy Wizard within 18" successfully casts a spell. On a 1, that Wizard suffer 1 Wound which Ignores Armour saves.

#namecost("CRIMSON GEM OF LAHMIA", "20 points")

Lahmian only. Once per magic phase, while casting spells, the bearer of the Crimson Gem of Lahmia can choose to take a Toughness test. If passed, they may re- roll a single power dice of their choice. If failed, they suffer a Wound with no saves allowed.

#namecost("MIDNIGHT TOME", "20 points")

One use only. This item can be used when the wearer successfully casts a spell with a casting value of 10 or less. When used, the opponent cannot attempt to dispel it.

#runin[MORBHEG]'#runin[S CLAW 20 points] Von Carstein only. The wearer of this item gains +2 to cast spells if they have not moved that turn or are not engaged in close combat.

#entry("ENCHANTED ITEMS")
#columns(2)[
#namecost("MIDNIGHT AMULET", "40 points")

One use only. This item can be used in any of your Magic phases. Pick one enemy unit within 12"; that unit suffers D6 Strength 4 Hits multiplied by the number of the current game turn.

#namecost("TALON OF DEATH", "35 points")

All enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour saves at the start of each round of combat.

#namecost("DREADBOLT RING", "30 points")

For each unsaved Wound the bearer of this item inflicts in close combat, one enemy unit in base contact suffer D3 Strength 3 Attacks with the Flaming Attacks special rule after they have resolved their normal attacks.

#namecost("BLOOD RIVER CHALICE", "25 points")

Vampire only. One use only. This item can be used at the start of the controlling player's turn. The model immediately recovers all lost Wounds (ignoring any additional Wounds from mounts) up to their starting value.

#namecost("BREATH OF THE VOID MAW", "25 points")

Necrarch only. One use only. This item can be used at the start of any Magic phase. Once used, pick one enemy unit within 6" that is not engaged in close combat. Roll a D6; on a 2+ the target unit suffer a number of Strength 5 Hits equal to the roll.

#namecost("THE CASKET OF AGES", "25 points")

Bound Spell, power level 3. The Casket of Ages contains a *hex* spell that targets one enemy model in base contact. The target model suffers one Wound which Ignores Armour Saves. If the Wound is not saved, the victim must pass a Toughness test or suffer an additional Wound with no saves allowed.

#namecost("FRAGMENT OF THE KEEP", "25 points")

Blood Dragon only. The bearer gains the Always Strikes First special rule.

#namecost("THE GRIM GARLAND", "25 points")

Strigoi only. Enemy units in base contact with the bearer must roll 3D6 for their Leadership tests and discard the lowest result.

#namecost("LIGHTSHARD OF THE HARVEST MOON", "25 points")

One use only. This item can be used at the start of any close combat phase. The bearer and any unit they are with may re-roll failed rolls To Hit for the duration of the turn.

#namecost("PENDANT OF THE FELL WIND", "25 points")

The character and any unit they are with gain +1 Movement.

#namecost("THE SACCHARINE GOBLET", "25 points")

Vampire only. This item can be used at the start of any round of close combat. When used, the bearer gains +1 To Hit and To Wound. However, for each of their Attacks that does not inflict an unsaved Wound, they must pass a Toughness test or suffer one Wound with no saves allowed at the end of the combat (before Break tests are taken).

#namecost("SIGIL OF THE SANGUINE THRONE", "25 points")

Von Carstein only. The bearer and any friendly Vampire unit within 12" may re-roll one of their charge distance dice.

#namecost("THE FURIOUS CROWN", "20 points")

In any turn in which the bearer of this item makes a successful charge, they gain +1 Attack for every enemy model in base contact, up to a maximum of +3.

#namecost("GRAVE-SAND SHARD", "20 points")

Blood Dragon only. One use only. This item can be used in any of your Magic phases. Once used, it automatically restores Wounds to any unit they are with following the rules for _Invocation of Nehek_ from the Lore of Necromancy.

#namecost("MEDAL OF MADNESS", "20 points")

Strigoi only. The bearer gains the Inspiring Presence (6) special rule.

#namecost("SOULFIRE RING", "20 points")

Cairn Wraith only. For every unsaved Wound caused in close combat by bearer, they and/or their unit regain 1 Wound, just like a summoning spell.

#namecost("NATHMAR'S SKULL", "15 points")

Master Necromancer or Necromancer only. All friendly units of Skeletons and Zombies within 12" of the bearer may March despite being Undead.

#namecost("RUBY VIAL", "15 points")

Vampire only. One use only. This item can be used at the start of any of your turns. Until the start of your next turn, all enemy units within 18" of the bearer suffer \-1 to their Movement.

#namecost("SIGNET OF THE FIRST COURT", "15 points")

Strigoi only. The bearer of this item gains the Killing Blow special rule.

#namecost("THE BILIOUS DECANTER", "10 points")

Ghoul or Strigoi only. One use only. This item can be used at the start of any close combat phase. The bearer gains the Frenzy special rule and +1 Attack for the remainder of the game. However, they will automatically fail any Berserk Rage tests and must always Pursue.

#namecost("ORB OF ENCHANTMENT", "10 points")

Lahmian only. One enemy model in base contact (chosen by the bearer) must take a Leadership test at the start of each round of close combat. If failed, they may not attack this turn.

#namecost("TALISMAN OF THE LYCNI", "10 points")

Vampire only. Model on foot only. The bearer of this item gains +4 to their Movement value and the Swiftstride special rule. In addition, they may join units of Dire Wolves.

#namecost("HEART OF THE GIANT FEAST", "10 points")

Vampire only. One use only. This item can be used at the start of any close combat phase. The bearer can re- roll failed To Wound rolls for the duration of the turn.

#namecost("SHARD OF NIGHT", "5 points")

Vampire only. One use only. This item may be used at the start of any round of Close Combat. When it is, the bearer suffers 1 Wound with no saves allowed. In exchange, they gain +2 Strength for the duration of this round of close combat.
]

#entry("MAGIC STANDARDS")
#namecost("THE DRAKENHOF BANNER", "75 points")

Von Carstein or Wight only. May only be taken if your army includes a von Carstein Vampire Character. All Undead models in the unit carrying this standard gain the Regeneration (4+) special rule.

#namecost("THE FLAG OF BLOOD KEEP", "50 points")

Blood Knights only. May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains a 4+ Ward save against missile attacks.

#namecost("BANNER OF THE BARROWS", "40 points")

All Wights in the same unit as this standard receive +1 To Hit in close combat. This does not apply to mounts.

#namecost("HELL BANNER", "40 points")

All enemy units with Line of Sight to this standard suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).

#namecost("CURSED PENNANT", "")
#namecost("OF MOUSILLON", "35 points")

Blood Dragon, Skeletons or Wights only. May only be taken if your army includes a Blood Dragon Vampire Character. Any enemy unit that is in base contact with the unit carrying this standard must re-roll 6's when rolling To Hit, To Wound and when taking armour saves.

#namecost("BANNER OF DOOM", "25 points")

All Undead models in the unit carrying this standard gains the Regeneration (5+) special rule against missile attacks.

#namecost("BANNER OF THE DEAD LEGION", "25 points")

All Undead models in the unit carrying this standard counts as having twice their actual Unit Strength in close combat.

#namecost("BANNER OF HELLFIRE", "25 points")

Bound Spell, power level 3. This banner contains the _Flaming Sword of Rhuin_ spell from the Lore of Fire. It can only be cast on the unit carrying this standard.

#namecost("THE FLAYED PENNANT", "25 points")

Strigoi or Ghoul only. The unit carrying this standard gains the Frenzy special rule.

#namecost("INFERNAL STANDARD", "25 points")

Wight King with Battle Standard only. The model carrying this standard increases the range of the Battle Standard to 18".

#namecost("ROYAL STANDARD OF STRIGOS", "25 points")

May only be taken if your army includes a Strigoi Vampire Character. Strigoi or Ghoul only. The unit carrying this standard gains the Hatred special rule.

#namecost("THE SCREAMING BANNER", "25 points")

Enemy units on base contact with the unit carrying this standard must pass a Leadership test at the start of each close combat phase. If failed, they require 6’s To Hit for the duration of the phase.

#namecost("ICON OF VENGEANCE", "20 points")

Any Undead model in the unit carrying this standard that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.

#namecost("STANDARD OF HELLISH VIGOUR", "15 points")

Undead only. May only be taken if your army includes a Necrarch Vampire Character. The unit carrying this standard may March despite being Animated Constructs.

#namecost("BANNER OF THE ENDLESS", "")
#namecost("NIGHTMARE", "10 points")

The unit carrying this standard counts as having one more rank than normal for the purpose of combat resolution.

#namecost("STANDARD OF EVERLASTING DEATH", "10 points")

The unit carrying this standard suffers one fewer Wound than they normally would due to the Unstable special rule.

= LORDS

#entry("VON CARSTEIN VAMPIRE LORD", first: true)
#profile(
  (name: "von Carstein Vampire Lord", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 245),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A von Carstein Vampire Lord is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

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

#entry("NECRARCH VAMPIRE LORD")
#profile(
  (name: "Necrarch Vampire Lord", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 245),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Necrarch)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Necrarch Vampire Lord is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Heavens
- Metal
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to a Level 4 Wizard +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points

#entry("LAHMIAN VAMPIRE LADY")
#profile(
  (name: "Lahmian Vampire Lady", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 3, i: 8, a: 4, ld: 10, points: 245),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "A Lahmian Vampire Lady is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

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

#entry("BLOOD DRAGON VAMPIRE LORD")
#profile(
  (name: "Blood Dragon Vampire Lord", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 245),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Blood Dragon)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC", "A Blood Dragon Vampire Lord is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Martial Honour:* The Vampire must always issue and accept challenges when possible.

#field("OPTIONS", "")

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

#entry("STRIGOI VAMPIRE LORD")
#profile(
  (name: "Strigoi Vampire Lord", m: 6, ws: 6, bs: 3, s: 5, t: 6, w: 3, i: 7, a: 5, ld: 9, points: 240),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Strigoi)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Strigoi Vampire Lord is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Beasts
- Necromancy

#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on a Terrorgheist +225 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points

#entry("MASTER NECROMANCER")
#profile(
  (name: "Master Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 165),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Master Necromancer is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("OPTIONS", "")

- May be upgraded to a Level 4 Wizard +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
  - Abyssal Terror +125 points
- May take Magic Items up to a total of 100 points

#entry("LICHE LORD")
#profile(
  (name: "Liche Lord", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 4, i: 2, a: 2, ld: 9, points: 275),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Liche)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "A Liche Lord is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Master of the Dead, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +4 points
  - Medium armour +12 points
- May be mounted on a Mortis Engine replacing the (Corpsemaster) +220 points
- May take Magic Items up to a total of 100 points

= HEROES

#entry("VON CARSTEIN VAMPIRE", first: true)
#profile(
  (name: "von Carstein Vampire", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A von Carstein Vampire who is a Wizard chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

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

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("NECRARCH VAMPIRE")
#profile(
  (name: "Necrarch Vampire", m: 6, ws: 4, bs: 3, s: 5, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Necrarch)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Necrarch Vampire is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Heavens
- Metal
- Necromancy
- Shadow

#field("OPTIONS", "")

- One Necrarch Vampire may carry the Battle Standard +25 points
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("LAHMIAN VAMPIRE")
#profile(
  (name: "Lahmian Vampire", m: 6, ws: 5, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "A Lahmian Vampire who is a Wizard chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Dodge (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

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

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("BLOOD DRAGON VAMPIRE")
#profile(
  (name: "Blood Dragon Vampire", m: 6, ws: 7, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 110),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Blood Dragon)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC", "A Blood Dragon Vampire who is a Wizard chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Martial Honour:* The Vampire must always issue and accept challenges when possible.

#field("OPTIONS", "")

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

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("STRIGOI VAMPIRE")
#profile(
  (name: "Strigoi Vampire", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 120),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Strigoi)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Strigoi Vampire who is a Wizard chooses spells from one of the following Lores of Magic:")

- Beasts
- Necromancy

#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

- One Strigoi Vampire may carry the Battle Standard +25 points
- May be upgraded to a Level 1 Wizard +35 points
- May take Vampiric Powers and/or Magic Items up to a total of 50 points

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("NECROMANCER")
#profile(
  (name: "Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Necromancer is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("OPTIONS", "")

- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Nightmare +14 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
- May take Magic Items up to a total of 50 points

#entry("WIGHT KING")
#profile(
  (name: "Wight King", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Wight)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Spectral Steeds, Undead")
#field("OPTIONS", "")

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

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("CAIRN WRAITH")
#profile(
  (name: "Cairn Wraith", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 3, ld: 7, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Spirit).")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ethereal, Terror, Undead")

- *Chill Grasp:* A Wraith can substitute all of its Attacks in close combat for a single Chill Grasp Attack. The Wraith makes a single Attack; if this Attack hits, then it will automatically Wound with the Ignores Armour saves special rule.
- *Soulstriders:* Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +9 points
- May be mounted on a Skeletal Steed +12 points
- May take Magic Items up to a total of 50 points

#compact-entry("TOMB BANSHEE")[
#profile(
  (name: "Tomb Banshee", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 5, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Spirit)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Death Shriek, Ethereal, Fly (6), Terror, Undead")
]

#entry("SWAIN")
#profile(
  (name: "Swain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology)")

- *Until Death Do Us Apart:* Pick one Lahmian Vampire Character in your army to be this model's mistress. If both models are in base contact, the Lahmian gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against the Swain instead. If the Lahmian is slain, the Swain will be subject to the Hatred and Frenzy special rules for the remainder of the game.

#field("OPTIONS", "")

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

#field("NOTES", "")

- You may only include a Swain if your army contains at least one Lahmian Vampire Character.

#entry("CRYPT GHAST")
#profile(
  (name: "Crypt Ghast", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 3, ld: 7, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")
#field("OPTIONS", "")

- One Crypt Ghast may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Polearm +6 points
  - Great weapon +9 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("STRIGANY MYSTIC")
#profile(
  (name: "Strigany Mystic", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Strigany Mystic is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Heavens
- Necromancy

#field("SPECIAL RULES", "Expendable")
#field("OPTIONS", "")

- May be upgraded to a Level 2 Wizard +35 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- You may only include a Strigany Mystic if your army contains at least one Strigoi Vampire Character.
- A Strigany Mystic may only join units of Strigany or Ghouls.

= CHARACTER MOUNTS

#entry("SKELETAL STEED", first: true)
#profile(
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Undead, Skeleton)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take barding +5 points

#entry("NIGHTMARE")
#profile(
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Undead, Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take barding +5 points

#compact-entry("HELLSTEED")[
#profile(
  (name: "Hellsteed", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Undead, Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fly (9), Undead")
]

#entry("BARROW CHARIOT")
#profile(
  (name: "Barrow Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: "-"),
  (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "1 Crew (Undead, Skeleton)")
#field("DRAWN BY", "2 Skeletal Steeds (Undead, Skeleton)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take scythes +5 points
- May take barding +5 points

#entry("ABYSSAL TERROR")
#profile(
  (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: "-"),
)
#field("TROOP TYPE", "Monstrous Creature (Undead)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Fly (8), Undead")
#field("UPGRADES", "")

- *Poisonous Tail:* The Abyssal Terror gains the Poisoned Attacks special rule.
- *Sword-claws:* The Abyssal Terror gains the Armour Piercing (1) special rule.

#field("OPTIONS", "")

- May take Poisonous Tail +10 points
- May take Sword-claws +5 points

= CORE UNITS

#entry("SKELETON WARRIORS", first: true)
#profile(
  (name: "Skeleton Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 3),
)
#field("UNIT SIZE", "20+")
#field("TROOP TYPE", "Infantry (Undead, Skeleton)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

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

#entry("SKELETON ARCHERS")
#profile(
  (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 5),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Undead, Skeleton)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, bow")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May replace bows with crossbows +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Skeleton Archer to a Leader +5 points
- May upgrade one Skeleton Archer to a Musician +5 points
- May upgrade one Skeleton Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may not have more units of Skeleton Archers than Skeleton Warriors.

#entry("SKELETON HORSEMEN")
#profile(
  (name: "Skeleton Horseman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 8),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Undead, Skeleton)")
#field("MOUNT", "Skeletal Steed (Undead, Skeleton)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Fast Cavalry, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Light lances +1 point/model
  - Replace shields with bows free
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may not have more units of Skeleton Horsemen than Skeleton Warriors.

#entry("ZOMBIES")

*Profile M WS BS S T W I A Ld Points* Zombie 4 1 0 3 3 1 1 1 2 2.5

#field("UNIT SIZE", "20+")
#field("TROOP TYPE", "Infantry (Undead, Zombie)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Undead")

- *The Newly Dead:* Zombie units can be increased beyond their starting size by spells and effects that add models to an existing unit. In addition, when Zombie units are successfully targeted by the _Invocation of Nehek_ spell from the Lore of Necromancy, they regain an extra D6 Wounds. However, they also suffer D3 more casualties than normal due to being Unstable.

#field("OPTIONS", "")

- May upgrade one Zombie to a Musician +5 points
- May upgrade one Zombie to a Standard Bearer +10 points

#entry("CRYPT GHOULS")
#profile(
  (name: "Crypt Ghoul", m: 4, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 6, points: 7),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")
#field("OPTIONS", "")

- May be upgraded to Skirmishers free
- May upgrade one Crypt Ghoul to a Leader +5 points

#entry("GLOOMS")
#profile(
  (name: "Gloom", m: 4, ws: 2, bs: 0, s: 2, t: 2, w: 1, i: 1, a: 1, ld: 3, points: 6),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Undead, Spirit)")
#field("BASE SIZE", "20x20 or 25x25")
#field("SPECIAL RULES", "Expendable, Ethereal, Undead")

- *Tormented:* Units with this special rule must take a Leadership at the start of each of their turns. For every point they fail the Leadership test by, they suffer 1 Wound. However, they may add their current rank bonus to their Leadership (before any other modifiers).

#entry("SYLVANIAN LEVY")
#profile(
  (name: "Peasant", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
)
#field("UNIT SIZE", "20+")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Bows +3 points/model
  - Crossbows +5 points/model
- May upgrade one Peasant to a Leader +5 points
- May upgrade one Peasant to a Musician +5 points
- May upgrade one Peasant to a Standard Bearer +10 points

#field("NOTES", "")

- You may only include Sylvanian Peasant Levy if your army includes a von Carstein Vampire Character.

#entry("STRIGANY")
#profile(
  (name: "Strigany", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Expendable")
#field("OPTIONS", "")

- May take throwing weapons +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Strigany to a Leader +5 points
- May upgrade one Strigany to a Musician +5 points
- May upgrade one Strigany to a Standard Bearer +10 points

#field("NOTES", "")

- You may only include Strigany if your army includes a Strigoi Vampire Character.

#entry("DIRE WOLVES")
#profile(
  (name: "Dire Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: 6),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "War Beast (Undead, Canine)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Undead")

- *Slavering Charge:* In a turn that they successfully charge, models with this special rule gain the Mighty Blow (1) special rule.

#field("OPTIONS", "")

- May upgrade one Dire Wolf to a Leader +5 points

#compact-entry("FELL BATS")[
#profile(
  (name: "Fell Bat", m: 1, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 3, points: 12),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "War Beast (Undead, Chiropter)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (9), Undead")
]

#entry("BAT SWARMS")
#profile(
  (name: "Bat Swarm", m: 1, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 4, a: 6, ld: 3, points: 30),
)
#field("UNIT SIZE", "2-10")
#field("TROOP TYPE", "Swarm (Chiropter)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (6)")

- *Cloud of Horror:* An enemy unit that is attacked in the flank or rear by one or more Bat Swarms is automatically Disrupted.

#field("NOTES", "")

- Bat Swarms have a Line of Sight value of 1.

= SPECIAL UNITS

#entry("GRAVE GUARD", first: true)
#profile(
  (name: "Grave Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 10),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Undead, Wight)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take heavy armour +1.5 points/model
- May take shields (unless they are armed with great weapons) +1 point/model
- May upgrade one Grave Guard to a Leader +5 points
- May upgrade one Grave Guard to a Musician +5 points
- May upgrade one Grave Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("BLACK KNIGHTS")
#profile(
  (name: "Black Knight", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 22),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Undead, Wight)")
#field("MOUNT", "Skeletal Steed (Undead, Skeleton)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, medium armour, shield")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Spectral Steeds, Undead")
#field("OPTIONS", "")

- May take heavy armour +2 points/model
- May take barding +2 points/model
- May upgrade one Black Knight to a Leader +5 points
- May upgrade one Black Knight to a Musician +5 points
- May upgrade one Black Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("CRYPT GUARD")
#profile(
  (name: "Crypt Guard", m: 4, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 9),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")

- *Royal Bodyguard:* If a unit of Crypt Guard is joined by a Strigoi Vampire Character, the unit becomes Stubborn as long as the character remains in it.

#field("OPTIONS", "")

- May take polearms +2 points/model
- May upgrade one Crypt Guard to a Leader +5 points
- May upgrade one Crypt Guard to a Musician +5 points
- May upgrade one Crypt Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("CRYPT HORRORS")
#profile(
  (name: "Crypt Horror", m: 6, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: 35),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Ghoul)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Poisoned Attacks, Regeneration (5+)")
#field("OPTIONS", "")

- May upgrade one Crypt Horror to a Leader +5 points

#entry("VARGHEISTS")
#profile(
  (name: "Vargheist", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 50),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Vampire)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (8), Frenzy, The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May upgrade one Vargheist to a Leader +5 points

#compact-entry("FLESH GOLEMS")[
#profile(
  (name: "Flesh Golem", m: "*", ws: 2, bs: 0, s: 4, t: 4, w: 3, i: 1, a: "*", ld: 2, points: 20),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Undead)")
#field("BASE SIZE", "40x40")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Random Attacks (D3+1), Random Movement (2D6), Undead")
]

#entry("SKELETON CHARIOT")
#profile(
  (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 45),
  (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 6+)")
#field("CREW", "2 Crew (Undead, Skeleton)")
#field("DRAWN BY", "2 Skeletal Steeds (Undead, Skeleton)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take light lances +2 points
- May take bows +2 points
- May take scythes +5 points
- May take barding +5 points

#entry("CORPSE CART")
#profile(
  (name: "Corpse Cart", m: 4, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
  (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
  (name: "The Restless Dead", m: "-", ws: 1, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
)
#field("TROOP TYPE", "Shrine (Armour save 6+, Undead)")
#field("CREW", "1 Corpsemaster (Human)")
#field("DRAWN BY", "The Restless Dead (Undead, Zombie)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Random Attacks (2D6) (The Restless Dead only), Regeneration (4+), Undead")

- *Vigour Mortis:* All friendly Skeleton and Zombie units (but not any characters) within 6" of the Corpse Cart may re-roll all failed rolls To Wound in close combat and gain the Regeneration (6+) special rule.

#field("UPGRADES", "")

- *Balefire:* Enemy Wizards suffer a \-1 casting penalty if there is one or more Corpse Carts with a Balefire within 18".
- *Unholy Lodestone:* When a friendly Wizard within 12" of an Unholy Lodestone successfully casts Invocation of Nehek, they may re-roll a single dice to determine how many Wounds are restored.

#field("OPTIONS", "")

- May choose one of the following:
  - Balefire +20 points
  - Unholy Lodestone +20 points

#entry("WRAITHWISPS")
#profile(
  (name: "Wraithwisp", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 13),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Undead, Spirit)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ethereal, Terror, Skirmishers, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Crossbows +3 points/model
  - Great weapons +3 points/model
- May upgrade one Wraithwisp to a Leader +5 points
- May upgrade one Wraithwisp to a Musician +5 points
- May upgrade one Wraithwisp to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("HEXWRAITHS")
#profile(
  (name: "Hexwraith", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 27),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Undead, Spirit)")
#field("MOUNT", "Skeletal Steed (Undead, Skeleton)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Great weapon")
#field("SPECIAL RULES", "Ethereal, Fast Cavalry, Flaming Attacks, Ignores Armour Saves, Terror, Undead")

- *Soulstriders:* Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.

#field("OPTIONS", "")

- May upgrade one Hexwraith to a Leader +5 points

#entry("SPIRIT HOST")
#profile(
  (name: "Spirit Host", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 4, i: 1, a: 4, ld: 4, points: 40),
)
#field("UNIT SIZE", "2-10")
#field("TROOP TYPE", "Swarm (Undead, Spirit)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Ethereal, Undead")
#field("NOTES", "")

- Spirit Hosts have a Line of Sight value of 1.

#entry("VARGHULF")
#profile(
  (name: "Varghulf", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 5, ld: 7, points: 135),
)
#field("TROOP TYPE", "Monstrous Creature (Vampire)")
#field("BASE SIZE", "50x50 or 50x100")
#field("SPECIAL RULES", "Hatred, The Red Thirst, Regeneration (4+), Vampiric")

- *Bestial Fury:* For the purposes of calculating combat result bonuses, a Varghulf counts as having no flanks or rear.

#entry("MOURNGUL")
#profile(
  (name: "Mourngul", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 5, points: 130),
)
#field("TROOP TYPE", "Monstrous Creature (Undead, Spirit)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Ice Attacks, Killing Blow, Terror, Undead")

- *Carnophage:* For every unsaved Wound the Mourngul inflicts in close combat, it regains one Wound it has previously lost during the battle.
- *Haunter of the Dark:* A Mourngul has a 4+ Ward save against non-magical attacks.

= RARE UNITS

#entry("BLOOD KNIGHTS", first: true)
#profile(
  (name: "Blood Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 36),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Vampire)")
#field("MOUNT", "Nightmare (Undead, Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield, barding")
#field("SPECIAL RULES", "Vampiric")
#field("OPTIONS", "")

- May upgrade one Blood Knight to a Leader +5 points
- May upgrade one Blood Knight to a Musician +5 points
- May upgrade one Blood Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#entry("LAHMIAN HANDMAIDENS")
#profile(
  (name: "Handmaiden", m: 6, ws: 5, bs: 4, s: 5, t: 4, w: 1, i: 6, a: 2, ld: 8, points: 21),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("SPECIAL RULES", "Dodge (6+), Scouts, Skirmishers, Vampiric")
#field("OPTIONS", "")

- May take throwing weapons +4 points/model
- May upgrade one Handmaiden to a Leader +5 points

#entry("MORBHEG KNIGHTS")
#profile(
  (name: "Morbheg Knight", m: 6, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 35),
  (name: "Nightshrieker", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Cavalry (Ghoul)")
#field("MOUNT", "Nightshrieker (Chiropter)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Light lance, shield")
#field("SPECIAL RULES", "Fly (5), Poisoned Attacks")

- *Shrieking Charge:* In any turn that a unit of Morbheg Knights successfully charge an enemy unit, roll 2D6 and add 1 for each Nightshrieker in the unit. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Shrieking Charge is a non-physical attack and Wounds suffered from it are distributed as if from shooting. This has no effect on Animated Constructs.

#field("OPTIONS", "")

- May upgrade one Morbheg Knight to a Leader +5 points
- May upgrade one Morbheg Knight to a Musician +5 points
- May upgrade one Morbheg Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("TERRORGHEIST")
#profile(
  (name: "Terrorgheist", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 6, i: 3, a: 4, ld: 4, points: 225),
)
#field("TROOP TYPE", "Monster (Undead, Chiropter)")
#field("BASE SIZE", "100x150")
#field("SPECIAL RULES", "Death Shriek, Fly (7), Regeneration (6+), Undead")
#field("UPGRADES", "")

- *Infested:* When a Terrorgheist with this upgrade is removed as a casualty, all units that were in base contact (friend or foe) take 3D6 Strength 2 hits.
- *Rancid Maw:* Attacks made by a Terrorgheist with this upgrade have the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May take Infested +10 points
- May take Rancid Maw +10 points

#entry("ZOMBIE DRAGON")
#profile(
  (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: 245),
)
#field("TROOP TYPE", "Monster (Undead, Dragon)")
#field("BASE SIZE", "50x50 or 100x150")
#field("SPECIAL RULES", "Fly (7), Natural Armour (5+), Undead")

- *Pestilential Breath:* A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.
- *Swarm of Flies:* Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.

#entry("NECROFEX COLOSSUS")
#profile(
  (name: "Necrofex Colossus", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: "*", ld: 8, points: 240),
)
#field("TROOP TYPE", "Monster (Undead, Animated Construct)")
#field("BASE SIZE", "50x100 or 100x150")
#field("SPECIAL RULES", "Regeneration (4+), Undead")

- *Vortex of Death:* Any Wizard attempting to cast spells from the Lore of Death or Lore of Necromancy within 12" of the Necrofex Colossus gains +1 to their Casting roll.
- *Necrofex Colossus Special Attacks:* A creature of nightmarish power and massive stature, a Necrofex Colossus can make one of a number of attacks in close combat. When it is the Necrofex Colossus' turn to strike in close combat, roll a D6 and consult the table below to determine what kind of attack it will make:

#chart((("D6", "Result"), ("1-2", "Batter and Slash: The Necrofex Colossus fights using the Random Attacks (D6+1) special rule."), ("3-4", "Impale: Select one model in base contact; that model, and all models in the same file, must pass an
Initiative test or suffer a Strength 7 Hit with the Multiple Wounds (D6) special rule."), ("5-6", "Screams of the Damned: The Necrofex Colossus may make a Death Shriek into close combat. To
resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's
Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-
physical Magical Attack and Wounds suffered from it are distributed as if from shooting.")))
#field("UPGRADES", "")

- *Corpse Killers:* After resolving its regular attacks, all enemy units in base contact with the Necrofex Colossus suffer D6 Strength 2 hits.
- *Dark Soul:* The Necrofex Colossus becomes a Level 1 Wizard who uses spells from the Lore of Death or Lore of Necromancy. However, should the Necrofex Colossus suffer a miscast, in addition to any other effect, the Necrofex Colossus permanently has its Toughness value reduced by 1, as the backlash of the miscast damages the very fabric that holds the horror together.
- *Scythes and Barbs:* The Necrofex Colossus' number of Random Attacks and Stomp hits may be re-rolled.
- *Vampire Blood:* The Necrofex Colossus gains the Regeneration (3+) special rule, but is also subject to the Berserk Rage part of Frenzy.

#field("OPTIONS", "")

- May take Scythes and Barbs +10 points
- May take Vampire Blood +10 points
- May take Corpse Killers +20 points
- May take Dark Soul +45 points

#entry("SKELETON CATAPULT")
#profile(
  (name: "Skeleton Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 80),
  (name: "Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Undead, Skeleton)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, stone thrower")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take light armour +3 points

#entry("BLACK COACH")
#profile(
  (name: "Black Coach", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 140),
  (name: "Wraith", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 2, ld: 5, points: ""),
  (name: "Spectres", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 3, ld: "-", points: ""),
  (name: "Nightmare", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "1 Cairn Wraith (Undead, Spirit)")
#field("DRAWN BY", "2 Nightmares (Undead, Equine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Great weapon (Wraith only)")
#field("SPECIAL RULES", "Chill Grasp (see Cairn Wraiths), Magical Attacks, Terror, Undead")

- *Evocation of Death:* Immediately after the total number of power dice is determined in each player's turn, you may discard one dice from the magic pool for each Black Coach on the battlefield. Each discarded dice increases that Black Coach's abilities for the rest of the game, as detailed on the chart below. All of the increases listed are cumulative.

#chart((("D6:", "Effect:"), ("1", "The Black Coach adds +1 to the number of Impact Hits it inflicts when it charges."), ("2", "The Wraith, Spectres and Nightmares gain +1 Strength."), ("3", "The Black Coach's Impact Hits, Nightmares', Wraith's and Spectres Attacks gain the Killing Blow and
Flaming Attacks special rules."), ("4", "The Black Coach gains the Magic Resistance (2) and Strider special rules."), ("5", "The Black Coach gains the Ethereal special rule."), ("6", "The Black Coach gains the Fly (8) special rule.")))

- *Insubstantial Form:* A model with this special rule has a 4+ Ward Save.

#field("OPTIONS", "")

- May take two additional Nightmares +6 points
- May take Spectres +5 points

#entry("COVEN THRONE")
#profile(
  (name: "Coven Throne", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 200),
  (name: "Pallid Handmaiden", m: "-", ws: 5, bs: 3, s: 5, t: "-", w: "-", i: 6, a: 2, ld: 8, points: ""),
  (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "3 Pallid Handmaidens (Vampire, Lahmian)")
#field("DRAWN BY", "1 Spirit Horde (Undead, Spirit)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fly (7), Magical Attacks (Spirit Horde only), Random Attacks (2D6) (Spirit Horde only), Spectral Steeds, Terror, Vampiric")

- *Battle of Wills:* Immediately before the first model in an enemy unit rolls To Hit against the Coven Throne (either in close combat or shooting), the opponent must roll a D6 and add it to their unit's Leadership. Next, roll a D6 and add it to the Coven Throne's Leadership. To find the result of the Battle of Wills, subtract the enemy's total from the Coven Throne's total, and apply the result to the table below – the results last until the end of the turn.

#chart((("Result:", "Effect:"), ("0 or less", "Back off, devils!: No effect."), ("1-2", "Must... resist...: The enemy is at -1 Weapon Skill and -l Ballistic Skill. Artillery weapons that
do not roll to Hit must re-roll the scatter dice."), ("3-5", "Bewitched: The enemy must re-roll successful To Hit rolls. Artillery weapons that do not roll to
Hit must roll a 4+ to be able to fire."), ("6+", "Completely enthralled: Every model in the enemy unit makes a single close combat attack,
resolved against its own unit. Affected units may not otherwise shoot or attack this turn.")))

- *Insubstantial Form:* A model with this special rule has a 4+ Ward Save.
- *Scrying Pool:* Bound Spell, power level 3. This is an *augment* spell that targets the Coven Throne. All crew (including any characters mounted on it) may re-roll all failed To Hit and To Wound rolls for the remainder of the turn.

#field("NOTES", "")

- A Coven Throne has a Line of Sight value of 5.

#entry("MORTIS ENGINE")
#profile(
  (name: "Mortis Engine", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 220),
  (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
  (name: "Banshee", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: "*", ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "1 Corpsemaster (Human), 3 Banshees (Undead, Spirit)")
#field("DRAWN BY", "1 Spirit Horde (Undead, Spirit)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Death Shriek, Fly (7), Magical Attacks (Spirit Horde only), Random Attacks (2D6) (Spirit")

Horde only)*, Regeneration (4+), Spectral Steeds, Terror, Undead*

- *The Reliquary:* At the start of each of your turns, roll 2D6 and add the current turn number. This is range of the reliquary's dark aura this turn in inches. All enemy units within range of the dark aura immediately take D6 hits, with a Strength equal to the current turn number, distributed as from shooting. Also, place a marker next to all friendly Undead units that were within range of the dark aura at the start of the turn. These units improve their Regeneration saves by one point until the start of their next turn, to a maximum of 4+. If they have no Regeneration save, they are treated as having the Regeneration (6+) special rule instead. Finally, if the 2D6 result was a double, then the fell energies prove too powerful; in addition to the usual effects, the Mortis Engine takes 1 Wound with no saves of any kind allowed. When the Mortis Engine suffers its last unsaved Wound, every unit within 12 plus the turn number in inches, friend or foe, must take 2D6 hits with a Strength equal to the current turn number. These hits are distributed as shooting.

#field("UPGRADES", "")

- *Blasphemous Tome:* All Wizards (friend or foe) within 12" of one or more models with a Blasphemous Tome gain +2 to their casting result when casting spells from the Lore of Necromancy. If any Wizard miscasts within 12" of one or more models with a Blasphemous Tome upgrade, they must roll twice on the Miscast table. The miscasting player's opponent chooses which result applies.

#field("OPTIONS", "")

- May take a Blasphemous Tome +20 points

#field("NOTES", "")

- A Mortis Engine has a Line of Sight value of 5.

= SPECIAL CHARACTERS (LORDS)

#entry("VLAD VON CARSTEIN", first: true)
#namecost("First Count of Sylvania", "")
#profile(
  (name: "Vlad von Carstein", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 435),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC", "Vlad von Carstein is a Level 3 Wizard who chooses spells from the following Lores of Magic:")

- Necromancy

#field("MAGIC ITEMS", "")

- *Blood Drinker:* Magic Weapon. Close combat attacks made with Blood Drinker are resolved at +1 Strength. In addition, whilst Vlad wields Blood Drinker, he restores lost Wounds on a score of 3+ rather than 5+ for the purposes of the Red Thirst special rule.
- *The Carstein Ring:* Talisman. The Carstein Ring grants Vlad a 4+ Ward save. Furthermore, the first time Vlad is removed from play, roll a D6 at the end of the phase. On a roll of 2+, he is immediately returned to 'life' with a single Wound. Vlad must then be placed in the front rank of a friendly unit anywhere within 12" of the point where he fell (even one in close combat). If there is no such unit for Vlad to join, he is removed as a casualty.

#field("VAMPIRIC POWERS", "Aura of Dark Majesty, Supernatural Horror, Transfix")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Beloved in Death:* If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.

#entry("MANNFRED VON CARSTEIN")
#namecost("Last of the Von Carsteins", "")
#profile(
  (name: "Mannfred von Carstein", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 565),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC", "Mannfred von Carstein is a Level 4 Wizard who chooses spells from both of the following Lores of Magic:")

- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Timor Noctis, the Sword of Unholy Power:* Magic Weapon. For each unsaved Wound caused by the sword, the wielder gains an extra dice at the start of the ensuing Magic phase (this will be a power dice in his own Magic phase, and a dispel dice in the enemy's Magic phase).
- *Armour of Templehof:* Magic Armour. Heavy armour. This item gives the wearer +2 Wounds (in addition to any Wounds he would get from being mounted on a Monster).
- *Cloak of Darkness:* Talisman. This item gives the wearer the Magic Resistance (3) special rule.
- *Ebony Staff:* Arcane Item. This item allows the bearer to cast _Invocation of Nehek_ from the Lore of Necromancy without using any Power dice in each of his Magic phases. The spell is cast with a Power Level equal to its basic casting value and can be dispelled normally.

#field("VAMPIRIC POWERS", "Dark Acolyte, Master of the Black Arts, Summon Creatures of the Night")
#field("SPECIAL RULES", "Loremaster (Lore of Death, Necromancy), The Red Thirst, Vampiric")

- *The Devils of Swartzhafen:* If Mannfred von Carstein is included in your army, you may upgrade one unit of Vargheists to the Devils of Swartzhafen for +5 points per model. This unit has the Scouts and Terror special rules.
- *Drakenhof Guard:* If Mannfred von Carstein is included in your army, you may upgrade one unit of Grave Guard to the Drakenhof Guard for +1 point per model. This unit ignores casualties caused by being Unstable.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points

#entry("ZACHARIAS THE EVERLIVING")
#profile(
  (name: "Zacharias the Everliving", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 725),
  (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Vampire, Necrarch)")
#field("MOUNT", "Zombie Dragon (Undead, Dragon)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon.")
#field("MAGIC", "Zacharias is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:")

- Beasts
- Fire
- Death
- Heavens
- Light
- Metal
- Necromancy
- Shadow

#field("MAGIC ITEMS", "")

- *Circlet of Rathek:* Talisman. The circlet gives Zacharias a 4+ Ward save.
- *Staff of Kaphamon:* Enchanted Item. Bound Spell, power level 4. This staff contains the _Gaze of Nagash_ spell.
- *Scrolls of Semhtep:* Arcane Item. The Scrolls of Semhtep follow all the rules for Dispel Scrolls, except that you may attempt to use one in each of the opposing player's Magic phases. After the first time you have used one, roll a D6; on a 2+ you can use a scroll the next turn as well. The second time you use one, you need to roll a 3+, the third time a 4+ and so on. A roll of 6 always succeeds.
- *Book of Nagash:* Arcane Item. When casting the spell _Invocation of Nehek_ from the Lore of Necromancy, Zacharias restores 3D6 Wounds instead of 2D6 for Core Units and 2D6 Wounds for Special Units (except Cavalry) instead of D6. Characters, Special Units that are Cavalry and Rare Units regain D6 Wounds per successful casting.

#field("VAMPIRIC POWERS", "Dark Acolyte, Forbidden Lore, Master of the Black Arts")
#field("SPECIAL RULES", "Fly (7), Natural Armour (5+), The Red Thirst, Vampiric")

- *Pestilential Breath:* A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.
- *Swarm of Flies:* Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.

#entry("MELKHIOR THE ANCIENT")
#profile(
  (name: "Melkhior", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 455),
  (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: ""),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, Vampire, Necrarch)")
#field("MOUNT", "Abyssal Terror (Undead)")
#field("BASE SIZE", "50x50")
#field("MAGIC", "Melkhior is a Level 4 Wizard who chooses spells from the following Lores of Magic:")

- Necromancy

#field("MAGIC ITEMS", "")

- *Painbringer:* Magic Weapon. If the wielder of this item rolls a 6 when rolling To Wound, that attack has the Multiple Wounds (D3) special rule.
- *Grimoire Necronium:* Arcane Item. This item allows the bearer to cast _Invocation of Nehek_ at its basic value without using any Power dice. Each time you use the book roll a D6: on a roll of 1 it runs out of power and cannot be used for the remainder of the battle.
- *Black Cloak of Lahmia:* Talisman. This item makes the wearer unable to be targeted by non-magical shooting attacks.

#field("VAMPIRIC POWERS", "Dark Acolyte, Forbidden Lore, Nehekhara's Noble Blood")
#field("SPECIAL RULES", "Fly (8), Frenzy, Stupidity, The Red Thirst, Vampiric")

#entry("NEFERATA")
#namecost("The Queen of Mysteries and Shadows", "")
#profile(
  (name: "Neferata", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 9, a: 5, ld: 10, points: 510),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian).")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Neferata is a Level 3 Wizard who chooses spells from the following Lores of Magic:")

- Death
- Necromancy
- Shadows

#field("MAGIC ITEMS", "")

- *Dagger of Jet:* Magic Weapon. The wielder gains +1 Strength and the Poisoned Attacks special rule.
- *Ruby of Lahmia:* Talisman. At the end of each turn of the game that the bearer is still alive, the Ruby of Lahmia automatically lets them regain one Wound that they has lost during the battle.
- *The Staff of Pain:* Arcane Item. When the bearer successfully casts a *magic missile*, *direct damage* or *hex* spell, each target suffer D3 additional Strength 5 hits after the spell effect has been resolved.
- *Bastet:* Enchanted Item. At the beginning of each of her turns, Neferata can send Bastet to any enemy unit on the battlefield within 12". Place a marker of Bastet next to the affected unit. Bastet looks just like an ordinary black cat and therefore will be ignored by the enemy (the model can be moved through, it doesn't stop the enemy from marching, etc.). The target unit will be afflicted by miserable bad luck and everything that can go wrong will. The unit must re-roll any successful armour save it takes while under Bastet's influence. This lasts for the duration of the Vampire player's turn.

#field("OPTIONS", "")

- May take medium armour +9 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Coven Throne (replacing one of the crew) +200 points

#field("VAMPIRIC POWERS", "Lightning Reflexes, Quickblood, Seduction")
#field("SPECIAL RULES", "Dodge (6+), The Red Thirst, Vampiric")

- *Heavenly Creature:* Enemy units in base contact with Neferata suffer a \-2 penalty to their Leadership.
- *Queen of Lahmia:* Neferata must be the Army General. In addition, units of Lahmian Handmaidens may be included as Special Units rather than Rare Units.
- *Shadowblood:* Innate bound spell, power level 5. _Shadowblood_ is a *magic missile* with a range of 24". When cast, Neferata must declare how many Wounds she is using to boost the effects of the spell. The spell causes D6 Strength 5 hits with the Flaming Attacks special rule plus an extra D6 hits for each wound Neferata expends. In addition, a unit suffering one or more wounds from this spell must immediately take a Panic test.

#entry("WALACH HARKON")
#namecost("Grand Master of the Blood Knights", "")
#profile(
  (name: "Walach Harkon", m: 6, ws: 9, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 475),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Vampire, Blood Dragon)")
#field("MOUNT", "Nightmare (Undead, Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Barding")
#field("MAGIC", "Walach Harkon is a Level 2 Wizard who chooses spells from the following Lores of Magic:")

- Necromancy

#field("MAGIC ITEMS", "")

- *Crimson Blade:* Magic Weapon. The Crimson Blade automatically Wounds on a 2+. In addition, to see what additional effect the attack has, compare the result of each To Wound dice rolled with the table below:

#chart((("D6", "Result"), ("2-3", "Arm wound: The model (or rider if mounted) loses 1 Attack for the remainder of the game."), ("3-5", "Chest wound: The attack is resolved with the Multiple Wounds (D3) special rule."), ("6", "Beheaded: The attack is resolved as a Heroic Killing Blow.")))

- *Walach's Bloody Hauberk:* Magic Armour. Heavy armour. This item gives the wielder a 5+ Ward save.
- *Blood Chalice:* Enchanted Item. At the beginning of each Vampire Counts turn, the bearer can drink from the Blood Chalice allowing them to do one of the following:

\- Heal 1 Wound suffered earlier in the battle. - Gain +D3 Attack until the start of your next turn. - Re-roll 1's To Hit and To Wound and gain the Flaming Attacks special rule until the start of your next turn.

- *Blood Dragon Standard:* Magic Standard. This is the army's Battle Standard, though Walach may still be the Army General. All Blood Dragon Vampires within 12" gain the Hatred special rule.

#field("VAMPIRIC POWERS", "Dread Knight, Doom Rider, Warrior Pride")
#field("SPECIAL RULES", "Hatred (The Empire), The Red Thirst, Vampiric")

- *Grand Master of the Blood Knights:* If Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units.
- *Martial Honour:* The Vampire must always issue and accept challenges when possible.

#field("OPTIONS", "")

- May be mounted on a Zombie Dragon (replacing the Nightmare) +195 points

#entry("THE RED DUKE")
#namecost("Scourge of Aquitaine", "")
#profile(
  (name: "The Red Duke", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 375),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Blood Dragon)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "The Red Duke is a Level 1 Wizard who chooses spells from the following Lores of Magic:")

- Necromancy

#field("MAGIC ITEMS", "")

- *Golden Death:* Magic Weapon. Two hand weapons. This item gives the wielder +1 Strength and +1 To Hit in close combat.
- *The Armour of Blood:* Magic Armour. Heavy armour. This item allows the wielder to automatically regain Wounds through the Red Thirst.

#field("VAMPIRIC POWERS", "Heart Piercing, Honour or Death, Red Fury")
#field("SPECIAL RULES", "Hatred (Bretonnia), The Red Thirst, Vampiric")

- *Martial Honour:* The Vampire must always issue and accept challenges when possible.

#field("OPTIONS", "")

- May be mounted on a Nightmare (with barding) +26 points

#entry("PRINCE VHORDRAI")
#namecost("Lord of Crimson Keep", "")
#profile(
  (name: "Prince Vhordrai", m: 6, ws: 8, bs: 3, s: 5, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 600),
  (name: "Shordemaire (Zombie Dragon)", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Vampire, Blood Dragon)")
#field("MOUNT", "Zombie Dragon (Undead, Dragon)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Heavy armour, shield")
#field("MAGIC", "Prince Vhordrai is a Level 1 Wizard who chooses spells from the following Lores of Magic:")

- Necromancy

#field("MAGIC ITEMS", "")

- *Bloodlance:* Magic Items. Heavy lance. In any turn in which Prince Vhordrai charges, he gains the Multiple Wounds (D3) special rule.

#field("VAMPIRIC POWERS", "Heart Piercing, Honour or Death, Red Fury")
#field("SPECIAL RULES", "Fly (7), Natural Armour (5+), The Red Thirst, Vampiric")

- *Breath of Shyish:* Shordemaire has a Strength 3 Breath Weapon with the Ignores Armour Saves special rule.
- *Fist of Abhorash:* All units of Blood Knights within 12" of Prince Vhordrai may re-roll failed charge distance rolls.
- *Martial Honour:* The Vampire must always issue and accept challenges when possible.
- *Swarm of Flies:* Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.

#entry("USHORAN")
#namecost("The Carrion King", "")
#profile(
  (name: "Ushoran", m: 6, ws: 7, bs: 3, s: 6, t: 6, w: 4, i: 7, a: 5, ld: 10, points: 560),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, Vampire, Strigoi)")
#field("BASE SIZE", "100x100")
#field("MAGIC", "Ushoran is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:")

- Beasts
- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Sceptre of the Carrion King:* Magic weapon. This item gives the wielder the Multiple Wounds (D6) special rule.
- *The King's Chalice:* Talisman. This item gives the bearer a 5+ Ward save. In addition, at the start of each of your turns, it can restore one Wound lost earlier during the game.
- *Shroudcage Fragment:* Enchanted Item. All enemy units in base contact with Ushoran are subject to the Always Strikes Last special rule.

#field("VAMPIRIC POWERS", "Monstrous Mass, Summon Ghouls")
#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")

- *The Carrion King:* Ushoran must be the Army General. In addition, all friendly Ghouls within 12" of

Ushoran are subject to the Frenzy special rule.

#entry("BELLADAMMA VOLGA")
#namecost("First of the Vyrkos", "")
#profile(
  (name: "Belladamma Volga", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 400),
  (name: "Rothabak (Dire Wolf)", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Vampire, Vyrkos)")
#field("MOUNT", "Rothabak (Undead, Canine)")
#field("BASE SIZE", "50x50 or 75x75")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Belladamma Volga is a Level 3 Wizard who chooses spells from the Lore of Beasts.")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *The Direpack:* If Belladamma Volga is included in your army, you may upgrade one unit of Dire Wolves to the Direpack for +1 point per model. This unit has the Multiple Wounds (2) special rule.
- *First of the Vyrkos:* Belladamma gains +1 to cast and dispel. In addition, every time she suffers an unsaved Wound, roll a D6 if she is within 6" of one more friendly Dire Wolf units. On a 3+, the Wound is allocated to one model in that unit instead of her.
- *Lycancurse:* Innate bound spell, power level 3. _Lycancurse_ is a *direct damage* spell with a range of 18" that targets Infantry. The target unit suffer 2D6 Wounds which Ignores Armour Saves. If this results in all the models getting removed as casualties, the number of slain models gets transformed into a unit of Dire Wolves controlled by you, facing the same direction as before.
- *Pack Alpha:* All friendly units of Dire Wolves within 12" of Belladamma may re-roll failed charge and pursuit rolls.
- *Under a Killing Moon:* Innate bound spell, power level 3. Remains in Play. _Under a Killing Moon_ is an *augment* spell with a range of 18" that targets Dire Wolves. The target unit gains the Frenzy special rule.

#entry("RADUKAR THE WOLF")
#profile(
  (name: "Radukar the Wolf", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 6, a: 5, ld: 9, points: 380),
  (name: "Radukar the Beast", m: 8, ws: 6, bs: 0, s: 6, t: 6, w: 5, i: 7, a: 6, ld: 9, points: ""),
)
#field("TROOP TYPE", "Monstrous Infantry (Special Character, Vampire, Vyrkos)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Radukar is a Level 1 Wizard who chooses spells from the Lore of Beasts.")
#field("SPECIAL RULES", "Hatred, Killing Blow, The Red Thirst, Vampiric")

- *The Beast:* Whenever Radukar suffer an unsaved Wound, roll a D6; on a roll of 4+, he will transform into his Beast form for the remainder of the battle and will use those characteristics from then on (note that any Wounds previously suffered are not regained upon transforming). Replace Radukar the Wolf with Radukar the Beast, reforming the unit to make space if needed (this does not count as a reform).
- *Call to the Hunt:* Radukar, and any unit he joins, gains the Devastating Charge special rule.
- *Mustering Howl:* While in his Beast form, Radukar may use this ability once per battle at the start of any of your Remaining Moves phases. If you do so, you can add 1 unit of up 2D6 Dire Wolves to your army. This unit enters the table following the rules for Reinforcements.
- *Supernatural Reflexes:* Enemies targeting Radukar the Beast must re-roll successful rolls To Hit.

#entry("HEINRICH KEMMLER")
#namecost("The Lichemaster", "")
#profile(
  (name: "Heinrich Kemmler", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 1, ld: 8, points: 340),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Heinrich Kemmler is a Level 4 Wizard who chooses spells from the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Chaos Tomb Blade:* Magic Weapon. The Chaos Tomb Blade confers +2 Attacks. Furthermore, if the wielder is in a unit of Skeleton Warriors or Grave Guard, for each model he slays in close combat, an extra model is added to his unit following the rules for Resurrecting Fallen Warriors. Newly created models have the same equipment as the rest of the unit.
- *Cloak of Mists and Shadows:* Enchanted Item. At the beginning of each of your turns, choose either the Fly (10) or Ethereal special rule. The wearer has that rule until the beginning of his next turn.
- *Skull Staff:* Arcane Item. At the beginning of the friendly Magic phase, your opponent must declare all of his magic items that are within 12" of the bearer, and the models/units that are carrying them. In addition, the bearer receives a +1 to their dice rolls when they attempt to dispel.

#field("SPECIAL RULES", "Loremaster (Lore of Necromancy), Master of the Dead")

#entry("DIETER HELSNICHT")
#namecost("Doom Lord of Middenheim", "")
#profile(
  (name: "Dieter Helsnicht", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 1, ld: 8, points: 335),
  (name: "Manticore", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 5, points: ""),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, Human)")
#field("MOUNT", "Abyssal Terror (Undead)")
#field("BASE SIZE", "50x50")
#field("MAGIC", "Dieter Helsnicht is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Chaos Runesword:* Magic Weapon. The runes carved into the blade gives the bearer's +1 Weapon Skill, +1 Strength and +1 Attack.
- *Rod of Flaming Death:* Enchanted Item. Bound Spell (Power Level 4). If cast successfully, this item casts a magic missile with a range of 18 " that inflicts D6 Strength 4 hits with the Flaming Attacks special rule. In addition, if the target unit moves in the Movement phase, flees or pursues during its next turn, every model in the unit suffers an immediate Strength 4 hit with the Flaming Attacks special rule, after which the spell's effects end. If the unit does not move the spell ends at the start of the caster's next Magic phase. Any unit taking one or more unsaved Wounds from this spell must immediately take a Panic test.
- *Power Scroll:* Arcane Item. One use only. The bearer can use the scroll to cast one his spells at its basic power level automatically without using any Power dice. It can be dispelled as normal.

#field("SPECIAL RULES", "Fly (8), Frenzy (Manticore only), Killing Blow (Manticore only)")

- *Doom Lord:* Dieter does not need to test for Berserk Rage from his Manticore's Frenzy.

#entry("LADY OLYNDER")
#namecost("The Mourning Bride", "")
#profile(
  (name: "Lady Olynder", m: 6, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 8, points: 400),
  (name: "Banshee Handmaidens", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Spirit)")
#field("BASE SIZE", "40x40 or 50x50")
#field("MAGIC", "Lady Olynder is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Staff of Midnight:* Magic Weapon. The Staff of Midnight gives Lady Olynder the Killing Blow special rule.
- *Grave-sands of Time:* Enchanted Item. One use only. The Grave-sands can be used at the start of any close combat phase to target one enemy model in base contact. The target model suffers D3 Wounds which Ignores Armour saves. Alternatively, Lady Olynder can use the Grave-sands to heal D3 Wounds previously lost during the game, up to her starting value.

#field("SPECIAL RULES", "Death Shriek, Ethereal, Fly (6), Terror, Undead")

- *Grief-stricken:* Bound Spell, power level 5. _Grief-stricken_ is a *hex* spell with a range of 18". Until the start of the caster's next turn, the target unit suffer \-1 To Hit in close combat, and models targeting them in close combat gain +1 To Hit.
- *Lifting the Veil:* This is a shooting attack with a range of 12", Strength 4, Ignores Armour saves, Killing Blow and Multiple Shots (6) special rules. When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties. Each model slain by this attack allows Lady Olynder to regain 1 Wound previously lost during the game, up to her starting value.
- *The Mourning Lady:* All enemy models within 6" of Lady Olynder must re-roll successful Psychology tests.
- *No Rest for the Wicked:* When casting the Invocating of Nehek spell on a unit with the Ethereal special rule, Lady Olynder may re-roll the number of Wounds restored.

#field("NOTES", "")

- If Lady Olynder is your Army General, Glooms are no longer Expendable.
- Lady Olynder has a Unit Strength of 3.

#entry("KURDOSS VALENTIAN")
#namecost("The Craven King", "")
#profile(
  (name: "Kurdoss Valentian", m: "-", ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 4, ld: 7, points: 200),
  (name: "Wraith Heralds", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Spirit)")
#field("BASE SIZE", "40x40 or 50x50")
#field("MAGIC ITEMS", "")

- *Sepulchral Sceptre:* Magic Weapon. Great weapon. All attacks made with the Sepulchral Sceptre have the Multiple Wounds (D3) special rule. However, for each natural To Wound roll of 6, that attack has the Multiple Wounds (D6) special rule instead.

#field("SPECIAL RULES", "Chill Grasp (Kurdoss Valentian only, see Cairn Wraiths), Ethereal, Fly (5), Terror, Undead")

- *If I Cannot Rule, None Shall Rule!* Kurdoss Valentian or any other Army General cannot make use of their Inspiring Presence special rule while they are within 12" of him.
- *Suffer No Rival:* Kurdoss may re-roll failed rolls To Hit in close combat against the enemy Army General.

#field("NOTES", "")

- If Kurdoss Valentian is your Army General, Glooms are no longer Expendable.
- Kurdoss Valentian has a Line of Sight value of 2 and a Unit Strength of 3.

= SPECIAL CHARACTERS (HEROES)

#entry("KONRAD VON CARSTEIN", first: true)
#namecost("The Mad Blood Count", "")
#profile(
  (name: "Konrad von Carstein", m: 6, ws: 7, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 215),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Sword of Waldenhof:* Magic Weapon. Two hand weapons. The wielder gains the Multiple Wounds (2) special rule.
- *Ring of the Night:* Talisman. The bearer gains a 5+ Ward save*.* In addition, all missile attacks targeted at the bearer of the Ring of the Night or the unit they are with suffer \-1 To Hit.

#field("VAMPIRIC POWERS", "Red Fury")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *One Bat Short of a Belfry:* At the start of each of Konrad's turns, you must determine the state of the mad Vampire's fragile mind. Roll a D6. On a roll of a 1\-3, Konrad is subject to the rules for Stupidity until the start of his next turn. On a roll of a 4\-6, Konrad is subject to Frenzy until the start of his next turn

#entry("ISABELLA VON CARSTEIN")
#namecost("Beloved of Vlad", "")
#profile(
  (name: "Isabella von Carstein", m: 6, ws: 6, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 110),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("MAGIC ITEMS", "")

- *Blood Chalice of Bathori:* Enchanted Item. The bearer, or another Vampiric character in the same unit, may drink from the Blood Chalice of Bathori at the start of each friendly Magic phase. The chosen model regains a single Wound lost earlier in the battle.

#field("VAMPIRIC POWERS", "Beguile")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Beloved in Death:* If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.

#entry("SEKHAR")
#namecost("The Fang of Lahmia", "")
#profile(
  (name: "Sekhar", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 190),
  (name: "Ouboroth", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian)")
#field("BASE SIZE", "40x60 or 50x75")
#field("EQUIPMENT", "Polearm, medium armour")
#field("MAGIC", "Sekhar is a Level 2 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy
- Shadows

#field("VAMPIRIC POWERS", "Seduction, Lightning Reflexes")
#field("SPECIAL RULES", "Dodge (6+), Poisoned Attacks (Ouboroth only), The Red Thirst, Vampiric")

- *The Time-Swallower’s Maw:* This ability can be used once per game, at the start of any close combat phase. All enemy models in base contact with Sekhar must pass an Initiative test or suffer 1 Wound for every point they failed the Initiative test by.

#field("NOTES", "")

- Sekhar has a Unit Strength of 2.

#entry("CADO EZECHIAR")
#namecost("The Hollow King", "")
#profile(
  (name: "Cado Ezechiar", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 165),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian).")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Cado Ezechiar is a Level 1 Wizard who chooses spells from the Lore of Death.")
#field("EQUIPMENT", "Great weapon, light armour")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *The Court of the Lost:* At the start of each of your turn, Cado can summon a spirit from the Court of the Lost. If he does so, pick one of the effects below. That effect lasts until the start of your next turn.
  - *Spirit of the Steed:* Cado gains Movement 10 and the Swiftstride special rule.
  - *Spirit of the Tutor:* Cado gains a +1 casting and dispel bonus as well as +1 to his channelling rolls.
  - *Spirit of the Fallen:* Cado gains the Killing Blow and Multiple Wounds (2) special rules.
- *Retribution or Salvation:* Bound Spell, power level 3. _Retribution or Salvation_ has a range of 18". If targeting an enemy unit, it is a *magic missile* that causes D6 Strength 4 hits. If that enemy unit is from _Warhammer: Daemons of Chaos_ or _Warriors of Chaos_ it causes 2D6 hits. If the target is a friendly Undead Infantry unit it is an *summoning* spell. The target unit immediately regains Wounds as described in the _Invocation of Nehek_.

#entry("GORMAYNE")
#namecost("Grand Justice", "")
#profile(
  (name: "Gormayne", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 180),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Strigoi)")
#field("BASE SIZE", "20x20 or 25x25")
#field("VAMPIRIC POWERS", "Unholy Regeneration")
#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")

- *Pronounce Judgement:* At the start of each of your turns, pick one of the following judgements to pronounce:
  - *Petty Transgression:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed rolls To Wound against that unit.
  - *Dishonourable Conduct in Battle:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed charge rolls against that unit.
  - *Grievous Insult to the Court:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls may re-roll failed rolls To Hit against that unit.
  - *Regicide:* Choose one enemy unit within Line of Sight. Until the start of your next turn, all friendly Ghouls gain the Killing Blow special rule against that unit.

#entry("IVYA VOLGA")
#namecost("The Outcast", "")
#profile(
  (name: "Ivya Volga", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 120),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Vyrkos)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Behemoth's Bane:* Any enemy Monster in base contact with Ivya have their Attack characteristic reduced to 1.
- *Shrieking Swarm:* Any enemy unit in base contact with Ivya at the start of each close combat phase take 2D6 Strength 2 Hits. In addition, they also suffer \-1 to their Weapon Skill.

#entry("LADY ANNIKA")
#namecost("The Thirsting Blade", "")
#profile(
  (name: "Lady Annika", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 8, a: 3, ld: 9, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Vyrkos)")
#field("BASE SIZE", "20x40 or 25x50")
#field("MAGIC ITEMS", "")

- *Blade Proboscian:* Magic Weapon. All attacks made this weapon automatically Wound. If any enemy models were slain with this weapon during a close combat phase, the wielder regains any Wounds lost during the game.

#field("SPECIAL RULES", "Always Strikes First, Dodge (4+), Loner, The Red Thirst, Scouts, Vampiric")

#entry("KRITZA")
#namecost("The Rat Prince", "")
#profile(
  (name: "Kritza", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 135),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Vyrkos)")
#field("BASE SIZE", "20x40 or 25x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Scurrying Retreat:* If Kritza is slain in close combat, roll a D6 at the end of that phase. On a 1\-3, he is removed as a casualty as normal. On a 4+, move Kritza 3D6" in any direction, stopping at least 1" away from other units or impassable terrain. He is restored to his starting number of Wounds and may act normally from his next turn.
- *Nauseating Aroma:* All enemy models in base contact with Kritza suffer \-1 To Hit in close combat.

#entry("HELMAN GHORST")
#profile(
  (name: "Helman Ghorst", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 165),
)
#field("TROOP TYPE", "Infantry (Special Character, Human).")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Helman Ghorst is a Level 2 Wizard who chooses spells from the Lore of Necromancy.")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *The Liber Noctis:* Arcane Item. This tome gives the bearer +1 Power dice in each of their Magic phases. Only they may use this dice.

#field("SPECIAL RULES", "Loremaster (Lore of Necromancy), Master of the Dead")

- *Awaken from the Grave:* When Helman Ghorst successfully casts the _Invocation of Nehek_ or _Raise Dead_ spells, he can add +D3 to the total number of Skeletons or Zombies created.
- *The Brothers Ghorst:* If Helman Ghorst is mounted on a Corpse Cart, all attacks from the Restless Dead pulling it are resolved at Strength 4.
- *The Konigstein Stalkers:* If Helman Ghorst is included in your army, you may upgrade one unit of Skeleton Warriors to the Konigstein Stalkers for +1 point per model. This unit has the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May be mounted on a Corpse Cart (replacing the Corpsemaster) +100 points

#entry("KRELL")
#namecost("Lord of Undeath", "")
#profile(
  (name: "Krell", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 3, i: 5, a: 3, ld: 9, points: 200),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Wight)")
#field("BASE SIZE", "20x20, 25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *The Black Axe of Krell:* Magic Weapon. Great weapon. This item confers the Multiple Wounds (D3) special rule. Furthermore, any model taking an unsaved Wound from the Black Axe must roll a D6 at the start of each of its subsequent turns. If the result is higher than the number of Wounds it has remaining, that model suffers an additional Wound which Ignores Armour saves.
- *Armour of the Barrows:* Magic Armour. Heavy armour. If an enemy with a magic weapon Wounds the wearer in close combat and the wearer passes their armour save, that magic weapon's abilities are nullified; it is treated as a normal, non-magical weapon of the same type for the remainder of the game.
- *Crown of the Damned:* Talisman. This item grants the wearer a 4+ Ward save and the Stupidity special rule.

#field("SPECIAL RULES", "Killing Blow, Terror, Undead")

- *Champion of the Dead:* Krell must always issue and accepts challenges whenever possible. If Krell is fighting a challenge whilst in the same unit as Heinrich Kemmler, he has the Heroic Killing Blow special rule.

#entry("REIKENOR THE GRIMHAILER")
#profile(
  (name: "Reikenor", m: 5, ws: 4, bs: 0, s: 4, t: 3, w: 2, i: 3, a: 4, ld: 6, points: 245),
  (name: "Kyllaron (Hellsteed)", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Undead, Spirit)")
#field("MOUNT", "Kyllaron (Undead, Equine)")
#field("BASE SIZE", "25x50, 30x60 or 50x75")
#field("MAGIC", "Reikenor is a Level 2 Wizard who chooses spells from the Lore of Death.")
#field("MAGIC ITEMS", "")

- *Fellreaper:* Magic Weapon. Great weapon. Reikenor gains +1 Attack for each rank of 5 or more models the target unit has, up to maximum of +3 Attacks.
- *Corpse Candles:* Arcane Item. At the start of your Magic phase, before attempting to cast a spell, Reikenor may snuff out a corpse candle. If he does so, pick one enemy unit within 12". The target unit suffers 1 Wound which Ignores Armour saves. In addition, Reikenor gains +1 to cast for his first spell this turn.

#field("SPECIAL RULES", "Chill Grasp, Ethereal, Fly (9), Terror, Undead")

- *The Chillgheists:* If Reikenor is included in your army, you may upgrade one unit of Hexwraiths to the Chillgheists for +1 point per model. This unit has the Ice Attacks special rule. In addition, enemy units in base contact with them roll one dice less than normal for their flee distance.
- *Wraithstorm:* Bound Spell, power level 4. _Wraithstorm_ is a *direct damage* spell with a range of 12". The target unit inflicts D6 close combat attacks on itself. If any models in that unit are slain as a result of this spell, that unit immediately inflicts another D6 close combat attacks on itself. This has no effect on single model units.

#entry("AWLRACH THE DROWNER")
#profile(
  (name: "Awlrach", m: 8, ws: 3, bs: 0, s: 4, t: 5, w: 4, i: 2, a: 3, ld: 6, points: 210),
)
#field("TROOP TYPE", "Chariot (Armour save 5+, Special Character, Undead, Spirit)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Polearm")
#field("SPECIAL RULES", "Chill Grasp, Ethereal, Fly (6), Terror, Undead")

- *Passage Through the Underworlds:* In your remaining moves sub-phase, pick one friendly unit within 12". That unit may make a Fly move up to 10" and be placed facing in any direction of your choice.
- *Scything Ram:* Awlrach gains +1 Attack for every unsaved Wound caused by his Impact Hits for the duration of the close combat base.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
