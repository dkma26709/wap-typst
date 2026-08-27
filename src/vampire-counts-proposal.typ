// Vampire Counts - Proposals 2026.1.
//
// A fork of src/vampire-counts.typ. The body is identical to it, word for word:
// a proposal changes nothing, and extract/check_editions.py --identical-body
// holds this file to that. Everything this edition adds is the PROPOSALS
// chapter at the end.
//
// The Proposals edition derives from the House edition where one exists. There
// is no House edition of this book, so this one forks the base text and its
// parent for verification is vampire-counts.pdf.
//
// Rules text, army design and points values in the body are Mathias Eliasson's
// work. The proposals are ours, and are not rules - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "vampire-counts",
  army: "Vampire Counts",
  version: "3.0",
  layout: "army",
  cover: "covers/vampire-counts.png",
  align: "destruction",
  id: "vampire-counts-proposal",
  base: "vampire-counts",
  edition: "proposal",
)

#show: book.with(title: "Vampire Counts — Proposals 2026.1")

#cover(
  title: "Vampire Counts",
  subtitle: "Proposals 2026.1 · after Warhammer Armies Project 3.0",
  art: "/assets/covers/vampire-counts.png",
)

#colophon((
  "The rules in this book are the ones we play. Nothing in the body has been altered by the proposals: they are set out in their own chapter at the back, each as a description of what it would change and why, and none of them is in force. A proposal only becomes a rule once it is agreed, and it will appear under Our Changes when it does.",
  "The underlying work is the Warhammer Armies Project, written and freely distributed by Mathias Eliasson. All rules text, army design and points values are his; the amendments and the proposals are ours alone, made for our own table, and carry no endorsement from him.",
  "Warhammer, Warhammer Fantasy Battle and all associated names, races and places are trademarks of Games Workshop Limited. This document is unofficial and unaffiliated, and no challenge to their status is intended.",
  "Typeset with Typst. Not for sale.",
))

#outline(title: [Contents], depth: 2)

= ARMY SPECIAL RULES

#columns(2)[
This section of the book describes all the different units used in a Vampire Counts army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Vampire Counts units, and these are detailed here.

#namecost("BLOODLINES", "")

Most Vampires belong to a certain Bloodline, such as von Carstein, Necrach, Lahmian, Blood Dragon or Strigoi. Characters belonging to one Bloodline may not join units belonging to another Bloodline, nor may two characters from different Bloodlines join the same unit.

#namecost("THE GENERALS OF UNDEATH", "")

If your army contains any Undead units, you must include at least one character that is a Wizard that uses the Lore of Necromancy.

#namecost("Slain General", "")

At the end of the phase in which the General is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units (excluding mounts) on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the General, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Necromancy, no unit in the army needs to take this Leadership test while at least one of them remain.

#namecost("Battle Standards", "")

In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's General.

#namecost("Characters and Units", "")

Characters who are not Undead may join Undead units despite not being Unstable themselves. Mounted Characters ignore the Undead special rule of the mount. If an Undead unit would get destroyed as a result of Unstable, any remaining character(s) will need to take a Break test as normal the same phase, using the Leadership modifier that they lost the combat by.

#namecost("DEATH SHRIEK", "")

A Death Shriek is a special attack that can be used against a single unit in the Shooting phase, even if the model has marched, charged, or the target is engaged in close combat. This attack has a range of 8" and needs line of sight to its target. If the model is engaged in combat, its Death Shriek may target a unit in base contact.

To resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-physical Magical Attack and Wounds suffered from it are distributed as if from shooting.

#namecost("MASTER OF THE DEAD", "")

A model with this special rule can use the _Invocation of Nehek_ spell from the Lore of Necromancy to increase units of Skeleton Warriors and Skeleton Archers beyond their starting size.

#namecost("SPECTRAL STEEDS", "")

Mounted models with this special rule gain the Ethereal special rule for the purposes of movement only. They do not suffer the movement penalty for being barded. Whilst a unit with this special rule is joined by a character without the Spectral Steeds or Ethereal special rules, it loses this special rule.

#namecost("UNDEAD", "")

All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. However, they may make march moves if they are within the Army General's Inspiring Presence range or are joined by a character with the Lore of Necromancy.

#namecost("VAMPIRIC", "")

Models with the Vampiric special rule have the Fear and Immunity (Psychology) special rules. In addition, models suffer \-1 To Wound rolls against them, unless they are using Magical Attacks or Flaming Attacks. However, Vampiric models treat all rivers as Deadly Terrain unless they are mounted.

#namecost("THE RED THIRST", "")

Roll a D6 at the end of each Close Combat phase in which one or more models was slain by a Vampire with this special rule. On a 5+, the Vampire recovers a single Wound, up to their starting value (excluding additional Wounds from mounts). This does not work against Animated Constructs, Daemons, Forest Spirits or Vampires.
]

= THE LORE OF NECROMANCY

#columns(2)[
#namecost("THE CURSE OF UNDEATH", "")
#namecost("Lore Attribute", "")

When a spell from the Lore of Necromancy is successfully cast, all Undead units (excluding mounts) within 6" of the caster regain 1 Wound (Core Units regain D3 Wounds) following the rules for _Invocation of Nehek._

#namecost("INVOCATION OF NEHEK", "")
#namecost("Signature Spell Cast on 6+", "")

_Invocation of Nehek_ is a *summoning* spell with a range of 18" that targets Undead (excluding mounts). The target immediately regains a number of Wounds as follows: Core Units gain 2D6 Wounds; Special Units (except Cavalry) gain D6 Wounds. Characters, Special Units that are Cavalry and Rare Units regain D3 Wounds per successful casting. Models gained are distributed as a summoning spell. Any characters in a unit can only be healed if targeted separately from the rest of the unit, in which case only they are healed.

#namecost("HAND OF DUST", "")
#namecost("Level 1 Cast on 5+", "")

Remains in play. _Hand of Dust_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the caster gains an additional special attack in close combat that does not benefit from any other magic items or special rule. If this Attack Hits, the target suffers an automatic Wound with the Ignores Armour Saves and Multiple Wounds (D6) special rules.

#namecost("VANHEL'S DANSE MACABRE", "")
#namecost("Level 1 Cast on 5+", "")

_Vanhel's Danse Macabre_ is a *conveyance* spell with a range of 24" that targets Undead (including mounts). The target can immediately make a normal move as if it were the Remaining Moves sub-phase (including any Characters in the unit).

#namecost("HELLISH VIGOUR", "")
#namecost("Level 1 Cast on 7+", "")

_Hellish Vigour_ is an *augment* spell with a range of 18". All Undead models (including mounts) in the unit gain the Always Strikes First special rule and may re-roll failed To Hit rolls in Close Combat until the start of the caster's next Magic phase.

#namecost("FOUNTAINS OF BLOOD", "")
#namecost("Level 2 Cast on 7+", "")

_Fountains of Blood_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all failed To Wound rolls made against this unit may be re-rolled. In addition, Vampires gain a +1 to bonus to any The Red Thirst rolls for Wounds caused against this unit.

#namecost("DEATHLY CABAL", "")
#namecost("Level 2 Cast on 8+", "")

_Deathly Cabal_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target gains the Fear and Magical Ward (6+) special rules.

#namecost("GAZE OF NAGASH", "")
#namecost("Level 2 Cast on 9+", "")

_Gaze of Nagash_ is a *magic missile* with a range of 24" that causes 2D6 Strength 4 hits.

#namecost("RAISE DEAD", "")
#namecost("Level 3 Cast on 9+", "")

_Raise Dead_ is a *summoning* spell with a range of 18" that brings a unit of Zombies into play. Roll 2D6+3. This is how many models comprise the new unit. The caster can choose to summon 2D6+3 Skeleton Warriors with shields instead. If they do so, the casting value is increased to 12+.

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
#namecost("Level 4 Cast on 13+", "")

_Wind of Undeath_ is a *direct damage aura* spell with a range of 12". Each unit within range suffer 2D6 Strength 3 Hits which Ignores Armour Saves.
]

= VAMPIRIC POWERS

*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish. Each Vampire may only take powers from their own Bloodline (unless specified).*

#namecost("RED FURY", "30 points")

Blood Dragon or Strigoi only. For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.

#namecost("UNHOLY REGENERATION", "30 points")

Necrarch or Strigoi only. The model gains the Regeneration (4+) special rule.

#namecost("CURSE OF THE REVENANT", "20 points")

Necrarch or Strigoi only. The model has a 3+ invulnerable save when they have a single Wound remaining (if the model suffers multiple Wounds in a single turn, it is reduced to 1 Wound and may then attempt to take this invulnerable save).

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

Bound Spell (Level 3, cast on 9+). _Call Winds_ is a *hex aura* spell with a range of 24". Until the start of caster's next Magic phase, all enemy missile attacks fired from within or at a target within range suffer \-1 To Hit.

#namecost("EARTH BIND", "10 points")

The model and any unit they join gain the Magic Resistance (1) special rule.

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

#namecost("MASTERY OVER FLESH", "25 points")

When casting the _Invocation of Nehek, Vanhel's Danse Macabre_, _Hellish Vigour_ or _Raise Dead_ spells from the Lore of Necromancy, the model may re-roll all the initial casting dice (unless they have rolled a Miscast).

#namecost("UNHOLY CYNOSURE", "25 points")

Once per Magic phase, the model can re-roll one of the dice rolled to cast a spell. This can be used to negate a Miscast result or could cause an Ultimate Power result.

#namecost("FORBIDDEN LORE", "20 points")

The model has the Loremaster special rule.

#namecost("DARK ACOLYTE", "20 points")

The model adds +1 to the number of Wounds healed (Core Units regain +D3 Wounds) whenever it successfully casts _Invocation of Nehek_.

#namecost("NEHEKHARA'S NOBLE BLOOD", "20 points")

The model adds +6" to the range of all their spells (excluding auras).

#namecost("MASTER OF THE BLACK ARTS", "15 points")

A player using a model with the Master of the Black Arts power can re-roll the result when it is determining the strength of the Winds of Magic in each of your Magic phases.

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

The model has the Devastating Charge and Mighty Blow (1) special rules.

#namecost("BLADEMASTER", "10 points")

The model gains the Parry (6+) special rule, even while mounted.

#namecost("FURIOUS CHARGE", "10 points")

In any turn in which the model makes a successful charge, they have the Ignores Armour saves special rule.

#entry("STRIGOI")
#namecost("MASSIVE MONSTROSITY", "35 points")

Model on foot only. The model gains +2 Wounds and becomes Monstrous Infantry. It should be placed on a 40x40mm base.

#namecost("LOATHSOME STENCH", "20 points")

All enemy units in base contact with the model suffer \-1 to their Weapon Skill.

#namecost("IRON SINEWS", "15 points")

The model may re-roll failed To Wound roll.

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

At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. The selected model must take a Leadership test with a \-1 modifier. If the test is failed, the victim is controlled by the Vampire player in that Close Combat phase.

The model will direct its attacks against his own side. The model cannot be attacked by either side in that Close Combat phase but, after combat resolution has been worked out, it reverts immediately to the original player's control and can therefore use his Leadership for any Break tests and can be broken and pursued as normal.

If the model has no friendly models in base contact, it is unable to attack in that Close Combat phase and all attacks directed against the victim will hit automatically.

If the Vampire was in a challenge with a model that it takes control of, the challenge ends and both models may attack other targets as normal.

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

At the beginning of the Close Combat round, all units in base contact with the model must take a Leadership test with a \-3 modifier. If the test is failed, the Vampire can only be Hit on 6's this turn.

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

#namecost("SLITTER", "25 points")

Additional hand weapon. This adds one special attack after the wielder has made their normal attacks. Roll a D3; if the result is higher than the remaining number of Wounds of the target, the target is instantly slain with no saves allowed.

#namecost("KEENING BONE", "20 points")

Strigoi only. Throwing weapon. All shots with this weapon automatically Hit. Characters may take this item despite not normally being allowed to take throwing weapons.

#namecost("REAPER OF SORROWS", "15 points")

Cairn Wraith only. Great weapon. All attacks with this weapon automatically Wound with no saves allowed.

#namecost("SWORD OF KINGS", "15 points")

Wight Kings only. This item makes the model's Killing Blow special rule take effect on a 5+.

#namecost("THE BALEFIRE SPIKE", "15 points")

Heavy lance. This item gives the wielder the Devastating Charge and Flaming Attacks special rules.

#namecost("SHADOW'S EDGE", "10 points")

For every natural 6 rolled To Hit with this weapon, that Attack has the Ignores Armour Saves and Multiple Wounds (D3) special rules.

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF NIGHT", "50 points")

Von Carstein model on foot only. Heavy armour. This item causes any missile attacks targeted at the wearer or any unit they are with to suffer \-1 To Hit.

#namecost("THE FLAYED HAUBERK", "45 points")

Model on foot only. Heavy armour. This item gives the wearer a 2+ armour save that cannot be improved by any means.

#namecost("HELM OF COMMANDMENT", "25 points")

This item gives the wearer a 6+ armour save. If the wearer is not engaged in close combat at the start of the Close Combat phase, one friendly Undead unit (including mounts) within 12" may use the wearer's unmodified Weapon Skill instead of their own that round.

#namecost("THE SCABBING PLATE", "35 points")

Heavy armour. The wearer of this armour automatically restores 1 Wound lost during the battle at the end of each round of close combat in which it has inflicted one or more unsaved Wounds.

#namecost("THE ACCURSED ARMOUR", "30 points")

Heavy armour. This item gives the wearer +1 Toughness, but makes them suffer \-1 Weapon Skill and Initiative.

#namecost("THE ARMOUR OF BLOOD", "30 points")

Blood Dragon only. Heavy armour. This item allows the wielder to automatically regain Wounds through the Red Thirst.

#namecost("THE RED CASKET", "30 points")

Blood Dragon only. Heavy armour. The wearer of this armour gains the Frenzy special rule.

#namecost("WAILING HELM", "25 points")

This item gives the wearer a 6+ armour save and the Terror special rule.

#namecost("THE CADAVEROUS CUIRASS", "25 points")

Vampires only. Heavy armour. This item gives the wearer the Immunity (Killing Blow) special rule.

#namecost("ARMOUR OF BONE", "15 points")

Medium armour. When the wearer fails their first armour save (or if they are wounded by an attack which ignores armour saves), the Armour of Bone crumbles to dust and is destroyed, but the Wound is ignored. This armour may be taken by Necromancers despite them normally not being allowed to take armour.

#namecost("THE CURSED SHIELD", "")
#namecost("OF MOUSILLON", "10 points")

Shield. This item causes one enemy model in base contact of your choice to lose 1 Attack. In addition, the bearer gains the Hatred (Bretonnia) special rule, and all models in _Warhammer: Bretonnia_ have the Hatred special rule against the bearer.

#entry("TALISMANS")
#namecost("NIGHTSHROUD", "50 points")

Infantry or Cavalry only. Enemy models in base contact with the wearer lose all Strength bonuses conferred from normal and magical weapons, and are subject to the Always Strikes Last special rule.

#namecost("TALISMAN OF THE NADIR", "30 points")

All friendly units within 12" of the bearer of this item gain the Magic Resistance (1) special rule.

#namecost("THE GEM OF BLOOD", "25 points")

Vampires only. One use only. The Gem of Blood activates when the bearer suffers their first Wound in close combat (before saves). Roll a D6; on a roll of a 1 the wearer suffers the Wound as normal, and an additional Wound with no saves allowed. On a 2+ the Wound is saved, and is rebounded onto the model that caused it with no saves allowed.

