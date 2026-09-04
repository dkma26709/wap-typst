// Chaos Dwarfs 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "chaos-dwarfs",
  army: "Chaos Dwarfs",
  version: "3.0",
  layout: "army",
  cover: "covers/chaos-dwarfs.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Chaos Dwarfs 3.0")

#cover(
  title: "Chaos Dwarfs",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/chaos-dwarfs.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Chaos Dwarfs*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Chaos Dwarf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Chaos Dwarf units, and these are detailed here.

#namecost("BACKSTABBERS", "")

A unit with this special rule that successfully restrains from pursuing after breaking an enemy unit in close combat causes D6 Strength 3 hits on the fleeing unit for every complete rank the Hobgoblin unit has (up to a maximum of 3). Resolve any casualties before moving the fleeing unit.

#namecost("BLACKSHARD ARMOUR", "")

Models with this special rule have Immunity (Flaming Attacks) if they wear a light, medium or heavy armour.

#namecost("BLAZING BODY", "")

All models with this special have Flaming Attacks and Immunity (Flaming Attacks). In addition, any model in base contact with a model with this special rule at the start of the Close Combat phase takes an automatic non-physical Strength 3 Hit with the Flaming Attacks special rule. In addition, any non-magical attacks suffer a \-1 Strength penalty against them.

#namecost("CONTEMPT", "")

Units with this special rule treat friendly Hobgoblins, Goblins, and Orcs as if they had the Expendable special rule.

#namecost("COWARDLY DESPOILERS", "")

Models with this special rule gain +1 To Hit in the first round of combat if they successfully charge an enemy in the rear or flank.

#namecost("DAEMONIC", "")

Models with this special rule have the Magical Attacks, Magical Ward (5+) and Unbreakable special rules.

If a unit of Daemons loses a round of close combat it must take a Daemonic Instability test. This works like a normal Break test, except that for every point they fail the test by, the Daemon suffers one additional Wound with no saves allowed. The Daemonic Instability test can use Inspiring Presence and/or Hold Your Ground as normal.

#namecost("HELLBOUND", "")

Models with this special rule have the Fear, Magical Attacks and Magical Ward (6+) special rules. Additionally, once per game, an artillery weapon with this special rule may re-roll one scatter dice or one artillery dice. However, should a Hellbound model ever have to make a roll on a Misfire table, it suffers a \-1 modifier to the result.

#namecost("RELENTLESS", "")

Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.

#namecost("RESOLUTE", "")

When taking Break tests, models with this special rule count as having lost the combat with 1 point less than they actually have.

#namecost("SORCERER'S CURSE", "")

Whenever a model with this special rule suffers a Miscast during the game, after resolving the effects of the Miscast on them normally, they must pass a Toughness test or suffer a Wound with no saves allowed.

#namecost("FIREGLAIVE", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Requires Two Hands"))
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Ponderous"))
#namecost("FLAMEHURLER", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "4", "Armour Piercing (2), Flaming Attacks, Quick Shot"))

#note[_Note that this not a physical attack._]

#namecost("NAPTHA BOMBS", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Flaming Attacks, Ignores Armour Saves, Magical Attacks, March & Shoot, Quick Shot"))

#note[_Note that this not a physical attack._]

#namecost("TREACHEROUS GITS", "")

Units with this special rule must test for Treachery in the Charge sub-phase after all normal charges has been declared during each of your turns, by every unit that is subject to Treachery, unless any of the following applies:

- The unit has less than 5 models.
- The unit has declared a charge this turn.
- The unit is engaged in close combat.
- The unit is garrisoning a building.
- The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Treachery test and must roll on the Treachery table below:

#chart((("D6", "Result"), ("1", "Traitor! If the unit is armed with missile
weapons, they will immediately resolve a
round of shooting against the nearest friendly
unit within Line of Sight. If the unit does not
have any missile weapons or if there are no
friendly units within Line of Sight, they will
inflict D3 Strength 3 Hits for every complete
rank the unit has on themselves instead (any
Wounds suffered will not cause a Panic test).
The unit may not move, shoot or cast spells
this turn."), ("2", "We'll get a better view from further back!
The unit must immediately take a Panic test.
If it's passed, the unit may not voluntarily
move this turn."), ("3-4", "We Stayz 'Ere! The unit may not voluntarily
move this turn."), ("5", "Bloody Murder! The unit suffers D3
Strength 3 Hits for every complete rank the
unit has (any Wounds suffered will not cause
a Panic test). The unit may move as normal
afterwards."), ("6", "Cut 'em good! Pivot the unit on the spot to
face the nearest visible enemy unit, and then
make a full normal move in a straight line
towards it. If there is no visible enemy, the
unit must move straight ahead instead. If it is
impossible for the unit to pivot to face the
closest enemy, it will pivot towards it as far
as it can, and will then move as far forward
as it can while still keeping the enemy within
its forward arc. After the move is complete
the unit must declare a charge against the
closest visible enemy unit, if it is possible to
do so. If the unit cannot declare a charge then
it may carry on with the rest of its turn
normally, as if it had not yet moved this turn.")))
#chartlabel("ANIMOSITY")

Units with this special rule must test for Animosity in the Charge sub-phase after all normal charges has been declared during each of your turns, by every unit that is subject to Animosity, unless any of the following applies:

- The unit has less than 5 models.
- The unit has declared a charge this turn.
- The unit is engaged in close combat.
- The unit is garrisoning a building.
- The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Animosity test and must roll on the Animosity table below:

#chart((("D6", "Result"), ("1", "Get 'Em: For every complete rank the unit
has, it suffers D3 hits at the Strength
characteristic of the majority on the models
in the unit. The unit may not voluntarily
move or shoot this turn. Wounds caused by
the Get 'Em result never cause Panic tests."), ("2-4", "Squabble: If it is possible to do so, the unit
must declare a charge against the closest
enemy unit. If the unit is unable to declare a
charge, the unit may not move in the
Movement phase or shoot this turn."), ("5-6", "We'll Show 'Em: Pivot the unit on the spot
to face the nearest visible enemy unit, and
then make a full normal move in a straight
line towards it. If there is no visible enemy,
the unit must move straight ahead instead. If
it is impossible for the unit to pivot to face
the closest enemy, it will pivot towards it as
far as it can, and will then move as far
forward as it can while still keeping the
enemy within its forward arc. After the move
is complete the unit must declare a charge
against the closest visible enemy unit, if it is
possible to do so. If the unit cannot declare a
charge then it may carry on with the rest of
its turn normally, as if it had not yet moved
this turn.")))
]

= THE LORE OF HASHUT

#columns(2)[
#namecost("KILLING FIRE", "")
#namecost("Lore Attribute", "")

Each time a spell from the Lore of Hashut is successfully cast, all enemy units within 6" of the Wizard suffer D6 Strength 3 Hits with the Flaming Attacks special rule.

#namecost("BREATH OF HATRED", "")
#namecost("Signature Spell Cast on 5+", "")

_Breath of Hatred_ is an *augment* spell with a range of 18". The target unit gains the Hatred special rule until the start of the caster's next Magic phase.

#namecost("BURNING WRATH", "")
#namecost("Level 1 Cast on 6+", "")

_Burning Wrath_ is a *magic missile* with a range of 12" and causes D6 Strength 6 hits with the Flaming Attacks special rule.

#namecost("DARK SUBJUGATION", "")
#namecost("Level 1 Cast on 7+", "")

_Dark Subjugation_ is a *hex* spell with a range of 24". The target unit must pass a Leadership test with a \-3 penalty or suffer a permanent reduction of \-1 to their Leadership for the rest of the game (to a minimum of 2).

#namecost("FISTS OF FIRE", "")
#namecost("Level 1 Cast on 7+", "")

_Fists of Fire_ is an *augment* spell with a range of 18". The target gains +1 Strength and the Flaming Attacks special rule until the start of the caster's next Magic phase.

#namecost("FLAMING HIDE", "")
#namecost("Level 2 Cast on 8+", "")

Remains in play. _Flaming Hide_ is an *augment* spell with a range of 18". While the spell is in effect, the target has the Blazing Body special rule.

