// Tomb Kings 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "tomb-kings",
  army: "Tomb Kings",
  version: "1.6",
  layout: "army",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Tomb Kings 1.6")

#cover(
  title: "Tomb Kings",
  subtitle: "Warhammer Armies Project · 1.6",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Tomb Kings*, version 1.6 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in a Tomb Kings army, along with the rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring 'army special rules' that apply to several Tomb Kings units, and these are detailed below.])[
#upgrade("ARROWS OF ASAPH", none)[
Units with the Arrows of Asaph special rule never count any bonuses or penalties To Hit when shooting, regardless of the source of the modifier.
]

#upgrade("CURSE OF THE NECROPOLIS", none)[
If a model with this special rule is removed from play, then the enemy unit responsible – by inflicting the final wound, for example – will immediately suffer D6 Strength 5 hits (if the model was a Lord), D6 Strength 4 hits (if the model was a Hero) or D3 Strength 3 Hits (if the model was a rank-and-file model). Any Wounds caused have the Ignores Armour Saves special rule.

In close combat, any Wounds inflicted count towards the combat result. If more than one unit is responsible for the destruction of the model with this special rule (it is destroyed by the combat result in a multiple combat due to its Unstable rule, for example), then all guilty units are affected. If the model is killed in a challenge, then only their opponent is cursed, and not the whole enemy unit.
]

#upgrade("ENTOMBED BENEATH THE SANDS", none)[
A unit with this ability has the Ambushers special rule, with the following exceptions.

When these units enter the battle in the Remaining Moves sub-phase, they do not move onto the board as reinforcements in the normal way. Instead, when a unit that is Entombed Beneath the Sands enters the battle, place a small marker (such as a coin) anywhere on the battlefield, but not in impassable terrain or within 1" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the emerging unit in a legal formation such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your unit into base contact with the enemy unit in their front arc; your unit will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the unit does not emerge. Instead, remove the marker and roll on the Mishap table. If a unit emerges successfully, it may act normally this turn.

Only characters that have the Entombed Beneath the Sands special rule can be deployed within such units. If you have several units Entombed Beneath the Sands, then repeat this process, one unit at a time.
]

#upgrade("ENTOMBED BENEATH THE SANDS", none)[
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
]

#upgrade("MY WILL BE DONE", none)[
Any unit of Undead accompanied by a model with this rule uses the character's unmodified Weapon Skill in place of its own (use the highest Weapon Skill if the unit is joined by several characters with this rule).

If all characters with the My Will Be Done rule in the unit are killed, the unit immediately reverts to using its own Weapon Skill. This special rule has no effect on mounts or any other characters except Tomb Heralds – these always use their own Weapon Skill.
]

#upgrade("UNDEAD", none)[
All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. However, they may make march moves if they are within 6" of the Hierophant or are joined by a character with the My Will Be Done special rule.
]

#upgrade("BANNER OF THE KING", none)[
In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.
]
]
#lore("THE LORE OF NEHEKHARA")[
#spell("THE RESTLESS DEAD", "Lore Attribute")[Each time a Wizard successfully casts an *augment* or *conveyance* spell from the Lore of Nehekhara, the target of the spell immediately recovers a number of Wounds' worth of models, just like a summoning spell. Core Units (except Chariots) recover D6+1 Wounds. Special Units, Chariots and Monstrous Cavalry recover D3 Wounds. Remaining Rare Units recover 1 Wound.]

#spell("KHSAR'S INCANTATION OF THE DESERT WIND", "Signature Spell", cast: "5+")[_Khsar's Incantation of the Desert Wind_ is a *conveyance* spell with a range of 24". The target can immediately make a normal move as if it were the Remaining Moves sub-phase.]

#spell("DJEDRA'S INCANTATION OF THE ETERNAL DEAD", 1, cast: "5+")[Remains in play. _Djedra's Incantation of the Eternal Dead_ is an *augment* spell that is cast on the Wizard itself (this can trigger _The Restless Dead_ for any unit they are with). While this spell is in effect, add +1 to the result of all Wounds recovered from the _The Restless Dead_ due to spells being cast by this Wizard.]

#spell("SEKHUBI'S INCANTATION OF RETRIBUTION", 1, cast: "5+")[_Sekhubi's Incantation of Retribution_ is a *magic missile* with a range of 30" that causes D6 Strength 4 hits.]

#spell("DJAF'S INCANTATION OF CURSED BLADES", 1, cast: "6+")[_Djaf's Incantation of Cursed Blades_ is an *augment* spell with a range of 18". The target unit's close combat Attacks gain the Killing Blow special rule until the start of your next Magic phase.]

#spell("MERNEPTAH'S INCANTATION OF THE SCARAB SONG", 2, cast: "8+")[_Merneptah's Scroll of the Scarab Song_ is a *direct damage* spell. Place the large round template anywhere within 24" of the Wizard – it then scatters D6". All models under the template suffer a Strength 1 hit with the Poisoned Attacks special rule.]

#spell("PTRA'S INCANTATION OF RIGHTEOUS SMITING", 2, cast: "8+")[_Ptra's Incantation of Righteous Smiting_ is an *augment* spell with a range of 18". All models in the target unit gain +1 Attack and may fire an additional shot with missile weapons (excluding artillery) until the start of the caster's next Magic phase.]

#spell("NERU'S INCANTATION OF PROTECTION", 2, cast: "10+")[_Neru's Incantation of Protection_ is an *augment* spell with a range of 18". The target unit gains a 5+ Ward save until the start of the caster's next Magic phase.]

#spell("RETURN OF THE GOLDEN AGE", 3, cast: "10+")[_Return of the Golden Age_ is an *augment* spell with a range of 18". The target unit gains +1 Weapon Skill, Strength and Initiative until the start of the caster's next Magic phase.]

#spell("USIRIAN'S INCANTATION OF VENGEANCE", 3, cast: "10+")[_Usirian's Incantation of Vengeance_ is a *hex* spell with a range of 24". The target unit suffers -D3 to its Movement characteristic (to a minimum of 1) and treats all terrain (even open ground) as Dangerous Terrain, testing every time it moves (including when charging, fleeing, pursuing, moving compulsorily, etc.) until the start of the caster's next Magic phase.]

#spell("NEFERRE'S INCANTATION OF QUAKING HORROR", 3, cast: "12+")[_Neferre's Incantation of Quaking Horror_ is a *hex* spell with a range of 24". The target halves their Leadership (after modifiers, rounding up) until the start of the caster's next Magic phase.]

#spell("USEKHP'S INCANTATION OF DESICCATION", 4, cast: "12+")[_Usekhp's Incantation of Desiccation_ is a *hex* spell with a range of 24". The target unit has \-1 Strength and \-1 Toughness (to a minimum of 1) until the start of the caster's next Magic phase.]

#spell("MANKARA'S INCANTATION OF URGENCY", 4, cast: "13+")[_Mankara's Incantation of Urgency_ is a *conveyance* spell with a range of 12". The target can immediately move using the Random Movement (3D6) special rule.]