#namecost("SPLINTERVANE BROACH", "25 points")

Strigoi only. All enemy Wizards within 18" of the bearer of this item suffer \-1 to casting penalty.

#namecost("WRISTBANDS OF BLACK GOLD", "25 points")

The Wristbands of Black Gold gives the wearer a Magical Ward (3+) against all missile attacks.

#namecost("CHIROPTERAN CLOAK", "15 points")

Von Carstein only. If a model attacking the wearer of this item rolls a natural 1 To Hit in close combat, they suffer a Strength 4 Hit.

#namecost("CLOAK OF THE WAXING MOON", "15 points")

Cairn Wraith only. The wearer of this item can only be Hit on To Hit rolls of natural 6's.

#entry("ARCANE ITEMS")
#columns(2)[
#namecost("THE DERMAL ROBE", "70 points")

Relic. The wearer gains a +1 casting and dispel bonus. In addition, they gain +1 to their channelling rolls.

#namecost("STAFF OF RAUKHAMON", "45 points")

Necrarch only. Staff. Bound Spell. This staff contains the _Hellish Vigour_ spell from the Lore of Necromancy. Roll a D6 each time the Staff is used. On a roll of 1, the Staff is temporarily exhausted and cannot cast this bound spell for the rest of the battle. In addition, all enemy units within 6" of the Staff\`s bearer suffer a \-1 penalty on their rolls To Hit in close combat.

#namecost("SCEPTRE DE NOIROT", "40 points")

Staff. The bearer of this item may re-roll one dice of their choice when determining the number of Zombies or Skeletons raised with the _Invocation of Nehek_ and _Raise Dead_ spells from the Lore of Necromancy.

#namecost("BOOK OF ARKHAN", "35 points")

Relic. Bound Spell. This item casts the _Vanhel's Danse Macabre_ spell from the Lore of Necromancy.

#namecost("CARRION WAND", "35 points")

Strigoi only. Staff. The wielder counts their Wizard level as being 1 higher than normal.

#namecost("THE CURSED BOOK", "35 points")

Relic. At the beginning of the bearer's Magic phase, the bearer may choose to sacrifice one power dice from the pool. If they do so, roll a D6 on the following chart. Assuming there is a viable target for the indicated spell, that spell is automatically cast at its minimum casting value, requiring no power dice. A dispel attempt can be made as normal.

#chart((("D6", "Spell Cast"), ("1", "Melkoth's Mystifying Miasma (Lore of
Shadow)"), ("2", "The Enfeebling Foe (Lore of Shadow)"), ("3", "The Withering (Lore of Shadow)"), ("4", "Portent of Doom (Lore of Heavens)"), ("5", "Doom and Darkness (Lore of Death)"), ("6", "Soulblight (Lore of Death)")))
#namecost("ROD OF FLAMING DEATH", "35 points")

Bound Spell. Staff. This item casts the _Fulminating Flame Cage_ spell from the Lore of Fire.

#namecost("STAFF OF DAMNATION", "35 points")

Staff. Bound Spell (Level 2, cast on 8+). If cast successfully, this item casts an *augment* spell. All Undead models (including mounts) in friendly units within 6" of the bearer gain +1 Attack until the start of the bearer's next Magic phase.

#namecost("BLACK PERIAPT", "30 points")

Relic. The Black Periapt allows the bearer to save up to two of his army's unused power dice or dispel dice at the end of any Magic phase, and then add them to his side's power or dispel dice pool at the start of the next Magic phase.

#namecost("BLASPHEMOUS TOME", "30 points")

Relic. The bearer of this item gains a +2 casting bonus when using the Lore of Necromancy. However, if they Miscast, they must roll on additional D6 on the Miscast table and discard the lowest result.

#namecost("WYCHLIGHT LANTERN", "30 points")

Charm. One use only. This item can be used during any of your Magic phases. Once used, it allows the bearer to cast one of their spells automatically without using any power dice, at its minimum casting value.

#namecost("AMULET OF SCREAMS", "20 points")

Lahmian only. Relic. Roll a D6 every time an enemy Wizard within 18" successfully casts a spell. On a 1, that Wizard suffer 1 Wound which Ignores Armour saves.

#namecost("CRIMSON GEM OF LAHMIA", "20 points")

Lahmian only. Once per magic phase, while casting spells, the bearer of the Crimson Gem of Lahmia can choose to take a Toughness test. If passed, they may re- roll a single power dice of their choice. If failed, they suffer a Wound with no saves allowed.

#namecost("MIDNIGHT TOME", "20 points")

Charm. One use only. This item can be used when the wearer successfully casts a spell with a casting value of 10 or less. When used, the opponent cannot attempt to dispel it.

#runin[MORBHEG]'#runin[S CLAW 20 points] Von Carstein only. Relic. The wearer of this item gains +2 to cast spells if they have not moved that turn or are not engaged in close combat.

#namecost("STAVE OF SUFFERING", "15 points")

Staff. The bearer of this item gains a +1 casting bonus for each spell that has successfully inflicted one or more unsaved Wounds the same Magic Phase. This bonus is cumulative.
]

#entry("ENCHANTED ITEMS")
#columns(2)[
#namecost("MIDNIGHT AMULET", "40 points")

One use only. This item can be used in any of your Magic phases. Pick one enemy unit within 12"; that unit suffers D6 Strength 4 Hits multiplied by the number of the current game turn.

#namecost("THE CASKET OF AGES", "35 points")

Bound Spell (Level 1, cast on 6+). The Casket of Ages contains a *direct damage* spell that targets one enemy model in base contact. The target model suffers one Wound which Ignores Armour Saves. If the Wound is not saved, the victim must pass a Toughness test or suffer an additional Wound with no saves allowed.

#namecost("TALON OF DEATH", "35 points")

All enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour saves at the start of each round of combat.

#namecost("DREADBOLT RING", "30 points")

For each unsaved Wound the bearer of this item inflicts in close combat, one enemy unit in base contact suffer D3 Strength 3 Attacks with the Flaming Attacks special rule after they have resolved their normal attacks.

#namecost("BREATH OF THE VOID MAW", "25 points")

Necrarch only. One use only. This item can be used at the start of any Magic phase. Once used, pick one enemy unit within 6" that is not engaged in close combat. Roll a D6; on a 2+ the target unit suffer a number of Strength 5 Hits equal to the roll.

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

Cairn Wraith only. For every unsaved Wound caused in close combat by the bearer, they and/or their unit regain 1 Wound, just like a summoning spell.

#namecost("BLOOD RIVER CHALICE", "15 points")

Vampire only. One use only. This item can be used at the start of the controlling player's turn. The model immediately recovers all lost Wounds (ignoring any additional Wounds from mounts) up to their starting value.

#namecost("BRAZIER OF NAGASHIZZAR", "15 points")

Cairn Wraith only. The bearer and any unit they join may re-roll failed charge and pursuit distances.

#namecost("MIRROR OF ECHOING FAILURES", "15 points")

Any Wizard within 18" of the bearer that fails a spellcasting attempt (not including dispels) suffers one Wound which Ignores Armour Saves.

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

Von Carstein or Wight only. May only be taken if your army includes a von Carstein Vampire Character. All Undead models (excluding mounts) in the unit carrying this standard gain the Regeneration (4+) special rule.

#namecost("THE FLAG OF BLOOD KEEP", "45 points")

Blood Knights only. May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains a Magical Ward (4+) against missile attacks.

#namecost("BANNER OF THE BARROWS", "40 points")

All Wights in the same unit as this standard receive +1 To Hit in close combat. This does not apply to mounts.

#namecost("HELL BANNER", "40 points")

All enemy units with Line of Sight to this standard suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).

#namecost("CURSED PENNANT", "")
#namecost("OF MOUSILLON", "35 points")

Blood Dragon, Skeletons, Wights or Blood Knights only. May only be taken if your army includes a Blood Dragon Vampire Character. Any enemy unit that is in base contact with the unit carrying this standard must re-roll 6's when rolling To Hit, To Wound and when taking armour saves.

#namecost("BANNER OF DOOM", "25 points")

All Undead models (excluding mounts) in the unit carrying this standard gains the Regeneration (5+) special rule against missile attacks.

#namecost("BANNER OF THE DEAD LEGION", "25 points")

All Undead models (including mounts) in the unit carrying this standard counts as having twice their actual Unit Strength in close combat.

#namecost("BANNER OF HELLFIRE", "25 points")

Bound Spell. This banner contains the _Flaming Sword of Rhuin_ spell from the Lore of Fire. It can only be cast on the unit carrying this standard.

#namecost("THE FLAYED PENNANT", "25 points")

Strigoi or Ghoul only. The unit carrying this standard gains the Frenzy special rule.

#namecost("INFERNAL STANDARD", "25 points")

Wight King with Battle Standard only. The model carrying this standard gains the Hold Your Ground (6) special rule.

#namecost("ROYAL STANDARD OF STRIGOS", "25 points")

May only be taken if your army includes a Strigoi Vampire Character. Strigoi or Ghoul only. The unit carrying this standard gains the Hatred special rule.

#namecost("THE SCREAMING BANNER", "25 points")

Enemy units on base contact with the unit carrying this standard must pass a Leadership test at the start of each close combat phase. If failed, they require 6’s To Hit for the duration of the phase.

#namecost("ICON OF VENGEANCE", "20 points")

Any Undead model (including mounts) in the unit carrying this standard that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.

#namecost("STANDARD OF HELLISH VIGOUR", "15 points")

Undead only. May only be taken if your army includes a Necrarch Vampire Character. The unit carrying this standard may March despite being Animated Constructs.

#namecost("BANNER OF THE ENDLESS", "")
#namecost("NIGHTMARE", "10 points")

The unit carrying this standard counts as having one more rank than normal for the purpose of combat resolution.

#namecost("STANDARD OF EVERLASTING DEATH", "10 points")

The unit carrying this standard suffers one fewer Wound than they normally would due to the Unstable special rule.

= CHARACTERS

#entry("VON CARSTEINS", first: true)
#profile(
  (name: "Count", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 190),
  (name: "Scion", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A von Carstein who is a Wizard uses one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard (Count only) +105 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Abyssal Terror (Count only) +125 points
  - Zombie Dragon (Count only) +245 points
- One Scion may carry the Battle Standard +25 points
- A Scion may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Count may take Vampiric Powers and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("NECRARCHS")
#profile(
  (name: "Master", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 245),
  (name: "Acolyte", m: 6, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Necrarch)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Acolyte is a Level 1 Wizard. A Master is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Death
- Heavens
- Metal
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Abyssal Terror (Master only) +125 points
  - Zombie Dragon (Master only) +245 points
- One Acolyte may carry the Battle Standard +25 points
- An Acolyte may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Master may take Vampiric Powers and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("LAHMIANS")
#profile(
  (name: "Lady", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 3, i: 8, a: 4, ld: 10, points: 175),
  (name: "Courtesan", m: 6, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "A Lahmian who is a Wizard uses one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "Dodge (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard (Lady only) +105 points
- May take an additional hand weapon +5 points
- May take throwing weapons +6 points
- May take a shortbow +4 points
- May take light armour +3 points
- May have Poisoned Attacks +10 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Coven Throne (Lady only, replacing one of the crew) +200 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
- One Courtesan may carry the Battle Standard +25 points
- A Courtesan may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Lady may take Vampiric Powers and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("BLOOD DRAGONS")
#profile(
  (name: "Lord", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 215),
  (name: "Kastellan", m: 6, ws: 7, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 100),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Blood Dragon)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC", "A Blood Dragon who is a Wizard uses one of the following Lores of Magic:")

- Death
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Martial Honour:* The Vampire must always issue and accept challenges when possible.

#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard (Lord only) +70 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Great weapon +10 points
- May take heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- One Kastellan may carry the Battle Standard +25 points
- A Kastellan may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Lord may take Vampiric Powers and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("STRIGOI")
#profile(
  (name: "Ghoul King", m: 6, ws: 6, bs: 3, s: 6, t: 6, w: 3, i: 7, a: 5, ld: 9, points: 220),
  (name: "Ghoul Prince", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 120),
)
#field("TROOP TYPE", "Infantry (Character, Vampire, Strigoi)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Strigoi who is a Wizard uses one of the following Lores of Magic:")

- Beasts
- Necromancy

#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard (Ghoul King only) +70 points
- May be mounted on a Terrorgheist (Ghoul King only) +225 points
- One Ghoul Prince may carry the Battle Standard +25 points
- A Ghoul Prince may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Ghoul King may take Vampiric Powers and/or Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("NECROMANCERS")
#profile(
  (name: "Master Necromancer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
  (name: "Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Necromancer is a Level 1 Wizard. A Master Necromancer is a Level 3 Wizard. They use one of the following Lores of Magic:")

- Death
- Necromancy

#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
  - Abyssal Terror (Master Necromancer only) +125 points
- A Necromancer may take Magic Items up to a total of 50 points
- A Master Necromancer may take Magic Items up to a total of 100 points

#entry("LICHE LORD")
#profile(
  (name: "Liche Lord", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 4, i: 2, a: 2, ld: 9, points: 290),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Liche)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "A Liche Lord is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Necromancy

#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Master of the Dead, Terror, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on a Mortis Engine replacing the (Corpsemaster) +200 points
- May take Magic Items up to a total of 100 points

#entry("WIGHT LORDS")
#profile(
  (name: "Wight King", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 9, points: 140),
  (name: "Wight Lord", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 100),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Wight)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Spectral Steeds, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Great weapon +10 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Skeletal Steed +12 points
  - Barrow Chariot +50 points
- One Wight Lord may carry the Battle Standard +25 points
- A Wight Lord may take Magic Items up to a total of 50 points
- A Wight King may take Magic Items up to a total of 100 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("CAIRN WRAITH")
#profile(
  (name: "Cairn Wraith", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 3, ld: 7, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Spirit).")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Ethereal, Ignores Armour Saves, Terror, Undead")

- *Chill Grasp:* A Cairn Wraith can substitute all of its Attacks in close combat for a single Chill Grasp Attack. The Cairn Wraith makes a single Attack; if this Attack hits, then it will automatically Wound with the Ignores Armour Saves and Multiple Wounds (D3) special rules.
- *Soulstriders:* Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +4 points
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

- *Til Death Do Us Part:* Pick one Lahmian Vampire Character in your army to be this model's mistress. If both models are in base contact, the Lahmian gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against the Swain instead. If the Lahmian is slain, the Swain will be subject to the Hatred and Frenzy special rules for the remainder of the game.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a pistol +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
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

- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +10 points
  - Great weapon +15 points
- One Crypt Ghast may carry the Battle Standard +25 points
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
#field("MAGIC", "A Strigany Mystic is a Level 1 Wizard who uses one of the following Lores of Magic:")

- Heavens
- Necromancy

#field("SPECIAL RULES", "Expendable")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
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
#field("TROOP TYPE", "Monstrous Creature (Undead, Chimeric)")
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
#field("UNIT SIZE", "20-60")
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
  (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 4),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead, Skeleton)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May replace shortbows with one of the following:
  - Longbows +1 point/model
  - Crossbows +2 points/model
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
  (name: "Skeleton Horseman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 9),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Undead, Skeleton)")
#field("MOUNT", "Skeletal Steed (Undead, Skeleton)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Fast Cavalry, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Replace shields with bows free
  - Light lances +1 point/model
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("NOTES", "")