#namecost("SEARING DETONATION", "")
#namecost("Level 2 Cast on 8+", "")

_Searing Detonation_ is a *direct damage aura* spell with a range of 12". All enemy units within the caster's front arc suffer D6 Strength 4 Hits with the Flaming Attacks special rule.

#namecost("MAGMA POOL", "")
#namecost("Level 2 Cast on 9+", "")

_Magma Pool_ is a *conveyance* spell with a range of 12". The target is immediately picked up and may be moved to any point on the battlefield within 12" of its original position, just like a summoning spell.

#namecost("CURSE OF HASHUT", "")
#namecost("Level 3 Cast on 10+", "")

_Curse of Hashut_ is a *direct damage* spell with a range of 12". It targets a single enemy model of the caster's choice (even a character in a unit). The target suffers a number of hits equal to 2D6 minus their Toughness value. Hits from this spell Wound on a 4+ with the Ignores Armour saves special rule.

#namecost("DOOMROAR", "")
#namecost("Level 3 Cast on 10+", "")

_Doomroar_ is an *augment/hex aura* spell with a range of 12". Until the start of the caster's next Magic phase, all friendly units within range roll an additional D6 for their Leadership test and discard the highest result, and all enemy units within range roll an additional D6 for their Leadership test and discard the lowest result.

#namecost("ASH CLOUD", "")
#namecost("Level 3 Cast on 13+", "")

_Ash Cloud_ is a *hex aura* spell with a range of 18". Until the start of the caster's next Magic phase, all affected units within range suffer \-1 To Hit in close combat and with missile attacks, may not march or fly, and must re-roll successful dangerous terrain tests.

#namecost("HELL HAMMER", "")
#namecost("Level 4 Cast on 13+", "")

_Hell Hammer_ is a *direct damage area* spell that uses the line template. Place it 18" in length, directly away from the caster's front arc. Each model in the way (determined using the line template) suffer a Strength 6 hit with the Flaming Attacks and Multiple Wounds (D3) special rules. Any unit suffering casualties from this spell must immediately take a Panic test.

#namecost("LAVA STORM", "")
#namecost("Level 4 Cast on 14+", "")

_Lava Storm_ is a *direct damage area* spell with a range of 12". Place D3 small round templates anywhere within range. All models touched by each template suffer a Strength 5 hit with the Flaming Attacks and the Multiple Wounds (D3) special rules.

#namecost("FLAMES OF AZGORH", "")
#namecost("Level 4 Cast on 15+", "")

_Flames of Azgorh_ is a *direct damage area* spell with a range of 12" that uses the large round template. All models touched by the template suffer a Strength 5 hit with the Flaming Attacks and the Multiple Wounds (D3) special rules.
]

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Chaos Dwarfs. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("VOLCANIC HAMMER", "45 points")

Great weapon. All attacks made with this weapon have the Flaming Attacks special rule. In addition, the wielder may may exchange all of their Attacks to make a special attack. Roll To Hit against the highest enemy Weapon Skill in base contact. If this Attack hits, place the small template anywhere so that it is touching the wielder's base. Any models that lie underneath the template (friend or foe) suffer a single Strength 3 hit. The model under the template's central hole instead suffers a single Strength 9 hit with the Multiple Wounds (D3) special rule.

#namecost("DARK MACE OF DEATH", "40 points")

Close combat attacks made with this weapon have the Killing Blow special rule. In addition, once per game, at the start of the close combat round, the wielder can inflict an automatic Wound on every model in base contact with the Ignores Armour saves special rule.

#namecost("LIFE BANE BLADE", "35 points")

The wielder gains the Multiple Wounds (D3) special rule. Whenever the wielder of this item causes one or more unsaved Wounds during a round of close combat, they regain 1 Wound lost earlier during the game.

#namecost("HASHUT'S BLADE OF GREED", "25 points")

The wielder of this weapon gains a bonus for each different type of magic item in any enemy unit they are in base contact with. Additional magic items of the same type have no effect.

#chart((("Item Type:", "Effect:"), ("Magic Weapon", "Parry (6+)"), ("Magic Armour", "Armour Piercing (1)"), ("Talisman", "+1 To Wound"), ("Arcane Item", "Magic Resistance (1)"), ("Enchanted Item", "+1 To Hit"), ("Magic Standard", "+1 Combat Resolution")))

#runin[ZZHARG MADEYE]'#runin[S BLUNDERBUSS 25 points] Daemonsmith only. Blunderbuss. This weapon may be used in the Shooting phase like a Breath Weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "4", "Armour Piercing (1), Cumbersome"))
#namecost("LASH OF SHURZZHAK", "20 points")

Instead of fighting normally, the wielder may make a special attack. If this attack hits, all models in one column in base contact with the wielder are automatically Hit.

#namecost("OBSIDIAN BLADE", "20 points")

The wielder gains the Ignores Armour Saves special rule.

#namecost("INFERNO GLAIVE OF HASHUT", "15 points")

Fireglaive. Close combat attacks made with this weapon have the Armour Piercing (1) special rule. Missile attacks with this weapon have Strength 5.

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF THE FORGE", "60 points")

Heavy armour. The wearer gains a Magical Ward (5+) which may be re-rolled.

#namecost("ARMOUR OF BAZHERAK THE CRUEL", "50 points")

Heavy armour. This armour gives the wearer +2 to their armour save and the Magic Resistance (2) special rule.

#namecost("MAGMA ARMOUR", "50 points")

Heavy armour. For each failed To Wound roll against the bearer in close combat, the Magma Armour inflicts a Strength 4 Hit with the Flaming Attacks special rule against the model that struck the blow.

#namecost("THE MASK OF THE FURNACE", "45 points")

6+ armour save. The wearer gains the Fear, Immunity (Flaming Attacks) and Magical Ward (5+) special rules.

#namecost("DAEMONBINDER ARMOUR", "35 points")

Daemonsmith only. Medium armour. The wearer gains the Hellbound special rule.

#namecost("OBSIDIAN VAMBRACES", "25 points")

The wearer gains a 6+ armour save, +1 Strength and the Magic Resistance (1) special rule. However, if they roll two or more natural 1's when making a roll To Hit in close combat, the item can no longer be used for the remainder of the game.

#namecost("SHIELD OF CONTEMPT", "15 points")

Shield. For each natural 6 rolled when making armour and Parry saves, the wearer causes an automatic Hit against the attacker with the same Strength and special rules as the attack.

#entry("TALISMANS")
#namecost("INFERNAL CHARM", "40 points")

The bearer gains a Magical Ward (5+). In addition, once per game at the start of any of your turns, the full power of this item can be activated. When it does, the wearer ignores all damage from magic, shooting and close combat attacks for the duration of the turn.

#namecost("TALISMAN OF OBSIDIAN", "35 points")

All Magic Items equipped by models in base contact with the bearer of this item lose their magical properties and counts as mundane version of their type.

#namecost("HELLFORGED AMULET", "25 points")

The wearer gains a Magical Ward (6+). In addition, they may re-roll failed armour save rolls of 1.

#runin[CROWN OF THE K]'#runin[DAAI 15 points] The wearer gains the Blazing Body and Magical Ward (6+) special rules. However, from the second game turn onwards, at the start of each of your turns they must pass a Toughness test or suffer one Wound with no saves allowed.

#namecost("GIFT OF HASHUT*", "15 points")

The wearer gains the Magic Resistance (1) special rule, and any unit they are with gains a Magical Ward (4+) against non-physical Flaming Attacks.

#entry("ARCANE ITEMS")
#namecost("CHALICE OF BLOOD AND DARKNESS", "50 points")

Relic. In the beginning of any Magic phase the bearer may reduce the number of dice held in both sides' dice pools by D3 each. Roll these dice separately, declaring before rolling which dice applies to which side. If one of more natural 1's are rolled then the bearer suffers a Wound which Ignores Armour saves. If one of more natural 6's are rolled the bearer may recover a Wound previously lost in the game.

#namecost("DWEOMER LEACH ORB", "40 points")

