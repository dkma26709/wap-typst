// Zombie Pirates 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "zombie-pirates",
  army: "Zombie Pirates",
  version: "3.0",
  layout: "army",
  cover: "covers/zombie-pirates.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Zombie Pirates 3.0")

#cover(
  title: "Zombie Pirates",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/zombie-pirates.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Zombie Pirates*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Zombie Pirate army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Zombie Pirate units, and these are detailed here.

#namecost("THE GENERALS OF UNDEATH", "")

If your army contains any Undead units, you must include at least one character that is a Wizard that uses the Lore of Necromancy.

#namecost("Slain General", "")

At the end of the phase in which the General is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the General, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Necromancy, no unit in the army needs to take this Leadership test while at least one of them remain.

#namecost("Battle Standards", "")

In addition to the normal rules for the army Battle Standard, units of Undead within 12" of their Battle Standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the Army General.

#namecost("Characters and Units", "")

Characters who are not Undead may join Undead units despite not being Unstable themselves. Mounted Characters ignore the Undead special rule of the mount. If an Undead unit would get destroyed as a result of Unstable, any remaining character(s) will need to take a Break test as normal the same phase, using the Leadership modifier that they lost the combat by.

#namecost("THE RED THIRST", "")

Roll a D6 at the end of each Close Combat phase in which one or more models was slain by a Vampire with this special rule. On a 5+, the Vampire recovers a single Wound, up to their starting value (excluding additional Wounds from mounts). This does not work against Animated Constructs, Daemons, Forest Spirits or Vampires.

#namecost("UNDEAD", "")

All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. In addition, they ignore the Independent special rule. However, they may make march moves if they are within the Army General's Inspiring Presence range or are joined by a character with the Lore of Necromancy.

#namecost("VAMPIRIC", "")

Models with the Vampiric special rule have the Fear and Immunity (Psychology) special rules. In addition, models suffer a \-1 penalty To Wound rolls against them, unless they are using Magical Attacks or Flaming Attacks. However, Vampiric models treat all rivers as Deadly Terrain unless they are mounted.

#namecost("WATERLOGGED WEAPONS", "")

Models with this special rule must roll a D6 for every To Hit roll of 1 with missile weapons that they make. On a 1\-3, resolve the Hit against the model itself. Artillery weapons deduct 1 from the result rolled on the Blackpowder Misfire Chart.

#namecost("SWIVEL GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Multiple Wounds (D3), Ponderous"))
#namecost("VOLLEY GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Multiple Shots (D6), Ponderous, Rapid Fire"))
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

Remains in play. _Spiritual Vortex_ is a *summoning* spell with a range of 24" that summons the 5" template, which may be placed over an enemy unit. While the spell is in effect, the template counts as Dangerous Terrain, and enemy units within 6" of it suffer \-1 to their Leadership.

#namecost("CURSE OF YEARS", "")
#namecost("Level 4 Cast on 12+", "")

Remains in Play. _Curse of Years_ is a *hex* spell with a range of 18". When cast, roll a D6 for every model in the target unit – on a score of 6 the model suffers a Wound which Ignores Armour Saves. At the end of the next Magic phase, roll again for each model in the unit, they will suffer a Wound on a 5+, and so on, to a maximum of 2+.

#namecost("WIND OF UNDEATH", "")
#namecost("Level 4 Cast on 13+", "")

_Wind of Undeath_ is a *direct damage aura* spell with a range of 12". Each unit within range suffer 2D6 Strength 3 Hits which Ignores Armour Saves.
]

= THE LORE OF THE DEEP

#columns(2)[
#namecost("KISS OF THE DEEP", "")
#namecost("Lore Attribute", "")

Whenever a spell from the Lore of the Deep is cast on an enemy unit, that unit also suffers D6 Strength 1 Hits which Ignores Armour Saves in addition to the effects of the spell.

#namecost("TIDECALL", "")
#namecost("Signature Spell Cast on 6+", "")

_Tidecall_ is a *direct damage* spell. The caster makes a Strength 2 Breath Weapon Attack with the Ignores Armour Saves special rule. This may be cast in close combat, following the normal rules for Breath Weapons.

#namecost("BLOOD IN THE WATER", "")
#namecost("Level 1 Cast on 5+", "")

_Blood in the Water_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, all models in the target unit gets to immediately make an additional Attack for every unsaved Wound they cause in Close Combat. These Attacks can generate additional Attacks to a maximum of +2 Attacks per attacking model in the unit.

#namecost("COUNTER-CURRENT", "")
#namecost("Level 1 Cast on 5+", "")

Remains in play. _Counter-Current_ is a *hex* spell with a range of 24". While the spell is in effect, the target halves all its movement (rounding up) while moving closer to the caster and while being within their front arc.