- You may not have more units of Skeleton Horsemen than Skeleton Warriors.

#entry("ZOMBIES")

#profile(
  (name: "Zombie", m: 4, ws: 1, bs: 0, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: 2.5),
)

#field("UNIT SIZE", "20-60")
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
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Crypt Ghoul to a Leader +5 points

#entry("SYLVANIAN LEVY")
#profile(
  (name: "Peasant", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Longbows +4 points/model
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
#field("UNIT SIZE", "10-30")
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
  (name: "Dire Wolf", m: 9, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Undead, Canine)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May upgrade one Dire Wolf to a Leader +5 points

#compact-entry("FELL BATS")[
#profile(
  (name: "Fell Bat", m: 1, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 5, points: 12),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "War Beast (Chiropter)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (9)")
]

#entry("BAT SWARMS")
#profile(
  (name: "Bat Swarm", m: 1, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 4, a: 6, ld: 3, points: 30),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Swarm (Chiropter)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (6)")

- *Cloud of Horror:* An enemy unit that is attacked in the flank or rear by one or more Bat Swarms is automatically Disrupted.

#field("NOTES", "")

- Bat Swarms have a Line of Sight value of 1.

#entry("SPIRIT HOSTS")
#profile(
  (name: "Spirit Host", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 4, i: 1, a: 4, ld: 4, points: 40),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Swarm (Undead, Spirit)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Ethereal, Undead")
#field("NOTES", "")

- Spirit Hosts have a Line of Sight value of 1.

= SPECIAL UNITS

#entry("GRAVE GUARD", first: true)
#profile(
  (name: "Grave Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead, Wight)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take heavy armour +1.5 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May upgrade one Grave Guard to a Leader +5 points
- May upgrade one Grave Guard to a Musician +5 points
- May upgrade one Grave Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("BLACK KNIGHTS")
#profile(
  (name: "Black Knight", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 22),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
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
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")

- *Royal Bodyguard:* If a unit of Crypt Guard is joined by a Strigoi Vampire Character, the unit becomes Stubborn.

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
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Ghoul)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Poisoned Attacks, Regeneration (5+)")
#field("OPTIONS", "")

- May upgrade one Crypt Horror to a Leader +5 points

#entry("VARGHEISTS")
#profile(
  (name: "Vargheist", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 50),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Vampire)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (8), Frenzy, The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May upgrade one Vargheist to a Leader +5 points

#compact-entry("FLESH GOLEMS")[
#profile(
  (name: "Flesh Golem", m: "*", ws: 2, bs: 0, s: 4, t: 4, w: 3, i: 1, a: "*", ld: 2, points: 20),
)
#field("UNIT SIZE", "3-9")
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
- May take shields +8 points
- May take barding +4 points
- May take scythes +5 points

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
#field("UNIT SIZE", "5-15")
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
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Undead, Spirit)")
#field("MOUNT", "Skeletal Steed (Undead, Skeleton)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Great weapon")
#field("SPECIAL RULES", "Ethereal, Fast Cavalry, Flaming Attacks, Ignores Armour Saves, Terror, Undead")

- *Soulstriders:* Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.

#field("OPTIONS", "")

- May upgrade one Hexwraith to a Leader +5 points

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
#field("SPECIAL RULES", "Ice Attacks, Killing Blow, Magical Ward (4+), Undead")

- *Carnophage:* For every unsaved Wound the Mourngul inflicts in close combat, it regains one Wound it has previously lost during the battle.

= RARE UNITS

#entry("BLOOD KNIGHTS", first: true)
#profile(
  (name: "Blood Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 36),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
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
  (name: "Handmaiden", m: 6, ws: 5, bs: 4, s: 4, t: 4, w: 1, i: 6, a: 2, ld: 8, points: 18),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("SPECIAL RULES", "Dodge (6+), Scouts, Skirmishers, Vampiric")
#field("OPTIONS", "")

- May take throwing weapons +3 points/model
- May have Poisoned Attacks +2 points/model
- May upgrade one Handmaiden to a Leader +5 points

#entry("MORBHEG KNIGHTS")
#profile(
  (name: "Morbheg Knight", m: 6, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 35),
  (name: "Nightshrieker", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
)
#field("UNIT SIZE", "3-6")
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
#field("TROOP TYPE", "Monster (Undead, Draconid)")
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
#field("CREW", "1 Wraith (Undead, Spirit)")
#field("DRAWN BY", "2 Nightmares (Undead, Equine)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Great weapon (Wraith only)")
#field("SPECIAL RULES", "Magical Attacks, Magical Ward (4+), Terror, Undead")

- *Evocation of Death:* When rolling for the Winds of Magic each turn, each natural 6 rolled increases the Black Coach's abilities for the rest of the game, as detailed on the chart below. All of the increases listed are cumulative.

#chart((("Dice", "Effect:"), ("1", "The Black Coach adds +1 to the number of Impact Hits it inflicts when it charges."), ("2", "The Wraith, Spectres and Nightmares gain +1 Strength."), ("3", "The Black Coach's Impact Hits, Nightmares', Wraith's and Spectres Attacks gain the Killing Blow
and Flaming Attacks special rules."), ("4", "The Black Coach gains the Magic Resistance (2) and Strider special rules."), ("5", "The Black Coach gains the Fly (8) special rule."), ("6", "The Black Coach gains the Ethereal special rule.")))
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
#field("SPECIAL RULES", "Fly (7), Magical Attacks (Spirit Horde only), Magical Ward (4+), Random Attacks (2D6)")

(Spirit Horde only)*, Spectral Steeds, Terror, Vampiric*

- *Battle of Wills:* Immediately before the first model in an enemy unit rolls To Hit against the Coven Throne (either in close combat or shooting), the opponent must roll a D6 and add it to their unit's Leadership. Next, roll a D6 and add it to the Coven Throne's Leadership. To find the result of the Battle of Wills, subtract the enemy's total from the Coven Throne's total, and apply the result to the table below – the results last until the end of the turn.

#chart((("Result:", "Effect:"), ("0 or less", "Back off, Devils!: No effect."), ("1-2", "Must... Resist...: The enemy is at -1 Weapon Skill and -l Ballistic Skill. Artillery weapons that
do not roll to Hit may be forced to re-roll the scatter dice."), ("3-5", "Bewitched: The enemy must re-roll successful To Hit rolls. Artillery weapons that do not roll to
Hit must roll a 4+ to be able to fire."), ("6+", "Completely Enthralled: Every model in the enemy unit makes a single close combat attack,
resolved against its own unit. Roll To Hit, To Wound and take saves as normal. The caster may
choose which of the unit's weapons is used for these attacks. Parry or Dodge save does not
apply, and neither do any special rules that only applies in the first round of close combat.
Affected units may not otherwise shoot or attack this turn.")))

- *Insubstantial Form:* A model with this special rule has a.
- *Scrying Pool:* Enchanted Item. Bound Spell (Level 1, cast on 5+). This is an *augment* spell that targets the Coven Throne. All crew (including any characters mounted on it) may re-roll all failed To Hit and To Wound rolls for the remainder of the turn.

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

#field("NOTES", "")

- A Mortis Engine has a Line of Sight value of 5.

= SPECIAL CHARACTERS

#entry("VLAD VON CARSTEIN", first: true)
#namecost("First Count of Sylvania", "")
#profile(
  (name: "Vlad von Carstein", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 450),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC", "Vlad von Carstein is a Level 3 Wizard who uses the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Blood Drinker:* Magic Weapon. Close combat attacks made with Blood Drinker are resolved at +1 Strength. In addition, whilst Vlad wields Blood Drinker, he restores lost Wounds on a score of 3+ rather than 5+ for the purposes of the Red Thirst special rule.
- *The Carstein Ring:* Talisman. The Carstein Ring grants Vlad a Magical Ward (4+). Furthermore, the first time Vlad is removed from play, roll a D6 at the end of the phase. On a roll of 2+, he is immediately returned to 'life' with a single Wound. Vlad must then be placed in the front rank of a friendly unit anywhere within 12" of the point where he fell (even one in close combat). If there is no such unit for Vlad to join, he is removed as a casualty.

#field("VAMPIRIC POWERS", "Aura of Dark Majesty, Supernatural Horror, Transfix")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Beloved in Death:* If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.

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

#entry("KONRAD VON CARSTEIN")
#namecost("The Mad Blood Count", "")
#profile(
  (name: "Konrad von Carstein", m: 6, ws: 7, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 215),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Sword of Waldenhof:* Magic Weapon. Two hand weapons. The wielder gains the Multiple Wounds (2) special rule.
- *Ring of the Night:* Talisman. The bearer gains a Magical Ward (5+)*.* In addition, all missile attacks targeted at the bearer of the Ring of the Night or the unit they are with suffer \-1 To Hit.

#field("VAMPIRIC POWERS", "Red Fury")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *One Bat Short of a Belfry:* At the start of each of Konrad's turns, roll a D6. On a roll of a 1\-3, Konrad is subject to the rules for Stupidity until the start of his next turn. On a roll of a 4\-6, Konrad is subject to Frenzy until the start of his next turn

#entry("MANNFRED VON CARSTEIN")
#namecost("Last of the Von Carsteins", "")
#profile(
  (name: "Mannfred von Carstein", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 565),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, von Carstein)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC", "Mannfred von Carstein is a Level 4 Wizard who uses both of the following Lores of Magic:")

- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Timor Noctis, the Sword of Unholy Power:* Magic Weapon. For each unsaved Wound caused by the sword, the wielder gains an extra dice at the start of the ensuing Magic phase (this will be a power dice in his own Magic phase, and a dispel dice in the enemy's Magic phase).
- *Armour of Templehof:* Magic Armour. Heavy armour. This item gives the wearer +2 Wounds (in addition to any Wounds he would get from being mounted on a Monster).
- *Cloak of Darkness:* Talisman. This item gives the wearer the Magic Resistance (3) special rule.
- *Ebony Staff:* Arcane Item. Staff. This item allows the bearer to cast _Invocation of Nehek_ from the Lore of Necromancy without using any Power dice in each of his Magic phases. The spell is cast with a Power Level equal to its basic casting value and can be dispelled normally.

#field("VAMPIRIC POWERS", "Dark Acolyte, Master of the Black Arts, Summon Creatures of the Night")
#field("SPECIAL RULES", "Loremaster (Lore of Death, Necromancy), The Red Thirst, Vampiric")

- *Drakenhof Guard:* If Mannfred von Carstein is included in your army, you may upgrade one unit of Grave Guard to the Drakenhof Guard for +1 point per model. This unit ignores casualties caused by being Unstable.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points

#entry("ZACHARIAS THE EVERLIVING")
#profile(
  (name: "Zacharias the Everliving", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 720),
  (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Vampire, Necrarch)")
#field("MOUNT", "Zombie Dragon (Undead, Dragon)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon.")
#field("MAGIC", "Zacharias is a Level 4 Wizard who uses one of the following Lores of Magic:")

- Beasts
- Fire
- Death
- Heavens
- Light
- Metal
- Necromancy
- Shadow

#field("MAGIC ITEMS", "")

- *Circlet of Rathek:* Talisman. The circlet gives Zacharias a Magical Ward (4+).
- *Scrolls of Semhtep:* Arcane Item. Charm. The Scrolls of Semhtep follow all the rules for Dispel Scrolls, except that you may attempt to use one in each of the opposing player's Magic phases. After the first time you have used one, roll a D6; on a 2+ you can use a scroll the next turn as well. The second time you use one, you need to roll a 3+, the third time a 4+ and so on. A roll of 6 always succeeds.
- *Book of Nagash:* Arcane Item. Relic. When casting the spell _Invocation of Nehek_ from the Lore of Necromancy, Zacharias restores 3D6 Wounds instead of 2D6 for Core Units and 2D6 Wounds for Special Units (except Cavalry) instead of D6. Characters, Special Units that are Cavalry and Rare Units regain D6 Wounds per successful casting.
- *Staff of Kaphamon:* Enchanted Item. Bound Spell. This staff contains the _Gaze of Nagash_ spell from the Lore of Necromancy.

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
#field("MAGIC", "Melkhior is a Level 4 Wizard who uses the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Painbringer:* Magic Weapon. If the wielder of this item rolls a 6 when rolling To Wound, that attack has the Multiple Wounds (D3) special rule.
- *Black Cloak of Lahmia:* Talisman. This item makes the wearer unable to be targeted by non-magical shooting attacks.
- *Grimoire Necronium:* Arcane Item. Relic. This item allows the bearer to cast _Invocation of Nehek_ at its basic value without using any Power dice. Each time you use the book roll a D6: on a roll of 1 it runs out of power and cannot be used for the remainder of the battle.

#field("VAMPIRIC POWERS", "Dark Acolyte, Forbidden Lore, Nehekhara's Noble Blood")
#field("SPECIAL RULES", "Fly (8), Frenzy, Stupidity, The Red Thirst, Vampiric")

#entry("NEFERATA")
#namecost("The Queen of Mysteries and Shadows", "")
#profile(
  (name: "Neferata", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 9, a: 5, ld: 10, points: 510),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian).")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Neferata is a Level 3 Wizard who uses one of the following Lores of Magic:")

- Death
- Necromancy
- Shadows

In addition, she knows the following spell:

- *Shadowblood:* Level 3, cast on 10+. _Shadowblood_ is a *magic missile* with a range of 24". When cast, Neferata must declare how many Wounds she is using to boost the effects of the spell. The spell causes D6 Strength 5 hits with the Flaming Attacks special rule plus an extra D6 hits for each Wound Neferata expends. In addition, a unit suffering one or more wounds from this spell must immediately take a Panic test.

#field("MAGIC ITEMS", "")

- *Dagger of Jet:* Magic Weapon. The wielder gains +1 Strength and the Poisoned Attacks special rule.
- *Ruby of Lahmia:* Talisman. At the end of each turn of the game that the bearer is still alive, the Ruby of Lahmia automatically lets them regain one Wound that they has lost during the battle.
- *The Staff of Pain:* Arcane Item. Staff. When the bearer successfully casts a *magic missile*, *direct damage* or *hex* spell, each target suffer D3 additional Strength 5 hits after the spell effect has been resolved.
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

#entry("SEKHAR")
#namecost("The Fang of Lahmia", "")
#profile(
  (name: "Sekhar", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 190),
  (name: "Ouboroth", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian)")
#field("BASE SIZE", "40x60 or 50x75")
#field("EQUIPMENT", "Polearm, medium armour")
#field("MAGIC", "Sekhar is a Level 2 Wizard who uses one of the following Lores of Magic:")

- Death
- Necromancy
- Shadows

#field("VAMPIRIC POWERS", "Seduction, Lightning Reflexes")
#field("SPECIAL RULES", "Dodge (6+), Poisoned Attacks (Ouboroth only), The Red Thirst, Vampiric")

- *The Time-Swallower’s Maw:* This ability can be used once per game, at the start of any close combat phase. All enemy models in base contact with Sekhar must pass an Initiative test or suffer 1 Wound for every point they failed the Initiative test by.

#field("NOTES", "")

- Sekhar has a Unit Strength of 2.

#entry("WALACH HARKON")
#namecost("Grand Master of the Blood Knights", "")
#profile(
  (name: "Walach Harkon", m: 6, ws: 9, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 490),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Vampire, Blood Dragon)")
