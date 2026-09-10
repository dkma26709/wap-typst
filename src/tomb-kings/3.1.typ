// Tomb Kings 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "tomb-kings",
  army: "Tomb Kings",
  version: "3.1",
  layout: "army",
  cover: "covers/tomb-kings.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Tomb Kings 3.1")

#cover(
  title: "Tomb Kings",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/tomb-kings.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Tomb Kings*, version 3.1 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Tomb Kings army, along with the rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring 'army special rules' that apply to several Tomb Kings units, and these are detailed below.

#namecost("ARROWS OF ASAPH", "")

Units with the Arrows of Asaph special rule ignore all shooting modifiers that are not caused by magic items or spells.

#namecost("CURSE OF THE NECROPOLIS", "")

If a model with this special rule is removed from play, then the enemy unit responsible – by inflicting the final wound, for example – will immediately suffer D6 Strength 5 hits (if the model was a Tomb King), D6 Strength 4 hits (if the model was a Tomb Prince) or D3 Strength 3 Hits (if the model was a Mummy). Any Wounds caused have the Ignores Armour Saves special rule.

If more than one unit is responsible for the destruction of the model with this special rule (it is destroyed by the combat result in a multiple combat due to its Unstable rule, for example), then all guilty units are affected. If the model is killed by a character, then only that model is cursed, and not the whole enemy unit.

#namecost("ENTOMBED BENEATH THE SANDS", "")

A unit with this ability has the Ambushers special rule, with the following exceptions.

When these units enter the battle in the Remaining Moves sub-phase, they do not move onto the board as reinforcements in the normal way. Instead, when a unit that is Entombed Beneath the Sands enters the battle, place a small marker (max 1" diameter) anywhere on the battlefield, but not in impassable terrain or within 1" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the emerging unit in a legal formation such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your unit into base contact with the enemy unit in their front arc; your unit will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the unit does not emerge. Instead, remove the marker and roll on the Mishap table. If a unit emerges successfully, it may act normally this turn.

If you have several units Entombed Beneath the Sands, then repeat this process, one unit at a time.

#namecost("ENTOMBED BENEATH THE SANDS", "")
#chartlabel("MISHAP TABLE")
#chart((("1-2", "Reclaimed by the Desert: The entire unit is
destroyed and treated as casualties."), ("3-4", "Buried Too Deep: The unit is delayed and
does not emerge – but you'll be able to try
again next turn to see if it arrives, following
the same process."), ("5-6", "Shifting Sands: The unit enters the
battlefield from any point on a randomly
determined board edge, moving on using the
rules for reinforcements.")))
#chartlabel("THE HIEROPHANT")

Your army must include at least one Wizard to be the army's Hierophant. If your army includes several Wizards, this will be the one with the highest Wizard Level. If two or more models have the highest Wizard Level, choose which of them will be the Hierophant. The Hierophant must use the Lore of Nehekhara.

The Hierophant, and all models in the same unit, have the Regeneration (6+) special rule.

At the end of the phase in which the Hierophant is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units (except characters) on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the Hierophant, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Nehekhara, then one of these models may be designated the new Hierophant by passing a Leadership test. If passed, they become the new Hierophant following all the normal rules, and no unit in the army needs to take the Leadership test to avoid losing Wounds while they remain alive.

#namecost("INDOMITABLE", "")

Models with this special rule suffer 1 Wound less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.

#namecost("MY WILL BE DONE", "")

Any unit of Undead accompanied by a model with this rule uses the character's unmodified Weapon Skill in place of its own (use the highest Weapon Skill if the unit is joined by several characters with this rule).

If all characters with the My Will Be Done rule in the unit are killed, the unit immediately reverts to using its own Weapon Skill. This special rule has no effect on mounts or any other characters except Tomb Heralds – these always use their own Weapon Skill.

#namecost("UNDEAD", "")

All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. In addition, they ignore the Independent special rule. However, they may make march moves if they are within 6" of the Hierophant or are joined by a character with the My Will Be Done special rule.

#namecost("BANNER OF THE KING", "")

In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.
]

= THE LORE OF NEHEKHARA

#columns(2)[
#namecost("THE RESTLESS DEAD", "")
#namecost("Lore Attribute", "")

Each time a Wizard successfully casts an *augment* or *conveyance* spell from the Lore of Nehekhara, the target of the spell immediately recovers a number of Wounds' worth of models, just like a summoning spell. Core Units (except Chariots) recover D6+1 Wounds. Special Units, Chariots and Monstrous Cavalry recover D3 Wounds. All other units recover 1 Wound.

#namecost("KHSAR'S INCANTATION OF THE DESERT", "")
#namecost("WIND", "")
#namecost("Signature Spell Cast on 5+", "")

_Khsar's Incantation of the Desert Wind_ is a *conveyance* spell with a range of 24". The target can immediately make a normal move as if it were the Remaining Moves sub-phase.

#namecost("DJEDRA'S INCANTATION OF THE ETERNAL", "")
#namecost("DEAD", "")
#namecost("Level 1 Cast on 5+", "")

Remains in play. _Djedra's Incantation of the Eternal Dead_ is an *augment* spell that is cast on the Wizard itself (this can trigger _The Restless Dead_ for any unit they are with). While this spell is in effect, add +1 to the result of all Wounds recovered from the _The Restless Dead_ due to spells being cast by this Wizard.

#namecost("SEKHUBI'S INCANTATION OF", "")
#namecost("RETRIBUTION", "")
#namecost("Level 1 Cast on 5+", "")

_Sekhubi's Incantation of Retribution_ is a *magic missile* with a range of 30" that causes D6 Strength 4 hits.

#namecost("DJAF'S INCANTATION OF CURSED BLADES", "")
#namecost("Level 1 Cast on 6+", "")

_Djaf's Incantation of Cursed Blades_ is an *augment* spell with a range of 18". The target unit's close combat Attacks gain the Killing Blow special rule until the start of your next Magic phase.

#namecost("MERNEPTAH'S INCANTATION OF THE", "")
#namecost("SCARAB SONG", "")
#namecost("Level 2 Cast on 8+", "")

_Merneptah's Scroll of the Scarab Song_ is a *direct damage area* spell with a range of 24" that uses the large round template. All models under the template suffer a Strength 1 hit with the Poisoned Attacks special rule.

#namecost("PTRA'S INCANTATION OF RIGHTEOUS", "")
#namecost("SMITING", "")
#namecost("Level 2 Cast on 8+", "")

_Ptra's Incantation of Righteous Smiting_ is an *augment* spell with a range of 18". All models in the target unit gain +1 Attack and may fire an additional shot with missile weapons (excluding artillery) until the start of the caster's next Magic phase.

#namecost("NERU'S INCANTATION OF PROTECTION", "")
#namecost("Level 2 Cast on 10+", "")

_Neru's Incantation of Protection_ is an *augment* spell with a range of 18". The target unit gains a Magical Ward (5+) until the start of the caster's next Magic phase.