#namecost("FOG OF THE DAMNED", "")
#namecost("Level 1 Cast on 6+", "")

Remains in Play. _Fog of the Damned_ is a *hex* spell with a range of 24". While the spell is in effect, the target cannot gain combat resolution bonuses from Ranks or Outnumber.

#namecost("PRESSURE OF THE DEEP", "")
#namecost("Level 2 Cast on 6+", "")

_Pressure of the Deep_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target must take D6 Toughness tests. Each failed Toughness test causes a Wound which Ignores Armour Saves.

#namecost("ABYSSAL DARKNESS", "")
#namecost("Level 2 Cast on 7+", "")

_Abyssal Darkness_ is an *augment* spell that is cast on the Wizard itself. Until the start of the caster's next Magic phase all missile attacks targeted at the Wizard and any unit they are with suffer a \-1 To Hit penalty, and enemies need to be within 18" to be able to draw Line of Sight to them.

#namecost("GAZE INTO THE ABYSS", "")
#namecost("Level 2 Cast on 7+", "")

_Gaze Into the Abyss_ is a *hex* spell with a range of 24". The target unit suffers \-1 Weapon Skill, \-1 Initiative and \-2 Leadership until the start of the caster's next Magic Phase.

#namecost("STEED OF TIDES", "")
#namecost("Level 3 Cast on 9+", "")

_Steed of Tides_ is a *conveyance* spell with a range of 18". The target is immediately picked up and may be moved to any position on the battlefield within 3D6" of their original position (or within any water terrain feature on the battlefield), just like a summoning spell.

#namecost("WATERY GRAVE", "")
#namecost("Level 3 Cast on 9+", "")

_Watery Grave_ is a *hex* spell with a range of 24". The target unit counts as moving through dangerous terrain until the start of the caster's next Magic phase. For every 4" the unit moves while the spell is in effect, the chance of them failing the test increases by +1.

#namecost("ARCANE CORRASION", "")
#namecost("Level 3 Cast on 10+", "")

_Arcane Corrasion_ is a *magic missile* that causes a number of Strength 4 Hits depending on the distance to the target. If the target is within less than 12" it suffers D6 Hits. If the target is within 12" to 24" it suffers 2D6 Hits. If the target is within 24" to 36" it suffers 3D6 Hits.

#namecost("DENIZENS OF THE DEEP", "")
#namecost("Level 4 Cast on 12+", "")

_Denizens of the Deep_ is a *direct damage* spell with a range of 24" that causes 6D6 Strength 2 Hits.

#namecost("KRAKEN'S PULL", "")
#namecost("Level 4 Cast on 12+", "")

Remains in Play. _Kraken's Pull_ is a *magical vortex* that uses the small round template. Any model touched by the template must pass a Strength test or suffer a Wound which Ignores Armour Saves.

#namecost("VORPAL MAELSTROM", "")
#namecost("Level 4 Cast on 13+", "")

_Vorpal Maelstrom_ is a *direct damage* spell. Place the large template anywhere within 18" of the Wizard; it then scatters D6". All models under the template suffer a Strength Hit equal to their Unit Strength plus 2. In addition, any surviving models will have their Movement value lowered by half until the start of the caster's next Magic Phase.
]

= VAMPIRIC POWERS

#columns(2)[
*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish.*

#namecost("RED FURY", "30 points")

For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.

#namecost("UNHOLY REGENERATION", "30 points")

The model gains the Regeneration (4+) special rule.

#namecost("CURSE OF THE REVENANT", "20 points")

The model has a 3+ invulnerable save when they have a single Wound remaining (if the model suffers multiple Wounds in a single turn, it is reduced to 1 Wound and may then attempt to take this invulnerable save).

#namecost("FOG OF DECEPTION", "20 points")

The Vampire and any unit they are in may re-deploy themselves wholly within 12" from their original location after all other units have been positioned, but before Scouts are placed on the table.

#namecost("FEAR INCARNATE", "20 points")

All enemy units in base contact with the model must pass a Leadership test at the start of each round of close combat or suffer \-1 To Hit this round.

#namecost("FLYING HORROR", "20 points")

Model on foot only. Thе model gains the Fly (10) special rule.

#namecost("VOICES FROM THE DEEP", "20 points")

When casting spells from the Lore of the Deep, the model may add a +D3 casting bonus once per Magic phase.

#namecost("FAR-REACHING WILL", "15 points")

The Vampire allows one unit of Zombie Deckhands to deploy as Ambushers.

#namecost("SUPERNATURAL HORROR", "15 points")

The model gains the Terror special rule.

#namecost("SWASHBUCKLER", "15 points")

Model on foot only. The model has the Parry (6+) special rule. Whenever the model rolls a natural 6 when taking a Parry save, it automatically inflicts an extra Hit back onto the model or unit that struck the blow.