#field("MOUNT", "Nightmare (Undead, Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Barding")
#field("MAGIC", "Walach Harkon is a Level 2 Wizard who uses the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Crimson Blade:* Magic Weapon. The Crimson Blade automatically Wounds on a 2+. In addition, to see what additional effect the attack has, compare the result of each To Wound dice rolled with the table below:

#chart((("D6", "Result"), ("2-3", "Arm wound: The model (or rider if mounted) loses 1 Attack for the remainder of the game."), ("3-5", "Chest wound: The attack is resolved with the Multiple Wounds (D3) special rule."), ("6", "Beheaded: The attack is resolved as a Heroic Killing Blow.")))

- *Walach's Bloody Hauberk:* Magic Armour. Heavy armour. This item gives the wielder a Magical Ward (5+).
- *Blood Chalice:* Enchanted Item. At the beginning of each Vampire Counts turn, the bearer can drink from the Blood Chalice allowing them to do one of the following:
  - Heal 1 Wound suffered earlier in the battle.
  - Gain +D3 Attack until the start of your next turn.
  - Re-roll 1's To Hit and To Wound and gain the Flaming Attacks special rule until the start of your next turn.
- *Blood Dragon Standard:* Magic Standard. This is the army's Battle Standard, though Walach may still be the Army General. All Blood Dragon Vampires within 12" gain the Hatred special rule.

#field("VAMPIRIC POWERS", "Dread Knight, Doom Rider, Warrior Pride")
#field("SPECIAL RULES", "Hatred (The Empire), Martial Honour (see Blood Dragons), The Red Thirst, Vampiric")

- *Grand Master of the Blood Knights:* If Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units.

#entry("PRINCE VHORDRAI")
#namecost("Lord of Crimson Keep", "")
#profile(
  (name: "Prince Vhordrai", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 615),
  (name: "Shordemaire (Zombie Dragon)", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Vampire, Blood Dragon)")
#field("MOUNT", "Zombie Dragon (Undead, Draconid)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Heavy armour, shield")
#field("MAGIC", "Prince Vhordrai is a Level 1 Wizard who uses the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Bloodlance:* Magic Items. Heavy lance. In any turn in which Prince Vhordrai charges, he gains the Multiple Wounds (D3) special rule.

#field("VAMPIRIC POWERS", "Heart Piercing, Honour or Death, Red Fury")
#field("SPECIAL RULES", "Fly (7), Martial Honour (see Blood Dragons), Natural Armour (5+), The Red Thirst, Swarm")

*of Flies* (see Zombie Dragon)*, Vampiric*

- *Breath of Shyish:* Shordemaire has a Strength 3 Breath Weapon with the Ignores Armour Saves special rule.
- *Fist of Abhorash:* All units of Blood Knights within 12" of Prince Vhordrai may re-roll failed charge distance rolls.
- *Swarm of Flies:* Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.

#entry("USHORAN")
#namecost("The Carrion King", "")
#profile(
  (name: "Ushoran", m: 6, ws: 7, bs: 3, s: 7, t: 7, w: 4, i: 7, a: 5, ld: 10, points: 590),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, Vampire, Strigoi)")
#field("BASE SIZE", "100x100")
#field("MAGIC", "Ushoran is a Level 2 Wizard who uses one of the following Lores of Magic:")

- Beasts
- Death
- Necromancy

#field("MAGIC ITEMS", "")

- *Sceptre of the Carrion King:* Magic weapon. This item gives the wielder the Multiple Wounds (D6) special rule.
- *The King's Chalice:* Talisman. This item gives the bearer a Magical Ward (5+). In addition, at the start of each of your turns, it can restore one Wound lost earlier during the game.
- *Shroudcage Fragment:* Enchanted Item. All enemy units in base contact with Ushoran are subject to the Always Strikes Last special rule.

#field("VAMPIRIC POWERS", "Monstrous Mass, Summon Ghouls")
#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")

- *The Carrion King:* Ushoran must be the Army General. In addition, all friendly Ghouls within 12" of Ushoran are subject to the Frenzy special rule.

#entry("GORMAYNE")
#namecost("Grand Justice", "")
#profile(
  (name: "Gormayne", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 170),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Strigoi)")
#field("BASE SIZE", "20x20 or 25x25")
#field("VAMPIRIC POWERS", "Unholy Regeneration")
#field("SPECIAL RULES", "Hatred, Natural Armour (6+), The Red Thirst, Vampiric")

- *Pronounce Judgement:* At the start of each of your turns, choose one enemy unit within Line of Sight. Then roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1-2", "Petty Transgression: Until the start of your next turn, all friendly Ghouls may re-roll 1's on their
charge and pursuit distance against that unit."), ("3-4", "Dishonourable Conduct in Battle: Until the start of your next turn, all friendly Ghouls may re-roll
failed To Wound rolls of 1 against that unit."), ("5", "Grievous Insult to the Court: Until the start of your next turn, all friendly Ghouls may re-roll failed
To Hit rolls of 1 against that unit."), ("6", "Regicide: Until the start of your next turn, all friendly Ghouls gain the Killing Blow special rule
against that unit.")))

#entry("HEINRICH KEMMLER")
#namecost("The Lichemaster", "")
#profile(
  (name: "Heinrich Kemmler", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 325),
)
#field("TROOP TYPE", "Infantry (Special Character, Human)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Heinrich Kemmler is a Level 4 Wizard who uses the Lore of Necromancy.")
#field("MAGIC ITEMS", "")

- *Chaos Tomb Blade:* Magic Weapon. The Chaos Tomb Blade confers +1 Strength and +2 Attacks. Furthermore, if the wielder is in a unit of Skeleton Warriors or Grave Guard, for each model he slays in close combat, an extra model is added to his unit following the rules for Resurrecting Fallen Warriors. Newly created models have the same equipment as the rest of the unit.
- *Skull Staff:* Arcane Item. Staff. At the beginning of the friendly Magic phase, your opponent must declare all of his magic items that are within 12" of the bearer, and the models/units that are carrying them. In addition, the bearer receives a +1 to their dice rolls when they attempt to dispel.
- *Cloak of Mists and Shadows:* Enchanted Item. At the beginning of each of your turns, choose either the Fly (10) or Ethereal special rule. The wearer has that rule until the beginning of his next turn.

#field("SPECIAL RULES", "Loremaster (Lore of Necromancy), Master of the Dead")

#entry("HELMAN GHORST")
#profile(
  (name: "Helman Ghorst", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 165),
)
#field("TROOP TYPE", "Infantry (Special Character, Human).")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Helman Ghorst is a Level 2 Wizard who uses the Lore of Necromancy.")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *The Liber Noctis:* Arcane Item. Relic. This tome gives Helman Ghorst +1 Power dice in each of their Magic phases. Only he may use this dice.

#field("SPECIAL RULES", "Loremaster (Lore of Necromancy), Master of the Dead")

- *Awaken from the Grave:* When Helman Ghorst successfully casts the _Invocation of Nehek_ or _Raise Dead_ spells, he can add +D3 to the total number of Skeletons or Zombies created.
- *The Brothers Ghorst:* If Helman Ghorst is mounted on a Corpse Cart, all attacks from the Restless Dead pulling it are resolved at Strength 4.
- *The Konigstein Stalkers:* If Helman Ghorst is included in your army, you may upgrade one unit of Skeleton Warriors to the Konigstein Stalkers for +1 point per model. This unit has the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May be mounted on a Corpse Cart (replacing the Corpsemaster) +100 points

#entry("KRELL")
#namecost("Lord of Undeath", "")
#profile(
  (name: "Krell", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 9, points: 235),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Wight)")
#field("BASE SIZE", "20x20, 25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *The Black Axe of Krell:* Magic Weapon. Great weapon. This item confers the Multiple Wounds (D3) special rule. Furthermore, any model taking an unsaved Wound from the Black Axe must roll a D6 at the start of each of its subsequent turns. If the result is higher than the number of Wounds it has remaining, that model suffers an additional Wound which Ignores Armour saves.
- *Armour of the Barrows:* Magic Armour. Heavy armour. If an enemy with a magic weapon Wounds the wearer in close combat and the wearer passes their armour save, that magic weapon's abilities are nullified; it is treated as a normal, non-magical weapon of the same type for the remainder of the game.
- *Crown of the Damned:* Talisman. This item grants the wearer a Magical Ward (4+) and the Stupidity special rule.

#field("SPECIAL RULES", "Killing Blow, Terror, Undead")

- *Champion of the Dead:* Krell must always issue and accepts challenges whenever possible. If Krell is fighting a challenge whilst in the same unit as Heinrich Kemmler, he has the Heroic Killing Blow special rule.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")

= PROPOSALS

What follows is not rules. Nothing here has been agreed, nothing here is played, and the rules text of this book is untouched by all of it. Each proposal sets out what it would change, why it is worth changing, and what it would look like at the table — enough to be argued over, and no more. Only once one is settled is it written into the book, and it will appear under Our Changes when it is.

#namecost("An Army of Infamy: the Ordo Draconis", "under discussion")

An *Army of Infamy* is a second way to build a force from a book that already exists. What changes is which category a unit is chosen from, what the list refuses you, and one or two rules laid over the whole army. This one goes a step further in a single place: the knights it puts in Core are a lesser draft of the printed entry, sold at the printed entry's price, and the printed profile is bought back as an upgrade that leaves Core behind.

The *Ordo Draconis* is the army this book is named after and cannot field: a vampire aristocracy that fights in its own person. Its knights ride and its household walks, its lord is a feudal protector rather than a butcher, and the dead are still raised — as fodder, and no longer as the backbone. It gives up twenty-one of this book's thirty-three units to do it.

#field("The order", "")

The Ordo Draconis is the household of a single vampire lord, and it does not stay anywhere. It has no lands that appear on a map and no seat that can be visited twice. What it has is a keep that arrives, a household living inside it, a dozen scattered agreements it honours, and a habit of turning up in Bretonnia at moments when Bretonnia would rather it did not. Every account of it that has been written down was written by vampires, and every one of them calls its lord Emmerich.

#runin[The pass]

He was born Aymeric of Montfort, in a duchy whose reason for existing is a pass, and never took the Questing Vow. He looked at the Grail path, which sends a knight out alone for years on the chance of a vision, and took service instead with the Ordo Draconis, a Sigmarite order holding the pass at Blood Keep. His countrymen thought this heresy at best. His view, then and since, was that the Ordo was holding a pass and the Questing Knights were holding nothing.

Twenty years of holding it taught him the arithmetic he has never revised. A pass is held by mortal knights until the mortal knights run short, and the shortfall is always paid for below, in villages, by people nobody asked. Bretonnian armies win their battles with peasants standing in front of the knights, and Bretonnian chivalry is arranged so that no knight need feel the loss. A lord who accepts that is not protecting his people. He is spending them.

So he went and found the Blood Dragons on purpose. He wanted a garrison that would not age, and Walach Harkon gave him the blood, which makes his the coldest motive on record for seeking vampirism: he did it as a logistics decision. Then the Keep was going to fall, and he came back and offered the blood to his brothers while there was still time to choose. The ones who took it are his household still. The rest are Wights and march behind them.

The pass held.

He has never claimed this was a good thing to have done. He says only that the alternative was an open pass, and an open pass is paid for in villages.

What came out of the Keep afterwards went two ways. Most of it became a Sylvanian military power under Walach, took a new name for its new purpose, and calls itself the Knights of the Blood Dragon. The remainder left with the man who had made them, on the grounds that nobody had released the Ordo from its oath to the valleys beneath the Keep. That is why they still use the old name: it is a claim about who kept the promise. Sylvania tells the story more simply, and says that Walach Harkon took Blood Keep and founded the order. The vampire counts have little appetite for crediting a lord who will not feed on peasants, will not take land and will not join anything, so the version that survives is the one where the Grand Master did all of it. He gave the blood, so there is something in it. The Ordo has stopped correcting them.

#runin[His names]

His own name went the same way. He was Aymeric of Montfort until Bretonnia first proclaimed him damned, and then he stopped using it, because Bretonnia attaints houses along with men and there were people in Montfort still living inside that name. Since then he has answered to whatever he is called. Sylvania writes and peasants do not, so the accounts that survive give the Imperial wear on the same name and call him Emmerich. The few knights still standing who were at the Keep say Aymeric, and a man of the Ordo can be dated by which of the two he uses.

The other two names were given to him. The villages of six duchies call him the Black Drake, off the banner, and nobody decided it. Bretonnia's proclamations damn the Unblessed and take care to use no name at all, since naming him would concede that he was ever one of theirs. He has corrected none of it. The order's name means the dragon's, and styling a man for the order he serves is older than the order itself. The usage has attached to other lords since, and to at least one who came by it a good deal less honestly.

He signs himself Marshal of the Ordo Draconis. It is the rank he was appointed to before any of the rest of it, and it is not the Master's chair, which he has never claimed and which Sylvania assumes he wants.

#runin[The domain]

Bretonnia has repeated the proclamation twice a generation since. Sylvania decided he was no use. He could have held a keep against either. He could not hold one against both, so the keep stopped standing still. It appears where he requires it, with no approach and no passage, and nobody who has watched it happen has managed to describe it usefully. His household went with it. The domain stayed behind, in eleven or twelve separate pieces.

He holds perhaps a dozen places, scattered on purpose. No two adjoin. Upland hamlets, a fishing village on a bad coast, two valleys in the Grey Mountains, a handful of holdings in duchies that would deny all knowledge of them. A dozen separate arrangements across six duchies draw far less notice than one province would, and none of the parties involved wants notice. What the places have in common is that their own lords cannot reach them in time and have stopped pretending otherwise. Those lords have known it for generations. He was the first to act on it.

The arrangement is the same everywhere and he invented very little of it. A lord takes tribute and gives protection; that is what a lord is for. The Bretonnian version takes coin, grain, labour, a tenth of everything that grows, and the young men when the levy is called. His version takes blood. Once a season, from adults, by measure, and written down, and no coin, no harvest, no labour and no young men. The villages keep everything they make.

The reason the arrangement holds is bookkeeping. Grain does not come back once it is eaten. A son does not come back at all. Blood comes back in a month. He is the only lord these places have ever dealt with whose tribute costs them nothing they will still be missing next year. The first visit is never paid for either: he deals with whatever is killing the place, and leaves, and if the village wants him a second time the terms are read out. Several have declined. He has not returned to those, and nothing is known to have happened to them.

#runin[The signal]

The keep works a circuit. Between visits there is a way of asking for it that the villages do not discuss with outsiders. A fire is lit on a hilltop, behind a board cut to the order's device. On a night with low cloud the drake stands on the underside of it, black on grey, and can be read from the next valley. It arrives, the thing that could not be stopped is stopped, and it goes. The peasants of six duchies know the shape of it on the horizon. They do not mention it to visiting knights.

Travellers who have seen the signal from a distance say flatly that the shape is a bat. The villages say drake, because a drake is what is on the banner. The argument has run two hundred years in six duchies with neither side conceding, and nobody has thought to put it to the household.

#runin[The reasons]

The keep does not move because it can. The household can give a reason for every journey it has made, and the ledger sets them out in the order they occur.

Most often it answers the signal. A fire on a hilltop, a village that has run out of other ideas, and the thing that could not be stopped is stopped.

Next, and more often each century, it goes out to meet something before that something reaches a holding. This is the arithmetic again. A warband broken in open country costs him knights. The same warband broken in a village costs him knights and the village, and the village is the thing he is paid in. He would sooner fight anything a week early and forty miles away, and says so in terms the household have learned to repeat.