Relic. Whenever the bearer of this item dispels an enemy spell, they add +1 Power Dice to their Power Pool in their next Magic phase, to a maximum of +3.

#namecost("SPELL-WROUGHT SCEPTRE", "35 points")

Staff. The bearer of this item may re-roll failed channelling results.

#namecost("VIAL OF LAMMASU BLOOD", "35 points")

Charm. One use only. A Wizard may use this item instead of making a dispel attempt. If they do so, the spell is automatically dispelled with no Dispel roll required.

#namecost("SCROLL OF BINDING", "30 points")

Charm. One use only. A Wizard may use this scroll when attempting to cast a spell. If they do so, they may add +1 Power Dice to every casting roll they attempt this Magic Phase.

#namecost("BLOOD OF HASHUT", "20 points")

Charm. One use only. The Blood of Hashut can be used in close combat instead of attacking normally that turn. It targets a single model in base contact. The attack works on a 2+. If a 1 is rolled, the Blood of Hashut is wasted. If the attack is successful, then D6 automatic hits are inflicted on the target. The To Wound score of these hits is always equal to the unmodified close combat armour save of the target (excluding Natural Armour). For example, a model with a 3+ save is wounded on a 3+ and so on. Attacks from the Blood of Hashut have the Ignores Armour Saves, Flaming Attacks and Magical Attacks special rules.

#namecost("SCROLL OF PETRIFICATION", "20 points")

Charm. One use only. This item can be used at the start of any of your Magic phases. Once used, one friendly unit within 12" gains +1 Toughness for until the start of your next Magic phase.

#entry("ENCHANTED ITEMS")
#namecost("DAEMON FLASK OF ASHAK", "100 points")

One use only. This effect takes place at the start of the player's Movement phase before charges are declared. All enemy units within 18" suffer a Panic test. Buildings, Chariots and War Machines within this range suffer D6 automatic wounds.

#namecost("MALIGNANT TOTEM", "45 points")

Bound Spell. This item contains the _Breath of Hatred_ spell from the Lore of Hashut. In addition, all enemy units in base contact with the bearer suffer \-1 to their Leadership.

#namecost("FURNACE BLAST GEM", "35 points")

Bound Spell. This item contains the _Hell Hammer_ spell from the Lore of Hashut.

#namecost("GAUNTLETS OF PUNISHMENT", "35 points")

Bound Spell (Level 3, cast on 9+). This item contains a *magic missile* with a range of 12" that causes D6 Hits Strength 5 Hits with the Ignores Armour Saves special rule.

#namecost("BLACK GEM OF GNAR", "25 points")

One use only. This item can be activated at the beginning of either player's Close Combat phase, after challenges are issued and accepted. The bearer and one model in base contact (bearer’s choice) may not attack or be attacked for the duration of that phase. Work out combat resolution as normal.

#namecost("BREATH OF HASHUT", "25 points")

One use only. This is a Breath Weapon Attack with Strength 4, Flaming Attacks and Magical Attacks special rules.

#namecost("CRUCIBLE OF SPITE", "25 points")

One use only. This item can be used at the start of any round of Close Combat. The bearer gains +D3 Weapon Skill, Strength, Initiative and Attacks for the duration of this round.

#namecost("POSSESSED AMULET", "25 points")

In Close Combat, the bearer Wounds on a 2+ regardless of the target's Toughness. However, if a '1' is rolled on the To Wound dice, a further wound is inflicted on the bearer instead, with no armours saves allowed.

#namecost("GAUNTLETS OF GAZRAKH", "20 points")

The wearer gains +1 Strength. If the wearer rolls a 1 to hit, this blow strikes a random friendly model in base contact instead. If there are no friendly models in base contact, the Hit is resolved against the character itself.

#namecost("VISAGE OF THE GREAT BULL", "20 points")

The bearer of this item and any unit that they join gain +D3" to their charge distance.

#namecost("DAEMONIC FAMILIAR*", "15 points")

Enemy models suffer a \-1 penalty to their armour saves and Magical Ward saves against Wounds caused by the bearer of this item in close combat.

#entry("MAGIC STANDARDS")
#namecost("STANDARD OF ZHARR", "75 points")

The unit carrying this standard gains +1 to their armour saves and the Unbreakable special rule.

#namecost("EYE OF HASHUT", "50 points")

The unit carrying this standard gains the Terror and Armour Piercing (1) special rule.

#namecost("HELLBOUND STANDARD", "50 points")

The unit carrying this standard gains the Hellbound special rule.

#namecost("THE LAMMASU'S BEARD", "50 points")

All friendly units within 6" of this standard gain a Magical Ward (6+) against missile attacks and the Magic Resistance (1) special rule.

#namecost("OATH OF CONTEMPT", "35 points")

All close combat attacks against models in a unit carrying this Standard suffer \-1 To Wound in the first round of close combat.

#namecost("BANNER OF SLAVERY", "30 points")

All friendly models with the Animosity rule (as well as Spear Chukkas) within 12" gain the Immunity (Panic) special rule.

#namecost("ASHEN BANNER", "25 points")

Any enemy model that targets a unit carrying the Ashen Banner during the Shooting phase suffers an additional \-1 To Hit modifier.

#namecost("BANNER OF THE KHANATE", "25 points")

Hobgoblins only. The unit carrying this standard gains the Frenzy special rule.

#namecost("OVERSEER'S SIGIL", "25 points")

All friendly Orc and Goblin units within 12" of this standard treats it as having the Inspiring Presence (12) special rule.

#namecost("SHROUD OF THE ANCESTOR", "10 points")

The unit carrying this standard gains the Hatred (Dwarfs) special rule.

= CHARACTERS

#entry("SORCERERS OF HASHUT", first: true)
#profile(
  (name: "Sorcerer-Prophet", m: 3, ws: 5, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 9, points: 195),
  (name: "Sorcerer-Priest", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 1, ld: 9, points: 80),
)
#field("TROOP TYPE", "Infantry (Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Sorcerer-Priest is a Level 1 Wizard. A Sorcerer-Prophet is a Level 3 Wizard. They use one of the following")

Lores of Magic:

- Death
- Fire
- Hashut
- Metal

#field("SPECIAL RULES", "Blackshard Armour, Contempt, Relentless, Resolute, Sorcerer's Curse")
#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take Naptha Bombs +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on one of the following:
  - Palanquin +25 points
  - Great Taurus +95 points
  - Altar of Hashut (Sorcerer-Prophet only) +100 points
  - Lammasu (Sorcerer-Prophet only) +155 points
  - Bale Taurus (Sorcerer-Prophet only) +175 points
- A Sorcerer-Priest may take Magic Items up to a total of 50 points
- A Sorcerer-Prophet may take Magic Items up to a total of 100 points