#namecost("RETURN OF THE GOLDEN AGE", "")
#namecost("Level 3 Cast on 10+", "")

_Return of the Golden Age_ is an *augment* spell with a range of 18". The target unit gains +1 Weapon Skill, Strength and Initiative until the start of the caster's next Magic phase.

#namecost("USIRIAN'S INCANTATION OF VENGEANCE", "")
#namecost("Level 3 Cast on 10+", "")

_Usirian's Incantation of Vengeance_ is a *hex* spell with a range of 24". The target unit suffers -D3 to its Movement characteristic (to a minimum of 1) and treats all terrain (even open ground) as Dangerous Terrain, testing every time it moves (including when charging, fleeing, pursuing, moving compulsorily, etc.) until the start of the caster's next Magic phase.

#namecost("NEFERRE'S INCANTATION OF QUAKING", "")
#namecost("HORROR", "")
#namecost("Level 3 Cast on 12+", "")

_Neferre's Incantation of Quaking Horror_ is a *hex* spell with a range of 24". The target halves their Leadership (after modifiers, rounding up) until the start of the caster's next Magic phase.

#namecost("USEKHP'S INCANTATION OF", "")
#namecost("DESICCATION", "")
#namecost("Level 4 Cast on 12+", "")

_Usekhp's Incantation of Desiccation_ is a *hex* spell with a range of 24". The target unit has \-1 Strength and \-1 Toughness (to a minimum of 1) until the start of the caster's next Magic phase.

#namecost("MANKARA'S INCANTATION OF URGENCY", "")
#namecost("Level 4 Cast on 13+", "")

_Mankara's Incantation of Urgency_ is a *conveyance* spell with a range of 12". The target can immediately move using the Random Movement (3D6) special rule.

#namecost("SAKHMET'S INCANTATION OF THE", "")
#namecost("SKULLSTORM", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _Sakhmet's Incantation of the Skullstorm_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 5 hit. Any unit that suffers one or more casualties must take an immediate Panic test.
]

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Tomb Kings. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("DESTROYER OF ETERNITIES", "60 points")

Tomb King on foot only. Great weapon. Attacks made with the Destroyer of Eternities have the Heroic Killing Blow special rule. In addition, all enemy models in base contact with the wielder suffer a single automatic hit (with Heroic Killing Blow) after resolving the model's normal attacks. In a challenge, only the models engaged in the challenge count as being in base contact with the Tomb King.

#namecost("SPEAR OF ANTARHAK", "50 points")

Spear/light lance. For every unsaved Wound inflicted by the Spear of Antarhak, the wielder immediately regains a single Wound lost earlier in the battle. If the bearer is already at their starting number of Wounds and inflicts another unsaved Wound with this weapon, they gain the Regeneration (4+) special rule until the end of the next player turn.

#namecost("CROOK AND FLAIL OF RADIANCE", "45 points")

Two hand weapons. These weapons give the wielder the Always Strikes First special rule and a +1 Combat Resolution bonus.

#runin[PHAKTH]'#runin[S BLADES OF JUSTICE 35 points] Infantry only. Two hand weapons. The wielder of these weapons gain +1 Attack for each complete rank any one enemy unit in base contact with them has.

#namecost("DAGGER OF BOUND SOULS", "30 points")

No Magical Ward saves can be taken against Wounds caused by this item. In addition, any model that suffers an unsaved Wound from it must pass a Toughness test or suffer an additional Wound with no saves allowed. They must keep taking Toughness tests until they pass or are removed as a casualty.

#namecost("BLADE OF MOURNING", "25 points")

If a unit suffers at least one unsaved Wound from the Blade of Mourning and loses the combat, any negative modifiers to the unit's Leadership for the subsequent Break test are doubled.

#namecost("BLADE OF SETEP", "25 points")

The Blade of Setep gives the wielder the Ignores Armour Saves special rule. If the enemy model wears magical armour, the first Hit against this model is ignored, but the magical armour is destroyed for the remainder of the battle.

#namecost("BLADES OF HONOURABLE DEMISE", "20 points")

Two hand weapons. The wielder of these weapons gain +1 To Hit in close combat.

#namecost("THE CONQUEROR'S BLADE", "20 points")

The wielder of this weapon gains the Killing Blow special rule. When fighting in a challenge, they may re- roll failed To Wound rolls.

#namecost("STAFF OF AEONS", "10 points")

Wizard only. If the wielder of this item successfully Hits an enemy unit in close combat, that unit suffers \-1 to their armour saves for the duration of the game. This is not cumulative.

#namecost("SERPENT STAFF", "5 points")

Wizards only. The Serpent Staff gives the wielder the Poisoned Attacks special rule. In addition, they may re- roll failed rolls To Wound.

#entry("MAGIC ARMOUR")
#namecost("SCORPION ARMOUR", "40 points")

Light armour. The character can never suffer more than one wound due to combat resolution. If the wearer is with a unit, up to half the wounds suffered due to combat resolution can be allocated against the character, which are then ignored save for the first one.

#namecost("ARMOUR OF ETERNITY", "35 points")

Infantry or Cavalry only. Light armour. Enemy models must re-roll successful rolls To Wound against the wearer of this armour.

#namecost("VAMBRACES OF THE SUN", "30 points")

This item gives the bearer a 6+ armour. In addition, all enemy models that attempt to strike the bearer in close combat suffer \-1 To Hit.

#namecost("ARMOUR OF THE AGES", "25 points")

Light armour. When the wearer of this armour is reduced to their last Wound, they gain a Magical Ward (3+). This has no effect if they suffer their last Wound as a result of an attack that causes Multiple Wounds.

#namecost("GAUNTLET OF HRAKLONESH", "25 points")

This item gives the bearer a 6+ armour save. In addition, they gain +1 Strength and Toughness. However, at the start of each of your turns, they must pass a Toughness test or suffer one Wound with no saves allowed.

#namecost("SHIELD OF PTRA", "25 points")

Shield. The bearer of this shield gains the Parry (6+) special rule. If they make a successful Parry save, all models in base contact with them suffer \-1 To Hit for the remainder of the turn, or the next turn if they have already attacked this turn.

#namecost("WARDING SPLINT", "20 points")

Wizard only. Light armour. This armour gives the wearer a Magical Ward (5+) in close combat.

#namecost("ROYAL MANTLE*", "15 points")

This item gives the bearer a 6+ armour save and the Inspiring Presence (6) special rule.

#entry("TALISMANS")
#namecost("GOLDEN ANKHRA", "50 points")

The Ankhra gives the bearer a Magical Ward (4+). In addition, they may re-roll 1's when taking Magical Ward saves.

#namecost("AMULET OF PHA-STAH", "30 points")

All enemy Talismans, Arcane Items and Enchanted Items have no effect while they remain in base contact with the wearer of the Amulet of Pha-Stah.

#namecost("GOLDEN EYE OF RAH-NUTT", "25 points")