Third, it is seen. The keep stands a day within sight of somebody who was considering something, and then it is not there. Nothing is fought and nothing is said. He holds no border and cannot garrison a dozen scattered places at once, so the ability to arrive is the only defence any of them has, and a lord who has watched it arrive somewhere else tends to revise his plans. The household consider this the dullest duty in the order. He considers it the cheapest thing they do.

Fourth and rarely, one of the scattered agreements is called in. The terms of those are not discussed, including within the household.

Beneath all four is the reason it began. A keep that stands still can be besieged, and he could not hold one against Bretonnia and Sylvania at once.

#runin[The Green Knight]

The comparison Bretonnia will not make aloud is with the Green Knight. Gilles le Breton is also dead, is also kept past his time in the service of something, also appears where the land is being despoiled, and also fights duels as a matter of function. He is in the songs and the poetry. The other one is declared damned. The difference is agreed on all sides to be important, and nobody has explained it satisfactorily.

The Green Knight appears where evil defiles the land. He has never appeared for the Ordo Draconis. In Bretonnia this is held to prove nothing.

There is a smaller thing that the knights of both realms know and neither says aloud. A Bretonnian holds the Lady's blessing only while he neither flees nor refuses a challenge; break either and it leaves him. The Ordo Draconis is bound to both conditions and to nothing else. Its knights do not choose flight, cannot decline a duel, and have kept those two terms unbroken for two hundred years without a drop of anything descending on them for it. Emmerich has never remarked on the arithmetic. His household has, at length, and not where he can hear.

#runin[The household]

The Ordo fights as an order of knights and nothing else. Its vampires ride, walk in armour, or take to the air, and the dead march behind them in whatever numbers the season requires. There is no militia. There are no archers, no crossbows, no artillery train. Its lord will not use a weapon that kills at a distance, and the order has lost battles because of it. He accepts every challenge offered him and requires the same of his household, which has cost him two knights he could not replace.

He offers the blood to knights and to nobody else. A man who has fought well in his service may be asked once, and may refuse without consequence. Those who accept join the household. Those who die in the attempt are raised and march with the levy. He does not turn peasants. He leaves his own dead in the ground as well, and has never given a reason for it.

#runin[The drakes]

The drakes are live stock and always have been. The byres are cut into the keep's own rock and the herd goes where the keep goes, and the herdsmen are paid in sheep for the loss of sheep. The oldest of them predates the order, is a dragon where her get are wyrms, and carries nobody but her lord. Vampires who arrive expecting a Zombie Dragon are frequently surprised, and the Ordo has never troubled to find a word for a Nightmare that is alive.

She is in the tally book as the Dam, which is what a stockman writes, and every drake the order owns is hers and a lesser breed than she is. It is the only document in the world that names her. He does not name animals. Asked once, he said she came with the mountain, and he has held to that for two centuries in a way the household find trying. The villages have never separated her from the rest of it. To them the Black Drake is a man, a device on a banner, a shape on the cloud and an animal, and nobody in six duchies has needed to tell the four apart.

The household name their own mounts, in Bretonnian, after the manner of warhorses. The herdsmen decline to use the names, on the grounds that the animals are numbered. Neither side has given ground, and the argument is older than most of the knights having it.

Somebody has to raise the dead as well, and he regards that as a chore. He learned enough of it himself to avoid depending on anyone, and the necromancers in his service are kept, paid and not consulted. Blood Dragons hold sorcery in contempt. He holds it in contempt and uses it anyway, drawing a distinction the rest of the Bloodline does not: the vow is against seeking power by it, not against being good at it. Two centuries of needing the thing done have made him better at it than he cares to be told.

#runin[The sky]

The bats are not stock and are not in the tally book. The herdsmen hold that an animal which cannot be counted cannot be kept, and as far as the byres are concerned that settles it; the bats have never applied for the position. They are over the keep regardless, thicker there than anywhere in the six duchies, and they are over it again on the morning after a march that put the keep somewhere else. Whether the bats follow the keep or the keep goes where the bats already are has been argued twice in the household's hearing, and the two men who argued it did not agree.

What nobody disputes is that he knows what has crossed the pass before the riders come in to tell him. The necromancers in his service have a theory and have not been asked for it. It is not sorcery, which is the whole of why he will use it: a Blood Dragon may not stoop to a spell, and no oath yet written forbids a man to look up.

The villages have never counted them at all. Weather is not a thing one reports to a duke.

#runin[Other vampires]

Other vampires do not know what to make of him. The von Carsteins have decided he is sentimental and will be dealt with in due course. The Lahmians have three times tried to place someone in his household. The Strigoi are said to find him funny. Walach Harkon has never called him back to Blood Keep and has never said why.

#field("The field", "")

The order keeps a record of its engagements, because it keeps a record of everything. It is not a chronicle. It is a ledger, in the same hand as the tally book, giving the place, the season, what was fought and what it cost in knights. Six duchies appear in it constantly. A few other places appear once.

#runin[The realm]

Bretonnia has put an army in his way eleven times, and eleven times the same thing has happened. A Bretonnian host is arranged with peasants in front of the knights, which is the arrangement he left. A Bretonnian knight cannot decline a challenge and remain one, which is the arrangement he kept. So the battle collapses into its middle: the knights come forward because they must, the levy stands where it was put, and the two lines that were meant to grind each other never meet.

He has never given an order to spare the peasants and has never needed to. The household ride past them because the men worth fighting are behind them, and from the other side of the field that is indistinguishable from mercy. The Ordo has not corrected that either.

What the realm has never managed to fit into a proclamation is that he beats them by their own rules and stops the moment they break off.

Eleven times, and not once a pursuit.

#runin[The herds]

Most of the ledger is beastmen. That is what comes down on an upland hamlet in a bad year, and dealing with it is the whole of what the arrangement buys. There is little to record. The household arrive, the herd is broken, the drakes are fed, and the village is told what it already knew about the woods.

The one line worth reading is that a Doombull has never once declined. His oath binds him to issue and to accept, which against most enemies is a liability and has cost him two knights he could not replace; against beastmen it costs nothing, because the beastman wants the same thing he does and will come through his own herd to get it. He has called them the only enemy the Ordo has that is entirely straightforward.

#runin[What will not stand]

The order has lost battles, and the ledger is candid about which. Nearly all of them were to things that shoot and will not stand.

Skaven do both. Their warlords will not meet a challenge, having no notion why they should and no rule anywhere obliging them, so his knights wait at the front of a formation to be met and are shot instead. Under one of the upland holdings the household lost four knights, killed a great many rats, and never found the one that mattered, which by his arithmetic is a defeat: the rats were replaceable and the knights were not.

He has not revised the prohibition on missile weapons and does not argue for it. Asked, he says he has stood on the other side of a volley aimed at a village. That is not an answer to the tactical question and it is the only one he gives.

#runin[The other pass]

Two of the holdings are valleys in the Grey Mountains, so twice he has stood on ground a hold also claims. Neither time came to much. Dwarfs understand a pass held by counting, hold their own by the same arithmetic, and keep books of their own; whether he appears in the better half of anybody's is not a thing he has asked.

They shot at him regardless, thoroughly and at range, and the household have never established whether that was policy or a grudge older than the question. He declined to take it badly. A people who will not spend their own for an easier answer, he said, may shoot at him as much as they like.

#runin[The bad coast]

The fishing village on the bad coast appears in the ledger more often than any holding of its size, a bad coast being one that people arrive on. Norscans come ashore roughly every third year, which the villagers regard as weather and the ledger records as engagements.

These are the only battles in which the Ordo is not the strangest thing on the field. A war-party that has seen the keep on the headland does not usually leave and does not usually run, and their champions issue before he does. The household consider them the best fighting they get. The ledger has no column for that and enters them as ordinary.

#runin[The desert]

Once, and it is known exactly where and why, the keep arrived in Nehekhara.

A ship bringing plunder home from the crusades came apart on the bad coast long before he held anything there. What it carried worked inland by the usual routes and finished in a valley he would not hold for another two centuries. The king it had been taken from woke, in the way that kings there do, and wanted two things: the goods returned, and the place that had them answered for.

Emmerich returned the goods, and that settled nothing. In Nehekhara the offence is the taking, and giving a thing back does not undo having taken it. The claim stood, and it stood against the valley.

So he carried the valley's answer to the king rather than wait for the king to come and collect it. That is the second reason at its longest range. The reckoning happened in a desert, and the valley never learned there had been one.

How the keep got there is the part the order cannot explain, and the only record of the season and the place is a stores complaint. The herdsmen filed that the drakes would not fly in the heat, that four were off their feed for a month, and that the byres wanted rewetting daily at a cost they set out in full. Somebody has written the season and the place underneath. The furthest the Ordo Draconis has ever travelled is documented as a livestock matter.

They were there long enough to be met. A king came out to them in gold, with an army drawn up in ranks that had been drawn up that way before Bretonnia existed, and issued through a herald, correctly, at the proper distance. Emmerich accepted, that being the whole purpose of the journey: he had come to answer for the valley in person, and the king had come to be answered. Neither would break and neither could finish it, and the household's account says the two of them stopped by agreement and did not speak, having no language between them. The order has argued about it ever since, the argument being whether the king had understood who he was fighting; the two knights who stood closest took opposite views and are both still in the household.

He has said only that it was the most courteous army he has ever fought, and that he does not expect to be asked back.

#note[_Blood Keep, the Ordo Draconis and its black drake on a red field, Walach Harkon's remaking of the order, and the Green Knight all belong to the setting. What is ours is the lord and his four names, his arithmetic, the scattered agreements, the signal fire, the Dam and her herd, the keep that will not stand still, the ledger and every engagement in it, the Lahmian and everything unwritten between them, and the Ordo's claim to its own name. That last one is deliberately a dispute: the surviving account credits Walach with taking the Keep and founding the order, and this proposal holds that the account is the one told by the vampires who inherited it. Walach gave the blood, so nothing printed elsewhere in this book is contradicted._]

#field("The Lahmian", "")

The Lahmians have tried three times to place someone in his household, and all three times it was the same woman. Lahmia files her as Ankhara. Bretonnia, where she has worked for two centuries under whatever name the duchy required, knows her by the first cover she ever used and by nothing else: the Widow of Gisoreux. It is the only one of her names that stuck, and it was never hers.

#runin[The assignment]

The assignment cannot be completed, and the reason is structural. A Lahmian is placed beside power that has a location — a court, a seat, a succession, a household with rooms in it. He has no lands that appear on a map and no seat that can be visited twice. There is nothing to be near. She has reported as much three times. Lahmia sends her back, because the alternative is to concede that the assignment was never possible.

#runin[The encounters]

She arrived the first time in the third year of a protectorate in Gisoreux, as a widow with a claim, which is the correct approach to a Bretonnian lord and the wrong one to him. He read the claim, found it sound, and settled it in her favour. She stayed four months. What she could report at the end of it was that he had no court, no succession and no vices, and that the tribute was written down. Lahmia found the report insolent.

She came back as somebody else. He greeted her by the previous name, which was either courtesy or the most pointed thing he has ever done, and there is no way to tell which.

They first fought in a valley in the Grey Mountains, on opposite sides of a war belonging to neither of them. He had her. He put up his sword and said that killing her meant Lahmia sending someone he did not know, and that this one he could predict. Two of his knights heard him say it. Neither has repeated it in his hearing.

A thing came off the moors above a fishing village on a bad coast, and they dealt with it from opposite ends without a word passing between them. She was there because it had eaten the household she was working through, which is to say her cover. They left in opposite directions. That village believes to this day that it was saved twice in one night by two separate parties.

She left a report where he would find it. She has maintained ever since that she was careless.

Lahmia eventually stopped asking for placement and asked for his death. She accepted the commission and has carried it for sixty years, which is well within her orders, since the instruction was to get close to him first.

She took the warrant of his appointment from his own table, in a year he does not discuss. He has never asked for it back. His knights raise it a great deal more often than he does.

In every meeting where a challenge was possible he has issued one, because he must, and she has refused it, because she may. He has issued four times. She has refused four times. The rules of both their orders permit exactly this and nothing else, and neither has ever been asked to explain why they keep arranging to be in a position to observe them.

#runin[The count]

The Lahmian archive records nine occasions. His household can account for eleven. Neither figure has been corrected. The two that appear in one record and not the other are, inevitably, the two anybody would want.

#runin[What is not written down]

There is more, and none of it is written anywhere that can be read. He keeps ledgers; that is the whole of him. One is the tithe, every village and every season and every measure. One is the byre tally, where the Dam is an entry with a number and a note on temperament. There is a third book. It is neither of those, nobody in the household has read it, nobody has asked to, and it is thicker than the other two together.

In two hundred years there are two winters in which the Ordo cannot account for its lord and Lahmia cannot account for its agent. They are the same two winters. Both records were checked once, side by side, by a Lahmian clerk with an eye for symmetry, who did not file the observation. Lahmia audits its agents. Twice, her filed expenses cover months her reports do not. The discrepancy was queried both times and answered both times, and both answers are in the file, and they are not the same answer.

The keep has more rooms than the household uses, which is unremarkable in a keep.

One of them is kept aired.

The knights will discuss the warrant, the count and the four refusals, cheerfully and at length. They will not discuss the winters. Nobody made that a rule.

Bretonnia has no view, because Bretonnia does not know. Sylvania has a view and it is wrong. The Ordo stopped correcting them about the order's own name, and it is not going to start with this.

#field("Why", "")

Four units in this book carry the Vampire keyword: Blood Knights, Vargheists, the Varghulf and the Lahmian Handmaidens. Not one of them is a Core choice. The eleven Core entries are six kinds of Undead, two kinds of bat and three kinds of mortal, and every army chosen from this book must spend a quarter of its points among them. There is barely a rank of vampires to buy. The only Vampiric infantry are three to nine Vargheists, which are Monstrous Infantry, and five to fifteen Lahmian Handmaidens, who are Rare, Skirmishers, locked to one Bloodline and dressed in light armour. The only Vampiric cavalry is Rare and capped at one unit below 3,000 points.

Underneath that there is a deeper split, and it is the real argument. Both of the things that make a Vampire Counts army formidable are attached to the *Undead* special rule, and the Vampires have neither. Undead units are Unstable, and Unstable units are Unbreakable; Vampiric models get Fear, Immunity (Psychology) and \-1 To Wound, and Immunity (Psychology) is not immunity to Break tests — Unbreakable is defined as that immunity *and* passing Break tests, which is the book telling us they are two different things. Invocation of Nehek targets Undead, excluding mounts, so it cannot put a single Blood Knight back in the saddle. The Vampires are the only part of a Vampire Counts army that can be broken, and the only part its magic cannot mend.

The book already knows. Walach Harkon, Grand Master of the Blood Knights, carries a rule that reads: *if Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units*. Prince Vhordrai lets Blood Knights within 12" re-roll a failed charge distance. The Flag of Blood Keep is Blood Knights only and requires a Blood Dragon Vampire character; so does the Cursed Pennant of Mousillon. Four entries are written for an army of vampire knights, and one of them is the very remedy this proposal makes general — the book charges 490 points for half of it and sells it to one customer.

#field("The list", "")

An army chosen from this book may be chosen as an Ordo Draconis instead. Twelve of this book's thirty-three unit entries survive that choice, along with three of its thirteen character entries and none of its fifteen special characters. What is left is an order of knights.

#namecost("THE LEGION", "")