#entry("DESPOTS")
#profile(
  (name: "Overlord", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 125),
  (name: "Overseer", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 9, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Blackshard Armour, Contempt, Relentless, Resolute")

- *Infernal Cohort:* You may upgrade one unit of Warriors with heavy armour for +1.5 points/model for each model with this special rule in your army.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Fireglaive +15 points
  - Great weapon +15 points
- May choose one of the following:
  - Pistol +4 points
  - Blunderbuss +6 points
  - Crossbow +6 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Great Taurus +95 points
  - Bale Taurus (Overlord only) +175 points
- One Overseer may carry the Battle Standard +25 points
- An Overseer may take Magic Items up to a total of 50 points
- An Overlord may take Magic Items up to a total of 100 points

NOTES:

- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.

#entry("DAEMONSMITH")
#profile(
  (name: "Daemonsmith", m: 3, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Daemonsmith who is a Wizard uses one of the following Lores of Magic:")

- Fire
- Metal

#field("SPECIAL RULES", "Blackshard Armour, Contempt, Relentless, Resolute, Sorcerer's Curse")

- *Infernal Engineer:* One war machine or Hellcannon that is within 3" of a Daemonsmith can use their Ballistic Skill or re-roll one artillery dice or scatter dice during each Shooting phase. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Daemonsmith are fired.
- *"Stand Back Sir!":* A model with this special rule that is within 3" of a war machine is allowed to take a "Look Out Sir!" roll just as if he was within 3" of a unit of five or more models of the same troop type as himself. If the roll is successful, the hit is resolved instead against the nearest friendly war machine.

#field("OPTIONS", "")

- May be upgraded to a Level 1 Wizard +50 points
- May choose one of the following:
  - Pistol +5 points
  - Blunderbuss +6 points
  - Fireglaive +9 points
- May take Naptha Bombs +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take Magic Items up to a total of 50 points

#entry("BULL CENTAUR TAUR'RUK")
#profile(
  (name: "Bull Centaur Taur'ruk", m: 7, ws: 5, bs: 2, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 9, points: 140),
)
#field("TROOP TYPE", "Monstrous Cavalry (Character, Chaos Dwarf, Bull Centaur)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Contempt, Natural Armour (5+)")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +12 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May take Magic Items up to a total of 50 points

#field("NOTES", "")

- A Bull Centaur Taur'ruk may not be the Army General.

#entry("HOBGOBLIN CHIEFTAIN")
#profile(
  (name: "Hobgoblin Chieftain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 40),
)
#field("TROOP TYPE", "Infantry (Character, Hobgoblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
- May take a shortbow +4 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May be mounted on a Giant Wolf +15 points
- May take Magic Items up to a total of 25 points

#field("NOTES", "")

- A Hobgoblin Chieftain may not be the Army General.

= CHARACTER MOUNTS

#compact-entry("GIANT WOLF")[
#profile(
  (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Canine)")
#field("BASE SIZE", "25x50")
]

#entry("PALANQUIN")
#profile(
  (name: "Palanquin", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 4, ld: "-", points: "-"),
)
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Contempt, Inspiring Presence (6), Relentless, Resolute")
#field("NOTES", "")

- A Palanquin adds +1 Line of Sight value and +4 to the Unit Strength of any model mounted on it.

#entry("GREAT TAURUS")
#profile(
  (name: "Great Taurus", m: 6, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Chaos Beast, Bovine)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Blazing Body, Fly (8), Mighty Blow (1)")

- *Fuelled by Fire:* If a model with this special rule is Hit by Flaming Attack, it immediately regains 1 Wound lost earlier in the battle on the roll of a 5+.

#field("UPGRADES", "")

- *Flaming Breath:* The model gains a Strength 4 Breath Weapon with the Flaming Attacks special rule.
- *Bloodrage:* The model gains the Frenzy and Hatred special rules.

#field("OPTIONS", "")

- May take Bloodrage +30 points
- May take Flaming Breath +30 points

#entry("BALE TAURUS")
#profile(
  (name: "Bale Taurus", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 4, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monster (Chaos Beast, Bovine)")
#field("BASE SIZE", "50x100")
#field("SPECIAL RULES", "Blazing Body, Fly (8)")

- *Fuelled by Fire:* If a model with this special rule is the target of a non-physical Flaming Attack, it immediately regains 1 Wound lost earlier in the battle.

#field("UPGRADES", "")

- *Flaming Breath:* This gives the Taurus a Strength 4 Breath Weapon with the Flaming Attacks special rule.
- *Bloodrage:* This gives the Taurus the Frenzy and Hatred special rules.

#field("OPTIONS", "")

- May take Bloodrage +30 points
- May take Flaming Breath +30 points

#entry("ALTAR OF HASHUT")
#profile(
  (name: "Altar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: "-"),
  (name: "Altar Guard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "2 Altar Guards (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("SPECIAL RULES", "")

- *Altar of Hashut*: A Sorcerer-Prophet with an Altar of Hashut gains the Magical Ward (4+) and Unbreakable special rules. In addition, their troop type changes to War Machine and they count as being part of the crew. Randomise any missile hits between the Sorcerer-Prophet and the crew. The Sorcerer-Prophet can never choose to leave the Altar during the game. If the Sorcerer-Prophet is killed, the whole Altar is also removed as a casualty.
- *Blessing of Hashut:* A Sorcerer-Prophet on an Altar of Hashut add +12" to the range of their spells.
- *Sacrifices to Hashut:* Once per Magic phase, the Sorcerer-Prophet may sacrifice one of the slaves chained to the Altar to Hashut before they attempt to cast a spell. Roll a D6 and add the result to the casting result of the spell. However, if a 1 is rolled, the Sorcerer-Prophet instead suffers a Wound with no saves of any kind possible.

= CORE UNITS

#entry("WARRIORS", first: true)
#profile(
  (name: "Warrior", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 7),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Contempt, Relentless, Resolute")
#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 point/model
  - Great weapons +3 points/model
- May take shields +1 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("RAZERS")
#profile(
  (name: "Razer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 11),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, blunderbuss, light armour")
#field("SPECIAL RULES", "Contempt, Relentless, Resolute")
#field("OPTIONS", "")

- May replace blunderbusses with one of the following:
  - Crossbows free
  - Flamehurlers free
- May take medium armour +1 point/model
- May upgrade one Blunderbusser to a Leader +5 points
- May upgrade one Blunderbusser to a Musician +5 points
- May upgrade one Blunderbusser to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("CUTTHROATS")

#profile(
  (name: "Cutthroat", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 3.5),
)

#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Hobgoblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shield")
#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers, Treacherous Gits")
#field("OPTIONS", "")

- May take spears +0.5 point/model
- May take throwing weapons +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Cutthroat to a Leader +5 points
- May upgrade one Cutthroat to a Musician +5 points
- May upgrade one Cutthroat to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ARCHERS")

#profile(
  (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 4.5),
)

#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Hobgoblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, shortbow")
#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers, Treacherous Gits")
#field("OPTIONS", "")

- May take light armour +0.5 point/model
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("WOLF RAIDERS")
#profile(
  (name: "Wolf Raider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 9),
  (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Hobgoblin)")
#field("MOUNT", "Giant Wolf (Canine)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers, Fast Cavalry, Treacherous Gits")
#field("OPTIONS", "")

- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take light armour +1 point/model
- May take shields +0.5 point/model
- May be upgraded to Ambushers +1 point/model
- May upgrade one Wolf Raider to a Leader +5 points
- May upgrade one Wolf Raider to a Musician +5 points
- May upgrade one Wolf Raider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#entry("ORC SLAVES")
#profile(
  (name: "Orc Slave", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 4, points: 6),
  (name: "Overseer", m: 4, ws: 3, bs: 3, s: 4, t: 3, w: 1, i: 2, a: 2, ld: 6, points: ""),
)
#field("UNIT SIZE", "15-45")
#field("TROOP TYPE", "Infantry (Orc)")
#field("HANDLER", "Overseer (Hobgoblin)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Animosity, Expendable, Independent, Mixed Unit")

- *Hobgoblin Overseer:* The Hobgoblin Overseer follows the rules for normal Leaders; with the following exceptions: the Hobgoblin Overseer is always placed in the rear rank of the unit, and may be the only model in that rank. In addition, the unit must take a Leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits.
- *Ignore Goblin Panic:* Orcs treat Goblins as Expendable.

#field("OPTIONS", "")

- May choose one of the following:
  - Spears +0.5 points/model
  - Additional hand weapons +1 point/model
  - Great weapons +3 points/model
- May take shields (unless armed with additional hand weapons or great weapons) +1 point/model
- May include one Hobgoblin Overseer +20 points

#field("NOTES", "")

- You may not have more units of Orc Slaves than you have units of Hobgoblin Cutthroats or Hobgoblin Archers in your army.

#entry("GOBLIN SLAVES")
#profile(
  (name: "Goblin Slave", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: 2),
  (name: "Overseer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 2, ld: 6, points: ""),
)
#field("UNIT SIZE", "20-60")
#field("TROOP TYPE", "Infantry (Goblin)")
#field("HANDLER", "Overseer (Hobgoblin)")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Animosity, Expendable, Independent, Mixed Unit")

- *Fear Elves:* Models with this special rule treat all Elves as causing Fear against them.
- *Hobgoblin Overseer:* The Hobgoblin Overseer follows the rules for normal Leaders; with the following exceptions: the Hobgoblin Overseer is always placed in the rear rank of the unit, and may be the only model in that rank. In addition, the unit must take a Leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits.

#field("OPTIONS", "")

- May take spears +0.5 points/model
- May take shields +1 point/model
- May include one Hobgoblin Overseer +20 points

#field("NOTES", "")

- You may not have more units of Goblin Slaves than you have units of Hobgoblin Cutthroats or Hobgoblin Archers in your army.

= SPECIAL UNITS

#entry("INFERNAL GUARD", first: true)
#profile(
  (name: "Infernal Guard", m: 3, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 11),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour, shields")
#field("SPECIAL RULES", "Blackshard Armour, Contempt, Relentless, Resolute")
#field("OPTIONS", "")

- May replace shields with one of the following:
  - Great weapons +2 points/model
  - Fireglaives +3 points/model
- May upgrade one Infernal Guard to a Leader +5 points
- May upgrade one Infernal Guard to a Musician +5 points
- May upgrade one Infernal Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("ZEALOT BERZERKERS")
#profile(
  (name: "Zealot Berzerker", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 9, points: 12),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("SPECIAL RULES", "Contempt, Frenzy, Hatred, Relentless, Resolute, Vanguard")
#field("OPTIONS", "")

- May be upgraded to Skirmishers +1 point/model
- May upgrade one Zealot Berzerker to a Leader +5 points
- May upgrade one Zealot Berzerker to a Musician +5 points
- May upgrade one Zealot Berzerker to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("DEVASTATORS")
#profile(
  (name: "Devastator", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 25),
)
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("EQUIPMENT", "Hand weapon, medium armour")

- *Bazuka:* A bazuka is an artillery weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "7", "Cumbersome, Flaming Attacks, Multiple Wounds (D3), Ponderous"))