Model on Chariot only. The Golden Eye gives the bearer a Magical Ward (3+) against missile attacks.

#namecost("COLLAR OF SHAPESH", "25 points")

For each unsaved Wound the bearer suffers (before calculating any Multiple Wounds), roll a D6: on a 4+ the Wound is transferred to any friendly model in base contact of the bearers choosing, with no saves of any kind allowed. These Wounds still count towards combat resolution as normal. If there are no friendly models in base contact, then this rule has no effect.

#namecost("ORB OF PTRA", "25 points")

All missile attacks targeting the bearer of this item or any unit they are with suffer \-1 To Hit.

#namecost("BLUE KHEPRA", "20 points")

The Blue Khepra makes the bearer (but not any unit they are with) immune to the effects of all enemy spells.

#namecost("BROOCH OF THE GREAT DESERT", "15 points")

One use only. This item can be used against any enemy spell cast against the bearer or their unit, before attempting to dispel. When used, the bearer and any unit they are with gain the Magic Resistance (5) special rule for the remainder of the turn.

#namecost("RELIC OF THE DESERT SUN*", "15 points")

The bearer of the Relic of the Desert Sun gains a Magical Ward (6+) and Immunity (Flaming Attacks).

#entry("ARCANE ITEMS")
#namecost("ENKHIL'S KANOPI", "35 points")

Relic. Bound spell (Level 1, cast on 5+). This is a special *aura* spell with a range of 24". Roll a D6 for every 'remains in play' and active spell that lasts more than one turn within range: on a 2+ that spell is automatically dispelled. For each spell that is ended in this way, add D3 power dice to your power pool.

#namecost("PHAZERAKT'S KANOPI", "35 points")

Relic. Bound Spell (Level 3, cast on 12+). This item contains an *augment/summoning* spell with a range of 12". You can choose to either summon 2D6+3 Skeleton Warriors to an existing unit or create a new unit. If creating a new unit, the models are only equipped with their default equipment.

#namecost("STAFF OF OSIRIS", "35 points")

Staff. Bound Spell (Level 3, cast on 9+). This item contains a *magic missile* with a range of 24". It inflicts a single Strength 6 hit with the Armour Piercing (1) and Multiple Wounds (D3) special rules that penetrates ranks in the same manner as a shot from a Bolt Thrower.

#namecost("STAFF OF RAVENING", "35 points")

Staff. Bound Spell (Level 1, cast on 5+). The Staff of Ravening contains a *magic missile* spell with a range of 18" that causes 3D6 Strength 2 hits.

#namecost("NEFERRA'S SCROLLS OF MIGHTY", "")
#namecost("INCANTATIONS", "30 points")

Charm. One use only. A Wizard can declare that he is using Neferra's Scrolls of Mighty Incantations immediately before casting a spell. If he does so, the Wizard must add a number of extra bonus dice, equal to his Wizard level, to the power dice he is going to roll (you still need to roll at least one dice from the power pool). The bonus dice do not count as power dice. However, a roll of any double (except 1's) when initially casting a spell using them will counts as rolling a 6 for the purpose of Ultimate Power.

#namecost("STAFF OF AWAKENING", "25 points")

Staff. The wielder of the Staff of Awakening may re- roll the amount of Wounds recovered from The Restless Dead when casting spells.

#namecost("CURSE-WEAVER WAND", "20 points")

Staff. The Curse-weaver Wand gives the bearer a +2 casting bonus when casting *hex* spells.

#namecost("STAFF OF MASTERY", "20 points")

Staff. The Staff of Mastery gives the bearer a +1 casting bonus when using the Lore of Light.

#namecost("HIERATIC JAR*", "15 points")

Charm. One use only. The Hieratic Jar may be used at the start of any of your Magic phases. The bearer immediately gains +D3 Power dice. Only they may use these extra Power dice.

#namecost("TABLET OF TAHOTH*", "10 points")

Charm. One use only. This item may be used after rolling the Power dice to cast a spell. When used, add a +D3 casting bonus to the roll.

#entry("ENCHANTED ITEMS")
#namecost("GOLDEN DEATH MASK OF KHARNUTT", "40 points")

The model wearing this mask causes Terror. In addition, enemy units within 6" of the wearer cannot benefit from the Inspiring Presence or Hold Your Ground special rules.

#namecost("CLOAK OF THE DUNES", "35 points")

Infantry only. The wearer of the Cloak of Dunes has the Fly (10) special rule. In addition, if the bearer moves over an unengaged enemy unit in the Remaining Moves sub-phase, that enemy unit immediately suffers 2D6 Strength 2 hits, resolved as missile attacks against the rear. The bearer can move over several enemy units in the same turn if you wish, causing damage to every unit. The same target unit cannot be affected more than once in the same turn.

#namecost("AMULET OF THE SERPENT", "30 points")

The bearer of the Amulet of the Serpent and any unit they join gain the Poisoned Attacks special rule in close combat.

#namecost("SCARAB BROOCH", "25 points")

All models using the Entombed Beneath the Sands special rule may re-roll failed rolls to enter the battlefield and can re-roll the scatter and/or artillery dice when emerging if their marker is within 12" of the bearer of this item.

#namecost("CROWN OF KINGS", "20 points")

Tomb King only. All friendly units within 6" may make March moves despite being Undead.

#namecost("CHARIOT OF FIRE", "20 points")

Model on Chariot only. The model's Chariot causes 2D6 Impacts Hits with the Flaming Attacks and Magical Attacks special rules.

#namecost("ICON OF RULERSHIP*", "15 points")

Model on Chariot only. The Icon of Rulership gives the bearer a +1 Combat Resolution bonus.

#namecost("KARITAMEN'S DEATH MASK", "10 points")

The bearer of this item gains +1 Leadership and the Disciplined special rule.

#namecost("ICON OF THE SACRED EYE", "30 points")

The unit carrying the Icon of the Sacred Eye (including any mounts) may re-roll failed rolls To Hit in the first round of close combat.

#namecost("ROYAL STANDARD OF SETTRA", "30 points")

The unit carrying this standard gains the Hatred (Characters) and Fear special rules.

#namecost("TAPESTRY OF CONQUERED LANDS", "30 points")

The unit carrying this standard gains a +D3 Combat Resolution bonus (roll each time it is used).

#namecost("BANNER OF THE HIDDEN DEAD", "25 points")

The unit carrying this standard gains the Entombed Beneath the Sands special rule.

#namecost("STANDARD OF THE CURSING", "")
#namecost("WORD", "25 points")

All enemy units in base contact with the unit carrying the Standard of the Cursing Word must pass a Leadership test or suffer D6 Wounds which Ignores Armour Saves at the start of each round of close combat.

#namecost("STANDARD OF THE UNDYING", "")
#namecost("LEGION", "25 points")

Bound Spell (Level 1, cast on 6+). This banner contains an *augment* spell that targets the bearer's unit. If successfully cast, the bearer's unit immediately recovers a number of Wounds' worth of models, as described in the Restless Dead.