- *The army's General must be a Blood Dragon Vampire character.*
- *Blood Knights* are a Core choice, at the reduced profile given below rather than the one printed in this book, and at the same price.
- *Blood Guard* are a Core choice. They are new, and are described below.
- *A unit of Blood Knights or Blood Guard may be upgraded to the Sworn*, who carry the profile this book prints for a Blood Knight. A unit that takes the upgrade is a Special choice rather than a Core one. The Sworn are described below.
- *Blood Wyrms* and the *Elder Wyrm* are Rare choices. Both are new, and are described below.
- *Vargheists* and the *Varghulf* are Rare choices instead of Special ones. They are the feral get of the Bloodlines, kept and fed and not asked to hold a line.
- *Dire Wolves* are a Special choice instead of a Core one.
- *Emmerich, Marshal of the Ordo Draconis* is a Special Character available to this list and to no other. He is new, and is described below.
- *Ankhara, the Widow of Gisoreux* is a Special Character, new below, and unlike Emmerich she is available to any army chosen from this book.
- *No other Special Character in this book may be taken.* The von Carsteins intend to deal with him in due course, Lahmia has spent two centuries trying to get inside his household, the Strigoi find him funny, and Walach Harkon has never called him back to Blood Keep. None of them is going to stand in his line.
- The only characters available are the *Blood Dragons*, the *Wight Lords* and the *Necromancers* — his brothers, the brothers who did not survive the offer, and the men he keeps, pays and does not consult. Ankhara is chosen from the Characters section as normal and is the one exception to this.
- You may include *one character who is not a Blood Dragon for each Blood Dragon Vampire character* in the army.
- *Only units with the Vampire or Chiropter keyword count towards the minimum points an army must spend on Core units.* The bats are the lord's own creatures and count as his household does. The Skeleton Warriors, the Skeleton Horsemen and the Zombies may be taken exactly as the book allows, in any number Core permits, and buy you nothing towards the quarter.
- No unit or character in the army may be *Ghoul*, and none may be *Spirit*. The ghoul-courts are Strigoi business and the ghosts are Sylvanian sorcery, and he has kept clear of both.
- No unit in the army may be *Human*. Characters are excepted, because he forbids mortals dying in his line rather than mortals serving him.
- No unit in the army may be a *Chariot*, a *Shrine* or a *War Machine*. An order of knights fields knights; it does not keep an artillery train or a rolling reliquary.
- The *Flesh Golems*, the *Necrofex Colossus* and the *Zombie Dragon* are not available. The first two are stitched work and the third is a corpse, and the Ordo keeps a byre.
- The mounts a Vampire may take are not Undead. The Nightmare, the Hellsteed and the Abyssal Terror are living things bound to their riders and lose the *Undead* special rule. The Skeletal Steed is what a Wight rides and is left as the book has it.
- No model in the army may take a missile weapon, and the *Skeleton Archers* entry is not available. The clauses above have already taken the Skeleton Catapult, the Skeleton Chariot, the Wraithwisps, the Sylvanian Levy, the Strigany and every Lahmian off the table between them, so what is left for this one to do is remove the bow from the Skeleton Horsemen and to say plainly that nothing written later may hand a missile back. Death Shrieks and Breath Weapons are untouched: neither is a missile weapon, and a scream is not a volley.

#note[_The Generals of Undeath still applies, so an army that takes its fodder still owes a Necromancy Wizard for the privilege — which is the cost of the fodder, and is why it did not need a cap on top. With characters rationed one non-Blood-Dragon to a Blood Dragon, that Necromancer is bought with the same allowance a Wight King would have wanted, and a lord who wants both must be two lords._

_The mounts clause changes almost nothing at the table, and is worth having anyway. The book already says mounted characters ignore the Undead special rule of their mount, so a Vampire on a Hellsteed was never riding a corpse in any way that touched a die roll. What it settles is the sentence above it: The Generals of Undeath asks for a Necromancy Wizard if the army contains any Undead units and, unlike Slain General, does not say excluding mounts — so whether a regiment of Blood Knights owed a Necromancer on account of its horses was genuinely unclear. In a Legion it does not._]

#namecost("BLOOD KNIGHTS", "")

The knights of the household as the Ordo fields them, which is not as the Bloodlines remember them. Most of a man's power is the years he has had it, and these are the ones who took the blood this century.

#profile(
  (name: "Blood Knight", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 36),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Vampire)")
#field("MOUNT", "Nightmare (Equine)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield, barding")
#field("SPECIAL RULES", "Vampiric")
#field("OPTIONS", "")

- May be upgraded to the Sworn +8 points/model
- May upgrade one Blood Knight to a Leader +5 points
- May upgrade one Blood Knight to a Musician +5 points
- May upgrade one Blood Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#note[_This is the entry printed in the Rare Units section of this book, less a point of Weapon Skill, a point of Initiative and an Attack, at exactly the price the book charges for the whole thing. That is the proposal, stated plainly: an Ordo Draconis pays 36 points for a Blood Knight and gets less than 36 points buys anywhere else in the book. What it gets instead is the category._

_And the category is the orthodox part. Bretonnia is an army of knightly orders and fields Knights Errant at 21 points and Knights of the Realm at 25 as Core choices, with no cap on duplicates and no obligation to bring a single peasant. Its Foot Knights are Special and its Hippogryph Knights are Rare. Every category in this list sits where its Bretonnian equivalent sits, which is not a coincidence — the man who built the order was raised in that structure and never found a reason to improve on it._

_Against the rest of the game the comparison to make is a Chaos Knight, and it should be made honestly. Bare, it is 28 points for Weapon Skill 5, Strength 4, one Attack, a hand weapon, heavy armour, shield and barding, and it is a Special choice in its own book. Equipped to match — heavy lances at +2 a model and the Mark of Nurgle at +3, which is a flat +1 Toughness — it is 33 points for the same 2+ save at Toughness 5. Three points, then, buy Strength 5 and the whole of Vampiric in place of Will of Chaos. That is a much narrower margin than the bare price suggests, and it is the argument worth having._

_Toughness 5 and Toughness 4 behind a \-1 To Wound are the same defence at Strength 3, 4, 5 and 6, which is most of what a battle throws. The vampire is better only against Strength 2 and against Strength 7 or more. Against that, Vampiric's modifier does not apply at all to Magical Attacks or Flaming Attacks, where the Mark's Toughness never stops applying, and a Vampiric model on foot treats every river as Deadly Terrain. What the three points actually buy is Fear, Immunity (Psychology), a point of Strength, and a defence that is conditional where the other is not._]

#namecost("BLOOD GUARD", "")

The household on foot, who fight that way because the walls are behind them. The same offer, the same century, and no horse.

#profile(
  (name: "Blood Guard", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 22),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")
#field("SPECIAL RULES", "Vampiric")
#field("OPTIONS", "")

- May be upgraded to the Sworn +5 points/model
- May replace shields with two hand weapons free
- May upgrade one Blood Guard to a Leader +5 points
- May upgrade one Blood Guard to a Musician +5 points
- May upgrade one Blood Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#note[_The same bargain as the knights, and the same anchor. *Zombie Pirates of the Vampire Coast* carries the Depth Guard at 22 points: Infantry (Vampire), Vampiric, unit size 10 to 30, the same base, and Weapon Skill 6, Strength 5, Toughness 4, one Wound, Initiative 5, two Attacks and Leadership 8. This is that entry at that price with a Weapon Skill, an Initiative and an Attack taken off it — and the Depth Guard is a Rare choice in its own book, where this is a Core one._

_Two builds, and the swap is free. With the shield it is a 3+ save with Parry (6+) and it holds a line. Two hand weapons instead give +1 Attack behind a 4+ save, which is the whole of what it does on the attack. There is deliberately no two\-handed option: the Depth Guard can buy polearms for Strength and Initiative, and the Blood Guard cannot buy Strength at any price, which keeps it a household guard rather than a hammer._

_A Chaos Warrior is 13 points, or 15 with a shield, for Weapon Skill 5, Strength 4, one Attack and heavy armour, and is Core in its own book. Seven points buys two of Movement, a point of Strength, and Vampiric against Will of Chaos._]

#namecost("THE SWORN", "")

The ones who have had it long enough for it to have finished with them. There is no ceremony and no promotion; a knight is simply older one year than he was the last, and at some point the household stops correcting men who assume he was always like that.

- A unit of *Blood Knights* may be upgraded to the *Sworn* at +8 points per model.
- A unit of *Blood Guard* may be upgraded to the *Sworn* at +5 points per model.
- The Sworn have Weapon Skill 6, Initiative 5 and 2 Attacks.
- A unit of the Sworn is a *Special* choice rather than a Core one.

#note[_The upgrade restores precisely what the Core entries give up, which is to say it buys the profile this book already prints for a Blood Knight, and the profile *Zombie Pirates* prints for a Depth Guard. Nothing here is new except the price and the category._

_The price is the Warriors of Chaos ladder. A Chaos Warrior is 13 points and a Chosen is 16 for a point of Weapon Skill, a point of Initiative, an Attack and two special rules — a little under a quarter again. Five points on 22 and eight on 36 are that same premium, charged for the characteristics without the special rules._

_The category is the Empire's. Inner Circle Knights are upgraded at +2 points a model and may not then be taken as Core Units, and this is that clause with the arithmetic changed. It does more work here than it does there, because it is what stops the list upgrading its way out of its own restriction: the Sworn are Special, an army must spend a quarter of its points on Core, and only the vampires and the bats count towards that quarter. Whatever else an Ordo Draconis fields, a quarter of it is knights at Weapon Skill 5 with one Attack. There is no build that avoids it._]

#namecost("BLOOD WYRMS", "")

The Grand Master's own wing. Where a Blood Knight is given a horse, the knights of the inner circle are given something older, and the wyrms are alive.

#profile(
  (name: "Wyrm Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 85),
  (name: "Blood Wyrm", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 4, i: 3, a: 3, ld: 4, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Vampire)")
#field("MOUNT", "Blood Wyrm (Draconid)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield")
#field("SPECIAL RULES", "Devastating Charge, Fly (8), Vampiric")
#field("OPTIONS", "")

- May upgrade one Wyrm Knight to a Leader +5 points
- May upgrade one Wyrm Knight to a Musician +5 points
- May upgrade one Wyrm Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#note[_No breath weapon, deliberately: the Legion does not shoot, and six of them would have been a battery. Devastating Charge and Fly (8) are the whole unit, and the book already has both. Note which half of the model each reaches: Fly is one of the rules the rulebook extends from rider to mount and Devastating Charge is not, so the wyrm flies and the knight alone gains the Attack on the charge — six between them, not seven._

_Two things follow from the troop type rather than from anything written here, and both matter. Monstrous Cavalry causes Fear by default and Vampiric causes Fear as well, and the rulebook turns two sources of Fear into *Terror* — so a Blood Wyrm causes Terror without this entry saying so, exactly as a Vargheist already does in the book as printed. That is a reading rather than a certainty: the Fear rule says two or more different sources and illustrates them with special rules, spells and magic items rather than with troop types. If it is the wrong reading then the Vargheists already in this book do not cause Terror either, so it wants settling once for both. And attacks against a Monstrous Cavalry model use the highest Toughness and Wounds from either rider or mount, so every model in the unit has four Wounds behind a 3+ save._

_Priced against the Morbheg Knights, the book's other Rare flying Monstrous Cavalry, at 35 points for a worse rider on a weaker mount with Fly (5), and against the High Elf Drakemaster, which is 200 points for one rider on one drake. Eighty-five is the answer to the second comparison rather than the first._

_The arithmetic then does the rationing without a special rule. Both the Rare allowance and the ceiling on any single unit are a quarter of the army, so at 2,000 points five Blood Wyrms with a full command are 445 and fit, while six are 530 and do not. A full wing needs a game of 2,120 points or larger, and at that size it is still the only Rare choice the army can afford._]

#namecost("ELDER WYRM", "")

One of the Dam's oldest get, old before the Bloodlines were, and the knight who talked it into service rather than breaking it. The Dam herself is not this entry and never will be; she carries one man and appears in his.

#profile(
  (name: "Wyrm Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 210),
  (name: "Elder Wyrm", m: 6, ws: 4, bs: 0, s: 6, t: 5, w: 4, i: 3, a: 4, ld: 5, points: ""),
)
#field("TROOP TYPE", "Monstrous Creature (Vampire)")
#field("MOUNT", "Elder Wyrm (Draconid)")
#field("BASE SIZE", "50x75 or 50x100")
#field("EQUIPMENT", "Heavy lance, heavy armour, shield")
#field("SPECIAL RULES", "Devastating Charge, Fly (8), Vampiric")
#field("NOTES", "")

- An Elder Wyrm has a Unit Strength of 5 and a Line of Sight value of 4.

#note[_Terror and Stomp (D3) are not written here because the troop type already grants them, and a ridden Monstrous Creature is treated as a Monstrous Creature throughout. Vampiric then adds Fear on top of Terror, which does nothing at all: the model already has the better of the two._

_Two hundred and ten points, and the working is worth printing. Set against the High Elf Drakemaster at 200, which is the model it answers. The chassis is now identical: Toughness 5, 4 Wounds, 4 Attacks on both. Four Wounds rather than five is deliberate — five put it on the road to the Zombie Dragon, which has six and costs 245, and this is a wyrm rather than a dragon._

_What each buys with the difference does not net out to nothing, and it does not favour us. Ours has a point of Strength on the mount, two more points of Strength and one more of Toughness on the rider, and the whole of Vampiric: Fear, Immunity (Psychology) and \-1 To Wound against the model. The Drakemaster has Fiery Breath, a point of Initiative and of Leadership on both halves, three racial rules, and much the better armour — dragon armour is heavy armour with a Magical Ward (6+) and Immunity (Flaming Attacks), and its Natural Armour (4+) combines with that and a shield, so it sits at the 2+ ceiling where ours stops at a 3+ with no ward at all._

_So: ten points over the Drakemaster for a better rider and Vampiric, having given up its ward, its breath and its fire immunity. Below the Terrorgheist at 225 and the Zombie Dragon at 245, above the Coven Throne at 200, and well above the Varghulf at 135, which is this book's other Monstrous Creature (Vampire) and has no rider, no flight and no armour save._

_In the book as printed this entry would have had an obvious rival, since a Vampire on a Zombie Dragon is a ridden Monstrous Creature with the same Terror and the same Stomp, and brings Leadership, challenges and a hundred points of magic items along with it. An Ordo Draconis does not field the Zombie Dragon, and the Abyssal Terror at 125 points is the only thing left that flies a character. So this is what the list has when the characters are already spent, and it is the only way to put a monster in the air without spending Emmerich._]

#namecost("EMMERICH", "")

Marshal of the Ordo Draconis, and the lord the Order chapter is about. He may only be taken in an Ordo Draconis, and he is the only model in this book who may be given the Dam.

#profile(
  (name: "Emmerich", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 370),
  (name: "The Dam", m: 6, ws: 5, bs: 0, s: 7, t: 7, w: 7, i: 2, a: 6, ld: 6, points: 275),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Blood Dragon), or Monster while mounted on the Dam")
#field("MOUNT", "The Dam (Draconid)")
#field("BASE SIZE", "20x20 or 25x25, or 50x100 mounted")
#field("EQUIPMENT", "Hand weapon, heavy armour, shield")
#field("MAGIC", "Emmerich is a Level 2 Wizard who uses both of the following Lores of Magic:")

- Necromancy
- Shadow

#field("MAGIC ITEMS", "")