- *Earthshaker Mortar:* An earthshaker mortar is a mortar that uses the small round template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "3(6)", "Armour Piercing (1), Cumbersome, Multiple Wounds (D3)"))

- *Inferno Gun:* An inferno gun is an organ gun with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Multiple Shots (Artillery Dice), Ponderous, Rapid Fire"))
#field("SPECIAL RULES", "Contempt, Relentless, Resolute, Weapon Team")
#field("OPTIONS", "")

- Must choose one of the following:
  - Bazuka free
  - Inferno Gun +25 points
  - Earthshaker Mortar +40 points

#field("NOTES", "")

- Devastators have a Unit Strength of 2.

#entry("BULL CENTAURS")
#profile(
  (name: "Bull Centaur", m: 7, ws: 4, bs: 2, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 8, points: 18),
)
#field("UNIT SIZE", "5-15")
#field("TROOP TYPE", "Cavalry (Chaos Dwarf, Bull Centaur)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Contempt, Natural Armour (6+)")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +2 points/model
  - Great weapons +4 points/model
- May take medium armour +2 points/model
- May take shields +2 points/model
- May upgrade one Bull Centaur to a Leader +5 points
- May upgrade one Bull Centaur to a Musician +5 points
- May upgrade one Bull Centaur to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("WHIRLWIND/TENDERISER")
#profile(
  (name: "Whirlwind/Tenderizer", m: 6, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
  (name: "Bull Centaur", m: "-", ws: 4, bs: 2, s: 4, t: "-", w: "-", i: 3, a: 2, ld: 8, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 6+)")
#field("CREW", "1 Bull Centaur (Chaos Dwarf, Bull Centaur)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Contempt, Natural Armour (6+)")

- *Tenderizer:* In addition to its normal Impact Hits, the Tenderizer causes D3 Impact Hits at Strength 6 with the Multiple Wounds (D3) special rule at the start of each round of close combat. Note that this only applies when fighting to the Tenderizer's front. The Bull Centaur may only attack when fighting to the Tenderizer's flank or rear.
- *Whirlwind:* In addition to its normal Impact Hits, the Whirlwind causes D6 Impact Hits at Strength 5 at the start of each round of close combat. Note that this only applies when fighting to the Whirlwind's front. The Bull Centaur may only attack when fighting to the Whirlwind's flank or rear.

#field("NOTES", "")

- You must choose whether or not the model is a Whirlwind or a Tenderizer while making your army list.

#entry("SNEAKY GITS")
#profile(
  (name: "Sneaky Git", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 5),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Hobgoblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, throwing weapons")
#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers, Poisoned Attacks, Treacherous Gits")

- *Dirty, Rotten, Sneaky:* After each round of combat is fought, the Sneaky Gits may Fight in an Extra Rank each turn for as long as they are in combat with that enemy. So, after one turn, they fight in one additional rank, after two turns they fight in two additional ranks, and so on.

#field("OPTIONS", "")

- May be upgraded to Scouts +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Sneaky Git to a Leader +5 points

#entry("BOLT THROWA")
#profile(
  (name: "Bolt Throwa", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 35),
  (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Hobgoblins (Hobgoblin)")
#field("BASE SIZE", "50x50 (Bolt Throwa), 20x20 or 25x25 (Hobgoblin)")
#field("EQUIPMENT", "Hand weapon, bolt thrower")
#field("SPECIAL RULES", "")

- *Slipshod:* If the To Hit roll for a shooting attack made by a Bolt Throwa is a 1 (before any modifiers are applied), then it misfires. Roll on the Stone Thrower Misfire table in the Warhammer rulebook and apply the result to the Bolt Throwa.

#field("NOTES", "")

- You may take 1\-2 Bolt Throwas as a single Special choice.

#entry("BLACK ORCS")
#profile(
  (name: "Black Orc", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 8, points: 12),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Black Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Immunity (Psychology), Independent, Mighty Blow (1)")

- *Armed to da Teef:* If a model with this special rule has more than one weapon and/or a shield, they may choose which weapon combination they want to use at the start of each round of close combat.

#field("OPTIONS", "")

- Must take one of the following:
  - Shields free
  - Spears free
  - Additional hand weapons +1 point/model
  - Great weapons +1 point/model
- May take one of the following:
  - Additional hand weapons +1 point/model
  - Great weapons +1 point/model
  - Shields +1 point/model
  - Spears +1 point/model
- May take heavy armour +1.5 point/model
- May upgrade one Black Orc to a Leader +5 points
- May upgrade one Black Orc to a Musician +5 points
- May upgrade one Black Orc to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("OGRE SLAVES")
#profile(
  (name: "Ogre Slave", m: 4, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 4, points: 24),
  (name: "Hobgoblin Overseer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 2, ld: 6, points: ""),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Expendable, Independent, Mixed Unit")

- *Hobgoblin Overseer:* The Hobgoblin Overseer follows the rules for normal Leaders; with the following exceptions: the Hobgoblin Overseer is always placed in the rear rank of the unit, and may be the only model in that rank. In addition, the unit must take a Leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits.
- *Ogre Charge:* Ogres have the Impact Hits (1) special rule. A unit of Ogres adds its current Rank Bonus to the Strength of any Impact Hits they inflict.

#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +3 points/model
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May include one Hobgoblin Overseer +20 points

#entry("K'DAAI FIREBORN")
#profile(
  (name: "K'daai Fireborn", m: 6, ws: 4, bs: 2, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 50),
)
#field("UNIT SIZE", "3-9")
#field("TROOP TYPE", "Monstrous Infantry (Daemon)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("SPECIAL RULES", "Blazing Body, Daemonic, Independent")

- *Burning Bright:* From the second game turn onwards, at the start of each of your turns a Toughness test must be made for each K'daai unit. If this is failed, it suffers D3 Wounds with no saves allowed.

#field("OPTIONS", "")

- May upgrade one K'daai Fireborn to a Leader +5 points

#entry("IRON DAEMON")
#profile(
  (name: "Iron Daemon", m: 6, ws: "-", bs: "-", s: 6, t: 6, w: 6, i: "-", a: "-", ld: "-", points: 190),
  (name: "Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 4+)")
#field("CREW", "3 Crew (Chaos Dwarf)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, steam cannonade, light armour")

- *Steam Cannonade:* A steam cannonade is an organ gun with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Multiple Shots (Artillery Dice + D6), Rapid Fire"))

If a Destroyed! result is rolled on the Blackpowder Misfire chart, the Steam Cannonade is destroyed and may not be used again. In addition, the Iron Daemon it is mounted on suffers D6 wounds with no saves allowed.

#field("SPECIAL RULES", "Impact hits (D6+1), Relentless, Terror, Unbreakable")

- *Demolition:* Iron Daemons ignore terrain classified as Obstacles and ignores damage from Dangerous Terrain, except Rivers and Marshland, which are treated as Impassable terrain.
- *Grind Attack:* The Iron Daemon has the Stomp (D6) special rule like a Monster in any turn it does not charge, but only against units to its front.
- *Lumbering and Unstoppable:* When charging, the Iron Daemon does not use the Swiftstride special rule. If a double 1 is rolled for its charge distance, the Iron Daemon does not move at all this turn. Iron Daemons cannot overrun or pursue in combat if they destroy or rout their foes.

#field("UPGRADES", "")

- *Skullcracker:* The Iron Daemon gains the Impact Hits (2D6) special rule and its Grind Attack inflicts 2D6 hits instead of D6. In addition, its Stomp works against all models regardless of their Line of Sight value.

#field("OPTIONS", "")

- May replace Steam Cannonade with a Skullcracker +30 points
- May be given the Hellbound special rule +30 points

#entry("MAGMA CANNON")
#profile(
  (name: "Magma Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Chaos Dwarf)")
#field("BASE SIZE", "50x100 (Magma Cannon), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, magma cannon, light armour")

- *Magma Cannon:* A magma cannon is a fire thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "5", "Flaming Attacks, Multiple Wounds (D3)"))
#field("SPECIAL RULES", "Contempt, Resolute")
#field("OPTIONS", "")