#entry("MAGIC STANDARDS")
#namecost("ICON OF RAKAPH", "50 points")

Tomb Guard or Tomb Herald on foot only. The unit carrying the Icon of Rakaph may make a Turn at the start of their Movement phase instead of the Remaining Moves sub-phase. The unit may then move as normal (including declaring charges).

#namecost("SIGIL OF CENTURIES", "50 points")

All enemy units within 6" of this standard are subject to the Always Strikes Last special rule.

#namecost("STANDARD OF THE SANDS", "50 points")

One use only. The Standard of the Sands may be activated at the beginning of any enemy Movement phase. For the remainder of the turn, no models within 24" of the banner may March, and all units attempting to rally suffer \-1 to their Leadership.

#namecost("BANNER OF THE DESERT WINDS", "40 points")

Infantry only. The unit carrying this standard gains the Swiftstride and Vanguard special rules.

#namecost("MIRAGE STANDARD", "40 points")

The Mirage Standard forces all Hits from missile attacks targeting the unit carrying it to be re-rolled.

= CHARACTERS

#entry("TOMB MONARCHS", first: true)
#profile(
  (name: "Tomb King", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 10, points: 155),
  (name: "Tomb Prince", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 105),
)
#field("TROOP TYPE", "Infantry (Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Curse of the Necropolis, Flammable, Indomitable, My Will Be Done, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Spear free
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Flail +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May take light armour +3 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Skeletal Steed +10 points
  - Necroserpent +40 points
  - Skeleton Chariot +45 points
  - Khemrian Warsphinx (Tomb King only, replacing the crew) +225 points
  - Necrolith Bone Dragon (Tomb King only) +235 points
- A Tomb Prince may take Magic Items up to a total of 50 points
- A Tomb King may take Magic Items up to a total of 100 points

#entry("LICHE PRIESTS")
#profile(
  (name: "Liche High Priest", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 2, ld: 8, points: 160),
  (name: "Liche Priest", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 2, a: 1, ld: 7, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Liche High Priest is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:")

- Death
- Light
- Nehekhara

#field("SPECIAL RULES", "Indomitable, Undead")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Skeletal Steed +10 points
  - Tomb Barque (Liche High Priest only, replacing one of the crew) +120 points
  - Casket of Souls (Liche High Priest only, replacing the Keeper of the Casket) +130 points
  - Necrolith Bone Dragon (Liche High Priest only) +235 points
- A Liche Priest may take Magic Items up to a total of 50 points
- A Liche High Priest may take Magic Items up to a total of 100 points

#entry("TOMB HERALDS")
#profile(
  (name: "Tomb Herald", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 8, points: 50),
)
#field("TROOP TYPE", "Infantry (Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Flammable, Indomitable, Killing Blow, Magical Attacks, Undead")

- *Sworn Bodyguard:* Whenever a Tomb King/Prince suffers a Wound (before saves are taken) and a Tomb Herald is in the same unit as them, roll a D6. On a 1, the Wound is resolved as normal, but on a 2+ the Wound is intercepted, and re-allocated to the Tomb Herald. No more than one Wound can be re-allocated to each Tomb Herald in each phase. Wounds in a challenge can't be re-allocated.

#field("OPTIONS", "")

- May choose one of the following:
  - Spear free
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Flail +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May take light armour +3 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Skeletal Steed +10 points
  - Necroserpent +40 points
  - Skeleton Chariot +45 points
- One Tomb Herald may carry the Battle Standard +25 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("NECROTECTS")
#profile(
  (name: "Necrotect", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 7, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("OPTIONS", "")

- May take light armour +3 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Flammable, Hatred, Undead")

- *Stone Shaper:* Any friendly unit of Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts, Monstrous Creatures or Monsters within 12" of one or more models with this special rule gains the Regeneration (6+) special rule and suffers 1 Wound less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.
- *Wrath of the Creator:* The Necrotect confers the Hatred special rule onto his unit. If he leaves the unit, or is slain, the unit immediately loses Hatred.

= CHARACTER MOUNTS

#entry("SKELETAL STEED", first: true)
#profile(
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Undead)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take barding +5 points

#entry("SKELETON CHARIOT")
#profile(
  (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: "-"),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("DRAWN BY", "2 Skeletal Steeds (Undead)")
#field("BASE SIZE", "50x100")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take scythes +5 points
- May take barding +5 points

#compact-entry("NECROSERPENT")[
#profile(
  (name: "Necroserpent", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monstrous Beast (Undead)")
#field("BASE SIZE", "50x100")
#field("SPECIAL RULES", "Natural Armour (5+), Poisoned Attacks, Undead")
]

#entry("NECROLITH BONE DRAGON")
#profile(
  (name: "Necrolith Bone Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monster (Undead, Draconid)")
#field("BASE SIZE", "100x150")
#field("SPECIAL RULES", "Fly (7), Undead")

- *Breath of Desiccation:* This is a Breath Weapon attack with Strength 3, Magical Attacks and the Multiple Wounds (2) special rule.
- *Cloud of Dust:* All enemy missile attacks suffer \-1 To Hit against a Necrolith Bone Dragon.

= CORE UNITS

#entry("SKELETON WARRIORS", first: true)
#profile(
  (name: "Skeleton Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 4),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Undead")
#field("OPTIONS", "")

- May take spears free
- May take light armour +0.5 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SKELETON ARCHERS")
#profile(
  (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 7),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Arrows of Asaph, Undead")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SKELETON SKIRMISHERS")