- *The Marshal's Blade:* Magic Weapon. Hand weapon. While Emmerich is fighting in a challenge, the Marshal's Blade has the Heroic Killing Blow special rule. Outside a challenge it is an ordinary hand weapon and does nothing at all.
- *The Hauberk of the Ordo:* Magic Armour. Heavy armour. This item gives the wearer a Magical Ward (6+).

#field("VAMPIRIC POWERS", "Blademaster, Dread Knight")
#field("SPECIAL RULES", "Martial Honour (see Blood Dragons), The Red Thirst, Vampiric")

- *The Marshal:* Emmerich must be the army's General. He has the *Inspiring Presence (6)* special rule.
- *The Pass Held:* Emmerich, and any unit he has joined, may re-roll failed Break tests.
- *The Arithmetic:* Emmerich may never join a unit with the *Undead* special rule.

#field("OPTIONS", "")

- May be mounted on the Dam +275 points

#field("NOTES", "")

- While mounted on the Dam, Emmerich is a Monster with the *Fly (8)* and *Natural Armour (4+)* special rules. The Dam has no Breath Weapon.

#note[_Two lores at once is Mannfred's wording, and it needs no special pleading here: a Blood Dragon may already choose Death, Necromancy or Shadow, so both of these are in the Bloodline as printed. What it buys is not raw power at Level 2 but a second way to play him, and the rulebook supplies that without a line of flavour text. Shadow's Lore Attribute, Steed of Shadows, lets the caster make a Fly move after any Shadow spell resolves, equal to 10 minus the model's Line of Sight value. On foot that is most of the move and he casts and is gone. On the Dam his Line of Sight value is 4 and it is almost nothing. The foot build vanishes and the mounted build does not, and no rule here says so._

_Being a Level 2 who uses Necromancy, he also answers The Generals of Undeath in his own person, which is the fiction's claim that he learned enough of it to avoid depending on anyone, costing nothing to write. The same goes for leaving his own dead in the ground: Invocation of Nehek targets Undead excluding mounts, and his household are Vampires, so it could never have raised them._

_The price is the part worth arguing with. Adding up the parts — items, powers and rules — comes to 435, and that is not how this book prices anything. Konrad is 215 for a Magical Ward (5+), a Multiple Wounds (2) weapon and Red Fury. Vlad is 450 for a Level 3 with a Magical Ward (4+), a resurrection on a 2+ and 60 points of Vampiric Powers. Mannfred is 565 for a Level 4 who is a Loremaster in two Lores at once, with four Magic Items, before a 245-point Zombie Dragon is added. Strip the mounts out and Walach's half is about 470, Zacharias's about 475 and Vhordrai's about 370. And in every case the signature army rule is free: Walach's Grand Master, Mannfred's Drakenhof Guard and Vhordrai's Fist of Abhorash are all given away with the character._

_So this follows the book. Three hundred and seventy is 215 for a Blood Dragon Lord, 70 for the second level, 5 for the shield, 30 of Vampiric Powers and 50 of Magic Items - the same purchases a Blood Dragon Lord could make from the army list. The two Lores, the Marshal, the Pass Held and the Arithmetic are the character, and are not charged for, exactly as they are not charged for on Walach. A Blood Dragon Lord who spends his full 100 points on powers and items reaches 390, so Emmerich is twenty points under the most expensive one you could build. That is the fair objection to the entry, and it is the same objection every special character in the book invites._

_The Marshal is the book's own grammar for a general and is written the way four other books write it. Malekith must be the Army General and has Inspiring Presence (6); so, in their own wording, do Khalil al\-Zahir, Salâh ad\-Dîn and Louen of Bretonnia, and two books sell the same effect as a 25\-point Magic Item restricted to the Army General. Inspiring Presence is cumulative, so his own 12" as General and this 6" make eighteen. Mounted on the Dam his Line of Sight value is 4, and the rulebook adds another six inches at that value, which puts him at twenty\-four and is worth knowing before he is bought._

_What it is worth is set by the same thing the Pass Held answers below. Break tests are not Psychology tests, so Vampiric's Immunity (Psychology) never reaches them, and testing on his Leadership 10 rather than a unit's own 8 is the only general remedy this list has. The Pass Held fixes one unit outright; the Marshal decides how far the lesser version carries._

_The Marshal's Blade is 25 against Bretonnia's own scale, where the Lance of Artois is 15 points for Killing Blow restricted to turns in which the model charges and the Virtuous Lance is 25 for rather more. The restriction here is narrower than it looks, since Martial Honour puts him in a challenge whenever one can be had, and the Heroic part only earns its keep against a character on a Monster, where ordinary Killing Blow inflicts one Wound instead of removing the model. Whether a weapon that is inert outside a challenge is characterful or is a trap laid for the player is the question to settle._

_The Pass Held is the rule that answers this proposal's own argument. The Why section above sets out that Vampiric models are the only part of a Vampire Counts army that can be broken and the only part its magic cannot mend. A re-roll on Break tests for the unit he is standing in fixes precisely that, for precisely one unit, and the Arithmetic then forbids him from doing it for the fodder. The two clauses are one rule read from either end._

_The Dam is priced on this book's scale rather than Ulthuan's. The Zombie Dragon is 245 as a mount at Toughness 6, 6 Wounds, 5 Attacks, Natural Armour (5+) and Fly (7), with a Breath Weapon and Swarm of Flies. She adds a point of Toughness, a Wound, an Attack, an armour tier and a point of Fly, and gives up both of those rules; 275 is the answer. High Elves charge 300 for a Moon Dragon and 390 for a Star Dragon, but they also charge 300 where this book charges 245 for the same chassis, so their numbers set the shape and not the price. Weapon Skill 5 rather than a Star Dragon's 7 because her get are Weapon Skill 4 and these are stock, not the ancients of Caledor. No Breath Weapon, because the Blood Wyrms gave theirs up for the same reason and their rider will not use a weapon that kills at a distance._

_Six hundred and forty-five mounted sits above Vhordrai at 615 and below Zacharias at 720, which is the right neighbourhood. The Lords allowance is a quarter of the army, so mounted he wants a game of 2,580 points or larger and on foot he is legal from 1,480. That is the argument for the Dam being an option rather than fixed: at 2,000 points he can be fielded on foot and lead a line, and the biggest drake in the setting can wait for a bigger table._]

#namecost("ANKHARA", "")

The Widow of Gisoreux. Sent three times to place herself in a household with no rooms to be placed in, and she has never once reported that the thing cannot be done.

#profile(
  (name: "Ankhara", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 8, a: 3, ld: 9, points: 160),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire, Lahmian)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Ankhara is a Level 1 Wizard who uses the Lore of Shadow.")
#field("MAGIC ITEMS", "")

- *The Marshal's Warrant:* Enchanted Item. The document appointing Emmerich to the rank he still uses, taken from his own table. Any friendly unit within 12" of Ankhara may use the Leadership of the army's General as though the General were within 12" of it.

#field("VAMPIRIC POWERS", "Night Creature, Swiftness")
#field("SPECIAL RULES", "Dodge (6+), The Red Thirst, Vampiric")

- *She Never Swore It:* The Oath of the Keep does not apply to Ankhara. In addition, she may refuse a challenge without the usual penalty. She is moved as the rules for Refusing a Challenge require, but the enemy gains no combat result bonus for the refusal, and she keeps the use of her Leadership and of every special rule and Magic Item she carries for that turn.
- *The Fourth Attempt:* If Emmerich is also in the army, Ankhara is deployed after every other unit of both armies, anywhere on the table more than 12" from an enemy model.

#note[_Two rules written weeks apart collide here, and the collision is the entry. Every Vampire character this list permits carries Martial Honour in its own right, being a Blood Dragon, so all of them must issue and accept challenges whenever they can. She never swore it, three attempts having failed to place her in the household that did. He cannot refuse and she cannot be made to accept, which is the whole of the relationship expressed in rules that were not written for it. Refusing normally costs the round's attacks, hands the enemy a point of combat result, and denies the refuser the use of her Leadership and of every bonus she carries; hers costs the attacks and nothing else._

_Weapon Skill 6 and Initiative 8 over the Lahmian Courtesan, and not a point of Strength. She is not a duellist and the profile should not let anyone read her as one._

_The price follows Sekhar exactly, since he is the book's own worked example of what a Lahmian special character costs. Seventy points of Courtesan, 70 for the second level and 50 of Vampiric Powers make 190, and his familiar, his polearm, his medium armour and the Time-Swallower's Maw are all free on top. So 70, 35 for the first level and 30 of powers make 135 here. Isabella supplies the rest of the rate: 70 of Courtesan and 10 for Beguile is 80 against a printed 110, so about 30 buys a shifted statline, a Magic Item and a rule that only works alongside somebody else. One hundred and sixty, which sits where a companion piece belongs - above Isabella at 110 and below Sekhar at 190._

_The Warrant is the number to argue with. Lending the General's Leadership at 12" is a Battle Standard's kind of effect and a Battle Standard is 25 points in this book, so it is most of what she is carrying over the base rate. It is also the one item on her that is not hers, which is the point of it: the woman who has three times failed to join the household is the one holding the document that proves the household has a Marshal at all. Cutting it and dropping her to about 135 is the honest alternative, and Sekhar carries no Magic Items whatsoever._

_She is chosen from the Characters section like anybody else and counts against the ration of one non\-Blood\-Dragon to a Blood Dragon, which is most of what she costs a list. An Ordo Draconis that brings her and one Blood Dragon has spent its allowance and has no Necromancer, so it must find the Necromancy Wizard that The Generals of Undeath asks for in the Blood Dragon himself, or field no Undead at all. The bloodline clause is the one thing she is excepted from, and a permission is not an allowance._

_What the Oath exemption covers is worth setting out, since Martial Honour is not in it. Blood Dragons carry that rule in their own right, so the collision needs no help: he cannot refuse and she cannot be made to accept. What she gives up is the Wound recovered for winning a challenge. What she gains is the right to Flee as a Charge Reaction in an army that has given it up, and to take the Red Thirst from the routed. A Lahmian withdrawing while the household holds is what both orders would have predicted of her._

_She may be taken in an Ordo Draconis and in any other army chosen from this book, which is the asymmetry the fiction asks for. He belongs to one place and she belongs nowhere, and Lahmia goes on sending her wherever it likes. The Fourth Attempt is the only thing on her that needs him, and it does nothing at all when he is absent._

_And the one thing deliberately not copied from Isabella: if Emmerich is slain, Ankhara gains no Hatred, no Frenzy and nothing else whatsoever. Neither of them would call that sentiment. Both would call it correct._]

#namecost("THE OATH OF THE KEEP", "")

The lord holds his lands by his own hand and answers for them in person. Every vampire in the order swore it, and every vampire this list permits carries *Martial Honour* already, that being the Blood Dragon rule: they must always issue and accept challenges when possible. The oath adds nothing to it and never had to.

- A Vampire character who slays an enemy character in a challenge immediately recovers a Wound, up to its starting value. This is in addition to The Red Thirst.
- No unit in the army may choose Flee as a Charge Reaction.
- The Red Thirst may not be claimed for models slain while Fleeing or during a Pursuit. Blood taken from the routed does not count.

#note[_The clause about Flee is narrower than it reads, and it is worth knowing which half of the army it lands on. Unbreakable models may never choose Flee as a Charge Reaction in any case, and every Undead unit in this list is Unstable and therefore Unbreakable. So the oath binds the vampires, the bats and the living mounts and nothing else — which is to say it binds exactly those who swore it, and asks nothing of the dead that the dead were not already doing._]

#namecost("DREAD, NOT SLAUGHTER", "")

The point of a vampire is not how many he kills.

- No unit in the army may pursue a fleeing enemy. A unit that wins a close combat restrains without taking the Leadership test to do so, and may reform as though it had passed it. This overrides any rule that would compel a pursuit, Frenzy included. Overrunning is untouched: an enemy that has been wiped out has not fled.
- Enemy units in base contact with one or more Vampire characters suffer a \-2 penalty to their Leadership. This penalty is cumulative with any other modifiers, the Aura of Dark Majesty included.

#note[_The two clauses are one bargain, and neither is worth writing without the other. Breaking an enemy unit is worth a great deal less to an army that cannot then run it down, so a deeper Leadership penalty costs the opponent less than the same penalty would cost him against anybody else. That is what makes \-2 affordable where the list would not have been given \-1 for nothing._

_What is given up is the killing. A pursuit that catches its quarry inflicts a Wound with no saves of any kind for every point of the pursuer's Unit Strength, which is where a Warhammer army does most of its destroying; a Legion forgoes all of it and takes the ground instead. Some of it comes back as certainty. Restraining normally requires a passed Leadership test and a failed one forces the pursuit, so a unit that never pursues is never dragged into a fresh combat or out of the line it was holding, and it reforms every time._

_Base contact rather than a radius, because that is where dread belongs. A 12" radius is a 24" circle, and two or three of those overlap across most of any battlefield worth deploying on; every Break test, Panic test and Psychology test taken inside one would be a point worse for nothing. In base contact the penalty lands almost entirely on the Break test of the unit actually fighting him, which is the sentence the rule's title is making. The Grim Garland is the book's own grammar for it, being a Strigoi item that works on enemy units in base contact with the bearer._

_The Aura of Dark Majesty is worth its thirty points again, and worth more than it was: within 6" the two stack, and in base contact they stack to \-3. Note also that this follows the power rather than the Hell Banner, which does much the same at 40 points on Line of Sight and has no effect on models with Immunity (Psychology). The book is inconsistent about that exemption; a Leadership penalty reaches Break tests, which are not Psychology tests, so the power's reading is the one that makes sense of it._]

#namecost("THE ORDO'S ITEMS", "")

Four Magic Items available only to an army chosen as an Ordo Draconis, each following the rules for its own kind of item.

#namecost("WEATHER OVER THE KEEP", "15 points")

Enchanted Item. Ordo Draconis only. Friendly units with the *Chiropter* keyword within 12" of the bearer may use the bearer's Leadership.

#namecost("THE SIGNAL FIRE", "30 points")

Enchanted Item. Ordo Draconis only. One friendly unit with the *Draconid* keyword may deploy using the *Ambushers* special rule.

#namecost("THE WITNESSED OATH", "25 points")

Talisman. Ordo Draconis only. Vampire only. While the bearer is fighting in a challenge, they have a Magical Ward (5+).

#namecost("THE BANNER OF THE", "")
#namecost("FIRST SWORN", "35 points")

Magic Standard. Ordo Draconis only. The Sworn only. May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains +1 Weapon Skill and +1 Initiative.

#note[_The brothers he came back for, who took the blood at the Keep while there was still time to choose. Two centuries later they are the oldest swords in the order and the only men in it who still call him Aymeric, and there are not enough of them left to be an entry in an army list. A standard is the honest shape for them: magic items are unique unless marked with an asterisk, so exactly one unit in any army can be the First Sworn, and no clause is needed to say so._

_Grand Cathay's Revered Banner of the Ancestors is 25 points for +1 Weapon Skill, and Araby's Banner of Holy Fervour is 20 for +1 Movement and +1 Initiative. Thirty\-five for Weapon Skill and Initiative together sits between those and the forty\-point tier the Hell Banner and the Banner of the Barrows occupy. The gating is this book's own, twice over: the Flag of Blood Keep and the Cursed Pennant of Mousillon both name a unit and then ask for a Blood Dragon character behind it._

_And it costs the regiment the other thing a regiment might have carried. A unit has one standard bearer and one Magic Standard, so a company of the Sworn on horse takes either two centuries of practice or the Flag of Blood Keep's ward against missile fire, and being made to choose is the interesting part in an army that cannot shoot back._]