- May take medium armour +3 points
- May be given the Hellbound special rule +30 points

#entry("DEATHSHRIEKER ROCKET LAUNCHER")
#profile(
  (name: "Rocket Launcher", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 95),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Chaos Dwarf)")
#field("BASE SIZE", "50x75 (Rocket Launcher), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, rocket launcher, demolition rocket, light armour")

- *Demolition Rocket:* Instead of firing normally, a Fire Rain Rocket may fire a demolition rocket. Demolition rockets are rocket launchers that do not fire indirectly by default, and uses the small template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Flaming Attacks, Multiple Wounds (D3)"))
#field("SPECIAL RULES", "Contempt, Resolute")
#field("OPTIONS", "")

- May take medium armour +3 points
- May be given the Hellbound special rule +30 points

= RARE UNITS

#entry("IMMORTALS", first: true)
#profile(
  (name: "Immortal", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 9, points: 16),
)
#field("UNIT SIZE", "10-30")
#field("TROOP TYPE", "Infantry (Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("SPECIAL RULES", "Blackshard Armour, Contempt, Relentless, Stubborn")
#field("OPTIONS", "")

- May upgrade one Immortal to a Leader +5 points
- May upgrade one Immortal to a Musician +5 points
- May upgrade one Immortal to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#entry("BULL CENTAUR RENDERS")
#profile(
  (name: "Bull Centaur Render", m: 7, ws: 4, bs: 2, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 8, points: 50),
)
#field("UNIT SIZE", "3-6")
#field("TROOP TYPE", "Monstrous Cavalry (Chaos Dwarf, Bull Centaur)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("SPECIAL RULES", "Contempt, Natural Armour (5+)")
#field("OPTIONS", "")

- May replace shields with one of the following:
  - Additional hand weapons free
  - Great weapons +6 points/model
- May take medium armour +6 points/model
- May upgrade one Bull Centaur Render to a Leader +5 points
- May upgrade one Bull Centaur Render to a Musician +5 points
- May upgrade one Bull Centaur Render to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#entry("LAMMASU")
#profile(
  (name: "Lammasu", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 1, a: 2, ld: 8, points: 155),
)
#field("TROOP TYPE", "Monstrous Creature (Chaos Beast)")
#field("MAGIC", "A Lammasu is a Level 1 Wizard that uses one of the following Lores of Magic:")

- Death
- Fire
- Shadow

#field("BASE SIZE", "50x50 or 50x75")
#field("SPECIAL RULES", "Fly (8), Magic Resistance (3)")

- *Sorcerous Miasma:* Magic Weapons lose all of their magical properties and are treated as a mundane weapon of the same type while the models remain in base contact with the Lammasu (including the rider of the Lammasu itself).

#field("UPGRADES", "")

- *Mace Tail:* The Lammasu gains +1 Attack.
- *Sorcerous Exhalation:* This gives the Lammasu a Strength 3 Breath Weapon with the Magical Attacks special rule.

#field("OPTIONS", "")

- May take an additional Wizard Level +35 points
- May take Mace Tail +15 points
- May take Sorcerous Exhalation +20 points

#entry("DREADQUAKE MORTAR")
#profile(
  (name: "Dreadquake Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 130),
  (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  (name: "Ogre Slave", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine")
#field("CREW", "3 Crew (Chaos Dwarf)")
#field("BASE SIZE", "50x75 or 100x150 (Dreadquake Mortar), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, dreadquake mortar, light armour")

- *Dreadquake Mortar:* A dreadquake mortar is a mortar that uses the large round template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-72\"", "4(8)", "Armour Piercing (1), Multiple Wounds (D6)"))

All models in a unit suffering casualties from a Dreadquake Mortar in the previous turn must pass a test exactly as if they were moving through dangerous terrain if they wish to move (including charging, reforming, characters leaving the unit, etc) and suffer \-1 To Hit with missile weapons. War machines can only fire on a 4+ on a D6. If the Dreadquake Mortar rolls a misfire it suffers an additional \-1 modifier to the result.

#field("SPECIAL RULES", "Contempt, Resolute")
#field("UPGRADES", "")

- *Ogre Slave:* An Ogre Slave has the Fear and Natural Armour (6+) special rule. In addition, it increases the Unit Strength of the war machine by 3 rather than 1 and gives it Line of Sight (2).

#field("OPTIONS", "")

- May take medium armour +3 points
- May take a Slave Ogre +20 points
- May be given the Hellbound special rule +30 points

#entry("HELLCANNON")
#profile(
  (name: "Hellcannon", m: 3, ws: 4, bs: 3, s: 5, t: 6, w: 5, i: 1, a: 5, ld: 4, points: 190),
  (name: "Chaos Dwarf Handler", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Monster (Daemon)")
#field("HANDLER", "3 (Chaos Dwarf)")
#field("BASE SIZE", "100x150 (Hellcannon), 20x20 or 25x25 (Crew)")
#field("EQUIPMENT", "Hand weapon, doomfire, light armour (Handlers only)")

- *Doomfire:* Doomfire is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "5(10)", "Cumbersome, Flaming Attacks, Move or Fire, Multiple Wounds (D6)"))

Any unit that suffers one or more casualties from this weapon must take a Panic test. If the unit suffered Heavy Casualties, it takes the test at \-1 Leadership. Should the artillery dice roll a misfire, roll a D6 on the following table:

#chart((("D6", "Result"), ("1", "Free at last! Every unit within 6\" takes D6 Strength 5 hits. Then remove the Hellcannon and its crew
from play."), ("2", "Schlurp: Remove the crew from play."), ("3", "Thzzzz: All Wizards within 24\" must immediately pass a Leadership test or roll 2D6 on the Miscast
table."), ("4", "Grrr: Remove D3 Handlers."), ("5", "Blooood! Move the Hellcannon 3D6\" directly forward as if it was subject to the Random Movement
special rule and it was the Compulsory Movement sub-phase."), ("6", "Boom! Resolve the Doomfire shot as if it were a direct hit, doubling the Strength of any hit. The
Hellcannon cannot fire for the rest of the game.")))
#field("SPECIAL RULES", "Daemonic, Mixed Unit, Natural Armour (4+)")