#profile(
  (name: "Skeleton Skirmisher", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, javelins")
#field("SPECIAL RULES", "Arrows of Asaph, Skirmishers, Undead")
#field("OPTIONS", "")

- May take replace javelins with slings free
- May take shields +1 point/model
- May upgrade one Skeleton Skirmisher to a Leader +5 points
- May upgrade one Skeleton Skirmisher to a Musician +5 points

#entry("SKELETON HORSEMEN")
#profile(
  (name: "Skeleton Horseman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 9),
  (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Undead)")
#field("MOUNT", "Skeletal Steed (Undead)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Arrows of Asaph, Fast Cavalry, Undead")
#field("OPTIONS", "")

- May choose one of the following:
  - Light lances +1 point/model
  - Javelins +1 point/model
  - Replace shields with shortbows +2 points/model
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("SKELETON CHARIOTS")
#profile(
  (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 50),
  (name: "Skeleton Charioteer", m: "-", ws: 3, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Skeleton Charioteers (Undead)")
#field("DRAWN BY", "2 Skeletal Steeds (Undead)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, shortbow, javelins")
#field("SPECIAL RULES", "Arrows of Asaph, Undead")
#field("OPTIONS", "")

- May take light armour +4 points/model
- May take scythes +5 points/model
- May upgrade one Skeleton Chariot to a Leader +5 points
- May upgrade one Skeleton Chariot to a Musician +5 points
- May upgrade one Skeleton Chariot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#compact-entry("TOMB SWARMS")[
#profile(
  (name: "Tomb Swarm", m: 4, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 1, a: 8, ld: 2, points: 40),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Swarm (Undead)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Entombed Beneath the Sands, Poisoned Attacks, Undead")
]

= SPECIAL UNITS

#entry("TOMB GUARD", first: true)
#profile(
  (name: "Tomb Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Undead")
#field("OPTIONS", "")

- May take polearms +2 points/model
- May upgrade one Tomb Guard to a Leader +5 points
- May upgrade one Tomb Guard to a Musician +5 points
- May upgrade one Tomb Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("TOMB GUARD CHARIOTS")
#profile(
  (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 60),
  (name: "Tomb Guard Charioteer", m: "-", ws: 3, bs: 2, s: 4, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Tomb Guard Charioteer (Undead)")
#field("DRAWN BY", "2 Skeletal Steeds (Undead)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Undead")
#field("OPTIONS", "")

- May take one of the following:
  - Light lances +2 points
  - Polearms +2 points
- May take barding +4 points/model
- May take scythes +5 points/model
- May upgrade one Skeleton Chariot to a Leader +5 points
- May upgrade one Skeleton Chariot to a Musician +5 points
- May upgrade one Skeleton Chariot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#compact-entry("MUMMIES")[
#profile(
  (name: "Mummy", m: 4, ws: 3, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 2, ld: 8, points: 17),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Infantry (Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Curse of the Necropolis, Flammable, Indomitable, Undead")
]

#entry("USHABTI")
#profile(
  (name: "Ushabti", m: 5, ws: 4, bs: 3, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 8, points: 42),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Undead)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("SPECIAL RULES", "Arrows of Asaph, Undead")
#field("UPGRADES", "")

- *Aspect of Asaph:* The unit gains the Magic Resistance (2) special rule.
- *Aspect of Djaf:* The unit gains the Killing Blow special rule.
- *Aspect of Geheb:* The unit gains the Mighty Blow (1) special rule.
- *Aspect of Phakth:* The unit gains +1 Movement.
- *Aspect of Sobk:* The unit may re-roll To Hit rolls of 1 with shooting and close combat attacks.

#field("OPTIONS", "")

- May replace one hand weapon with one of the following:
  - Greatbows +3 points/model
  - Polearms +3 points/model
  - Great weapons +6 points/model
- May choose one of the following:
  - Aspect of Asaph +3 points/model
  - Aspect of Djaf +3 points/model
  - Aspect of Geheb +3 points/model
  - Aspect of Phakth +3 points/model
  - Aspect of Sobk +3 points/model
- May upgrade one Ushabti to a Leader +5 points

#compact-entry("CARRION")[
#profile(
  (name: "Carrion", m: 2, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 4, points: 20),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "War Beast (Undead)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Fly (9), Scouts, Undead")
]

#entry("SEPULCHRAL STALKERS")
#profile(
  (name: "Sepulchral Stalker", m: 7, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: 48),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Beast (Undead)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Polearm, medium armour")
#field("SPECIAL RULES", "Entombed Beneath the Sands, Undead")

- *Transmogrifying Gaze:* Transmogrifying Gaze has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Killing Blow, Magical Attacks, Multiple Shots (3), Quick Shot"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.

#entry("TOMB SCORPION")
#profile(
  (name: "Tomb Scorpion", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 100),
)
#field("TROOP TYPE", "Monstrous Creature (Undead)")
#field("BASE SIZE", "50x50 or 75x50")
#field("SPECIAL RULES", "Entombed Beneath the Sands, Indomitable, Killing Blow, Magic Resistance (1), Natural")

*Armour (5+), Poisoned Attacks, Undead*

#entry("BASTETHI")
#profile(
  (name: "Bastethi", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: 20),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "War Beast (Undead)")
#field("BASE SIZE", "25x50 or 30x60")
#field("MAGIC", "A unit of Bastethi is a Level 1 Wizard that can use spells from the Lore of Nehekhara.")
#field("SPECIAL RULES", "Always Strikes First, Flammable, Undead")

- *Necromantic Reservoir:* The unit receives an additional +1 casting bonus for every 5 five models in the unit with this special rule. Each time the unit casts a spell, you must nominate one Bastethi as the caster for the purposes of line of sight, range, etc. In the event that a Bastethi unit rolls a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds which Ignores Armour saves. If the unit is targeted by a rule that affects a Wizard, your opponent must choose one Bastethi as the target.

#entry("AMMUT")
#profile(
  (name: "Ammut", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 2, a: 3, ld: 8, points: 52),
)
#field("TROOP TYPE", "Monstrous Beast (Undead)")
#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Indomitable, Killing Blow, Magical Attacks, Natural Armour (6+), Scouts, Undead")

- *Feast of Souls:* When the Ammut causes an unsaved Wound, it regains one Wound lost earlier in the battle.
- *Hunter of the Evil and Wicked:* The Ammut may re-roll failed To Wound rolls against models from the Forces of Destruction.

#entry("BONE THROWER")
#profile(
  (name: "Bone Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 35),
  (name: "Skeleton Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Skeleton Crew (Undead)")
#field("BASE SIZE", "50x50 (Bone Thrower), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, bolt thrower")
#field("SPECIAL RULES", "Arrows of Asaph, Undead")
#field("OPTIONS", "")

- May take light armour +3 points

#entry("SCREAMING SKULL CATAPULT")
#profile(
  (name: "Screaming Skull Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Skeleton Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Skeleton Crew (Undead)")
#field("BASE SIZE", "60x100 (Screaming Skull Catapult), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, stone thrower")
#field("SPECIAL RULES", "Undead")

- *Screaming Skulls:* All shooting attacks made by a Screaming Skull Catapult have the Flaming Attacks and Magical Attacks special rule. Any unit that suffers one or more casualties from this weapon must take a Panic test. If the unit suffered Heavy Casualties, it takes the test at \-1 Leadership.

#field("OPTIONS", "")

- May take light armour +3 points

= RARE UNITS

#entry("NECROPOLIS KNIGHTS", first: true)
#profile(
  (name: "Necropolis Knight", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 8, points: 50),
  (name: "Necroserpent", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: ""),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Undead)")
#field("MOUNT", "Necroserpent (Undead)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, light armour")
#field("SPECIAL RULES", "Killing Blow, Magical Attacks, Natural Armour (5+), Poisoned Attacks (Necroserpent only), Undead")
#field("OPTIONS", "")