#namecost("TAUNTING CURSES", "15 points")

Whenever the Vampire successfully casts one or more spells on an enemy unit, that unit suffers \-1 to their Leadership until the start of your next Magic phase. In addition, when the Vampire issues a challenge, nominate an enemy character in the same close combat. That model must pass a Leadership test or be forced to accept the challenge.

#namecost("TRANSFIX", "15 points")

At the beginning of the Close Combat phase, select one model in base contact with the Vampire. The victim must pass a Leadership test or be unable to attack in that Close Combat phase and all attacks directed against the victim will hit automatically.

#namecost("HORNSWAGGLE", "10 points")

At the beginning of the Close combat phase, roll a D6; on a 4+ the enemy unit will suffer \-1 to their Weapon Skill until the beginning of the next Close combat phase.

#namecost("STORMCALL", "10 points")

The Vampire gains the _Storm of Cronos_ spell from the Lore of Heavens as a Bound Spell.

#namecost("UNBENDING WILLPOWER", "10 points")

Units of Undead within 6" of one or more models with this power suffer one less Wound than they normally would due to the Unstable special rule or following the death of the army's General. Note that this is not cumulative with the Battle Standard.

#namecost("WHARF RATS", "10 points")

All enemy units in base contact with the Vampire suffer D6 Strength 1 Attacks with the Always Strikes Last and Poisoned Attacks special rules in each round of Close Combat.

#namecost("CLOYING MISTS", "5 points")

Enemy models in base contact with the model are reduced to Initiative 1.

#namecost("HONOUR OR DEATH", "5 points")

At the start of a challenge, the enemy character selected to take on the Vampire must take a Leadership test before any blows are struck. If failed, the enemy model will fight with Weapon Skill 1 for the remainder of the turn.
]

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Zombie Pirates. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("STAR-METAL HARPOON", "50 points")

Polearm. Attacks made with this weapon have the Heroic Killing Blow special rule. Additionally, they may reroll failed To Wound rolls against models with the Aquatic special rule.

#namecost("THE BLOODY NORA", "35 points")

The wielder of this weapon gains D3+2 Extra Attacks on any turn they charge, and gives them +2 Extra Attacks in subsequent rounds.

#namecost("LUCKY LEVI'S HOOK HAND", "35 points")

Additional hand weapon. All attacks with this hook are made at +2 Strength.

#namecost("SLOPPY CRUICKSHANK'S LONG-LOST", "")
#namecost("CUTLASS", "35 points")

The first attack directed towards the wielder in each round of Close Combat automatically misses. In addition, they gain +1 to Hit and the Armour Piercing (1) special rule.

#namecost("KRAKEN FANG", "30 points")

Additional hand weapon. The Kraken Fang gives the wielder the Ice Attacks special rule.

#namecost("DIRTY SERPENT", "30 points")

The Dirty Serpent gives the wielder +1 Strength and the Armour Piercing (3) special rule.

#namecost("PRESS-GANGER'S CUTLASS", "30 points")

If the wielder is in a unit of Undead Infantry, for each model they slay in close combat, an extra model is added to the unit, just like a summoning spell.

#namecost("POSSESSED PISTOL", "10 points")

Pistol. Shots from this weapon ignore penalties for cover. Additionally, the wielder can shoot at units in close combat as if the target were outside of combat, even when the wielder is in close combat. Normal rules for Line of Sight still apply.

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF THE DEPTHS", "50 points")

Medium armour. The Armour of the Depths gives the wearer the Regeneration (5+) special rule, and enemies attempting to strike them suffer \-1 To Hit in close combat.

#namecost("BLOODY BILL'S BUCKLER", "35 points")

Buckler. The wielder gains the Parry (6+) special rule, and any enemy attempting to strike him in Close Combat suffers \-1 To Hit.

#namecost("HULL-FUSED ARMOUR", "35 points")

Model on foot only. Medium armour. The wearer has a 3+ armour save that cannot be improved by any means, and may reroll failed armour saves. However, they also have the Flammable special rule.

#namecost("CRUSTACEAN ARMOUR", "35 points")

Light armour. The bearer has the Natural Armour save (5+) and the Unbearable Stench special rule (see Rotting Leviathans).

#namecost("SEA DRAGON BUCKLER", "20 points")

Buckler. The Sea Dragon Buckler gives the wearer a 5+ armour save against missile attacks and the Magical Ward (6+) special rule.

#namecost("CORAL-GROWTH HELMET", "10 points")

The wearer of this item gains the Natural Armour (6+) special rule. In addition, their armour save can never be reduced to less than 6+.

#entry("TALISMANS")
#namecost("PANTELEON'S PENDANT", "45 points")