- *Caged Fury:* At the beginning of your turn, if the Hellcannon is not in combat, take a Leadership test. If the test is failed, the Hellcannon is then subject to the Random Movement (3D6) special rule until the beginning of the next turn, and must move towards the nearest enemy unit. If the Hellcannon would get destroyed as a result of Daemonic Instability, treat this as rolling a 1 on the table above.
- *Spew Ichor:* The Hellcannon has a Strength 5 Breath Weapon. Any unit that suffers one or more casualties from Spew Ichor must take a Panic test with a \-1 penalty to their Leadership.

#field("OPTIONS", "")

- May take medium armour (Handlers only) +3 points

#entry("JUGGERNAUT SIEGE TOWER")
#profile(
  (name: "Juggernaut Siege Tower", m: 6, ws: "-", bs: "-", s: 5, t: 6, w: 10, i: "-", a: "-", ld: "-", points: 230),
  (name: "Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour save 5+)")
#field("CREW", "3 Crew (Chaos Dwarf)")
#field("BASE SIZE", "50x75, 50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, crossbow, medium armour")
#field("OPTIONS", "")

- May take up to 7 additional Crew +6 points/Crew

#field("SPECIAL RULES", "Terror, Unbreakable")

- *Siege Tower:* The Juggernaut may never march. When charging, the Juggernaut can only do so in a straight line forward, with no wheeling allowed, and it does not use the Swiftstride special rule. Juggernauts cannot overrun or pursue in combat. The crew of the Juggernaut do not suffer penalties for moving and shooting.
- *Siege Cannons:* Siege Cannons are bolt throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/48\"", "7", "Cumbersome, Multiple Shots (2), Multiple Wounds (D3), Rapid Fire"))

Siege Cannons do not suffer any penalties To Hit for moving and shooting. If you roll one or more natural 1's on the Hit roll when firing them, the Juggernaut suffers a Wound with no saves allowed.

#field("NOTES", "")

- A Juggernaut Siege Tower has a Line of Sight value of 8.

#entry("KOLOSSUS")
#profile(
  (name: "Kolossus", m: 6, ws: 4, bs: 3, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 10, points: 250),
)
#field("TROOP TYPE", "Monster (Animated Construct)")
#field("BASE SIZE", "75x50 or 100x100")
#field("EQUIPMENT", "Bane maces, heavy armour")

- *Bane Maces:* Bane maces have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Armour Piercing (1), Flaming Attacks"))

- *Immolation Cannons:* Immolation Cannons are fire throwers that may fire up two times in shooting phase. If a misfire is rolled, the Kolossus loses one Wound with no saves allowed.

#field("SPECIAL RULES", "Animated Construct, Hellbound")
#field("UPGRADES", "")

- *Breath of Contempt:* The Kolossus gains a Strength 2 Breath Weapon with the Armour Piercing (2) special rule that can be used in close combat.
- *Greed Pistons:* The Kolossus gains +1 Movement.
- *Overdrive Switch:* The Kolossus may choose to add +D3 Attacks in each round of close combat when it is its turn to attack. However, if it does so, it suffers a Strength 6 Hit for every natural To Hit roll of 1 it makes.

#field("OPTIONS", "")

- May replace bane maces with immolation cannons +40 points
- May take Greed Pistons +10 points
- May take Breath of Contempt +15 points
- May take Overdrive Switch +20 points

#entry("K'DAAI DESTROYER")
#profile(
  (name: "K'daai Destroyer", m: 6, ws: 5, bs: 3, s: 7, t: 6, w: 6, i: 5, a: 5, ld: 7, points: 265),
)
#field("TROOP TYPE", "Monster (Daemon)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("SPECIAL RULES", "Blazing Body, Daemonic, Frenzy")

- *Burning Bright:* From the second game turn onwards, at the start of each of your turns a Toughness test must be made for each K'daai unit. If this is failed, it suffers D3 Wounds with no saves allowed.

#field("UPGRADES", "")

- *Brazen Wings:* The model gains the Fly (7) special rule.
- *Dark Colossus:* The model gains +1 Wound.
- *Flaming Breath:* The model gains a Strength 4 Breath Weapon with the Flaming Attacks special rule.
- *Gore Blades:* When attacking the model in close combat, all 'To Hit' rolls of 1 by the enemy inflicts a Strength 3 hit on the attacking model(s).
- *Razor Horns:* The model gains the Impact Hits (D6) special rule.

#field("OPTIONS", "")

- May take up to two of the following:
  - Gore Blades +10 points
  - Dark Colossus +20 points
  - Brazen Wings +30 points
  - Flaming Breath +30 points
  - Razor Horns +35 points

#entry("SIEGE GIANT")
#profile(
  (name: "Siege Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 200),
)
#field("TROOP TYPE", "Monster (Giant)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapon, siege armour")

- *Siege Armour:* Medium armour. Siege Armour gives the wearer +2 armour save against missile attacks to its front.

#field("SPECIAL RULES", "Immunity (Psychology), Natural Armour (6+), Stubborn")

- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Flail and Crush, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain – the enemy swarm over him and cut him to pieces. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *\*Siege Giant Special Attacks:* Giants do not attack in the same way as other creatures. They are far too large and fractious to take orders and much too scatter-brained to have any sort of coherent plan. To determine what happens in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-3", "Flail and Crush"), ("4-6", "Ripping Blades")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Legbreaker"), ("2-4", "Smash with Pick"), ("5-6", "'Eadbutt")))

*\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points or more. This result has no effect against Animated Constructs. *\- Legbreaker:* The Giant targets a single enemy model in the target unit that is in base contact. The Giant and its victim both roll a D6 and add their Strength, and for each point by which the Giant beats its victim’s score, it inflicts D3 automatic wounds with the Ignores Armour saves special rule. In addition, regardless of the result, any models other than the Giant inflicting the attack in base contact with the victim must pass an Initiative test to get out of the way or suffer an automatic wound from the struggling beasts! *\- Smash with Pick:* The Giant chooses a single target model from the enemy unit that it is in base contact with. The target may attempt to avoid the blow by passing an Initiative test. If the test is failed, the model suffers 2D3 wounds with the Ignores Armour saves special rule. If a double is rolled, the Giant cannot attack at all in the following round of the same combat. *\- Flail and Crush:* First test to see if the Giant falls over (see previously), with any wounds caused if they do counting towards the combat result. If the Giant remains on its feet, select a target unit in base contact. That unit sustains 2D6 Strength 6 automatic hits as the armoured bulk of the Giant batters them into the ground. *\- Ripping Blades:* The Giant fights using the Random Attacks (2D6) special rule this round. If a double is rolled when determining the number of Attacks, the Giant must immediately test to see if it falls over. Any further damage done in this way counts towards combat resolution. *\- 'Eadbutt:* The Giant targets a single enemy model from the target unit that is in base contact, automatically inflicting D3 wounds with the Ignores Armour saves special rule. If the victim is wounded but not slain, then the victim is dazed and loses their subsequent attacks. If the victim has not yet attacked in the combat round, they lose their attacks this round, or if they have already attacked, then they lose all their attacks in the next round instead.

#field("UPGRADES", "")

- *Runes of Hate:* A Giant with Runes of Hate becomes subject to the Berserk Rage rule from Frenzy. In addition, whenever the Giant is called upon to roll for a random number of attacks, this may be re-rolled.
- *Scaling Spikes:* If a Giant with this upgrade perishes and falls over an obstacle such as a moat, ditch or wall, mark the obstacle, which now may be crossed as open terrain. Additionally, if the Giant dies at the foot of a building or fortification, models assaulting any garrison across the location of its body gain a special +1 bonus to their Combat Resolution.

#field("OPTIONS", "")

- May take Runes of Hates +25 points
- May take Scaling Spikes +10 points

= SPECIAL CHARACTERS

#entry("ASTRAGOTH IRONHAND", first: true)
#namecost("High Priest of Hashut", "")
#profile(
  (name: "Astragoth Ironhand", m: 6, ws: 5, bs: 4, s: 4, t: 4, w: 3, i: 1, a: 2, ld: 10, points: 290),
)
#field("TROOP TYPE", "Infantry (Special Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Astragoth Ironhand is a Level 4 Wizard who uses one of the following Lores of Magic:")

- Death
- Fire
- Hashut
- Metal