- May take shields +6 points/model
- May upgrade one Necropolis Knight to a Leader +5 points
- May upgrade one Necropolis Knight to a Musician +5 points
- May upgrade one Necropolis Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("TOMB BARQUE")
#profile(
  (name: "Tomb Barque", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 125),
  (name: "Skeleton Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "5 Skeleton Crew (Undead)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Light lance, shortbow, light armour")
#field("SPECIAL RULES", "Arrows of Asaph, Fly (5), Undead")

- *Hieroglyphs of Protection:* The Tomb Barque and friendly units within 6" of one or more Tomb Barques gain a Magical Ward (6+).
- *Khepra Beetles:* Enemy units in base contact with the Tomb Barque suffer 2D6 Strength 2 hits at the start of each close combat phase.
- *Wards of the Gods:* At the beginning of each of your turns, you may choose one of the following Wards. Each Ward lasts until the beginning of your next turn.
  - *Ward of Qu'aph:* The Tomb Barque gains the Ethereal special rule.
  - *Ward of Sokth:* Enemy units within 12" of the Tomb Barque must re-roll 6's when rolling To Hit in close combat.
  - *Ward of Tahoth:* All friendly Wizards within 6" gain the Loremaster special rule.

#entry("CASKET OF SOULS")
#profile(
  (name: "Casket of Souls", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 125),
  (name: "Keeper of the Casket", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: ""),
  (name: "Casket Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 8, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "1 Keeper of the Casket & 2 Casket Guard (Undead)")
#field("BASE SIZE", "50x50 (Casket of Souls)")
#field("EQUIPMENT", "Hand weapon, great weapon (Casket Guard only), light armour")
#field("SPECIAL RULES", "Killing Blow (Casket Guard only), Magical Attacks (Casket Guard only), Undead")

- *Covenant of Power:* You may add 1 Power dice to your pool for each Casket of Souls in your army.
- *Vortex of Souls:* The Casket of Souls can use one of the following abilities at the start of your Shooting phase as long as it is not engaged in close combat, has not moved this turn and the Keeper of the Casket model is alive.
  - *Light of Death:* Light of Death has a range of 36". One unengaged enemy unit within Line of Sight of the Casket must take a Leadership test on an additional D6, discarding the lowest result. For each point the test is failed by, it suffers an automatic Wound with the Ignores Armour Saves and Magical Attacks special rules. Once the Leadership test has been resolved, roll a D6: on a 3+, choose another unengaged enemy unit within Line of Sight of the Casket that is within 6" of the initial target, which also suffers the effects of the _Light of Death_. Keep rolling for further victims (each within Line of Sight of the Casket and within 6" of the last target struck), until the roll is failed or there are no more viable targets. A unit can only be the target of _Light of Death_ once per Shooting phase.
  - *Light of Protection:* Until the start of your next Shooting phase, all friendly units within 12" gain a Magical Ward (6+), and enemy units suffer \-1 To Hit against them.
- *Unleashed Souls:* If a Casket of Souls is destroyed, roll a D6 for every unit (friend or foe) within 12" of the Casket before it is removed from play. On a roll of 4+, that unit immediately suffers D6 Strength 6 hits, with the Ignores Armour Saves and Magical Attacks special rule. After resolving the effects of Unleashed Souls, remove the Casket of Souls as normal.

#entry("KHEMRIAN WARSPHINX")
#profile(
  (name: "Khemrian Warsphinx", m: 6, ws: 4, bs: 0, s: 5, t: 7, w: 6, i: 1, a: 4, ld: 8, points: 225),
  (name: "Tomb Guard Crew", m: "-", ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monster (Undead)")
#field("BASE SIZE", "50x100 or 60x100")
#field("CREW", "4 Tomb Guard Crew (Undead)")
#field("EQUIPMENT", "Light lance (Tomb Guard Crew only), medium armour")
#field("SPECIAL RULES", "Indomitable, Killing Blow (Tomb Guard Crew only), Magical Attacks (Tomb Guard Crew")

only)*, Undead*

#field("UPGRADES", "")

- *Envenomed Sting:* All normal Attacks made by a Khemrian Warsphinx with this upgrade have the Poisoned Attacks special rule.
- *Fiery Roar:* A Khemrian Warsphinx with this upgrade has a Strength 4 Breath Weapon with the Flaming Attacks special rule.

#field("OPTIONS", "")

- May take Envenomed Sting +10 points
- May take Fiery Roar +30 points

#entry("NECROSPHINX")
#profile(
  (name: "Necrosphinx", m: 6, ws: 4, bs: 0, s: 6, t: 7, w: 6, i: 1, a: 4, ld: 8, points: 250),
)
#field("TROOP TYPE", "Monster (Undead)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Two hand weapons, medium armour")
#field("SPECIAL RULES", "Fly (7), Heroic Killing Blow, Indomitable, Undead")
#field("UPGRADES", "")

- *Envenomed Sting:* All normal Attacks made by a Necrosphinx with this upgrade have the Poisoned Attacks special rule.

#field("OPTIONS", "")

- May take Envenomed Sting +10 points

#entry("NECROLITH COLOSSUS")
#profile(
  (name: "Necrolith Colossus", m: 6, ws: 3, bs: 3, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 8, points: 210),
)
#field("TROOP TYPE", "Monster (Undead)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("OPTIONS", "")

- May replace one hand weapon with one of the following:
  - Shield free
  - Great weapon free
  - Bolt thrower free

#field("SPECIAL RULES", "Arrows of Asaph, Indomitable, Undead")

- *Unstoppable Assault:* In the turn in which a Necrolith Colossus charges, every unsaved Wound that it inflicts in close combat immediately allows it to make an additional Attack, up to a maximum of +5 Attacks. Note that these additional Attacks also benefit from the Unstoppable Assault rule, but Stomps do not.

#entry("HIEROTITAN")
#profile(
  (name: "Hierotitan", m: 6, ws: 3, bs: 2, s: 6, t: 7, w: 6, i: 1, a: 3, ld: 8, points: 205),
)
#field("TROOP TYPE", "Monster (Undead)")
#field("BASE SIZE", "50x50")
#field("MAGIC ITEMS", "")

- *Icon of Ptra:* Arcane Item. Relic. Bound Spell. An Icon of Ptra contains the spell _Shem's Burning Gaze_ from the Lore of Light.
- *Scales of Usirian:* Arcane Item. Relic. Bound Spell. The Scales of Usirian contain the spell _Spirit Leech_ from the Lore of Death.

#field("SPECIAL RULES", "Indomitable, Undead")

- *Spirit Conduit:* Friendly Wizards within 12" of one or more Hierotitans gain a +1 casting bonus.

#entry("KHEMRIC TITAN")
#profile(
  (name: "Khemric Titan", m: 8, ws: 3, bs: 0, s: 6, t: 8, w: 10, i: 1, a: "*", ld: 8, points: 320),
)
#field("TROOP TYPE", "Monster (Undead)")
#field("BASE SIZE", "100x150")
#field("SPECIAL RULES", "Fly (7), Impact Hits (D6), Indomitable, Natural Armour (5+), Undead")

- *Curse of the Fallen:* If the Khemric Titan is slain by any means, all enemy units within 6" from it suffer 2D6 Strength 2 hits which Ignores Armour Saves.
- *Khemric Titan Special Attacks:* In order to determine what happens, each Close Combat phase that the Khemric Titan is in combat, pick a single unit in base contact and roll a D6 on the table below:

#chart((("D6", "Result"), ("1-2", "Reaping Blades: The Khemric Titan inflicts D6 Strength 6 hits on the enemy unit."), ("3", "Flesh-eating Scarabs: The Khemric Titan inflicts 3D6 Strength 2 hits on the enemy unit."), ("4", "Breath of Night: The Khemric Titan does not attack, but instead automatically wins the combat with
a combat resolution of 2 (unless this would be higher from other sources)."), ("5", "Devouring Jaws: The Khemric Titan inflicts a Strength 6 hit with the Heroic Killing Blow special
rule on all enemy models in base contact of the chosen unit."), ("6", "Soul Slaying Hunger: The Khemric Titan inflicts 2D6 hits on the enemy unit. Roll a D6 for each hit,
on a 5+ it inflicts a Wound with no armour saves allowed and the Multiple Wounds (D3) special rule.
This is a Magical Attack.")))

- *Shrine of Eternities:* Arcane Item. Relic. Once per magic phase the Khemric Titan can attempt to cast one of the following spells:
  - *The Gaze of Dust:* Bound Spell (Level 3, cast on 9+). This is a *magic missile* with a range of 24". It causes a Strength 6 Hit which penetrates ranks in the same way as a Bolt Thrower.
  - *Wrath of the Sands:* Bound Spell (Level 1, cast on 6+). This is a *hex* spell with a range of 24". The target suffers \-2 To Hit when shooting and \-1 to their charge distance rolls until the start of the caster's next Magic phase.
  - *Reawakening of Ancient Might:* Bound Spell (Level 1, cast on 5+). This is an *augment* spell that targets the Khemric Titan itself. When successfully cast, it restores one Wound previously suffered during the battle.

= SPECIAL CHARACTERS

#entry("SETTRA THE IMPERISHABLE", first: true)
#namecost("God-King of Khemri, Ruler of Nehekhara", "")
#profile(
  (name: "Settra the Imperishable", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 5, ld: 10, points: 535),
  (name: "Chariot of the Gods", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: ""),
  (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Special Character, Undead, Tomb King)")
#field("BASE SIZE", "100x100")
#field("DRAWN BY", "4 Skeletal Steeds (Undead)")
#field("EQUIPMENT", "Scythes")
#field("MAGIC", "Settra the Imperishable is a Level 2 Wizard who chooses spells from Lore of Nehekhara.")
#field("MAGIC ITEMS", "")

- *Blessed Blade of Ptra:* Magic Weapon. Polearm. This blade gives Settra the Always Strikes First, Armour Piercing (1) and Flaming Attacks special rules. In addition, a lone model that suffers one or more unsaved Wounds from the Blessed Blade of Ptra suffers \-1 to its rolls To Hit (both shooting and close combat) for the remainder of the game.
- *Armour of Golden Magnificence:* Magic Armour. Heavy armour. This armour save cannot be modified in any way, and may even be taken against mundane attacks that normally do not allow armour saves.
- *Scarab Brooch of Usirian:* Talisman. The Scarab Brooch of Usirian grants Settra the Magical Ward (4+) and Magic Resistance (1) special rules.
- *Crown of Nehekhara:* Enchanted Item. Settra the Imperishable's My Will Be Done special rule affects all friendly Undead units within 6" of him, not just the unit he has joined.

#field("SPECIAL RULES", "Flammable, Indomitable, Inspiring Presence (6), My Will Be Done, Undead")

- *Chariot of the Gods:* Impact Hits from the Chariot of the Gods have the Flaming Attacks and Magical Attacks special rules.
- *The Curse of Settra:* In addition to the normal Curse of the Necropolis, if Settra is killed by any means, then every enemy unit within 2D6" suffers 2D6 Strength 2 hits.
- *Settra the Great:* If you take Settra the Imperishable, he must be your Army General.

#entry("HIGH QUEEN KHALIDA NEFERHER")
#namecost("Beloved of Asaph, Tomb Queen of the Eastern Deserts", "")
#profile(
  (name: "High Queen Khalida", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 9, a: 5, ld: 10, points: 300),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Tomb King)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *Venom Staff:* Enchanted Item. Bound Spell (Level 2, cast on 7+). The Venom Staff contains a *magic missile* with a range of 24". If successfully cast, the target takes 2D6 Strength 3 hits with the Poisoned Attacks special rule.

#field("SPECIAL RULES", "Always Strikes First, Curse of the Necropolis, Flammable, Hatred (Vampire Counts), Indomitable, My Will be Done, Poisoned Attacks, Regeneration (4+), Undead")

- *Blessing of Asaph:* If Khalida is included in your army, any unit of Skeleton Archers, Skeleton Horsemen or Chariots may be upgraded to gain the Poisoned Attacks special rule for all shooting attacks for +2 points per model.

#field("OPTIONS", "")

- May be mounted on a Necroserpent +40 points
- May take Magic Items up to a total of 50 points

#entry("PRINCE TUTANKHANUT")
#namecost("The Golden Prince of Numas", "")
#profile(
  (name: "Tutankhanut", m: 4, ws: 5, bs: 4, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 115),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Tomb Prince)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow, heavy armour")
#field("SPECIAL RULES", "Arrows of Asaph, Curse of the Necropolis, Flammable, Indomitable, My Will Be Done, Undead")

- *Scythan Warriors:* If your army contains Tutankhanut you may upgrade units of Skeleton Horsemen to Scythan Warriors for +2 points/model. Scythan Warriors do not have the Arrows of Asaph and Undead special rules, but instead gain +1 Weapon Skill, +1 Ballistic Skull, +1 Initiative, +2 Leadership and the Immunity (Fear) special rule. Their mounts have +1 Movement, +1 Weapon Skill and +1 Initiative. Scythan Warriors always treat Tutankhanut as the Army General for all purposes.

#field("OPTIONS", "")

- May be mounted on a Skeleton Chariot +45 points
- May take Magic Items up to a total of 50 points

#entry("PRINCE APOPHAS")
#namecost("The Cursed Scarab Lord", "")
#profile(
  (name: "Prince Apophas", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 4, i: 1, a: 5, ld: 8, points: 130),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Entombed Beneath the Sands, Fly (10), Independent, Indomitable, Regeneration (4+), Strider, Terror, Undead")

- *Desert Revenant:* When rolling to enter the table using the Entombed Beneath the Sands special, you may re- roll the Artillery dice.
- *Scarab Prince:* Apophas may join units of Tomb Swarms and will benefit from "Look Out, Sir" while in such a unit. In addition, if Apophas is ever destroyed (by any means), then before removing the model all enemy units within 2D6" of him immediately take 2D6 Strength 1 hits with the Poisoned Attacks special rule.
- *Soul Reaper:* As soon as Prince Apophas is placed on the table, nominate one enemy character on the battlefield. Apophas re-rolls any failed To Hit and To Wound rolls against the chosen character.
- *Swarming Mass:* Apophas has a Strength 1 Breath Weapon with the Poisoned Attacks special rule.