#spell("SAKHMET'S INCANTATION OF THE SKULLSTORM", 4, cast: "15+")[Remains in play. _Sakhmet's Incantation of the Skullstorm_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 5 hit. Any unit that suffers one or more casualties must take an immediate Panic test.]
]
#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Tomb Kings. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("SPEAR OF ANTARHAK", 50)[Spear/light lance. For every unsaved Wound inflicted by the Spear of Antarhak, the wielder immediately regains a single Wound lost earlier in the battle. If the bearer is already at their starting number of Wounds and inflicts another unsaved Wound with this weapon, they gain the Regeneration (4+) special rule until the end of the next player turn.]

#magic-weapon("CROOK AND FLAIL OF RADIANCE", 50)[Two hand weapons. These weapons gives the wielder the Always Strikes First special rule and +1 Combat Resolution bonus.]

#magic-weapon("DESTROYER OF ETERNITIES", 40)[Tomb King on foot only. Great weapon. Attacks made with the Destroyer of Eternities have the Heroic Killing Blow special rule. The wielder can choose to exchange all of their Attacks to make a special attack. If they do so, all enemy models in base contact with the wielder suffer a single automatic hit (with Heroic Killing Blow). In a challenge, only the models engaged in the challenge count as being in base contact with the Tomb King.

#runin[PHAKTH]'#runin[S BLADES OF JUSTICE 35 points] Infantry only. Two hand weapons. The wielder of these weapons gain +1 Attack for each complete rank any one enemy unit in base contact with them has.]

#magic-weapon("BLADE OF SETEP", 25)[The Blade of Setep gives the wielder the Ignores Armour Saves special rule. If the enemy model wears magical armour, the first Hit against this model is ignored, but the magical armour is destroyed for the remainder of the battle.]

#magic-weapon("DAGGER OF BOUND SOULS", 30)[No Ward saves can be taken against Wounds caused by this item. In addition, any model that suffers an unsaved Wound from it must pass a Toughness test or suffer an additional Wound with no saves allowed. They must keep taking Toughness tests until they pass or are removed as a casualty.]

#magic-weapon("BLADE OF MOURNING", 25)[If a unit suffers at least one wound from the Blade of Mourning and loses the combat, any negative modifiers to the unit's Leadership for the subsequent Break test are doubled.]

#magic-weapon("BLADES OF HONOURABLE DEMISE", 20)[Two hand weapons. The wielder of these weapons gain +1 To Hit in close combat.]

#magic-weapon("THE CONQUEROR'S BLADE", 20)[The wielder of this weapon gains the Killing Blow special rule. When fighting in a challenge, their Killing Blow takes effect on a 5+ rather than a 6.]

#magic-weapon("STAFF OF AEONS", 10)[Wizard only. If the wielder of this item successfully Hits an enemy unit one or more times in close combat, that unit suffers \-1 to their armour saves for the duration of the game.]

#magic-weapon("SERPENT STAFF", 5)[Wizards only. The Serpent Staff gives the wielder the Poisoned Attacks special rule. In addition, they may re- roll failed rolls To Wound.]
]

#magic-item-section("armour")[
#magic-armour("SCORPION ARMOUR", 40)[Light armour. The character can never suffer more than one wound due to combat resolution. If the wearer is with a unit, up to half the wounds suffered due to combat resolution can be allocated against the character, which are then ignored save for the first one.]

#magic-armour("ARMOUR OF ETERNITY", 35)[Infantry or Cavalry only. Light armour. Enemy models must re-roll successful rolls To Wound against the wearer of this armour.]

#magic-armour("ARMOUR OF THE AGES", 30)[Light armour. When the wearer of this armour is reduced to their last Wound, they gain a 3+ Ward save. This has no effect if they suffer their last Wound as a result of an attack that causes Multiple Wounds.]

#magic-armour("VAMBRACES OF THE SUN", 30)[This item gives the bearer a 6+ armour. In addition, all enemy models that attempt to strike the bearer in close combat suffer \-1 To Hit.]

#magic-armour("GAUNTLET OF HRAKLONESH", 25)[This item gives the bearer a 6+ armour. In addition, they gain +1 Strength and Toughness. However, at the start of each of your turns, they must pass a Toughness test or suffer one Wound with no saves allowed.]

#magic-armour("SHIELD OF PTRA", 25)[Shield. The bearer of this shield gains the Parry (6+) special rule even while mounted. If they make a successful Parry save, all models in base contact with them suffer \-1 To Hit for the remainder of the turn, or the next turn if they have already attacked this turn.]

#magic-armour("WARDING SPLINT", 25)[Wizard only. Light armour. This armour gives the wearer a 5+ Ward save in close combat. This armour may be taken even though Wizards may not normally wear armour.]

#magic-armour("ROYAL MANTLE", 15)[This item gives the bearer a 6+ armour and the Inspiring Presence (6) special rule.]
]

#magic-item-section("talisman")[
#talisman("GOLDEN ANKHRA", 55)[The Ankhra gives the bearer a 4+ Ward save. In addition, they may re-roll 1's when taking Ward saves.]

#talisman("AMULET OF PHA-STAH", 30)[All enemy Talismans, Arcane Items and Enchanted Items have no effect while they remain in base contact with the wearer of the Amulet of Pha-Stah.]

#talisman("GOLDEN EYE OF RAH-NUTT", 30)[Model on Chariot only. The Golden Eye gives the bearer a 3+ Ward save against missile attacks.]

#talisman("COLLAR OF SHAPESH", 25)[For each unsaved Wound the bearer suffers (before calculating any Multiple Wounds), roll a D6: on a 4+ the Wound is transferred to any friendly model in base contact of the bearers choosing, with no saves of any kind allowed. These Wounds still counts towards combat resolution as normal. If there are no friendly models in base contact, then this rule has no effect.]

#talisman("ORB OF PTRA", 25)[All missile attacks targeting the bearer of this item or any unit they are with suffer \-1 To Hit.]

#talisman("BLUE KHEPRA", 20)[The Blue Khepra makes the bearer (but not any unit they are with) immune to the effects of all enemy spells.]

#talisman("BROOCH OF THE GREAT DESERT", 15)[One use only. The Brooch of the Great Desert can be used against any enemy spell cast against it, before attempting to dispel. When used, the bearer and any unit they are with gain the Magic Resistance (5) special rules for the remainder of the turn.]

#talisman("RELIC OF THE DESERT SUN", 15)[The bearer of the Relic of the Desert Sun gains a 6+ Ward save and Immunity (Flaming Attacks).]
]

#magic-item-section("arcane")[
#arcane-item("PHAZERAKT'S KANOPI", 35)[Bound Spell (power level 6). This item contains an *augment/summoning* spell with a range of 12". You can choose to either summon 2D6+3 Skeleton Warriors to an existing unit (this may take them over their starting value) or create a new unit.]

#arcane-item("STAFF OF OSIRIS", 35)[Bound Spell (power level 5). This item contains a *magic missile* with a range of 24". It inflicts a single Strength 6 hit with the Armour Piercing (1) and Multiple Wounds (D3) special rules that penetrates ranks in the same manner as a shot from a Bolt Thrower.]