The wearer has the Regeneration (6+) special rule. Additionally, if the bearer is killed by a spell, missile or close combat attack, they may take a Leadership test on their own unmodified value. If passed, the model is brought back to life with one Wound remaining.

#namecost("AMULET OF EVANESCENSE", "40 points")

Model on foot only. The wearer gains the Ethereal special rule. However, it may not join non-Ethereal units or take any weapons or armour.

#namecost("RING OF SEA MIST", "30 points")

Enemies suffer \-1 To Hit with missile weapons against the bearer and any unit they are with. In addition, all enemy models that charges into base contact with the bearer or their unit must take a Dangerous Terrain test.

#namecost("THE RING OF UNDEATH", "25 points")

The model wearing this item automatically regains one Wound suffered earlier during the game at the start of each of your turns.

#namecost("EX-PARROT", "15 points")

The Ex-Parrot gives the model the Magic Resistance (1) and Magical Ward (6+) special rules.

#entry("ARCANE ITEMS")
#namecost("CURSED BULLION OF BOGENHAFEN", "35 points")

Relic. Bound Spell. This item contains the _Burning Head_ spell from the Lore of Fire.

#namecost("THE EBONY SKULLS", "35 points")

Relic. Bound Spell. This item contains the _Raise Dead_ spell from the Lore of Necromancy.

#namecost("SPELL OF THE NECROMANCER'S", "")
#namecost("APPRENTICE", "35 points")

Relic. Bound Spell. This item contains the _Deathly Cabal_ spell from the Lore of Necromancy.

#runin[LUCKY LEVI]'#runin[S KEEPSAKE 20 points] Relic. The bearer may re-roll the number of models gained when casting summoning spells from the Lore of Necromancy.

#entry("ENCHANTED ITEMS")
#namecost("DOUBLOON OF CASTELO NOVO", "40 points")

Any enemy unit in base contact with the bearer of this item at the start of each Close Combat phase suffers 2D6 Strength 3 Hits.

#namecost("GENTLEMAN JENKIN'S TRUSTY", "")
#namecost("COMPASS", "25 points")

Model on foot only. The character and one unit of your choice that they may join, may deploy as Scouts. In addition, they may re-roll all failed rolls to Reform during the Battle.

#namecost("PEARL OF THE KRAKEN SEA", "25 points")

All Undead models in a unit joined by the bearer of this item gain the Frenzy special rule.

#namecost("DEAD MAN'S CHEST", "20 points")

All Undead models in a unit joined by the bearer of this item gain +1 To Hit in the first round of close combat.

#namecost("MAD MULLET'S SPYIN' GLASS", "20 points")

This item gives the model the Sniper special rule.

#namecost("VORGO NUGGET", "15 points")

Vampire only. The bearer gains the Immunity (Ice Attacks) special rule. In addition, they gain +2 to their rolls for The Red Thirst. If the bearer has killed one or more models that round of close combat and the enemy unit Breaks, they must pass a Leadership test in order to pursue the enemy; if failed, they may not pursue.

#namecost("JELLYFISH IN A JAR", "10 points")

The bearer’s close combat attacks automatically Wound on To Hit rolls of 6.

#entry("MAGIC STANDARDS")
#namecost("BLOODY REAVER COLOURS", "35 points")

Depth Guard only. The unit carrying this standard has a Magical Ward (5+) against missile attacks and the Vanguard special rule.

#namecost("SKULL AND CROSSBONES", "35 points")

The unit carrying this standard gains the Terror and Vanguard special rules.

#namecost("BLOODIED BANNER OF SLAYERS", "25 points")

The unit carrying this standard gains the Multiple Wounds (2) special rule.

#namecost("STANDARD OF THE SPITEFUL SHOT", "25 points")

All Zombies in the unit carrying this standard ignores all To Hit modifiers.

#namecost("WAR STANDARD O' THE CORPSE", "")
#namecost("SURGEONS", "25 points")

The unit carrying this standard gains the Regeneration (6+) special rule.

#namecost("FLAG OF ETERNAL SERVICE", "20 points")

The unit carrying this standard suffers half the number of wounds they normally would due to the Unstable special rule or following the death of the Army General.

#namecost("SINISTER FIGUREHEAD", "20 points")

Any enemy unit in base contact with the unit carrying this standard must re-roll successful Leadership tests. This has no effect on models with Immunity (Psychology).

= CHARACTERS

#entry("VAMPIRE CAPTAINS", first: true)
#profile(
  (name: "Fleet Admiral", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 190),
  (name: "Fleet Captain", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Vampire who is a Wizard uses one of the following Lores of Magic:")

- Death
- Deep
- Necromancy
- Shadow

#field("SPECIAL RULES", "The Red Thirst, Vampiric")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard (Admiral only) +105 points
  - Level 4 Wizard (Admiral only) +140 points
- May choose one of the following:
  - Buckler +3 points
  - Additional hand weapon +5 points
  - Polearm +10 points
- May take a pistol +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on a Rotting Promethean +45 points
- A Fleet Captain may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Fleet Admiral may take Vampiric Powers and/or Magic Items up to a total of 100 points

#entry("GUNNERY WIGHT")
#profile(
  (name: "Gunnery Wight", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 8, points: 40),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Wight)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