#note[_One item for each of the three keywords this list cares about, each priced against the book rather than against the other two._

_Weather Over the Keep is the Helm of Commandment read the other way round. That item is 25 points for a 6+ armour save and, while the wearer is out of combat, the loan of their Weapon Skill to one Undead unit within 12" — and in an Ordo Draconis the beneficiaries of the loan are the fodder — the list opens a gap exactly where a household item should be. Lending Leadership to one keyword of Leadership 5 chaff is the narrower effect, so 15. It also gives the Chiropter clause something to do at the table rather than only in the list-building: his bats borrow his nerve._

_The Signal Fire is the one number here with nothing underneath it, since the book sells no deployment rule at any price. Thirty is reasoning rather than precedent: above the Pendant of the Fell Wind, which is 25 points for a permanent point of Movement on a character and any unit they are with, because a wing of Blood Wyrms arriving behind the line is worth more than that, and discounted for the two turns it spends off the table._

_Ambushers rather than Scouts or Vanguard, and the choice is not decorative. A unit made up entirely of models that can Fly uses its Fly value when it Vanguards, so a Vanguard version would put Fly (8) and Devastating Charge eight inches up the table on the first turn, and a Scouts version would put them anywhere outside 12". Ambushers arrives on a 3+ on turn two, a 2+ on turn three and automatically on turn four, from a board edge, having been off the table in the meantime. Random and late is what makes it fair. The rulebook's Ambushers tax — one non-Expendable, non-ambushing Core unit for every Core unit that ambushes — does not bite here, because every Draconid entry in this list is Rare._

_The Witnessed Oath is gated on the one thing this list guarantees. The Oath of the Keep compels every Vampire character to issue and accept, so a ward that works only in a challenge pays out reliably rather than on a condition the opponent controls, and it answers the argument the Why section makes: the vampires are the only part of a Vampire Counts army that dies for good. Twenty-five against the Wristbands of Black Gold, which are 25 for a Magical Ward (3+) that is always on and covers one kind of attack._]


#chart((
  ("", "In this book", "In an Ordo Draconis"),
  ("Blood Knights", "Rare, one unit below 3,000 points", "Core, at Weapon Skill 5, Initiative 4 and one Attack, for the same 36 points"),
  ("Blood Guard", "Does not exist", "Core, new entry, 22 points"),
  ("The Sworn", "Does not exist", "An upgrade to either, carrying this book's printed profile, chosen from Special"),
  ("The Banner of the First Sworn", "Does not exist", "Magic Standard, new, this list only"),
  ("Blood Wyrms, Elder Wyrm", "Do not exist", "Rare, new entries"),
  ("Emmerich", "Does not exist", "Special Character, new entry, this list only"),
  ("Ankhara", "Does not exist", "Special Character, new entry, and available to any army in this book"),
  ("Weather Over the Keep, the Signal Fire, the Witnessed Oath", "Do not exist", "Magic Items, new, this list only"),
  ("Vargheists, the Varghulf", "Special", "Rare"),
  ("Dire Wolves", "Core", "Special"),
  ("Skeletons, Skeleton Horsemen, Zombies", "Core, and count towards the 25% minimum", "Core, and count towards nothing"),
  ("Fell Bats, Bat Swarms", "Core, and count towards the 25% minimum", "Core, and count towards it still"),
  ("Grave Guard, Black Knights, Terrorgheist", "Special, Special, Rare", "Unchanged"),
  ("Every Ghoul and every Spirit", "Core, Special and Rare", "Not available"),
  ("Every Chariot, Shrine and War Machine", "Core, Special and Rare", "Not available"),
  ("Flesh Golems, Necrofex Colossus, Zombie Dragon", "Special, Rare, Rare", "Not available"),
  ("Sylvanian Levy, Strigany, Skeleton Archers", "Core", "Not available"),
  ("Lahmian Handmaidens", "Rare", "Not available"),
  ("Every Special Character in this book", "Fifteen of them", "Not available"),
  ("Characters", "Thirteen entries", "Blood Dragons, Wight Lords and Necromancers"),
  ("Bows, crossbows, throwing weapons", "Options on five entries", "Not available"),
  ("Nightmare, Hellsteed, Abyssal Terror", "Undead mounts", "Not Undead"),
))

#field("The argument against", "")

The trick at the centre of this list is that its Core entries cost what the book charges for better ones, and somebody is going to point out that paying full price for less is not the same as paying more. They would be right. A Blood Knight at Weapon Skill 5 with one Attack is a worse unit than the Rare entry it is drawn from and costs the same 36 points, which reads as a discount on the category rather than a premium on the model, and the category is the thing under argument. What answers it is the quarter. An Ordo Draconis must spend a quarter of its points on knights that hit on 4s and swing once, in every game, whatever else it buys, and no other army in this book is compelled to buy anything at all.

The prices hold up worse against the rest of the game than against this book, and the Warriors of Chaos are where they hold up worst. A Chaos Warrior with a shield is 15 points for Weapon Skill 5, Strength 4, Toughness 4, one Attack and a 3+ save, and it is Core in its own book; add the Mark of Nurgle for 3 and it is 18 points at Toughness 5. The Blood Guard is 22. A Chaos Knight with heavy lances and the same Mark is 33 for a 2+ save at Toughness 5. The Blood Knight is 36. Three and four points is the real margin, and what it buys is a point of Strength, some Movement, and Vampiric in place of Will of Chaos.

That trade is closer than it reads, because Toughness 5 and Toughness 4 behind a \-1 To Wound come to the same number at Strength 3 through 6, and the Mark's Toughness cannot be switched off where Vampiric's modifier is blank against Magical Attacks and Flaming Attacks — which is to say against most enemy characters. Fear and Immunity (Psychology) are the honest remainder, and they are worth having. The wider reading is that this book prices vampires generously to begin with, that pricing new entries off its own worked examples inherits the generosity along with the anchors, and that whoever opens with the Chaos comparison has the better opening.

What answers all of that is a single number, and it is worth stating with the whole shelf behind it rather than one comparison at a time. Across the thirty-one army books in this project, and leaving named characters aside, every Cavalry entry costing 30 points or more with a single Attack on the rider is sitting on a multi-Wound mount — a demigryph, a pegasus, a hippogryph, a war bear, a giant spider, a plague drone. There is exactly one exception, the Dark Elf Cold One Knight at 32, and its lizard has two Attacks and a Natural Armour save of its own. A Blood Knight at 36 points, with one Attack and an ordinary barded horse, would be the most expensive thing of its kind anyone has written for this game.

The infantry figure is starker still. In those same books there is no rank-and-file entry at 22 points or more with a single Attack. Everything dearer than that with one Attack is a named character, but for the Zombie Pirates' Bloated Corpse at 25, which is Expendable and exists to be walked into an enemy and burst. The elite infantry the other books do field sits between 16 and 18 — the Chosen, the Swordmasters of Hoeth, the Phoenix Guard, the Hammerers, the Temple Guard — and every one of those has two Attacks for the money. The Blood Guard has one, and costs 22, and is Core.

Bretonnia is the defence and it does not cover everything. Knights of the Realm at 25 points are a Core choice with no cap on duplicates and no obligation to bring a peasant, which settles whether knights belong in the Core of a knightly order; Foot Knights in Special and Hippogryph Knights in Rare settle the rest of the ladder. What it does not settle is the payload. A Knight of the Realm is Weapon Skill 4, Strength 3 and one Attack, with the Lance Formation and the Blessing of the Lady behind him, and this list has no equivalent of either. The structural argument says the category is orthodox. It does not say the two are the same purchase.

The Sworn leaving Core is load-bearing and it is thin. Everything holding this list down runs through one clause: the upgraded unit is Special, only the vampires and the bats count towards the minimum, and so a quarter of the army is always the lesser profile. Relax the quarter, or let the Sworn stay Core, and the structure comes apart in a sentence.

Twenty-one entries is a great deal to take away, and not all of it is theme. The ghouls, the ghosts and the sorcery-engines each have an argument behind them. The rest is narrowing for its own sake, and a Legion that could still field Crypt Horrors would play differently without playing worse.

Barring every special character in the book is the same objection at its sharpest. The order's lord was made by Walach Harkon, and this list cannot field Walach Harkon. The fiction supports it, since Sylvania has never called him back and the other Bloodlines have their own plans for him, but a clause that removes fifteen entries on the strength of a story is spending real options to buy consistency. In fairness, Walach's own printed rule moves Blood Knights out of Rare, and would have had nothing to do here in any case.

Dread, Not Slaughter is the rule most likely to lose the Legion a game it deserved to win. An army that breaks everything in front of it and destroys almost none of it can hold every foot of ground and still be behind on victory points, because a broken unit that rallies is a unit still on the table and still worth what it cost. Against an opponent who is content to feed units in, break off and come back, the list has no way to finish anything except by pushing it off the board edge. Whether that is a flaw or the whole character of the thing depends on what the game is being scored on, and it is worth saying that a scenario with objectives flatters this list and a straight killing match does not.

Nothing in the list answers that, and the omission is deliberate. Restoring the kill means restoring the chase in one form or another, and the chase is the thing the rule gives up. A Legion takes ground and does not collect bodies.

The Core-minimum clause is the cleanest thing here, and the keywords in it are doing exact work. Written against the *Undead* special rule instead of against *Vampire* and *Chiropter*, it would have let anything still living clear the quarter. As written it leaves one narrow dodge open, because Core carries no cap on duplicates: five units of nine Fell Bats are 540 points and clear the quarter at 2,000 with a single vampire in the army. The difference is that it does not pay. Fell Bats are Leadership 5 at Toughness 3 with no armour save and no Undead rule, so they break and they panic where a knight would have held, and an all-bat Core is legal and bad, which is a different thing from legal and better.

Emmerich is open to the objection every special character is. He is a better Blood Dragon Lord than the army list can build for less money — 370 against the 390 a Lord reaches when his full hundred points of powers and items are spent, with two Lores of Magic, three rules and a drawback on top. That is what a special character is for, and it is no worse than Walach, who is Weapon Skill 9 with a Magical Ward (5+). The number to watch is not his cost but the Marshal's reach: eighteen inches of Leadership 10 on foot is generous, and the twenty-four he reaches on the Dam is a forty-eight-inch circle, arrived at through a rulebook clause about Line of Sight values rather than through anything written in his entry.

Ankhara has the objection that every paired character has, which is that half of what she costs is spent on a rule that does nothing unless the other model is bought as well. The Warrant is the other place to push: lending the General's Leadership at 12" is a Battle Standard's work and a Battle Standard is 25 points in this book, which is most of her margin over the base rate, and Sekhar shows that a Lahmian special character can carry no Magic Items at all and still be worth 190. Cutting it and dropping her to about 135 is the honest alternative.

The Dam has the opposite problem. At 275 she is priced honestly against the Zombie Dragon and she still cannot be fielded below 2,580 points, which means the largest creature this project has written will almost never be seen. Either that is what a centrepiece is, or the ladder should have stopped at a full-grown dragon and left her a wyrm.

And taking the missile weapons out is a real loss of options for very little in return. A handful of entries lose a line each, in service of a theme rather than a mechanism. A Legion that could still bring crossbow-armed peasants would play almost identically.

The four items are the newest thing in the chapter and the least tested. Weather Over the Keep is safe and probably dull: fifteen points to make bats braver is a purchase most lists will skip until everything else is bought. The Signal Fire is the one to attack, because 30 is a guess wearing the clothes of arithmetic, and a wing of Blood Wyrms arriving on a board edge on turn two, behind a gunline that has spent two turns shooting the household instead, may be worth a great deal more than any figure in this chapter. The Witnessed Oath is a Magical Ward (5+) on the model most likely to be in a challenge, in an army whose own rule forces it into challenges. And the Banner of the First Sworn puts Weapon Skill 7 and Initiative 6 on a regiment for 35 points, which is above the line where most things in the game stop hitting it on 3s; the Cathay and Araby anchors say the price is right, and neither of them was pricing it onto a 44-point model.

None of the four has a game behind it.

#field("What it would take", "")

A chapter in this book, and three new unit entries with an upgrade path shared between two of them. One requirement, four category moves, one reduced profile sold at the printed price, four keyword restrictions, three named exclusions, one equipment restriction, one clause about mounts, one about which characters exist, one about special characters, two list rules, four Magic Items, and nothing in any other book.

The rulebook has no notion of an Army of Infamy, so the first one has to introduce the idea as well as the list. That is one paragraph in Choosing Your Army: a book may offer alternative compositions, and both players should know which is in use before deployment. The one rule that needs a home there rather than here is the Core-minimum clause, since Choosing Your Army is where the quarter is set.

If it holds up, the same shape is waiting twice more in this book. Strigany may only be taken with a Strigoi Vampire character; the Coven Throne is crewed by Lahmians. Both are lists the book is already writing for and cannot field.

#field("For example", "")

*An Ordo Draconis at 2,000 points.* A Blood Dragon Lord at 215 and a Kastellan at 100 lead it, and being two Blood Dragons they license two characters who are not Blood Dragons; this one takes a Wight Lord at 100 and leaves the second slot unspent. Twenty-one Blood Guard at 462 and ten Blood Knights at 360 are the Core — 822 of qualifying Core against a 500-point minimum, and neither unit near the ceiling that stops any single unit costing more than a quarter of the army. An Elder Wyrm at 210 and a Varghulf at 135 take 345 of the Rare allowance. That is 1,582. Thirty Zombies add 75 more and count towards nothing at all, being there to die in front of the knights, and the last 343 go on command groups, the Flag of Blood Keep, powers and items across the three characters, and the 35 that make the Lord a Level 1 Wizard — because thirty Zombies are an Undead unit, and The Generals of Undeath wants a Necromancer for them. The list rations characters one to a Blood Dragon, so that Necromancer is either the Lord himself or the slot the Wight Lord is standing in. The Lord is cheaper.

*Or buy the years instead of the numbers.* Twenty-one Blood Guard at 462 and six Fell Bats at 72 are the Core, which is 534 and clears the quarter with thirty-four points in hand. Ten more Blood Guard upgraded to the Sworn at 270 leave Core to do it and sit in Special, where they are the only models in the army at Weapon Skill 6 with two Attacks. Five Blood Wyrms at 425 take the Rare allowance, and a sixth at 510 would breach that allowance and the ceiling on any single unit in the same instant, both of them being the same quarter. With the Lord and the Kastellan at 315 that is 1,544, and the 456 left over buys command groups, the Banner of the First Sworn, and the full hundred points of powers and items each vampire can carry. It fields no Undead at all, so it owes no Necromancer. It also has no second line, so when the Sworn break there is nothing behind them.

*What is different at the table.* The legion may not choose Flee as a Charge Reaction and may never pursue: it breaks a unit, lets it go, reforms without testing to restrain, and holds what it is standing on. Anything in base contact with one of its Vampire characters is two points of Leadership down while it is there. None of the vampires are Unstable, so unlike the Skeletons behind them they take Break tests and run when they lose — not destroyed for it, since a broken unit flees and may rally like anybody else's, but unable to crumble in place and go on fighting, and beyond the reach of Invocation afterwards. The characters must duel whenever a duel is offered and are healed for winning. Nothing shoots. A quarter of the army is knights at Weapon Skill 5 with a single Attack, and no build avoids it. The dead are still there, still cost two and a half points, and no longer excuse the army from buying vampires.