#arcane-item("STAFF OF RAVENING", 35)[Bound Spell (power level 3). The Staff of Ravening contains a *magic missile* spell with a range of 18" that causes 3D6 Strength 2 hits.]

#arcane-item("NEFERRA'S SCROLLS OF MIGHTY INCANTATIONS", 30)[One use only. A Wizard can declare that he is using Neferra's Scrolls of Mighty Incantations immediately before casting a spell. If he does so, the Wizard must add a number of extra bonus dice, equal to his Wizard level, to the power dice he is going to roll (you still need to roll at least one dice from the power pool). The bonus dice do not count as power dice. However, a roll of any double (except 1's) when initially casting a spell using them will counts as rolling a 6 for the purpose of Ultimate Power.]

#arcane-item("STAFF OF AWAKENING", 25)[The wielder of the Staff of Awakening may re-roll the amount of Wounds recovered from The Restless Dead.]

#arcane-item("CURSE-WEAVER WAND", 20)[The Curse-weaver Wand gives the bearer a +2 casting bonus when casting a *hex* spells.]

#arcane-item("STAFF OF MASTERY", 20)[The Staff of Mastery gives the bearer a +1 casting bonus when using the Lore of Light.]

#arcane-item("ENKHIL'S KANOPI", 15)[Bound spell (power level 3). If cast successfully, roll a D6 for every 'remains in play' spell on the tabletop: on a 2+ that spell is automatically dispelled. For each spell that is ended in this way, add D3 power dice to your power pool.]

#arcane-item("HIERATIC JAR", 15)[One use only. The Hieratic Jar may be used at the start of any of your Magic phases. The bearer immediately gains +D3 Power dice. Only they may use these extra Power dice.]

#arcane-item("TABLET OF TAHOTH", 10)[One use only. This item may be used after rolling the Power dice to cast a spell. When used, add a +D3 casting bonus to the roll.]
]

#magic-item-section("enchanted")[
#enchanted-item("GOLDEN DEATH MASK OF KHARNUTT", 40)[The model wearing this mask causes Terror. In addition, enemy units within 6" of the wearer cannot benefit from the Inspiring Presence or Hold Your Ground special rules.]

#enchanted-item("CLOAK OF THE DUNES", 35)[Infantry only. The wearer of the Cloak of Dunes has the Fly (10) special rule. In addition, if the bearer moves over an unengaged enemy unit in the Remaining Moves sub-phase, that enemy unit immediately suffers 2D6 Strength 2 hits, resolved as for shooting attacks. The bearer can move over several enemy units in the same turn if you wish, causing damage to every unit. The same target unit cannot be affected more than once in the same turn.]

#enchanted-item("AMULET OF THE SERPENT", 30)[The bearer of the Amulet of the Serpent and any unit they join gain the Poisoned Attacks special rule in close combat.]

#enchanted-item("SCARAB BROOCH", 25)[All models using the Entombed Beneath the Sands special rule may re-roll failed rolls to enter the battlefield and can re-roll the scatter and/or artillery dice when emerging if their marker is within 12" of the bearer of this item.]

#enchanted-item("CROWN OF KINGS", 20)[Tomb King only. All friendly units within 6" may make March moves despite being Undead.]

#enchanted-item("CHARIOT OF FIRE", 20)[Model on Chariot only. The Chariot of Fire causes 2D6 impacts hits with the Flaming Attacks and Magical Attacks special rules.]

#enchanted-item("ICON OF RULERSHIP", 20)[Model on Chariot only. The Icon of Rulership gives the bearer a +1 Combat Resolution bonus.]

#enchanted-item("KARITAMEN'S DEATH MASK", 10)[The bearer of this item gains +1 Leadership and the Cold-Blooded special rule.]
]

#magic-item-section("standard")[
#magic-standard("ICON OF RAKAPH", 50)[Tomb Guard or Tomb Herald on foot only. The unit carrying the Icon of Rakaph may make a Swift Reform at the start of their Movement phase. The unit may then move as normal (including declaring charges).]

#magic-standard("SIGIL OF CENTURIES", 50)[All enemy units within 6" of this standard are subject to the Always Strikes Last special rule.]

#magic-standard("STANDARD OF THE SANDS", 50)[One use only. The Standard of the Sands may be activated at the beginning of any enemy Movement phase. For the remainder of the turn, no models within 24" of the banner may March, and all units attempting to rally suffer \-1 to their Leadership.]

#magic-standard("BANNER OF THE DESERT WINDS", 40)[Infantry only. The unit carrying this standard gains the Swiftstride and Vanguard special rules.]

#magic-standard("ICON OF THE SACRED EYE", 40)[The unit carrying the Icon of the Sacred Eye (including any mounts) may re-roll failed rolls To Hit in the first round of close combat.]

#magic-standard("MIRAGE STANDARD", 40)[The Mirage Standard forces all Hits from missile attacks targeting the unit carrying it to be re-rolled.]

#magic-standard("TAPESTRY OF CONQUERED LANDS", 40)[The unit carrying this standard gains a +D3 Combat Resolution bonus (roll each time it is used).]

#magic-standard("ROYAL STANDARD OF SETTRA", 30)[The unit carrying this standard gains the Hatred (Characters) and Terror special rules.]

#magic-standard("BANNER OF THE HIDDEN DEAD", 25)[The unit carrying this standard gains the Entombed Beneath the Sands special rule.]

#magic-standard("STANDARD OF THE CURSING WORD", 25)[All enemy units in base contact with the unit carrying the Standard of the Cursing Word must pass a Leadership test or suffer D6 Wounds which Ignores Armour Saves at the start of each round of close combat.]

#magic-standard("STANDARD OF THE UNDYING LEGION", 25)[Bound Spell (power level 5). This banner contains an *augment* spell that targets the bearer's unit. If successfully cast, the bearer's unit immediately recovers a number of Wounds' worth of models, as described in the Restless Dead.]
]
= LORDS