- *Master Gunner:* A model with this upgrade allows any friendly Undead unit they join to re-roll 1's To Hit with missile weapons. Alternatively, one war machine that is within 3" of a Master Gunner can use their Ballistic Skill or re-roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Gunnery Wight are fired.

#field("OPTIONS", "")

- May choose one of the following:
  - Buckler +3 points
  - Additional hand weapon +5 points
  - Polearm +10 points
- May choose one of the following:
  - Pistol +4 points
  - Handgun +6 points
  - Swivel Gun +15 points
  - Volley Gun +20 points
- May take light armour +3 points
- May be mounted on a Rotting Promethean +45 points
- May be upgraded to a Master Gunner +30 points
- One Gunnery Wight may carry the Battle Standard +25 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("PIRATE WARLOCK")
#profile(
  (name: "Pirate Warlock", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Human)")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Pirate Warlock is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Deep
- Fire
- Heavens
- Metal
- Necromancy
- Shadow

#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 50 points

#entry("SYREEN")
#profile(
  (name: "Syreen", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 5, points: 70),
)
#field("TROOP TYPE", "Infantry (Character, Undead, Spirit)")
#field("BASE SIZE", "20x20 or 25x25")
#field("SPECIAL RULES", "Ethereal, Fly (6), Independent, Terror, Undead")

- *Syreen's Call:* At the beginning of each enemy Movement phase, all enemy units that are within 12" and have Line of Sight to the Syreen must pass a Leadership test or move directly towards her using the Random Movement (2D6) this turn, as well as suffer \-1 to their Leadership until the start of their next Movement phase.

#field("NOTES", "")

- A Syreen may never be the Army General.

= CHARACTER MOUNTS

#compact-entry("ROTTING PROMETHEAN")[
#profile(
  (name: "Rotting Promethean", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 2, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Undead, Crustacean)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Aquatic, Killing Blow, Natural Armour (4+), Undead")
]

= CORE UNITS

#entry("ZOMBIE DECKHANDS", first: true)

*Profile M WS BS S T W I A Ld Points* Zombie Deckhand 4 2 3 3 3 1 1 1 2 3.5

#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Undead, Zombie)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, buckler")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May replace bucklers with one of the following:
  - Additional hand weapons +0.5 point/model
  - Polearms +1.5 points/model
- May upgrade one Zombie Deckhand to a Musician +5 points
- May upgrade one Zombie Deckhand to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ZOMBIE GUNNERS")
#profile(
  (name: "Zombie Gunner", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead, Zombie)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, pistol")
#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("OPTIONS", "")

- May replace pistols with one of the following:
  - Grenades +1 point/model
  - Blunderbusses +2 points/model
  - Brace of pistols +2 points/model
  - Handguns +2 points/model
- May upgrade one Zombie Deckhand to a Musician +5 points
- May upgrade one Zombie Deckhand to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("BLOATED CORPSE")
#profile(
  (name: "Bloated Corpse", m: 4, ws: 2, bs: 1, s: 3, t: 4, w: 2, i: 1, a: 1, ld: 2, points: 25),
)
#field("TROOP TYPE", "Infantry (Undead, Zombie)")
#field("BASE SIZE", "25x25 or 30x30")
#field("SPECIAL RULES", "Expendable, Poisoned Attacks, Undead")

- *Gaseous Demise:* When a Bloated Corpse is slain, centre the small template on the model. Any model under the template must pass a Toughness test or suffer one Wound which Ignores Armour Saves.

#field("NOTES", "")

- You may take 1\-2 Bloated Corpses as a single Core choice.

#compact-entry("SCURVY DOGS")[
#profile(
  (name: "Scurvy Dog", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "War Beast (Undead, Canine)")
#field("BASE SIZE", "25x25 or 25x50")
#field("SPECIAL RULES", "Undead")
]

#compact-entry("RAZORTOOTH RATS")[
#profile(
  (name: "Rat Swarm", m: 6, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 4, a: 8, ld: 3, points: 30),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Swarm (Undead, Rodent)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Undead")
]

= SPECIAL UNITS

#entry("DECK DROPPERS", first: true)
#profile(
  (name: "Deck Dropper", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: 17),
  (name: "Fell Bat", m: 1, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 3, points: ""),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Cavalry (Undead, Zombie)")