#entry("GRAND HIEROPHANT KHATEP")
#namecost("Liche Lord of Khemri", "")
#profile(
  (name: "Khatep", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 2, ld: 9, points: 330),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Khatep is a Level 4 Wizard who uses the Lore of Nehekhara.")
#field("MAGIC ITEMS", "")

- *Liche Staff:* Arcane Item. Staff. Once per Magic phase, Khatep can declare that he is using the Liche Staff immediately after rolling the dice to cast a spell, even if the result indicates a miscast. If Khatep uses the Liche Staff, he re-rolls all the casting dice used in the attempt.
- *Scroll of the Cursing Word*: Arcane Item. Charm. One Use Only. This works exactly the same as a Dispel Scroll from the _Warhammer Rulebook_. In addition the caster must immediately take a Toughness test. If the test is passed, nothing happens. If the test is failed, the enemy Wizard cannot cast any more spells that turn. If the test is failed on the roll of a 6, the caster immediately suffers D3 Wounds as well, with no saves of any kind allowed.

#field("SPECIAL RULES", "Indomitable, Loremaster (Lore of Nehekhara), Undead")

- *Grand Hierophant of Khemri:* If you take Grand Hierophant Khatep, he must be your army's Hierophant. He gives his unit the Regeneration (5+) special rule rather than Regeneration (6+). Additionally, when using _The Restless Dead_ Lore Attribute, Khatep restores 2D6 Wounds for Core Units (except Chariots), D6 Wounds for Special Units, Chariots and Monstrous Cavalry, and D3 Wounds for Rare Units.

#field("OPTIONS", "")

- May be mounted on one of the following
  - Skeletal Steed +10 points
  - Tomb Barque (replacing one of the crew) +120 points
  - Casket of Souls (replacing the Keeper of the Casket) +145 points
  - Necrolith Bone Dragon +235 points

#entry("ARKHAN THE BLACK")
#namecost("The Liche King, Dark Lord of Nagash", "")
#profile(
  (name: "Arkhan the Black", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 3, ld: 9, points: 340),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead, Tomb King)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC", "Arkhan the Black is a Level 4 Wizard who uses the following Lores of Magic:")

- Death
- Nehekhara

He may choose spells from both Lores in any combination as he wishes.

#field("MAGIC ITEMS", "")

- *Tomb Blade of Arkhan:* Magic Weapon. For every unsaved Wound caused by this blade to an enemy in close combat, Arkhan's unit immediately recovers a Wound.
- *Liber Mortis:* Arcane Item. Relic. Whilst Arkhan the Black has the Liber Mortis he gains a +1 casting and dispelling bonus as well as one additional spell. If the Liber Mortis is ever destroyed, Arkhan the Black immediately loses a randomly determined spell.
- *Staff of Nagash:* Arcane Item. Staff. At the end of the opponent's Magic phase, you can store up to three unused dispel dice from your pool in the Staff of Nagash. At the beginning of your next Magic phase, add these dice to your power dice pool. If Arkhan the Black is removed as a casualty before your next Magic phase, these power dice are lost.

#field("SPECIAL RULES", "Curse of the Necropolis, Flammable, Indomitable, Undead")

- *Chariot of the Liche King:* This is a Skeleton Chariot with 2 additional Skeleton Steeds, the Fly (8) and Terror special rules.

#field("OPTIONS", "")

- May be mounted on a Chariot of the Liche King +85 points

#entry("THE HERALD NEKAPH")
#namecost("Emissary of Settra", "")
#profile(
  (name: "The Herald Nekaph", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 8, points: 110),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *The Flail of Skulls:* Magic Weapon. Flail. Attacks made with the Flail of Skulls have the Multiple Wounds (2) special rule.

#field("SPECIAL RULES", "Flammable, Indomitable, Killing Blow, Magical Attacks, Sworn Bodyguard (see Tomb")

Herald)*, Undead*

- *Herald of Despair:* Enemy units in base contact with Nekaph roll one additional dice when taking a Leadership test, discarding the lowest result. This has no effect on units with Immunity (Psychology).
- *Settra's Champion:* If able to, Nekaph must always issue and accept challenges. When fighting in a challenge, Nekaph gains a 5+ invulnerable save and the Killing Blow special rule.

#field("OPTIONS", "")

- May be mounted on one of the following:
  - Skeletal Steed +10 points
  - Necroserpent +40 points
  - Skeleton Chariot +45 points
- May take Magic Items up to a total of 25 points

#entry("SEHENESMET")
#namecost("Vizier of Quatar", "")
#profile(
  (name: "Sehenesmet", m: 6, ws: 3, bs: 2, s: 6, t: 7, w: 6, i: 3, a: 4, ld: 8, points: 425),
)
#field("TROOP TYPE", "Monster (Special Character, Undead)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Sehenesmet is a Level 2 Wizard who uses the Lore of Nehekhara.")
#field("MAGIC ITEMS", "")

- *The Sacred Crook of Shapesh:* Magic Weapon. Great weapon. Keep track of the number of unsaved wounds inflicted by the Sacred Crook in each Close Combat phase. In each of your Shooting phases, the power of the Crook may be unleashed as a special attack with a range of 24", or against one enemy unit in base contact. The target suffers a number of Strength 4 hits equal to the number of wounds currently ‘stored’ in the Crook. Once unleashed, the number of wounds stored in the staff are returned to 0 until Sehenesmet inflicts more wounds. In addition, it increases the range of Sehenesmet's spells by 6".

#field("SPECIAL RULES", "Hatred, Indomitable, Magic Resistance (2), Undead")

- *Master Stone Shaper:* Any friendly unit of Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts, Monstrous Creatures or Monsters within 12" of one or more models with this special rule gains the Regeneration (5+) special rule and suffers 1 Wound less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.
- *The Stone Host of Quatar:* If Sehenesmet is the Army General, all units of Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts, Monstrous Creatures or Monsters count as Core/Special units rather than Special/Rare units. However, all other Core/Special units will count as Special/Rare units instead. This does not change the number of Wounds restored from _The Restless Dead_ Lore Attribute for the affected units – use the original values for all units.

#entry("RAMHOTEP THE VISIONARY")
#namecost("Necrotect of Quatar", "")
#profile(
  (name: "Ramhotep the Visionary", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 7, points: 100),
)
#field("TROOP TYPE", "Infantry (Special Character, Undead)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("SPECIAL RULES", "Flammable, Frenzy, Hatred, Stone Shaper (see Necrotect), Undead, Wrath of the Creator")

(see Necrotect)

- *Frantic Fervour:* Ramhotep confers the Frenzy special rule onto the unit he accompanies. While he remains in the unit, the unit can never lose its Frenzy.
- *Master Artisan:* At the start of the game, select a single friendly unit of Monstrous Infantry, Monstrous Cavalry, Monstrous Beast or Monster. The models in this unit gain the Natural Armour (6+) special rule for the rest of the battle.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")

#entry("Additional Material:")
#namecost("Stefan Wolf", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