#unit("TOMB KING",
  first: true,
  profiles: (
    (name: "Tomb King", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 10, points: 170),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +4 points
  - Spear +4 points
  - Light lance +4 points
  - Flail +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Skeletal Steed +18 points
  - Necroserpent +48 points
  - Skeleton Chariot +48 points
  - Khemrian Warsphinx (replacing the crew) +225 points
  - Necrolith Bone Dragon +235 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Curse of the Necropolis, Flammable, My Will Be Done, Undead",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("LICHE HIGH PRIEST",
  profiles: (
    (name: "Liche High Priest", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 2, a: 1, ld: 8, points: 165),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Liche High Priest is a Level 3 Wizard who uses spells from the Lore of Light, Death or Nehekhara.",
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following:
  - Skeletal Steed +18 points
  - Tomb Barque (replacing one of the crew) +120 points
  - Casket of Souls (replacing the Keeper of the Casket) +130 points
  - Necrolith Bone Dragon +235 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Undead",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

= HEROES

#unit("TOMB PRINCE",
  first: true,
  profiles: (
    (name: "Tomb Prince", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 90),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +3 points
  - Flail +6 points
  - Polearm +6 points
  - Great weapon +9 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Skeletal Steed +12 points
  - Necroserpent +32 points
  - Skeleton Chariot +48 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Curse of the Necropolis, Flammable, My Will Be Done, Undead",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("LICHE PRIEST",
  profiles: (
    (name: "Liche Priest", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 2, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Liche High Priest is a Level 1 Wizard who uses spells from the Lore of Light, Death or Nehekhara.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on a Skeletal Steed +12 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Undead",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("TOMB HERALD",
  profiles: (
    (name: "Tomb Herald", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  options: [
- One Tomb Herald may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +3 points
  - Flail +6 points
  - Polearm +6 points
  - Great weapon +9 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Skeletal Steed +12 points
  - Necroserpent +32 points
  - Skeleton Chariot +48 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Flammable, Killing Blow, Magical Attacks, Undead",
  special-rules-body: (
    rule("Sworn Bodyguard")[If you have any Characters with the My Will Be Done special rule in your army, you must nominate one of them for the Tomb Herald to protect at the start of the game. The same character may not be nominated by several Tomb Heralds. Whenever the nominated character suffers a Wound (before saves are taken) and the Tomb Herald is in the same unit as him, roll a D6. On a 1, the Wound is resolved as normal, but on a 2+ the Wound is intercepted, and re-allocated to the Tomb Herald. No more than one Wound can be re- allocated to each Tomb Herald in each phase. Wounds in a challenge can't be re-allocated.],
  ),
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("NECROTECT",
  profiles: (
    (name: "Necrotect", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour",
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Flammable, Hatred, Undead",
  special-rules-body: (
    rule("Stone Shaper")[Any friendly unit of Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts or Monsters within 12" of one or more models with this special rule gains the Regeneration (6 +) special rule and suffer 1 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's Hierophant.],
    rule("Wrath of the Creator")[The Necrotect confers the Hatred special rule onto his unit. If he leaves the unit, or is slain, the unit immediately loses Hatred.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("SKELETAL STEED",
  first: true,
  profiles: (
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Animal)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
  special-rules: "Undead",
  order: ("troop-type", "base-size", "options", "special-rules"),
)

#unit("SKELETON CHARIOT",
  profiles: (
    (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  drawn-by: "2 Skeletal Steeds (Undead)",
  base-size: "50x100",
  options: [
- May take scythes +5 points
- May take barding +5 points
  ],
  special-rules: "Undead",
  order: ("troop-type", "drawn-by", "base-size", "options", "special-rules"),
)

#unit("NECROSERPENT",
  compact: true,
  profiles: (
    (name: "Necroserpent", m: 7, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 8, points: ""),
  ),
  troop-type: "Monstrous Beast (Undead)",
  base-size: "50x100",
  special-rules: "Natural Armour (5+), Poisoned Attacks, Undead",
)

#unit("NECROLITH BONE DRAGON",
  profiles: (
    (name: "Necrolith Bone Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 6, points: "-"),
  ),
  troop-type: "Monster (Undead, Dragon)",
  base-size: "100x150",
  special-rules: "Fly (7), Undead",
  special-rules-body: (
    rule("Breath of Desiccation")[This is a Breath Weapon attack with Strength 3, Magical Attacks and the Multiple Wounds (2) special rule.],
    rule("Cloud of Dust")[All enemy missile attacks suffer \-1 To Hit against a Necrolith Bone Dragon.],
  ),
)

= CORE UNITS

#unit("SKELETON WARRIORS",
  first: true,
  profiles: (
    (name: "Skeleton Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 4),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  options: [
- May take spears +0.5 point/model
- May take light armour +0.5 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Undead",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKELETON ARCHERS",
  profiles: (
    (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 8),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, bow",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Arrows of Asaph, Undead",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKELETON SKIRMISHERS",
  profiles: (
    (name: "Skeleton Skirmisher", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 8),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelin",
  options: [
- May take replace javelins with slings +1 point/model
- May take shields +1 point/model
- May upgrade one Skeleton Skirmisher to a Leader +5 points
- May upgrade one Skeleton Skirmisher to a Musician +5 points
  ],
  special-rules: "Arrows of Asaph, Skirmishers, Undead",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKELETON HORSEMEN",
  profiles: (
    (name: "Skeleton Horseman", m: 4, ws: 3, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 10),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Undead)",
  mount: "Skeletal Steed (Undead)",
  base-size: "25x50",
  equipment: "Light lance, shield",
  options: [
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Fast Cavalry, Undead",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKELETON HORSE ARCHERS",
  profiles: (
    (name: "Skeleton Horse Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 10),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Undead)",
  mount: "Skeletal Steed (Undead)",
  base-size: "25x50",
  equipment: "Hand weapon, bow",
  options: [
- May take light armour +1 point/model
- May upgrade one Skeleton Horse to a Leader +5 points
- May upgrade one Skeleton Horse to a Musician +5 points
- May upgrade one Skeleton Horse to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Arrows of Asaph, Fast Cavalry, Undead",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("SKELETON CHARIOTS",
  profiles: (
    (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 50),
    (name: "Skeleton Charioteer", m: "-", ws: 3, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "3+",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Skeleton Charioteers (Undead)",
  drawn-by: "2 Skeletal Steeds (Undead)",
  base-size: "50x100",
  equipment: "Light lance, bow, javelins",
  options: [
- May take light armour +4 points/model
- May take scythes +5 points/model
- May upgrade one Skeleton Chariot to a Leader +5 points
- May upgrade one Skeleton Chariot to a Musician +5 points
- May upgrade one Skeleton Chariot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Arrows of Asaph, Undead",
  order: ("unit-size", "troop-type", "crew", "drawn-by", "base-size", "equipment", "options", "special-rules"),
)

#unit("TOMB SWARMS",
  compact: true,
  profiles: (
    (name: "Tomb Swarm", m: 4, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 1, a: 8, ld: 2, points: 40),
  ),
  unit-size: "2-10",
  troop-type: "Swarm (Undead)",
  base-size: "40x40",
  special-rules: "Entombed Beneath the Sands, Poisoned Attacks, Undead",
)

= SPECIAL UNITS

#unit("TOMB GUARD",
  first: true,
  profiles: (
    (name: "Tomb Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour, shield",
  options: [
- May take polearms +2 points/model
- May upgrade one Tomb Guard to a Leader +5 points
- May upgrade one Tomb Guard to a Musician +5 points
- May upgrade one Tomb Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Killing Blow, Magical Attacks, Undead",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("TOMB GUARD CHARIOTS",
  profiles: (
    (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 60),
    (name: "Tomb Guard Charioteer", m: "-", ws: 3, bs: 2, s: 4, t: "-", w: "-", i: 2, a: 1, ld: 8, points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "3+",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Tomb Guard Charioteer (Undead)",
  drawn-by: "2 Skeletal Steeds (Undead)",
  base-size: "50x100",
  equipment: "Hand weapon, light armour, shield",
  options: [
- May take one of the following:
  - Light lances +2 points
  - Polearms +2 points
- May take barding +3 points/model
- May take scythes +5 points/model
- May upgrade one Skeleton Chariot to a Leader +5 points
- May upgrade one Skeleton Chariot to a Musician +5 points
- May upgrade one Skeleton Chariot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Killing Blow, Magical Attacks, Undead",
  order: ("unit-size", "troop-type", "crew", "drawn-by", "base-size", "equipment", "options", "special-rules"),
)

#unit("MUMMIES",
  compact: true,
  profiles: (
    (name: "Mummy", m: 4, ws: 3, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 2, ld: 8, points: 17),
  ),
  unit-size: "5-20",
  troop-type: "Infantry (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Curse of the Necropolis, Flammable, Undead",
)

#unit("USHABTI",
  profiles: (
    (name: "Ushabti", m: 5, ws: 4, bs: 3, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 8, points: 42),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Undead)",
  base-size: "40x40 or 50x50",
  equipment: "Two hand weapons, light armour",
  options: [
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
  ],
  special-rules: "Arrows of Asaph, Undead",
  upgrades: (
    rule("Aspect of Asaph, Goddess of Magic and Vengeance")[The unit gains the Magic Resistance (2) special rule.],
    rule("Aspect of Djaf, God of Death")[The unit gains the Killing Blow special rule.],
    rule("Aspect of Geheb, God of Earth and Giver of Strength")[The unit gains the Mighty Blow (1) special rule.],
    rule("Aspect of Phakth, God of the Sky and Bringer of Justice")[The unit gains +1 Movement.],
    rule("Aspect of Sobk, God of Water and War")[The unit may re-roll To Hit rolls of 1 with shooting and close combat attacks.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("CARRION",
  compact: true,
  profiles: (
    (name: "Carrion", m: 2, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 4, points: 20),
  ),
  unit-size: "3+",
  troop-type: "War Beast (Undead)",
  base-size: "40x40",
  special-rules: "Fly (9), Scouts, Undead",
)

#unit("SEPULCHRAL STALKERS",
  profiles: (
    (name: "Sepulchral Stalker", m: 7, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: 48),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Beast (Undead)",
  base-size: "50x75",
  equipment: "Polearm, medium armour",
  special-rules: "Entombed Beneath the Sands, Undead",
  special-rules-body: [
- *Transmogrifying Gaze:* Transmogrifying Gaze has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Ignores Armour saves, Killing Blow, Magical Attacks, Multiple Shots (3)"))

When rolling To Wound, substitute the target's Toughness with its Initiative value. This attack does not suffer any To Hit penalties.
  ],
)

#unit("TOMB SCORPION",
  compact: true,
  profiles: (
    (name: "Tomb Scorpion", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 4, ld: 8, points: 60),
  ),
  troop-type: "Monstrous Beast (Undead)",
  base-size: "50x50 or 75x50",
  special-rules: "Entombed Beneath the Sands, Killing Blow, Magic Resistance (1), Natural Armour (5+), Poisoned Attacks, Undead",
)

#unit("AMMUT",
  profiles: (
    (name: "Ammut", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 2, a: 3, ld: 8, points: 52),
  ),
  troop-type: "Monstrous Beast (Undead)",
  base-size: "50x50 or 50x75",
  special-rules: "Killing Blow, Magical Attacks, Natural Armour (6+), Scouts, Undead",
  special-rules-body: (
    rule("Feast of Souls")[When the Ammut causes an unsaved Wound, it regains one Wound lost earlier in the battle.],
    rule("Hunter of the Evil and Wicked")[The Ammut may re-roll failed To Wound rolls against models from the Forces of Destruction.],
  ),
)

#unit("BASTETHI",
  profiles: (
    (name: "Bastethi", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: 20),
  ),
  unit-size: "5+",
  troop-type: "War Beast (Undead)",
  base-size: "25x50 or 30x60",
  magic: "A unit of Bastethi is a Level 1 Wizard that can use spells from the Lore of Nehekhara.",
  special-rules: "Always Strikes First, Flammable, Undead",
  special-rules-body: (
    rule("Necromantic Reservoir")[The unit receives an additional +1 to cast for each rank of 5 or more models in the unit, after the first, to a maximum of +3. Each time the unit casts a spell, you must nominate one Bastethi as the caster for the purposes of line of sight, range, etc. In the event that a Bastethi unit rolls a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds which Ignores Armour saves. If the unit is targeted by a rule that affects a Wizard, your opponent must choose one Bastethi as the target.],
  ),
)

#unit("TOMB BARQUE OF USIRIAN",
  profiles: (
    (name: "Tomb Barque", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 125),
    (name: "Skeleton Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "5 Skeleton Crew (Undead)",
  base-size: "50x100 or 60x100",
  equipment: "Light lance, bow, light armour",
  special-rules: "Arrows of Asaph, Fly (5), Undead.",
  special-rules-body: [
- *Hieroglyphs of Protection:* The Tomb Barque and friendly units within 6" of one or more Tomb Barques have a Ward save (6+).
- *Khepra Beetles:* Enemy units in base contact with the Tomb Barque suffers 2D6 Strength 2 hits at the start of each close combat phase.
- *Wards of the Gods:* At the beginning of each of your turns, you may choose one of the following Wards. Each Ward lasts until the beginning of your next turn.
  - *Ward of Qu'aph:* The Tomb Barque gains the Ethereal special rule.
  - *Ward of Sokth:* Enemy units within 12" of the Tomb Barque must re-roll 6's when rolling To Hit in close combat.
  - *Ward of Tahoth:* All friendly Wizards within 6" gain the Loremaster special rule.
  ],
)

#unit("BONE THROWER",
  profiles: (
    (name: "Bone Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 35),
    (name: "Skeleton Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: ""),
  ),
  troop-type: "War Machine (Bolt Thrower)",
  crew: "3 Skeleton Crew (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take light armour +3 points
  ],
  special-rules: "Arrows of Asaph, Undead",
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules"),
)

#unit("SCREAMING SKULL CATAPULT",
  profiles: (
    (name: "Screaming Skull Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Skeleton Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: ""),
  ),
  troop-type: "War Machine (Stone Thrower)",
  crew: "3 Skeleton Crew (Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May be upgraded to fire Skulls of the Foe +20 points
- May take light armour +3 points
  ],
  special-rules: "Undead",
  special-rules-body: (
    rule("Screaming Skulls")[All shooting attacks made by a Screaming Skull Catapult are magical and have the Flaming Attacks special rule. In addition, any unit that suffers one or more casualties from a shooting attack by a Screaming Skull Catapult must take a Panic test as if it had taken 25% casualties.],
  ),
  upgrades: (
    rule("Skulls of the Foe")[This upgrade adds an additional effect to the catapult's Screaming Skulls. If a target unit takes a Panic test as a result of being hit by the Skulls of the Foe, then they must take the test with a \-1 penalty to their Leadership.],
  ),
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

= RARE UNITS

#unit("NECROPOLIS KNIGHTS",
  first: true,
  profiles: (
    (name: "Necropolis Knight", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 8, points: 55),
    (name: "Necroserpent", m: 7, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 8, points: ""),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Cavalry (Undead)",
  mount: "Necroserpent (Undead)",
  base-size: "50x100",
  equipment: "Light lance, light armour",
  options: [
- May take shields +6 points/model
- May upgrade one Necropolis Knight to a Leader +5 points
- May upgrade one Necropolis Knight to a Musician +5 points
- May upgrade one Necropolis Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Killing Blow, Magical Attacks, Natural Armour (5+), Poisoned Attacks (Necroserpent only), Undead",
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules"),
)

#unit("CASKET OF SOULS",
  profiles: (
    (name: "Casket of Souls", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 135),
    (name: "Keeper of the Casket", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: ""),
    (name: "Casket Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 8, points: ""),
  ),
  troop-type: "War Machine",
  crew: "1 Keeper of the Casket & 2 Casket Guard (Undead)",
  base-size: "50x50",
  equipment: "Hand weapon, great weapon (Casket Guard only), light armour",
  special-rules: "Killing Blow (Casket Guard only), Magical Attacks (Casket Guard only), Undead, Ward Save",
  special-rules-body: [
*(4+)*

- *Covenant of Power:* You may add 1 Power dice to your pool for each Casket of Souls in your army.
- *Vortex of Souls:* The Casket of Souls can use one of the following abilities at the start of your Shooting phase as long as the Keeper of the Casket model is alive, and the Casket of Souls has not moved this turn.
  - *Light of Death:* Light of Death has a range of 36". One enemy unit within Line of Sight of the Casket must take a Leadership test on an additional D6, discarding the lowest result. For each point the test is failed by, it suffers an automatic Wound which Ignores Armour Saves. Once the Leadership test has been resolved, roll a D6: on a 3+, choose another enemy unit within Line of Sight of the Casket that is within 6" of the initial target, which also suffers the effects of the _Light of Death_. Keep rolling for further victims (each within Line of Sight of the Casket and within 6" of the last target struck), until the roll is failed or there are no more viable targets. A unit can only be the target of _Light of Death_ once per Shooting phase.
  - *Light of Protection:* Until the start of your next Shooting phase, all friendly units within 12" gain a 6+ Ward save, and enemy units suffer \-1 To Hit against them.
- *Unleashed Souls:* If a Casket of Souls is destroyed, roll a D6 for every unit (friend or foe) within 12" of the Casket before it is removed from play. On a roll of 4+, that unit immediately suffers D6 Strength 6 hits, with the Ignores Armour Saves and Magical Attacks special rule. After resolving the effects of Unleashed Souls, remove the Casket of Souls as normal.
  ],
)

#unit("KHEMRIAN WARSPHINX",
  profiles: (
    (name: "Khemrian Warsphinx", m: 6, ws: 4, bs: 0, s: 5, t: 8, w: 6, i: 1, a: 4, ld: 8, points: 225),
    (name: "Tomb Guard Crew", m: "-", ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Monster (Undead)",
  base-size: "50x100 or 60x100",
  crew: "4 Tomb Guard Crew (Undead)",
  equipment: "Light lance (Tomb Guard Crew only), medium armour",
  options: [
- May take Envenomed Sting +10 points
- May take Fiery Roar +30 points
  ],
  special-rules: "Killing Blow (Tomb Guard Crew only), Magical Attacks (Tomb Guard Crew only), Undead.",
  special-rules-body: (
    rule("Thundercrush Attack")[After its crew have attacked, a Khemrian Warsphinx may exchange all of its Attacks to make a single Thundercrush Attack (though it can still Stomp). Roll To Hit against the highest Weapon Skill amongst the enemy models in base contact. If this Attack hits, place the small template anywhere so that it is touching the Khemrian Warsphinx's base. Any Infantry, War Beast or Swarm models that lie underneath the template (friend or foe) suffer a single Strength 3 hit. The model under the template's central hole instead suffers a single Strength 9 hit with the Multiple Wounds (D3) special rule. This has no effect on other Troop Types.],
  ),
  upgrades: (
    rule("Envenomed Sting")[All normal Attacks made by a Khemrian Warsphinx with this upgrade have the Poisoned Attacks special rule.],
    rule("Fiery Roar")[A Khemrian Warsphinx with this upgrade has a Strength 4 Breath Weapon with the Flaming Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "crew", "equipment", "options", "special-rules", "upgrades"),
)

#unit("NECROSPHINX",
  profiles: (
    (name: "Necrosphinx", m: 6, ws: 4, bs: 0, s: 6, t: 8, w: 6, i: 1, a: 4, ld: 8, points: 250),
  ),
  troop-type: "Monster (Undead)",
  base-size: "50x100 or 60x100",
  equipment: "Two hand weapons, medium armour",
  options: [
- May take Envenomed Sting +10 points
  ],
  special-rules: "Fly (7), Heroic Killing Blow, Undead",
  upgrades: (
    rule("Envenomed Sting")[All normal Attacks made by a Necrosphinx with this upgrade have the Poisoned Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("NECROLITH COLOSSUS",
  profiles: (
    (name: "Necrolith Colossus", m: 6, ws: 3, bs: 3, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 8, points: 210),
  ),
  troop-type: "Monster (Undead)",
  base-size: "50x50",
  equipment: "Two hand weapons, light armour",
  options: [
- May replace one hand weapon with one of the following:
  - Shield free
  - Great weapon free
  - Bolt thrower free
  ],
  special-rules: "Arrows of Asaph, Undead.",
  special-rules-body: (
    rule("Unstoppable Assault")[In the turn in which a Necrolith Colossus charges, every unsaved Wound that it inflicts in close combat immediately allows it to make an additional Attack, up to a maximum of +5 Attacks. Note that these additional Attacks also benefit from the Unstoppable Assault rule, but Stomps do not.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("HIEROTITAN",
  profiles: (
    (name: "Hierotitan", m: 6, ws: 3, bs: 2, s: 6, t: 7, w: 6, i: 1, a: 3, ld: 8, points: 205),
  ),
  troop-type: "Monster (Undead)",
  base-size: "50x50",
  magic-items: (
    rule("Icon of Ptra")[Arcane Item. Bound Spell (power level 3). An Icon of Ptra contains the spell _Shem's Burning Gaze_ from the Lore of Light.],
    rule("Scales of Usirian")[Arcane Item. Bound Spell (power level 4). The Scales of Usirian contain the spell _Spirit Leech_ from the Lore of Death).],
  ),
  special-rules: "Undead",
  special-rules-body: (
    rule("Spirit Conduit")[Friendly Wizards within 12" of one or more Hierotitans gains a +1 Casting bonus.],
  ),
)

#unit("KHEMRIC TITAN",
  profiles: (
    (name: "Khemric Titan", m: 8, ws: 3, bs: 0, s: 6, t: 8, w: 10, i: 1, a: "*", ld: 8, points: 320),
  ),
  troop-type: "Monster (Undead)",
  base-size: "100x150",
  special-rules: "Fly (7), Impact Hits (D6), Natural Armour (5+), Undead",
  special-rules-body: [
- *Curse of the Fallen:* If the Khemric Titan is slain by any means, all enemy units within 6" from suffer 2D6 Strength 2 hits which Ignores Armour saves.
- *Khemric Titan Special Attacks:* In order to determine what happens, each Close Combat phase that the Khemric Titan is in combat, pick a single unit in base contact and roll a D6 on the table below:

#chart((("D6", "Result"), ("1-2", "Reaping Blades: The Khemric Titan inflicts D6 Strength 6 hits on the enemy unit."), ("3", "Flesh-eating Scarabs: The Khemric Titan inflicts 3D6 Strength 2 hits on the enemy unit."), ("4", "Breath of Night: The Khemric Titan does not attack, but instead automatically wins the combat with
a combat resolution of 2 (unless this would be higher from other sources)."), ("5", "Devouring Jaws: The Khemric Titan inflicts a Strength 6 hit with the Heroic Killing Blow special
rule on all enemy models in base contact."), ("6", "Soul Slaying Hunger: The Khemric Titan inflicts 2D6 hits on the enemy unit. Roll a D6 for each hit,
on a 5+ it inflicts a Wound with no armour saves allowed and the Multiple Wounds (D3) special rule.
This is a Magical Attack.")))

- *Shrine of Eternities:* Once per magic phase the Khemric Titan can unleash a Bound spell. One of the following may be chosen:
  - *The Gaze of Dust:* Bound Spell (power level 5). This is a *magic missile* with a range of 24". It causes a Strength 6 Hit which penetrates ranks in the same way as a Bolt Thrower.
  - *Wrath of the Sands:* Bound Spell (power level 3). This is a *hex* spell with a range of 24". The target suffers \-2 To Hit when shooting and \-1 to their charge distance rolls until the start of the caster's next Magic phase.
  - *Reawakening of Ancient Might:* Bound Spell (power level 3). This is an *augment* spell that targets the Khemric Titan itself. When successfully cast, it restores one Wound previously suffered during the battle.
  ],
)

= SPECIAL CHARACTERS (LORDS)

#unit("SETTRA THE IMPERISHABLE",
  first: true,
  subtitle: "God-King of Khemri, Ruler of Nehekhara",
  profiles: (
    (name: "Settra the Imperishable", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 5, ld: 10, points: 545),
    (name: "Chariot of the Gods", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Special Character, Undead)",
  base-size: "100x100",
  drawn-by: "4 Skeletal Steeds (Undead)",
  equipment: "Scythes",
  magic: "Settra the Imperishable is a Level 2 Wizard who uses spells from Lore of Nehekhara.",
  magic-items: (
    rule("Blessed Blade of Ptra")[Magic Weapon. Polearm. This blade gives Settra the Always Strikes First, Armour Piercing (1) and Flaming Attacks special rules. In addition, a character or monster that suffers one or more unsaved Wounds from the Blessed Blade of Ptra suffers \-1 to its rolls To Hit (both shooting and close combat) for the remainder of the game.],
    rule("Armour of Golden Magnificence")[Magic Armour. Heavy armour. This armour save cannot be modified in any way, and may even be taken against mundane attacks that normally do not allow armour saves.],
    rule("Scarab Brooch of Usirian")[Talisman. The Scarab Brooch of Usirian grants Settra the Ward Save (4+) and the Magic Resistance (1) special rules.],
    rule("Crown of Nehekhara")[Enchanted Item. Settra the Imperishable's My Will Be Done special rule affects all friendly Undead units within 6" of him, not just the unit he has joined.],
  ),
  special-rules: "Flammable, My Will Be Done, Undead",
  special-rules-body: (
    rule("Chariot of the Gods")[Impact Hits from the Chariot of the Gods have the Flaming Attacks and Magical Attacks special rules.],
    rule("The Curse of Settra")[In addition to the normal Curse of the Necropolis, if Settra is killed by any means, then every enemy unit within 2D6" suffers 2D6 Strength 2 hits.],
    rule("Settra the Great")[If you take Settra the Imperishable, he must be your Army General. Settra has the Inspiring Presence (6) special rule in addition to his normal Inspiring Presence.],
  ),
  order: ("troop-type", "base-size", "drawn-by", "equipment", "magic", "magic-items", "special-rules"),
)

#unit("HIGH QUEEN KHALIDA NEFERHER",
  subtitle: "Beloved of Asaph, Tomb Queen of the Eastern Deserts",
  profiles: (
    (name: "High Queen Khalida", m: 6, ws: 6, bs: 3, s: 4, t: 5, w: 3, i: 9, a: 5, ld: 10, points: 270),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("Venom Staff")[Arcane Item. Bound Spell (power level 5). The Venom Staff contains a *magic missile* with a range of 24". If successfully cast, the target takes 2D6 Strength 3 hits with the Poisoned Attacks special rule.],
  ),
  options: [
- May be mounted on a Necroserpent +48 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Always Strikes First, Curse of the Necropolis, Flammable, Hatred (Vampire Counts), My",
  special-rules-body: [
*Will be Done, Poisoned Attacks, Regeneration (4+), Undead*

- *Blessing of Asaph:* If Khalida is included in your army, any unit of Skeleton Archers, Horse Archers or Chariots may be upgraded to gain the Poisoned Attacks special rule for all shooting attacks for +2 points per model.
  ],
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("GRAND HIEROPHANT KHATEP",
  subtitle: "Liche Lord of Khemri",
  profiles: (
    (name: "Khatep", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 2, a: 1, ld: 9, points: 340),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Khatep is a Level 4 Wizard who uses spells from Lore of Nehekhara.",
  magic-items: [
- *Liche Staff:* Arcane Item. Once per Magic phase, Khatep can declare that he is using the Liche Staff immediately after rolling the dice to cast a spell, even if the result indicates a miscast. If Khatep uses the Liche Staff, he re-rolls all the casting dice used in the attempt.
- *Scroll of the Cursing Word*: Arcane Item. One Use Only. This works exactly the same as a Dispel Scroll. In addition the caster must immediately take a Toughness test. If the test is passed, nothing happens. If the test is failed, the enemy Wizard cannot cast any more spells that turn. If the test is failed on the roll of a 6, the caster immediately suffers D3 Wounds as well, with no saves of any kind allowed.
  ],
  options: [
- May be mounted on one of the following
  - Skeletal Steed +18 points
  - Tomb Barque (replacing one of the crew) +120 points
  - Casket of Souls (replacing the Keeper of the Casket) +145 points
  - Necrolith Bone Dragon +235 points
  ],
  special-rules: "Loremaster (Lore of Nehekhara), Undead",
  special-rules-body: (
    rule("Grand Hierophant of Khemri")[If you take Grand Hierophant Khatep, he must be your army's Hierophant. He gives his unit the Regeneration (5+) special rule rather than Regeneration (6+). Additionally, when using _The Restless Dead_ Lore Attribute, Khatep restores 2D6 Wounds for Core Units (except Chariots), D6 Wounds for Special Units, Chariots and Monstrous Cavalry, and D3 Wounds for Rare Units.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic", "magic-items", "options", "special-rules"),
)

#unit("ARKHAN THE BLACK",
  subtitle: "The Liche King, Dark Lord of Nagash",
  profiles: (
    (name: "Arkhan the Black", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 330),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic: "Arkhan the Black is a Level 4 Wizard who uses spells from Lore of Death and Nehekhara. He may choose",
  magic-body: [
spells from both Lores in any combination as he wishes.
  ],
  magic-items: (
    rule("Tomb Blade of Arkhan")[Magic Weapon. For every unsaved Wound caused by this blade to an enemy in close combat, Arkhan's unit immediately recovers a Wound for each one inflicted, as described in Resurrecting Fallen Warriors.],
    rule("Liber Mortis")[Arcane Item. Whilst Arkhan the Black has the Liber Mortis he gains +1 to cast, +1 to dispel and one additional spell. If the Liber Mortis is ever destroyed, Arkhan the Black immediately loses a randomly determined spell.],
    rule("Staff of Nagash")[Arcane Item. At the end of the opponent's Magic phase, you can store up to three unused dispel dice from your pool in the Staff of Nagash. At the beginning of your next Magic phase, add these dice to your power dice pool. If Arkhan the Black is removed as a casualty before your next Magic phase, these power dice are lost.],
  ),
  options: [
- May be mounted on a Chariot of the Liche King +85 points
  ],
  special-rules: "Curse of the Necropolis, Flammable, Undead",
  special-rules-body: (
    rule("Chariot of the Liche King")[This is a Skeleton Chariot with 2 additional Skeleton Steeds, the Fly (8) and Terror special rules.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic", "magic-items", "options", "special-rules"),
)

#unit("SEHENESMET",
  subtitle: "Vizier of Quatar",
  profiles: (
    (name: "Sehenesmet", m: 6, ws: 3, bs: 2, s: 6, t: 7, w: 6, i: 3, a: 4, ld: 8, points: 425),
  ),
  troop-type: "Monster (Special Character, Undead)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "Sehenesmet is a Level 2 Wizard who uses spells from Lore of Nehekhara.",
  magic-items: (
    rule("The Sacred Crook of Shapesh")[Magic Weapon. Great weapon. Keep track of the number of unsaved wounds inflicted by the Sacred Crook in each Close Combat phase. In each of your Shooting phases, the power of the Crook may be unleashed as a special attack with a range of 24", or against one enemy unit in base contact. The target suffers a number of Strength 4 hits equal to the number of wounds currently ‘stored’ in the Crook. Once unleashed, the number of wounds stored in the staff are returned to 0 until Sehenesmet inflicts more wounds. In addition, it increases the range of Sehenesmet's spells by 6".],
  ),
  special-rules: "Hatred, Magic Resistance (2), Undead",
  special-rules-body: (
    rule("Master Stone Shaper")[Sehenesmet follows the normal rules for Stone Shaper, but grants Regeneration (5+) rather than Regeneration (6+).],
    rule("The Stone Host of Quatar")[If Sehenesmet is the Army General, all units of Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts or Monsters counts as Core/Special units rather than Special/Rare units. However, all other Core/Special units will count as Special/Rare units instead. This does not change the number of Wounds restored from _The Restless Dead_ Lore Attribute for the affected units – use the original values for all units.],
  ),
)

= SPECIAL CHARACTERS (HEROES)

#unit("PRINCE TUTANKHANUT",
  first: true,
  subtitle: "The Golden Prince of Numas",
  profiles: (
    (name: "Tutankhanut", m: 4, ws: 5, bs: 4, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 115),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, bow, heavy armour",
  options: [
- May be mounted on a Skeleton Chariot +48 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Arrows of Asaph, Curse of the Necropolis, Flammable, My Will Be Done, Undead",
  special-rules-body: (
    rule("Scythan Warriors")[If your army contains Tutankhanut you may upgrade units of Skeleton Horse Archers to Scythan Warriors for +2 points/model. Scythan Warriors do not have the Arrows of Asaph and Undead special rules, but instead have +1 Weapon Skill, +1 Ballistic Skull, +1 Initiative, +2 Leadership and the Immunity (Fear) special rule. Their mounts have +1 Movement, 1 Weapon Skill and +1 Initiative. Scythan Warriors always treat Tutankhanut as the Army General for all purposes.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("PRINCE APOPHAS",
  subtitle: "The Cursed Scarab Lord",
  profiles: (
    (name: "Prince Apophas", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 4, i: 1, a: 5, ld: 8, points: 130),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  special-rules: "Entombed Beneath the Sands, Fly (10), Loner, Regeneration (4+), Strider, Terror, Undead",
  special-rules-body: (
    rule("Desert Revenant")[When rolling to enter the table using the Entombed Beneath the Sands special, you may re- roll the Artillery dice.],
    rule("Scarab Prince")[Apophas may join units of Tomb Swarms and will benefit from "Look Out, Sir" while in such a unit. In addition, if Apophas is ever destroyed (by any means), then before removing the model all enemy units within 2D6" of him immediately take 2D6 Strength 1 hits with the Poisoned Attacks special rule.],
    rule("Soul Reaper")[As soon as Prince Apophas is placed on the table, nominate one enemy character on the battlefield. Apophas re-rolls any failed To Hit and To Wound rolls against the chosen character.],
    rule("Swarming Mass")[Apophas has a Strength 1 Breath Weapon with the Poisoned Attacks special rule.],
  ),
)

#unit("THE HERALD NEKAPH",
  subtitle: "Emissary of Settra",
  profiles: (
    (name: "The Herald Nekaph", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("The Flail of Skulls")[Magic Weapon. Flail. Attacks made with the Flail of Skulls have the Multiple Wounds (2) special rule.],
  ),
  options: [
- May be mounted on one of the following
  - Skeletal Steed +12 points
  - Skeleton Chariot +30 points
  - Necroserpent +32 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Flammable, Killing Blow, Magical Attacks, Sworn Bodyguard (see Tomb Herald), Undead",
  special-rules-body: (
    rule("Herald of Despair")[Enemy units in base contact with Nekaph roll one additional dice when taking a Leadership test, discarding the lowest result. This has no effect on units with Immunity (Psychology).],
    rule("Settra's Champion")[If able to, Nekaph must always issue and accept challenges. When fighting in a challenge, Nekaph gains a 5+ Ward save and the Killing Blow special rule.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("RAMHOTEP THE VISIONARY",
  subtitle: "Necrotect of Quatar",
  profiles: (
    (name: "Ramhotep the Visionary", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 7, points: 100),
  ),
  troop-type: "Infantry (Special Character, Undead)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour",
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Flammable, Frenzy, Hatred, Stone Shaper (see Necrotect), Undead, Wrath of the Creator",
  special-rules-body: [
(see Necrotect)

- *Frantic Fervour:* Ramhotep confers the Frenzy special rule onto the unit he accompanies. While he remains in the unit, the unit can never lose its Frenzy.
- *Master Artisan:* At the start of the game, select a single friendly unit of Monstrous Infantry, Monstrous Cavalry, Monstrous Beast or Monster. The models in this unit gain the Natural Armour (6+) special rule for the rest of the battle.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)