#field("MAGIC ITEMS", "")

- *The Black Hammer of Hashut:* Magic Weapon. Close combat attacks made with this weapon are at +2 Strength. Any Flammable model successfully wounded is killed outright.
- *Stone Mantle:* Talisman. The bearer of this item gains +1 Toughness.

#field("SPECIAL RULES", "Blackshard Armour, Contempt, Resolute, Sorcerer's Curse")

- *The Granite Guard:* If Astragoth Ironhand is included in your army, you may upgrade one unit of Razers to the Granite Guard for a cost of +2 points per model. The unit must be equipped with blunderbusses. This unit always counts as fighting behind a defended obstacle in the first round of close combat, and do not suffer \-1 To Hit when choosing Stand & Shoot as a charge reaction.
- *Mechanical Body:* Astragoth may never march or charge longer than his Movement value. He will still pursue and flee at a normal speed.
- *Overdrive:* If Astragoth successfully Hits with 3 or more Attacks in Close Combat, he can immediately make an additional 3 Attacks. These attacks may not generate any further additional attacks.

#entry("DRAZHOATH THE ASHEN")
#namecost("Lord of the Black Fortress", "")
#profile(
  (name: "Drazhoath the Ashen", m: 3, ws: 5, bs: 4, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 9, points: 560),
  (name: "Cinderbreath (Bale Taurus)", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 4, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Chaos Dwarf)")
#field("MOUNT", "Cinderbreath (Bovine, Chaos Beast)")
#field("BASE SIZE", "50x100")
#field("MAGIC", "Drazhoath the Ashen is a Level 4 Wizard who uses spells from the Lore of Hashut.")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *The Graven Sceptre:* Magic Weapon. Attacks made with this weapon always Wound on a 4+ or better.
- *Hellshard Amulet:* Talisman. This item gives the wearer a Magical Ward (5+). In addition, for every failed Ward save the wielder suffers in close combat, a Strength 2 hit is automatically inflicted on the model that caused the Wound.
- *Daemonspite Crucible:* Arcane Item. Relic. This item gives the bearer a +1 casting bonus. In addition, every time the bearer kills an enemy Wizard in close combat, the bonus increases by +1.

#field("SPECIAL RULES", "Blackshard Armour, Blazing Body, Contempt, Flaming Attacks, Flaming Breath (see Bale")

Taurus)*, Fly (8), Fuelled by Fire* (see Bale Taurus)*, Immunity (Flaming Attacks), Relentless, Resolute*

- *Dark Renown:* All friendly Chaos Dwarfs within 12" add +1 to their combat resolution result.
- *The Ironsworn:* If Drazhoath the Ashen is included in your army, you may upgrade one unit of Infernal Guard to the Ironsworn for a cost of +2 points per model. This unit has Weapon Skill 5, as well as the Armour Piercing (1) and Magical Attacks special rules. The unit must be equipped with hand weapons and shields.
- *Master of the Legion of Azgorh:* If Drazhoath the Ashen is your Army General, units of Infernal Guard (but not Ironsworn) may be taken as Core Units instead of Special Units.
- *Sorcerer's Curse:* Whenever a model with this special rule suffers a Miscast during the game, after resolving the effects of the Miscast on them normally, they must pass a Toughness test or suffer a Wound with no saves allowed.

#entry("ZHATAN THE BLACK")
#namecost("Commander of the Tower of Zharr", "")
#profile(
  (name: "Zhatan the Black", m: 3, ws: 8, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 275),
)
#field("TROOP TYPE", "Infantry (Special Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC ITEMS", "")

- *The Obsidian Axe:* Magic Weapon. This weapon gives the wielder +1 Strength and the Armour Piercing (3) special rule.
- *Armour of Gazrakh:* Magic Armour. Medium armour. Enemy attacks must re-roll successful To Wound rolls against the wearer. In addition, the armour save is increased by +1 for every Wound the model has suffered during the game.
- *Chaos Runeshield:* Magic Armour. Shield. This item gives the wearer the Magical Ward (6+) and Magic Resistance (2) special rules.

#field("SPECIAL RULES", "Blackshard Armour, Contempt, Infernal Cohort (see Overlord), Relentless, Resolute")

- *The Blazing Beards of Bazherak:* If Zhatan the Black is included in your army, you may upgrade one unit of Warriors to The Blazing Beards of Bazherak for a cost of +1.5 points per model. This unit has the Flaming Attacks and Frenzy special rules.
- *Boundless Cruelty:* All enemy units within 6" of Zhatan suffer \-1 to their Leadership. This has no effect on models with Immunity (Psychology).
- *Slave Tyrant:* Friendly units of Hobgoblins within 12" of Zhatan ignore the Treacherous Gits special rule. In addition, Zhatan causes Terror in all enemy units of Orcs, Goblins, Hobgoblins and Gnoblars.

#entry("RYKARTH THE UNBREAKABLE")
#namecost("Captain of the Immortals", "")
#profile(
  (name: "Rykarth", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 125),
)
#field("TROOP TYPE", "Infantry (Special Character, Chaos Dwarf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("SPECIAL RULES", "Blackshard Armour, Contempt, Hold Your Ground (6), Relentless")

- *Captain of the Immortals:* Rykarth must be accompanied by a unit of Immortals, and he may not leave this unit. As long as he remains in it, he and his unit are Unbreakable.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#entry("SHAR'TOR THE EXECUTIONER")
#namecost("Lord of the Ba'hal", "")
#profile(
  (name: "Shar'tor the Executioner", m: 7, ws: 6, bs: 2, s: 5, t: 5, w: 5, i: 3, a: 5, ld: 9, points: 265),
)
#field("TROOP TYPE", "Monstrous Cavalry (Special Character, Chaos Dwarf, Bull Centaur)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Darktide Axe:* Magic Weapon. Great weapon. Every time the wielder of this weapon rolls a 6 when rolling To Wound in close combat, that attack has the Multiple Wounds (2) special rule.
- *The Mask of the Executioner:* Enchanted Item. At the start of your Magic phase, you can target one enemy unit within 8" of this model and roll a D6. On a 1 or 2 nothing happens. On a 3\-5 that enemy unit suffers D3 wounds which Ignores Armour saves. On a 6, that enemy unit suffers D6 wounds which Ignores Armour saves.

#field("SPECIAL RULES", "Contempt, Impact Hits (D3), Natural Armour (4+)")

- *Hashut's Dark Ravagers:* If Shar'tor the Executioner is included in your army, you may upgrade one unit of Bull Centaur Renders to Hashut's Dark Ravagers for a cost of +5 points per model. This unit has the Devastating Charge special rule. It must be equipped with additional hand weapons and also carries throwing axes.
- *Lord of the Ba'hal:* All Bull Centaur units within 12" of Shar'tor may re-roll failed charge rolls.
- *Prayers of Malice:* Bound Spell (Level 1, cast on 6+). _Prayers of Malice_ is an *augment* spell with a range of 12". The target unit gains a Magical Ward (6+) until the start of your next Magic phase.

#field("NOTES", "")

- Shar'tor the Executioner may not be your Army General.

#entry("GORDUZ BACKSTABBER")
#namecost("Scourge of the Dark Lands", "")
#profile(
  (name: "Gorduz Backstabber", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 7, points: 90),
)
#field("TROOP TYPE", "Infantry (Special Character, Hobgoblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Medium armour, shield")
#field("MAGIC ITEMS", "")

- *Blade of Malice:* Magic Weapon. The bearer of this weapon gains the Armour Piercing (2) and Hatred special rules.

#field("SPECIAL RULES", "Backstabbers, Cowardly Despoilers")

- *Fated\.\.\. Lucky\.\.\. Sneaky!* When Gorduz is reduced to his last Wound, he gains a 4+ invulnerable save.

#field("OPTIONS", "")

- May be mounted on a Giant Wolf +15 points

#field("NOTES", "")

- Gorduz Backstabber may not be the Army General.

= CREDITS

#entry("Written & Edited by:", first: true)
#namecost("Mathias Eliasson", "")

#entry("Additional Material:")
#namecost("Antti Sinivuori", "")
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