#field("MOUNT", "Fell Bat (Undead, Chiropter)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, pistol")
#field("SPECIAL RULES", "Fly (9), Undead, Waterlogged Weapons")
#field("OPTIONS", "")

- May replace pistols with one of the following:
  - Grenades free
  - Brace of pistols +1 point/model
  - Handguns +1 point/model

#entry("DECK GUNNERS")
#profile(
  (name: "Deck Gunner", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: 12),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Infantry (Undead, Zombie)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, swivel gun")
#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("OPTIONS", "")

- May replace swivel guns with volley guns +2 points/model

#entry("ANIMATED HULK")
#profile(
  (name: "Animated Hulk", m: 6, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 1, a: "*", ld: 2, points: 30),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Undead, Zombie)")
#field("BASE SIZE", "40x40 or 50x50")
#field("OPTIONS", "")

- May take one of the following:
  - Pincer Claws +3 points/model
  - Salvaged Hulls +3 points/model
  - Tentacles +3 points/model
  - Wreckers +3 points/model

#field("SPECIAL RULES", "Random Attacks (D6), Undead")
#field("UPGRADES", "")

- *Pincer Claws:* The model gains the Armour Piercing (1) special rule.
- *Salvaged Hulls:* The model gains the Natural Armour (5+) special rule.
- *Tentacles:* One enemy model in base contact suffer \-1 Attack.
- *Wreckers:* The model gains the Mighty Blow (1) special rule.

#entry("ROTTING PROMETHEANS")
#profile(
  (name: "Rotting Promethean", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 2, points: 45),
  (name: "Deck Gunner", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: ""),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Beast (Undead, Crustacean)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Aquatic, Killing Blow, Natural Armour (4+), Undead")
#field("UPGRADES", "")

- *Gunnery Mob:* A unit with this upgrade follows the Split Profile rules for Monsters. It includes two Deck Gunners (Undead, Zombie) riders armed with handguns with the Waterlogged Weapons special rule.

#field("OPTIONS", "")

- May take a Gunnery Mob +10 points/model

#entry("CARRONADE")
#profile(
  (name: "Carronade", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
  (name: "Zombie Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Zombie Crew (Undead, Zombie)")
#field("BASE SIZE", "50x75 (Carronade), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, cannon")
#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("OPTIONS", "")

- May take an additional crew +5 points

#entry("MORTAR")
#profile(
  (name: "Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Zombie Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Zombie Crew (Undead, Zombie)")
#field("BASE SIZE", "50x75 (Mortar), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, mortar")
#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("OPTIONS", "")

- May take an additional crew +5 points

= RARE UNITS

#entry("DEPTH GUARD", first: true)
#profile(
  (name: "Depth Guard", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 22),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, heavy armour")
#field("SPECIAL RULES", "Vampiric")
#field("OPTIONS", "")

- May replace hand weapons with polearms +2 points/model
- May upgrade one Depth Guard to a Leader +5 points
- May upgrade one Depth Guard to a Musician +5 points
- May upgrade one Depth Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#entry("ROTTING LEVIATHAN")
#profile(
  (name: "Rotting Leviathan", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: 5, ld: 2, points: 250),
  (name: "Zombie Gunner", m: "-", ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 1, a: 1, ld: 2, points: ""),
)
#field("TROOP TYPE", "Monster (Undead, Crustacean)")
#field("BASE SIZE", "50x100 or 60x100")
#field("CREW", "5 Zombie Gunners (Undead, Zombie)")
#field("EQUIPMENT", "Handguns (Zombie Gunners only)")
#field("SPECIAL RULES", "Aquatic, Killing Blow, Natural Armour (2+), Undead, Waterlogged Weapons")

- *Unbearable Stench:* Enemy units in base contact with a model with this special rule suffer \-1 to their Weapon Skill. This has no effect on Animated Constructs.

#entry("BONE HYDRA")
#profile(
  (name: "Bone Hydra", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: 6, ld: 2, points: 200),
)
#field("TROOP TYPE", "Monster (Undead, Hydra)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Aquatic, Undead")

- *Poison Breath:* A Bone Hydra has a Strength 3 Breath Weapon with the Poisoned Attacks special rule.

#entry("NECROFEX COLOSSUS")
#profile(
  (name: "Necrofex Colossus", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: "*", ld: 8, points: 270),
)
#field("TROOP TYPE", "Monster (Undead, Animated Construct)")
#field("BASE SIZE", "50x100 or 100x150")
#field("EQUIPMENT", "Cannon Arm")

- *Cannon Arm:* A Necrofex Colossus may make shooting attacks like a Cannon, even if it has moved (but not marched). If a Misfire is rolled, the Necrofex Colossus suffers D3 Wounds. Note that it cannot fire Grapeshot.

#field("SPECIAL RULES", "Regeneration (4+), Undead")

- *Vortex of Death:* Any Wizard attempting to cast spells from the Lore of Death or Lore of Necromancy within 12" of the Necrofex Colossus gain a +1 casting bonus.
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

#entry("QUEEN BESS")
#profile(
  (name: "Queen Bess", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 250),
  (name: "Zombie Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "5 Zombie Crew (Undead, Zombie)")
#field("BASE SIZE", "60x100 or 100x150 (Queen Bess), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon")

- *Queen Bess:* Queen Bess is a cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-72\"", "10", "Multiple Wounds (D6+1)"))

Place the small template where the cannon ball lands; then move the template the distance the cannon ball bounces. Any model under the hole suffers a Strength 10 Hit with the Multiple Wounds (D6+1) special rule. Other models touched by the template suffer a Strength 5 Hit.

#field("SPECIAL RULES", "Undead, Waterlogged Weapons")
#field("NOTES", "")

- You may not take more than 1 Queen Bess in your Army.

= SPECIAL CHARACTERS

#entry("LUTHOR HARKON", first: true)
#namecost("Arch-Grand Commodore, Pirate King of the Vampire Coast, Emperor of Lustria", "")
#profile(
  (name: "Luthor Harkon", m: 6, ws: 8, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 320),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, brace of pistols, heavy armour")
#field("MAGIC ITEMS", "")

- *Slann Gold:* Talisman. The Slann Gold gives Luthor Harkon the Magic Resistance (3) special rule. However, all Lizardmen have the Hatred special rule against him.

#field("VAMPIRIC POWERS", "Curse of the Revenant, Hornswaggle, Transfix, Unbending Willpower")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Magical Void:* Luthor Harkon channels dispel dice like a Level 4 Wizard. In addition, he does so on a 4+ rather than a 6.
- *Split Personality:* At the start of each of the Vampire player's turns and whenever Luthor suffers a Wound, roll a D6 to determine which personality is in control. Each effect lasts until a new result is generated from this table.

#chart((("D6", "Result"), ("1", "Brainlock: Luthor has the Stupidity special rule, and his Inspiring Presence has no effect."), ("2", "The Coward: Luthor cannot issue or accept challenges and must roll an additional D6 when taking
Leadership tests. In addition, his Inspiring Presence is lowered by 6."), ("3", "The Mad: Luthor gains the Frenzy special rule."), ("4", "The Bad: Luthor gains the Hatred special rule."), ("5", "The Narcissist: Luthor must issue and accept challenges when possible. While in a challenge, he
gains +1 To Hit and To Wound."), ("6", "The Pirate King: Luthor gains the Inspiring Presence (6) special rule.")))
#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#field("NOTES", "")

- Luthor Harkon must be the Army General.

#entry("COUNT NOCTILUS")
#namecost("Captain of the Bloody Reaver, Admiral of the Dreadfleet", "")
#profile(
  (name: "Count Noctilus", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 330),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, heavy armour")
#field("MAGIC", "Count Noctilus is a Level 3 Wizard who uses spells from the following Lores of Magic:")

- Necromancy
- Shadow

He may choose spells from both Lores in any combination as he wishes.

#field("MAGIC ITEMS", "")

- *The Stone of Schwartzhafen:* Arcane Item. Relic. This item gives Noctilus a +1 casting bonus for every friendly unit within 6".

#field("VAMPIRIC POWERS", "Fear Incarnate")
#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *The Bloody Reaver Deck Guard:* If Count Noctilus is your Army General, you may upgrade one unit of Depth Guard to The Bloody Reaver Deck Guard for a cost of +2 points per model. This unit has the Hatred special rule.
- *Wraith Storm*: Bound spell (Level 2, cast on 8+). _Wraith Storm_ is a *direct damage area* spell with a range of 18" that uses the large template. Any model touched by the template takes a Strength 3 hit.

#field("OPTIONS", "")

- May be mounted on a Necrofex Colossus +270 points
- May take Magic Items up to a total of 75 points

#entry("CYLOSTRA DIREFIN")
#namecost("Siren of the Storm", "")
#profile(
  (name: "Cylostra Direfin", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 1, ld: 8, points: 260),
  (name: "Damned Knight", m: 4, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 12),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Spirit)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Cylosta Direfin is a Level 3 Wizard who uses the Lore of the Deep.")
#field("MAGIC ITEMS", "")

- *The Bordeleaux Flabellum:* Arcane Item. Relic. This item allows Cylostra to roll one additional dice when channelling Power and Dispel dice. In addition, if Cylostra rolls a Miscast, she may re-roll the result on the Miscast table.

#field("SPECIAL RULES", "Ethereal, Fly (6), Terror, Undead")

- *Song of Enthrallment:* At the beginning of each enemy Movement phase, all enemy units that are within 18" and have Line of Sight to Cylostra Direfin must pass a Leadership test or move directly towards her using the Random Movement (2D6) this turn, as well as suffer \-2 to their Leadership until the start of their next Movement phase.
- *Ghosts of the Past:* If Cylostra Direfin is in your army, you may include an Infantry (Undead) unit of 10+ Damned Knights as a Special Unit. This unit has the Ethereal and Undead special rule, and are armed with hand weapons, shields and heavy armour.

#entry("CAPTAIN DREKLA")
#namecost("The Silver Hook of Sartosa", "")
#profile(
  (name: "Captain Drekla", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 135),
)
#field("TROOP TYPE", "Infantry (Special Character, Vampire)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, pistol, light armour")
#field("MAGIC ITEMS", "")

- *The Silver Hook:* Magic Weapon. Additional hand weapon. This weapon gives Drekla the Always Strikes First and Armour Piercing (1) special rules.
- *Skull of King Kalhazzar:* Talisman. This item gives Drekla a Magical Ward (6+).

#field("SPECIAL RULES", "The Red Thirst, Vampiric")

- *Right Hand of the Pirate King:* If Drekla is in base contact with Luthor Harkon, Luthor gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against Drekla instead. If Luthor Harkon is slain, Drekla will be subject to the Hatred and Frenzy special rules for the remainder of the game.

#entry("BLACK JENS")
#namecost("Chief Courtier and Chancellor to Luthor Harkon", "")
#profile(
  (name: "Black Jens", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 3, ld: 7, points: 60),
)
#field("TROOP TYPE", "Infantry (Special Character, Ghoul)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Fear, Poisoned Attacks")

- *Chief Courtier:* If Luthor Harkon is slain or currently subject to Brainlock, Black Jens will count as the Army General.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("VANGHEIST")
#namecost("Captain of the Shadewraith", "")
#profile(
  (name: "Vangheist", m: 6, ws: 5, bs: 0, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 7, points: 170),
  (name: "Damned Crew", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 4, points: 12),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Ghost)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("MAGIC ITEMS", "")

- *The Traitor's Shot:* Pistol. Shots with this weapon always Hits on a 4+ and has the Sniper special rule. In addition, it has the Multiple Shots (3) special rule.
- *Von Zeich's Last Ingot:* Talisman. This item allows Vangheist to re-roll failed Ward saves against Magical Attacks.
- *The Liber Malefic Nautica:* Enchanted Item. This item gives Vangheist and his unit the Ambushers special rule.

#field("SPECIAL RULES", "Ethereal, Terror, Undead")

- *Damned Crew:* Vangheist must be accompanied by an Infantry (Undead, Ghost) unit of 10\-30 Damned Crew as a Special Unit. This unit has the Ethereal and Undead special rules, and are armed with two hand weapons. Vangheist is the unit's Leader and may never choose to leave this unit.

#entry("SKRETCH HALF-DEAD")
#namecost("Captain of the Skabrus", "")
#profile(
  (name: "Skretch Half-Dead", m: 5, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 5, points: 80),
  (name: "Verminous Crew", m: 5, ws: 2, bs: 1, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 2, points: 5),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Skaven)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, pistol")

- *Warp-cage Heart:* Talisman. Skretch has the Magic Resistance (1) and Regeneration (5+) special rules. In addition, at the start of each round of Close Combat, all enemy models in base contact with Skretch must pass a Toughness test or suffer a single wound with the Ignores Armour Saves and Magical Attacks special rules.

#field("SPECIAL RULES", "Undead")

- *Verminous Crew:* Skretch Half-Dead must be accompanied by an Infantry (Undead, Skaven) unit of 20+ Verminous Crew as a Core Unit. This unit has the Undead special rule, and are armed with two hand weapons. Skretch Half-Dead is the unit's Leader and may never choose to leave this unit.

#entry("RED HENRI")
#namecost("Captain of the Butcher Ship", "")
#profile(
  (name: "Red Henri", m: 4, ws: 4, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 3, points: 90),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Zombie)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("MAGIC ITEMS", "")

- *Cursed Morion Helm:* Magic Armour. This item gives Red Henri a 6+ armour save.

#field("SPECIAL RULES", "Gaseous Demise (see Bloated Corpses), Undead")
#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#entry("KETERLYN, THE BRINE WIFE")
#namecost("The Syreen of the Cape Ruin", "")
#profile(
  (name: "The Brine Wife", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 6, points: 140),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Ghost)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "The Brine Wife is a Level 1 Wizard who uses spells from Lore of the Deep.")
#field("SPECIAL RULES", "Ethereal, Fly (6), Terror, Undead")

- *Alluring Song:* The Brine Wife has the Syreen's Call (see Syreens) special rule. In addition, enemy units must re-roll successful Leadership tests for this special rule.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Antti Sinivuori", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
