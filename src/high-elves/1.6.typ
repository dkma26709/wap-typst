// High Elves 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "high-elves",
  army: "High Elves",
  version: "1.6",
  layout: "army",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — High Elves 1.6")

#cover(
  title: "High Elves",
  subtitle: "Warhammer Armies Project · 1.6",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    High Elves*, version 1.6 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a High Elf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several High Elf units, and these are detailed here.

#namecost("ELVEN GRACE", "")

Models with this special rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.

#namecost("FIERY BREATH", "")

A model with this special rule has a Strength 4 Breath Weapon with the Flaming Attacks special rule.

#namecost("LILEATH'S BLESSING", "")

A Wizard with this special rule gains +1 dispel bonus.

#namecost("MARTIAL PROWESS", "")

Models with this special rule may re-roll all To Hit rolls of 1 when making close combat attacks.

#namecost("SWORDMASTER", "")

Models with this special rule ignore Initiative penalties from great weapons and gain the Dodge (6+) special rule against non-magical missile attacks (except templates).

#namecost("VALOUR OF AGES", "")

Models with this special rule re-roll all failed Panic tests caused by Dark Elves.

#namecost("BOW OF AVELORN", "")

Bows of Avelorn have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Flaming Attacks, Magical Attacks, Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("ELVEN BOW", "")

Elven bows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "Armour Piercing (1), Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("ELVEN LONGBOW", "")

Elven longbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "3", "Armour Piercing (1), Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("DRAGON ARMOUR", "")

Dragon armour has the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("+4/3+", "+4/3+", "Immunity (Flaming Attacks)"))
#namecost("ITHILMAR BARDING", "")

Ithilmar barding has the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+", "-"))
#namecost("LION CLOAK", "")

The bearer gains the Natural Armour (6+) special rule against missile attacks.

= THE LORE OF HIGH MAGIC

#columns(2)[
#namecost("SHIELD OF SAPHERY", "")
#namecost("Lore Attribute", "")

Each time a spell from the Lore of High Magic is successfully cast, the caster and their unit immediately gain a 6+ Ward save until the beginning of the caster's next Magic phase. This bonus is cumulative.

#namecost("DRAIN MAGIC", "")
#namecost("Signature Spell Cast on 7+", "")

_Drain Magic_ can be cast on any unit (friend or foe) and has a range of 24". If the target is a friendly unit, Drain Magic is an *augment* spell. If the target is an enemy unit, Drain Magic is a *hex* spell. In either case, all Remains in Play spells affecting the unit are immediately dispelled, and the effects of all other spells on the target unit immediately come to an end.

#namecost("APOTHEOSIS", "")
#namecost("Level 1 Cast on 5+", "")

_Apotheosis_ is an *augment* spell that targets a single model within 18". The target immediately regains a single lost Wound and the Fear special rule until the start of the caster's next Magic phase.

#namecost("HAND OF GLORY", "")
#namecost("Level 1 Cast on 5+", "")

_Hand of Glory_ is an *augment* spell with a range of 18". The target's Weapon Skill, Ballistic Skill, Initiative or Movement (choose one) is increased by D3 until the start of the caster's next Magic phase.

#namecost("CORUSCATING FULCRUM", "")
#namecost("Level 1 Cast on 6+", "")

Remains in play. _Coruscating Fulcrum_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard add 12" to the range of all their spells, can draw Line of Sight in any direction and counts as having a Line of Sight value of 5.

#namecost("FORTUNE IS FICKLE", "")
#namecost("Level 2 Cast on 6+", "")

_Fortune is Fickle_ is a *hex* spell with a range of 24" that targets an enemy wizard. Until the start of the caster's next Magic phase, whenever the targets roll a double when casting spells, that counts as a Miscast.

#namecost("CURSE OF ARROW ATTRACTION", "")
#namecost("Level 2 Cast on 7+", "")

_Curse of Arrow Attraction_ is a *hex* spell with a range of 24". Any missile attacks against the target may re-roll To Hit until the start of the caster's next Magic phase.

#namecost("SOUL QUENCH", "")
#namecost("Level 2 Cast on 7+", "")

_Soul Quench_ is a *magic missile* with a range of 18" that causes 2D6 Strength 4 hits.

#namecost("UNYIELDING COURAGE", "")
#namecost("Level 3 Cast on 8+", "")

_Unyielding Courage_ is an *augment* spell that is cast on the Wizard itself. All friendly units within 6" gain the Stubborn special rule until the start of the caster's next Magic phase.

#namecost("WALK BETWEEN WORLDS", "")
#namecost("Level 3 Cast on 8+", "")

_Walk Between Worlds_ is a *conveyance* spell with a range of 18". The target gains the Ethereal special rule until the end of the phase and can immediately move up to 10" as if it were the Remaining Moves sub-phase.

#namecost("CORPOREAL UNMAKING", "")
#namecost("Level 3 Cast on 9+", "")

_Corporeal Unmaking_ is a *direct damage* spell with a range of 24" that causes D6 Strength 5 Hits which Ignores Armour Saves and Regeneration.

#namecost("TEMPEST", "")
#namecost("Level 4 Cast on 12+", "")

_Tempest_ is a *direct damage* spell. Place the large round template anywhere within 30" of the Wizard – it then scatters D3". All models hit by the template suffer a Strength 3 hit (models with the Fly special rule suffer a Strength 4 hit instead). Any unit under the template suffers a \-1 modifier to all To Hit rolls (both shooting and close combat) until the start of the caster's next Magic phase (shooting attacks that do not use Ballistic Skill must roll 4+ on a D6 before firing, or the shot(s) are lost).

#namecost("ARCANE UNFORGING", "")
#namecost("Level 4 Cast on 13+", "")

_Arcane Unforging_ is a *direct damage* spell with a range of 24" that targets a single enemy model (even a character in a unit). The target suffers a single Wound on a dice roll greater than or equal to the model's unmodified armour save (excluding Natural Armour, models without an armour save cannot be wounded). No armour saves are permitted against a Wound caused by this spell. The owning player must then reveal to the caster all the magic items possessed by the target (if any). If the target has one or more magic items, select one of them – on the roll of 2+, that item is immediately destroyed and cannot be used for the rest of the game.

#namecost("FIERY CONVOCATION", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _Fiery Convocation_ is a *direct damage* spell with a range of 24". Every model in the target unit takes a Strength 3 hit with the Flaming Attacks special rule. At the end of every subsequent Magic phase, every model in the target unit suffers another hit with the Flaming Attacks special rule, with the Strength of each Hit increasing by 1 every time.
]

= ELVEN HONOURS

*Characters may be given one Elven Honour as detailed in the army list. Each Honour can be taken by more than one model in the army.*

#namecost("BLADELORD", "20 points")

Model on foot only. The model must take a great weapon. The model gains the Killing Blow and Swordmaster special rules.

#namecost("BLOOD OF CALEDOR", "20 points")

The model gains +1 Attack and dragon armour. The model must be mounted on an Elven Steed with ithilmar barding or a Moon Dragon. Alternatively, if the model is a Lord, they may be mounted on a Star Dragon. If the model is a Hero, they may be mounted on a Sun Dragon.

#namecost("CHRACIAN HUNTER", "20 points")

Model on foot only. The model gains a lion cloak, the Forest Strider, Multiple Wounds (2) and Stubborn special rules. The model must take a great weapon and may be mounted on a White Lion Chariot (see Special Units).

#namecost("COTHIQUE MARINER", "20 points")

Model on foot only. The model may not take heavy armour. The model and one unit of Rangers that they must deploy with gains the Ambushers special rule.

#namecost("SHADOW STALKER", "20 points")

Model on foot only. The model must take an Elven bow or Elven longbow. They cannot take medium or heavy armour. They gain the Loner, Scouts and Sniper (with mundane equipment only) special rules.

#namecost("TIRANOC CHARIOT MASTER", "20 points")

Model on Tiranoc Chariot only. The model may re-roll the number of Impact Hits they cause.

#namecost("ELLYRIAN OUTRIDER", "15 points")

Model on Elven Steed only. The model may not take heavy armour. The model and any unit of Reaver Knights they join may re-roll flee, pursuit and charge distances.

#namecost("GUARDIAN OF YVRESSE", "15 points")

Model on foot only. The model must take a shield. If this model is in a unit of Sentinels, that unit gains the Fight in Extra Ranks (1) special rule.

#namecost("PURE OF HEART", "15 points")

The model and any unit they join gain the Immunity (Panic) special rule. When fighting against Dark Elves in close combat, they gain Immunity (Psychology).

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dark Elves. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#namecost("DEATHSINGER", "75 points")

At the beginning of each round of close combat, roll a D3; the result is the number you may increase the wielder's Weapon Skill, Strength and Attacks by.

#namecost("SWORD OF AGES", "60 points")

The Sword of Ages gives the wielder +1 To Hit, +2 Strength and +1 Attack.

#namecost("BOW OF THE SEAFARER", "45 points")

Lothern Sea Helm only. The Bow of the Seafarer is a Bolt Thrower.

#namecost("SPEAR OF THE SHORES", "40 points")

Light lance/spear. This weapon gives the wielder +1 Strength and +2 Attacks.

#namecost("SWORD OF VICTORY", "35 points")

The Sword of Victory gives the wielder the Always Strikes First and Armour Piercing (1) special rules. In addition, they will always Wound on a 3+ or better.

#namecost("THE BLADE OF LEAPING GOLD", "25 points")

The Blade of Leaping Gold grants the wielder +3 Attacks. In addition, any roll of 6 To Wound made with the Blade of Leaping Gold Ignores Armour saves.

#namecost("BLADE OF THE PHOENIX", "50 points")

The Blade of the Phoenix gives the wielder the Ignores Armour Saves special rule. Once per battle, at the start of any close combat phase the wielder can unleash the full power of the sword. For the remainder of that close combat phase, they get the Always Strikes First special rule and +D6 Attacks.

#namecost("CLOUDCLEAVER", "45 points")

Polearm. All attacks made with Cloudcleaver have the Ignores Armour Saves special rule. In addition, it gives the wielder the Fear special rule and against War Beasts and Cavalry, they cause Terror.

#namecost("THE REAVER BOW", "30 points")

Elven Longbow. All shots from the Reaver Bow are resolved at Strength 5. In addition, it has the Multiple Shots (3) special rule.

#namecost("SWORD OF HOETH", "20 points")

Great weapon. All hits with the Sword of Hoeth wound automatically. Armour saves are modified by the Strength of the bearer.

#namecost("BLADE OF DARTING STEEL", "25 points")

The Blade of Darting Steel gives the wielder +1 To Hit and the Always Strikes First special rule.

#namecost("DRAGONBLADE LANCE", "20 points")

Heavy lance. During turns in which the wielder of the Dragonblade Lance charges, it automatically Hits all models in one file that is in base contact rather than fighting normally. Hits are resolved as that from a Bolt Thrower, except the Strength does not decrease for each rank.

#namecost("JADE BOW", "20 points")

Elven Longbow. All shots from the Jade Bow are resolved at Strength 4. In addition, if you successfully Wound your target, you may fire an additional shot against the same target. You may continue to fire additional shots until you fail to Wound or the target is dead.

#namecost("FOE BANE", "15 points")

Against Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts, Monstrous Creatures and Monsters, this sword will always wound on a 2+.

#namecost("BOW OF TOR ALESSI", "10 points")

Elven Longbow. The Bow of Tor Alessi has the Quick to Fire special rule. In addition, it may re-roll any failed To Hit rolls.

#entry("MAGIC ARMOUR")
#namecost("GOLDEN SHIELD", "30 points")

Shield. Infantry or Cavalry only. Enemies must re-roll all successful To Hit rolls against the bearer of the Golden Shield.

#namecost("TEMAKADOR'S GAUNTLETS", "30 points")

Temakador's Gauntlets gives the wearer a 6+ armour save. In addition, they gain a 5+ Ward Save against attacks of Strength 4 or greater.

#namecost("HELM OF FORTUNE", "30 points")

Infantry or Cavalry only. The Helm of Fortune gives the wearer a 6+ armour save. The wearer may re-roll failed armour saves.

#namecost("DRAGONSCALE SHIELD", "25 points")

Shield. The Dragonscale Shield adds an additional +1 to the bearer's armour save as well as a 6+ Ward Save.

#namecost("SHADOW ARMOUR", "25 points")

Model on foot only. Medium armour. The wearer gains the Strider special rule. In addition, no enemies can draw Line of Sight to them unless they are within 6".

#namecost("THE SHIELD OF ITHINAR", "25 points")

Shield. All close combat attacks against the bearer suffer \-1 To Hit.

#namecost("SHIELD OF THE MERWYRM", "20 points")

Shield. The bearer of the Shield of the Merwyrm gains a 6+ armour save and the Parry (6+) special rule.

#namecost("ARMOUR OF HEROES", "15 points")

Heavy armour. In order to allocate close combat attacks against the wearer, each enemy model must first pass a Leadership test at the start of each close combat phase. If the test is failed, the model may not attack at all this round.

#namecost("ARMOUR OF STARS", "10 points")

Model on foot only. Light armour. If the wearer of the Armour of Stars suffers an unsaved wound (but is not slain) they can choose to instantly teleport 3D6" in a random direction (placing it at least 1" away from other units or impassable terrain) with its front arc in a direction of your choosing. If the model teleports off the table, then treat this as it having pursued off the table.

#namecost("MASK OF THE MERLORD", "10 points")

This mask confers a 6+ armour save. In addition, the wearer and any unit they join gains the River Strider special rule and counts as being in soft cover while in any river.

#namecost("WYRMSCALE ARMOUR OF THE DEEP", "10 points")

Heavy Armour. The Wyrmscale Armour of the Deep gives the wearer the Aquatic and Immunity (Flaming Attacks) special rules.

#entry("TALISMANS")
#namecost("THE PINION OF THE PHOENIX", "60 points")

Model on foot only. The Pinion of the Phoenix gives the wearer a 5+ Ward Save. If the bearer is slain, the item is destroyed but restores the bearer to their starting Wound total and inflicts a Strength 5 Hit with the Flaming Attacks special rule on all models in base contact.

#namecost("VAMBRACES OF DEFENCE", "60 points")

Infantry or Cavalry only. The bearer gains a 4+ Ward. In addition, they may re-roll failed armour saves.

#namecost("GUARDIAN PHOENIX", "30 points")

The Guardian Phoenix gives the wearer a 5+ Ward Save and the Immunity (Flaming Attacks) special rule.

#namecost("LOREMASTER'S CLOAK", "30 points")

The wearer of the Loremaster's Cloak gains a 3+ Ward Save against missile attacks.

#namecost("THE SIGNET OF ATHINOL", "30 points")

Any attacks made against the bearer suffer a \-1 Strength penalty.

#namecost("GOLDEN CROWN OF ATRAZAR", "25 points")

The Golden Crown of Atrazar gives the bearer a 4+ Ward save and the Stupidity special rule. In addition, at the start of each of your turns, they suffer \-1 to their Leadership.

#namecost("SACRED INCENSE", "25 points")

All missile attacks targeted at the bearer of the Sacred Incense or the unit they are with suffer \-1 To Hit.

#namecost("PHOENIX STONE", "20 points")

Infantry or Cavalry only. Every time the bearer of this item rolls a natural 6 on their armour save or Ward save roll, they restore 1 Wound suffered earlier during game.

#namecost("TALISMAN OF BLINDING LIGHT", "15 points")

All enemy units in base contact with the bearer suffer \-1 to their Weapon Skill in the first round of close combat.

#namecost("TALISMAN OF SAPHERY", "10 points")

The Talisman of Saphery causes all Magic Weapons of enemy models in base contact to lose all their effects; treat them as mundane weapons of their type.

#namecost("AMULET OF FIRE", "10 points")

The Amulet of Fire gives the wearer the Immunity (Flaming Attacks) and Magic Resistance (1) special rules.

#entry("ARCANE ITEMS")
#namecost("BOOK OF HOETH", "60 points")

The Book of Hoeth allows the bearer to re-roll a single dice from each of his casting or dispel attempts. Results of 6 cannot be re-rolled.

#namecost("ANNULIAN CRYSTAL", "55 points")

During the enemy's Magic phase, the Annulian Crystal allows you to remove one dice from the opponent's Power dice pool and add it to your own Dispel dice pool.

#namecost("SIGIL OF ASURYAN", "55 points")

One use only. When an enemy cast a spell, the bearer may immediately counter its effects by reading the Sigil of Asuryan to release the spell written upon it instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. In addition, the spell is destroyed and the enemy caster loses access to the spell for the rest of the game (note that this has no effect on Innate Bound spells).

#namecost("RING OF CORIN", "35 points")

Bound spell, Power level 7. The Ring of Corin contains the _Arcane Unforging_ spell from the Lore of High Magic.

#namecost("THE TRICKSTER'S PENDANT", "30 points")

If an enemy Wizard suffers a Miscast, the bearer of the Trickster's Pendant can choose to make the Wizard re- roll the result on the Miscast table.

#namecost("THE VORTEX SHARD", "20 points")

One use only. The bearer may use the Vortex Shard at the start of any enemy Magic phase. Your opponent must remove D3 power dice from their power pool.

#namecost("STARWOOD STAFF", "25 points")

The Starwood staff gives the bearer a +1 bonus to the result of their spell casting attempts. In addition, they may re-roll one failed channelling roll per turn.

#namecost("STAFF OF SOLIDITY", "25 points")

One use only. The Staff of Solidity makes the Wizard immune to the effects of their first Miscast.

#namecost("JEWEL OF THE DUSK", "20 points")

The Jewel of the Dusk gives the bearer +1 Power dice in each of your Magic phases. Only they may use this extra dice.

#namecost("THE SEERSTAFF OF SAPHERY", "10 points")

The Seerstaff of Saphery allows the bearer to choose one more spell than normal from their chosen Lore of Magic.

#namecost("SILVER WAND", "10 points")

The bearer of the Silver Wand may pick a spell one level higher than they are normally allowed.

#namecost("THE SPELL CROWN OF DUSK", "10 points")

The bearer of this item gains access to a randomly generated Lvl 1 spell (which may be replaced by the Signature Spell) from the Lore of High Magic.

#entry("ENCHANTED ITEMS")
#columns(2)[
#namecost("NULL STONE", "50 points")

No model in base contact with the bearer of the Null Stone may cast spells, and all Magic Items lose their effects; treat them as mundane versions of the same type.

#namecost("RADIANT GEM OF HOETH", "35 points")

The bearer of the Radiant Gem of Hoeth becomes a Level 1 Wizard using the Lore of High Magic.

#namecost("FOLARIATH'S ROBE", "40 points")

Model on foot only. The wearer of the Folariath's Robe gains the Ethereal special rule.

#namecost("KHAINE'S RING OF FURY", "35 points")

Bound spell (power level 4). Khaine's Ring of Fury contains the _Soul Quench_ spell (see the Lore of High Magic).

#namecost("PENDANT OF VENGEANCE", "35 points")

When fighting Dwarfs, the bearer may force a successful Leadership test while using an Anvil of Doom or Rune Lore to be rerolled.

#namecost("SKY ARROW OF NALOER", "25 points")

Model with non-magical Elven Longbow only. One use only. This item cannot be used with the Sniper special rule. The Sky Arrow of Naloer has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "6", "Magical Attacks, Multiple Wounds (D6)"))
#namecost("THE SKEINSLIVER", "25 points")

The Skeinsliver allows the controlling player to add +1 to the roll to determine which player can decide whether to take the first turn or not.

#namecost("BLESSED TOME", "25 points")

The model gains the Inspiring Presence (6) special rule.

#namecost("GEM OF SUNFIRE", "25 points")

One use only. At the start of any of your turns, when the Gem of Sunfire is used, all of the bearer's spells, shooting attacks and close combat attacks (and their mount's, if they have one) have a +1 bonus To Wound (rolls of 1 still fail) provided that they also have the Flaming Attacks special rule.

#namecost("MORANION'S WAYSHARD", "25 points")

Model on foot only. The bearer of Moranion's Wayshard has the Ambushers special rule. They can also give the Ambushers special rule to a friendly unit of Core Infantry unit up to 30 models in size_,_ immediately before deployment. If they do so, the bearer immediately joins the unit and cannot leave it until the turn after the one in which the combined unit has deployed.

#namecost("THE AMULET OF LIGHT", "20 points")

All close combat attacks made by the bearer of the Amulet of Light and any unit they are with gain the Magical Attacks special rule. In addition, enemies must re-roll 6's when taking Ward saves (excluding Dodge, Parry and Regeneration).

#namecost("THE HORN OF ISHA", "20 points")

Handmaiden of the Everqueen only. One use only. The Horn of Isha can be used at the start of one of your Movement phases. For the remainder of the turn, all models in the bearer's unit receive a +1 To Hit bonus on all shooting and close combat attacks.

#namecost("AMULET OF THE PURIFYING", "")
#namecost("FLAME", "15 points")

Enemy spells that target the character or the unit they are with suffer a \-3 penalty to the result of the spell casting attempt.

#namecost("CLOAK OF BEARDS", "15 points")

The wearer of the Cloak of Beards causes Fear. Against models chosen from _Warhammer: Dwarfs,_ the wearer causes Terror instead. However, all models from _Warhammer: Dwarfs_ gain the Hatred special rule while attacking the wearer. In addition, at the start of each Close Combat phase, roll a D6 for each magic item carried by each model from _Warhammer: Dwarfs_ that is in base contact with the bearer. On a roll of 4+, that magic or runic item is destroyed and cannot be used for the rest of the battle; it will count as a mundane version of whatever item it is instead. Note that this has no effect on magic items that are mounts, war machines, magic items that contain bound spells that have already miscast during the game, and any magic items labelled as 'one use only' that have already been used during the game – do not roll to see if these magic items are destroyed.

#namecost("THE GEM OF COURAGE", "10 points")

One use only. The bearer of the Gem of Courage and any unit they are with may take any one Leadership test on 3D6, discarding the highest result.

#namecost("TALISMAN OF LOEC", "10 points")

One use only. The Talisman of Loec may be used at the start of any close combat phase. Until the end of the phase, the bearer may re-roll all failed rolls To Hit and wound, and any model wounded by their attacks must re-roll all successful armour saves, Ward saves and Regeneration saves. However, at the end of the phase, the bearer loses half of their remaining Wounds (rounding down) with no saves of any kind allowed.

#namecost("STAR RUBY", "10 points")

At the start of each of your turns, all enemy units within 12" must reveal any Hidden models, upgrades and magic items they might have.
]

#entry("MAGIC STANDARDS")
#namecost("BANNER OF THE WORLD DRAGON", "40 points")

All models in a unit that carries the Banner of the World Dragon have the Magic Resistance (5) special rule. Furthermore, all Dragons (friend or foe) within 12" of the Banner of the World Dragon have the Stubborn special rule.

#namecost("STANDARD OF BALANCE", "45 points")

The unit carrying the Standard of Balance, and any enemy unit in base contact with it, gain the Immunity (Psychology) special rule, and any Frenzy or Hatred special rule have no effect.

#namecost("BANNER OF SORCERY", "30 points")

The Banner of Sorcery adds +1 Power dice to your power pool in each of your own Magic phases.

#namecost("BANNER OF ELLYRION", "25 points")

Cavalry only. The unit gains the Strider special rule and may re-roll failed Pursuit distances.

#namecost("THE BANNER OF AVELORN", "10 points")

Sisters of Avelorn only. Spells from the Lore of Light and the Lore of Life cast by a friendly Wizard that target a unit containing the Banner of Avelorn receive a +2 bonus to cast. If Alarielle the Radiant is included in your army and is slain, this ability is immediately lost.

#namecost("LION STANDARD", "10 points")

White Lions of Chrace only. The unit carrying the Lion Standard gains the Immunity (Terror) special rule.

= LORDS

#entry("PRINCE", first: true)
#profile(
  (name: "Prince", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 125),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +4 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Elven bow +7 points
  - Elven longbow +8 points
- May choose one of the following:
  - Medium armour +6 points
  - Heavy armour +15 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Elven Steed +21 points
  - Pegasus +30 points
  - Great Eagle +45 points
  - Tiranoc Chariot (replacing one of the crew) +70 points
  - Griffon +125 points
  - Moon Dragon +300 points
- May take one Elven Honour and/or Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("ARCH MAGE")
#profile(
  (name: "Arch Mage", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 5, a: 1, ld: 9, points: 185),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Arch Mage is a Level 3 Wizard who uses spells from any of the eight Winds of Magic or High Magic.")
#field("OPTIONS", "")

- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following:
  - Elven Steed +21 points
  - Unicorn +42 points
  - Great Eagle +45 points
  - Tiranoc Chariot (replacing one of the crew) +70 points
  - Moon Dragon +300 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages")

#entry("LORD OF AENARION")
#profile(
  (name: "Lord of Aenarion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 5, ld: 10, points: 185),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Heavy lance +8 points
  - Polearm +8 points
  - Great weapon +12 points
- May take a shield +3 points
- May be mounted on an Elven Steed +21 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Elven Grace, Frenzy, Hatred (Forces of Destruction), Martial Prowess, Valour of Ages")

- *Battle Trance:* If a Lord of Aenarion is in base contact with a friendly unit, he must pass a Leadership test at the start of any round of combat a he is involved in. If failed, he will make one Attack on every model in base contact instead of attacking normally. Roll to Hit as normal.
- *Curse of Aenarion:* As soon as a model with this special rule is reduced to 1 Wound he gets a 3+ Ward save for the rest of the battle. This has no effect on attacks that would outright kill him before he is reduced to 1 Wound, like a spell or attack with the Multiple Wounds special rule. If he were to suffer multiple Wounds in a single phase, roll one save at a time (if he has any) for each Wound suffered until his Ward save takes effect.

#entry("LOREMASTER OF HOETH")
#profile(
  (name: "Loremaster", m: 5, ws: 6, bs: 4, s: 4, t: 3, w: 3, i: 7, a: 3, ld: 9, points: 230),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("MAGIC", "A Loremaster of Hoeth is a Level 3 Wizard. Instead of choosing spells normally, they always know the eight")

Signature Spells from the Winds of Magic.

#field("OPTIONS", "")

- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Elven Grace, Lileath's Blessing, Martial Prowess, Swordmaster, Valour of Ages")

= HEROES

#entry("NOBLE", first: true)
#profile(
  (name: "Noble", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- One Noble may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +3 points
  - Heavy lance +6 points
  - Polearm +6 points
  - Great weapon +8 points
- May choose one of the following:
  - Medium armour +4 points
  - Heavy armour +10 points
- May choose one of the following:
  - Elven bow +6 points
  - Elven longbow +7 points
- May take a shield +2 points
- May be mounted on one of the following:
  - Elven Steed +14 points
  - Pegasus +20 points
  - Tiranoc Chariot (replacing one of the crew) +70 points
- May take one Elven Honour and/or Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")
#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("MAGE")
#profile(
  (name: "Mage", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Mage is a Level 1 Wizard who uses spells from any of the eight Winds of Magic or High Magic.")
#field("OPTIONS", "")

- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following:
  - Elven Steed +14 points
  - Unicorn +28 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages")

#entry("ANOINTED OF ASURYAN")
#profile(
  (name: "Anointed of Asuryan", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 145),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, heavy armour")
#field("OPTIONS", "")

- May be mounted on a Flamespyre Phoenix +210 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Fear, Martial Prowess, Valour of Ages")

- *Blessings of Asuryan:* All models in a unit that contains an Anointed of Asuryan have the Immunity (Psychology) special rule and may re-roll Ward save results of 1.
- *Witness to Destiny:* A model with this special rule has a 4+ Ward Save.

#entry("LOTHERN SEA HELM")
#profile(
  (name: "Sea Helm", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 55),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, medium armour, shield")
#field("OPTIONS", "")

- One Sea Helm may carry the Battle Standard +25 points
- May take an Elven bow +5 points
- May be mounted on a Lothern Skycutter (replacing one of the crew) +75 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

- *Naval Discipline:* If a unit of Sea Guard containing at least one Sea Helm is charged during the Movement phase and chooses Hold as a charge reaction, it can attempt to change formation immediately before your opponent has moved any of his charging units, as long as it is not already engaged in close combat. To do so, the unit must take a Leadership test. If the test is passed, the Sea Helm's unit can immediately make a reform as described in the Warhammer Rulebook.
- *Windrider:* A Sea Helm mounted on a Lothern Skycutter (and his Lothern Skycutter) has a 4+ ward save against shooting attacks. Furthermore, when mounted on a Lothern Skycutter, a Sea Helm re-rolls failed Dangerous Terrain tests.

#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#field("NOTES", "")

- A Sea Helm mounted on a Lothern Skycutter may not buy any upgrades for it.

#entry("HANDMAIDEN OF THE EVERQUEEN")
#profile(
  (name: "Handmaiden", m: 5, ws: 5, bs: 6, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 45),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, Bow of Avelorn, light armour")
#field("OPTIONS", "")

- One Handmaiden may carry the Battle Standard +25 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

- *Quicksilver Shot:* A Handmaiden and any unit of Sistern of Avelorn that they join gain the Quick to Fire special rule, and can move and shoot without losing Multiple Shots.

#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.

#entry("DRAGON MAGE OF CALEDOR")
#profile(
  (name: "Dragon Mage", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 325),
  (name: "Sun Dragon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Character, High Elf)")
#field("MOUNT", "Sun Dragon (Dragon)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC", "A Dragon Mage is a Level 1 Wizard who uses spells from the Lore of Fire.")
#field("MAGIC ITEMS", "")

- *Sunstaff:* Arcane Item. A Sunstaff contains Bound Spell, Power Level 5. This spell can be cast on the Wizard themselves. Until the start of their next Magic phase, the Wizard gains +1 Attack, +3 Strength, the Flaming Attacks special rule and always Hits on the roll of a 2+ in close combat.

#field("OPTIONS", "")

- May be upgraded to a Level 2 Wizard +35 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Fiery Breath, Fly (7), Lileath's Blessing, Martial Prowess, Natural Armour")

*(3+), Valour of Ages*

- *Reckless:* When a Dragon Mage casts a spell, a 'free' Power dice is added to the casting attempt. This extra dice counts towards Ultimate Power and can cause a Miscast as normal, and allows the Dragon Mage to roll more dice than he is normally allowed to.

#entry("MISTWEAVER")
#profile(
  (name: "Mistweaver", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 85),
)
#field("TROOP TYPE", "Infantry (Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Mistweaver is a Level 1 Wizard who uses the following spells:")
#namecost("THE WRITHING MISTS", "")
#namecost("Signature Spell Cast on 5+", "")

Remains in Play. _The Writhing Mists_ is an *augment* spell with a range of 18". While this spell is in effect, any enemy attacks targeted at the unit will suffer a \-1 To Hit penalty.

#namecost("ILLUSORY ASSAULT", "")
#namecost("Level 1 Cast on 7+", "")

_Illusory Assault_ is a *hex* spell with a range of 24". The target unit must take a Leadership test. If failed, all models in the unit inflicts one Attack each against the unit itself. Roll To Hit, To Wound and take saves as normal. The caster may choose which of the unit's weapons is used for these attacks. Parry or Dodge save does not apply, and neither do any special rules that only applies in the first round of close combat.

#namecost("MISTRESS OF THE DEEP", "")
#namecost("Level 1 Cast on 7+", "")

Remains in Play. _Mistress of the Deep_ is a *summoning* spell with a range of 6". Place an appropriate marker no larger than 1" in diameter to represent an Oceanid within range. Whenever an enemy unit wishes to fire upon or declare a charge against a unit in the High Elf army, it must first measure the distance to the Oceanid. If the Oceanid is closer than the target unit, it must pass a Leadership test or be unable to charge or shoot this turn. This spell has no effect against units with Immunity (Psychology).

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages")

= CHARACTER MOUNTS

#entry("ELVEN STEED", first: true)
#profile(
  (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take Ithilmar barding +10 points

#compact-entry("PEGASUS")[
#profile(
  (name: "Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Fly (9)")
]

#entry("UNICORN")
#profile(
  (name: "Unicorn", m: 10, ws: 5, bs: 0, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("SPECIAL RULES", "Forest Strider, Magical Attacks, Magic Resistance (2)")

- *Impale:* Unicorns gain +1 Strength to their Impact Hits.

#entry("GREAT EAGLE")
#profile(
  (name: "Great Eagle", m: 2, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 8, points: 50),
)
#field("TROOP TYPE", "Monstrous Beast (Animal)")
#field("BASE SIZE", "40x40 or 50x50")
#field("OPTIONS", "")

- May take Shredding Talons +5 points
- May take Swiftsense +5 points

#field("SPECIAL RULES", "Fly (9)")
#field("UPGRADES", "")

- *Swiftsense:* The model gains the Always Strikes First special rule in any turn that they charge.
- *Shredding Talons:* The model gains the Armour Piercing (1) special rule.

#entry("GRIFFON")
#profile(
  (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
)
#field("TROOP TYPE", "Monstrous Creature (Animal)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fly (8)")
#field("OPTIONS", "")

- May take Shredding Talons +5 points
- May take Swooping Strike +5 points

#field("UPGRADES", "")

- *Shredding Talons:* The models gains the Armour Piercing (1) special rule.
- *Swooping Strike:* The model gains the Devastating Charge special rule.

#compact-entry("SUN DRAGON")[
#profile(
  (name: "Sun Dragon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: 235),
)
#field("TROOP TYPE", "Monster (Dragon)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fiery Breath, Fly (7), Natural Armour (3+).")
]

#compact-entry("MOON DRAGON")[
#profile(
  (name: "Moon Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: "-"),
)
#field("TROOP TYPE", "Monster (Dragon)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fiery Breath, Fly (7), Natural Armour (3+).")
]

#compact-entry("STAR DRAGON")[
#profile(
  (name: "Star Dragon", m: 6, ws: 7, bs: 0, s: 7, t: 7, w: 7, i: 2, a: 6, ld: 9, points: 390),
)
#field("TROOP TYPE", "Monster (Dragon)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("SPECIAL RULES", "Fiery Breath, Fly (7), Natural Armour (2+).")
]

= CORE UNITS

#entry("SENTINELS", first: true)
#profile(
  (name: "Sentinel", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 10),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, medium armour, shield")
#field("OPTIONS", "")

- May upgrade one Sentinel to a Leader +5 points
- May upgrade one Sentinel to a Musician +5 points
- May upgrade one Sentinel to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("HAWKEYES")
#profile(
  (name: "Hawkeye", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Elven longbow")
#field("OPTIONS", "")

- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Hawkeye to a Leader +5 points
- May upgrade one Hawkeye to a Musician +5 points
- May upgrade one Hawkeye to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("WARDENS")
#profile(
  (name: "Warden", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour, shield")
#field("OPTIONS", "")

- May upgrade one Warden to a Leader +5 points
- May upgrade one Warden to a Musician +5 points
- May upgrade one Warden to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("LOTHERN SEA GUARD")
#profile(
  (name: "Sea Guard", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 14),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Spear, Elven bow, medium armour, shield")
#field("OPTIONS", "")

- May upgrade one Sea Guard to a Leader +5 points
- May upgrade one Sea Guard to a Musician +5 points
- May upgrade one Sea Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("RANGERS")
#profile(
  (name: "Ranger", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 8),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons, light armour")
#field("OPTIONS", "")

- May upgrade one Ranger to a Leader +5 points
- May upgrade one Ranger to a Musician +5 points
- May upgrade one Ranger to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Skirmishers, Valour of Ages")

#entry("SILVER HELMS")
#profile(
  (name: "Silver Helm", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 18),
  (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (High Elf)")
#field("MOUNT", "Elven Steed (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, medium armour, shield")
#field("OPTIONS", "")

- May take heavy armour +2.5 points/model
- May take ithilmar barding +2.5 points/model
- May upgrade one Silver Helm to a Leader +5 points
- May upgrade one Silver Helm to a Musician +5 points
- May upgrade one Silver Helm to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("REAVER KNIGHTS")
#profile(
  (name: "Reaver Knight", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
  (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (High Elf)")
#field("MOUNT", "Elven Steed (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Light lance, light armour")
#field("OPTIONS", "")

- May take Elven bows +3 points/model
- May take medium armour +1.5 points/model
- May take shields +1.5 points/model
- May take ithilmar barding +1.5 points/model
- May upgrade one Reaver Knight to a Leader +5 points
- May upgrade one Reaver Knight to a Musician +5 points
- May upgrade one Reaver Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points

#field("SPECIAL RULES", "Elven Grace, Fast Cavalry, Martial Prowess, Valour of Ages")

= SPECIAL UNITS

#entry("SWORDMASTERS OF HOETH", first: true)
#profile(
  (name: "Swordmaster", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 16),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("OPTIONS", "")

- May upgrade one Swordmaster to a Leader +5 points
- May upgrade one Swordmaster to a Musician +5 points
- May upgrade one Swordmaster to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Swordmaster, Valour of Ages")

#entry("WHITE LIONS OF CHRACE")
#profile(
  (name: "White Lion", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 16),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, lion cloak, medium armour")
#field("OPTIONS", "")

- May upgrade one White Lion to a Leader +5 points
- May upgrade one White Lion to a Musician +5 points
- May upgrade one White Lion to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Elven Grace, Forest Strider, Martial Prowess, Multiple Wounds (2), Stubborn, Valour of Ages")

#entry("SHADOW WARRIORS")
#profile(
  (name: "Shadow Warrior", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 16),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Elven bow, light armour")
#field("OPTIONS", "")

- May take additional hand weapons +1 point/model
- May take Elven longbows +1 point/model
- May upgrade one Shadow Warrior to a Leader +5 points

#field("SPECIAL RULES", "Elven Grace, Hatred (Dark Elves), Loner, Martial Prowess, Scouts, Skirmishers, Valour of Ages")

#entry("DRAGON PRINCES OF CALEDOR")
#profile(
  (name: "Dragon Prince", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 30),
  (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (High Elf)")
#field("MOUNT", "Elven Steed (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Heavy lance, dragon armour, shield, ithilmar barding")
#field("OPTIONS", "")

- May upgrade one Dragon Prince to a Leader +5 points
- May upgrade one Dragon Prince to a Musician +5 points
- May upgrade one Dragon Prince to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("TIRANOC CHARIOT")
#profile(
  (name: "Tiranoc Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
  (name: "Charioteer", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
  (name: "Elven Steed", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 Charioteers (High Elf)")
#field("DRAWN BY", "2 Elven Steeds (Animal)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Light lance, Elven bow, medium armour")
#field("OPTIONS", "")

- One Tiranoc Chariot may be upgraded to a standard bearer +10 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("LION CHARIOT OF CHRACE")
#profile(
  (name: "Lion Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 100),
  (name: "White Lion", m: "-", ws: 5, bs: 4, s: 4, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
  (name: "War Lion", m: "-", ws: 4, bs: 0, s: 5, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 White Lions (High Elf)")
#field("DRAWN BY", "2 War Lions (Animal)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Great weapon, lion cloak, medium armour")
#field("OPTIONS", "")

- May be upgraded to a standard bearer +10 points

#field("SPECIAL RULES", "Elven Grace, Fear, Martial Prowess, Multiple Wounds (2), Stubborn, Valour of Ages")

#entry("WAR LIONS OF CHRACE")
#profile(
  (name: "War Lion", m: 8, ws: 4, bs: 0, s: 5, t: 4, w: 2, i: 4, a: 2, ld: 6, points: 24),
)
#field("UNIT SIZE", "2+")
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Fear")

- *Lion Coat:* The model has the Natural Armour (6+) special rule against missile attacks.

#entry("EAGLE CLAW BOLT THROWER")
#profile(
  (name: "Eagle Claw", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
  (name: "Crew", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
)
#field("TROOP TYPE", "War Machine (Repeater Bolt Thrower)")
#field("CREW", "2 Crew (High Elf)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May take an additional Crew 10 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

= RARE UNITS

#entry("PHOENIX GUARD", first: true)
#profile(
  (name: "Phoenix Guard", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 18),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Polearm, heavy armour")
#field("OPTIONS", "")

- May upgrade one Phoenix Guard to a Leader +5 points
- May upgrade one Phoenix Guard to a Musician +5 points
- May upgrade one Phoenix Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points

#field("SPECIAL RULES", "Elven Grace, Fear, Martial Prowess, Valour of Ages")

- *Witness to Destiny:* A model with this special rule has a 4+ Ward Save.

#entry("SISTERS OF AVELORN")
#profile(
  (name: "Sister of Avelorn", m: 5, ws: 4, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 18),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Bow of Avelorn, light armour")
#field("OPTIONS", "")

- May take spears +0.5 point/model
- May upgrade one Sister of Avelorn to a Leader +5 points
- May upgrade one Sister of Avelorn to a Musician +5 points
- May upgrade one Sister of Avelorn to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

#entry("LOTHERN SKYCUTTER")
#profile(
  (name: "Lothern Skycutter", m: "-", ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 80),
  (name: "Sea Guard", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
  (name: "Swiftfeather Roc", m: "-", ws: 5, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "3 Sea Guards (High Elf)")
#field("DRAWN BY", "1 Swiftfeather Roc (Animal)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Light lance, Elven bow, medium armour")
#field("OPTIONS", "")

- May replace one Sea Guard crew with an Eagle Eye Bolt Thrower +25 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages, Fly (8)")
#field("UPGRADES", "")

- *Eagle Eye Bolt Thrower:* The Eagle Eye Bolt Thrower is a bolt thrower with the following profile, and can be fired by one of the Skycutter's crew in place of their bow.

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Armour Piercing (1), Multiple Wounds (D3), Slow to Fire"))

#entry("GREAT EAGLE")
#profile(
  (name: "Great Eagle", m: 2, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 8, points: 50),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Monstrous Beast (Animal)")
#field("BASE SIZE", "40x40 or 50x50")
#field("OPTIONS", "")

- May take Shredding Talons +5 points
- May take Swiftsense +5 points

#field("SPECIAL RULES", "Fly (9)")
#field("UPGRADES", "")

- *Swiftsense:* The model gains the Always Strikes First special rule in any turn that they charge.
- *Shredding Talons:* The model gains the Armour Piercing (1) special rule.

#entry("DRAKEMASTERS")
#profile(
  (name: "Drakemaster", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 175),
  (name: "Drake", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: ""),
)
#field("UNIT SIZE", "1-5")
#field("TROOP TYPE", "Monstrous Creature (High Elf)")
#field("MOUNT", "Drake (Dragon)")
#field("BASE SIZE", "50x50, 50x75 or 50x100")
#field("EQUIPMENT", "Heavy lance, dragon armour, shield")
#field("OPTIONS", "")

- May upgrade one Drakemaster to a Leader +5 points

#field("SPECIAL RULES", "Elven Grace, Fiery Breath, Fly (8), Martial Prowess, Natural Armour (4+), Valour of Ages")

#entry("MERWYRM")
#profile(
  (name: "Merwyrm", m: 6, ws: 6, bs: 0, s: 5, t: 5, w: 5, i: 3, a: 5, ld: 7, points: 205),
)
#field("TROOP TYPE", "Monster (Sea Creature)")
#field("BASE SIZE", "50x100 or 60x100")
#field("SPECIAL RULES", "Aquatic, Natural Armour (3+), Regeneration (4+)")

- *Powerful Tail:* The Merwyrm may make one extra Attack at Strength 7 and Initiative 1.

#entry("FLAMESPYRE PHOENIX")
#profile(
  (name: "Flamespyre Phoenix", m: 2, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 8, points: 240),
  (name: "Frostheart Phoenix", m: 2, ws: 6, bs: 0, s: 5, t: 6, w: 5, i: 3, a: 3, ld: 9, points: ""),
)
#field("TROOP TYPE", "Monster (Phoenix)")
#field("BASE SIZE", "50x100 or 60x100")
#field("OPTIONS", "")

- May be upgraded to a Frostheart Phoenix +5 points
- May take Cleansing Flames (Flamespyre Phoenix only) +15 points
- May take Blessings of Asuryan +25 points
- May take Omen of Hope +25 points
- May take Omen of Sacrifice +25 points

#field("SPECIAL RULES", "Flaming Attacks, Immunity (Flaming Attacks), Fly (8)")

- *Attuned to Magic:* A model with this special rule has a 5+ Ward save and the Magical Attacks special rule. After rolling for the Winds of Magics each turn, divide the result by the number of 1000 points played (so at 2000 or more points, divide the result by 2; at 3000 or more points, divide the result by 3; and so on). Then consult the table below to see what effect it will have until the start of the next Magic phase:

#chart((("D6", "Result"), ("1", "Magical Dearth: The Phoenix's Ward save is reduced to 6+."), ("2", "Ebbing Zephyr: The Phoenix has -1 Strength."), ("3", "Magical Draught: The Phoenix has +1 Initiative."), ("4", "Energising Breeze: The Phoenix has +1 Attack."), ("5", "Invigorating Winds: The Phoenix has +1 Strength."), ("6", "Howling Gale: The Phoenix's Ward save is increased to 4+.")))

- *Phoenix Reborn:* As soon as a Flamespyre Phoenix loses its last Wound (including unsaved Wounds that killed the monster as a result of the Heroic Killing Blow or Multiple Wounds special rules), remove the model and place a Phoenix Reborn counter (a small coin will do) to mark the centre of the death spot. If your army contains several Flamespyre Phoenixes, you will need to place a Phoenix Reborn counter for each one that is slain (and a way of telling the counters apart).

At the end of the turn roll a D6 for each Phoenix Reborn counter and consult the table below:

#chart((("D6", "Result"), ("1-2", "Dead Embers: The Flamespyre Phoenix is dead, never to return – remove the Phoenix Reborn
counter from play."), ("3-5", "Flame Kindled: Centre the large round template over the centre of the Phoenix Reborn counter. All
models (friend or foe) hit by the template suffer a Strength 4 hit with the Flaming Attacks special
rule. This is a non-physical attack. The Phoenix Reborn counter remains in play – roll again at the
end of the next turn (yours or your opponent's)."), ("6+", "Rise from the Ashes: Place the Flamespyre Phoenix anywhere that is within 6\" of the centre of the
Phoenix Reborn counter and at least 1\" away from any unit, and then remove the marker from play. If
it is not possible to place the Phoenix due to the aforementioned restrictions, treat this result as a
Flame Kindled result instead. Reborn Flamespyre Phoenixes return with D3+2 Wounds. The reborn
model suffers no bonuses or penalties incurred from its former existence – i.e. if the model was
fleeing or affected by an augment or hex spell at the time of its death, the reborn model will not be.")))

If a Flamespyre Phoenix has a rider when it loses its last Wound, both monster and rider are removed and replaced with a Phoenix Reborn counter as described above. However, add +1 when rolling on the Phoenix Reborn table for a Flamespyre Phoenix that had a rider when it was removed.

At the end of the game, remove all Phoenix Reborn counters from the board – these Flamespyre Phoenixes and any riders they had count as casualties.

- *Wake of Fire:* If a Flamespyre Phoenix moves over an unengaged enemy unit in the Remaining Moves sub- phase, it suffers D6 Strength 4 hits with the Flaming Attacks special rule. This is a non-physical attack.

#field("UPGRADES", "")

- *Blessings of Asuryan:* The model gains the Always Strikes First special rule.
- *Cleansing Flames:* All the model's attacks (including Wake of Fire) gain +1 Strength against Daemons and Undead.
- *Frostheart Phoenix:* A Frostheart Phoenix loses the Flaming Attacks, Immunity (Flaming Attacks), Phoenix Reborn and Wake of Fire special rules. Instead, it gains the Ice Attacks and Natural Armour (5+) special rules. In addition, any enemy unit in base contact with one or more Frostheart Phoenixes suffers \-1 to its Strength (to a minimum of 1). This has no effect on models with Immunity (Ice Attacks).
- *Omen of Hope:* The model gains the Hold Your Ground (12) special rule.
- *Omen of Sacrifice:* All friendly units of High Elves within 12" gain the Hatred special rule. However, each unit suffers D6 Strength 3 Hits at the end of each round of close combat they are involved in (before Break tests are taken).

= SPECIAL CHARACTERS (LORDS)

#entry("TYRION", first: true)
#namecost("Defender of Ulthuan, Heir of Aenarion, Champion of the Everqueen", "")
#profile(
  (name: "Tyrion", m: 5, ws: 9, bs: 7, s: 4, t: 3, w: 3, i: 10, a: 5, ld: 10, points: 400),
  (name: "Malhandir (Elven Steed)", m: 10, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 7, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, High Elf)")
#field("MOUNT", "Malhandir (Animal)")
#field("BASE SIZE", "25x50, 30x60, 50x50")
#field("MAGIC ITEMS", "")

- *Sunfang:* Magic Weapon. Hits from Sunfang are resolved at +3 Strength and have the Flaming Attacks special rule. In addition, Sunfang's bearer can make a Strength 3 Breath Weapon attack once per game. Hits from this attack are magical, and have the Flaming Attacks special rule.
- *Dragon Armour of Aenarion:* Magic Armour. Dragon armour. The Dragon Armour of Aenarion grants Tyrion a 1+ armour save and a Ward save (4+).
- *Heart of Avelorn:* Talisman. The Heart of Avelorn gives Tyrion the Magic Resistance (2) special rule. In addition, if Tyrion suffers an unsaved Wound that would kill him (including unsaved Wounds that killed him as a result of the Killing Blow, Heroic Killing Blow or Multiple Wounds special rules), roll a D6 before removing him as a casualty; on a 2+ Tyrion negates the Wound and the Heart of Avelorn is destroyed. Otherwise, Tyrion is removed as a casualty as normal.

#field("SPECIAL RULES", "Curse of Aenarion (see Lord of Aenarion), Elven Grace, Martial Prowess, Valour of Ages")

- *Defender of Ulthuan:* If Tyrion is your Army's General, he has the Inspiring Presence (18) special rule in total.
- *Feint:* Tyrion may re-roll any failed rolls to Hit in Close Combat.
- *Riposte:* Tyrion has the Parry (6+) special rule, even while mounted. For each successful Parry made (every '6' rolled when making Ward saves), he may immediately make an additional Attack back at the model who struck the blow.

#entry("TECLIS")
#namecost("High Loremaster of Hoeth, Warden of the White Tower", "")
#profile(
  (name: "Teclis", m: 5, ws: 3, bs: 3, s: 2, t: 2, w: 3, i: 5, a: 1, ld: 10, points: 460),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Teclis is a Level 4 Wizard. He can either choose all of the spells in the Lore of High Magic, or one spell from")

each of the eight Winds of Magic.

#field("MAGIC ITEMS", "")

- *Sword of Teclis:* Magic Weapon. All hits from the Sword of Teclis wound on a 2+, and Wounds caused by it Ignores Armour saves.
- *Potion of Inner Strength:* Enchanted Item. One use only. This item can be used at the start of any turn. When Teclis does so, he will increase his Weapon Skill and Initiative to 6, and Strength, Toughness and Attacks to 3 for the remainder of the turn.
- *Moon Staff of Lileath:* Arcane Item. The staff gives Teclis 1 extra Power and Dispel dice in each Magic phase. Once per game, The Moon Staff of Lileath can unleash its full power. It can either be used at the start of any of Teclis' Magic phases, in which case a bonus power dice is added to every casting attempt Teclis makes that phase (at least one normal Power dice must be used), or if Teclis suffers a miscast he can choose to ignore it (before any roll on the Miscast table is made). In either case, his staff will cease to provide any additional dice for the rest of the battle.
- *Scroll of Hoeth:* Arcane Item. One use only. The Scroll of Hoeth follows the rules of Dispel Scrolls. In addition, immediately after the dispel has been resolved, both Teclis and the caster must roll a D6; if Teclis scores higher, the caster immediately forgets the spell; otherwise, nothing else happens.
- *War Crown of Saphery:* Arcane Item. The War Crown of Saphery allows Teclis to re-roll the result of any randomised spell effects (such as the number of hits inflicted by a magic missile).

#field("SPECIAL RULES", "Curse of Aenarion (see Lord of Aenarion), Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages")

#entry("FINUBAR THE SEAFARER")
#namecost("Phoenix King of Ulthuan", "")
#profile(
  (name: "Finubar", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 350),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC ITEMS", "")

- *Royal Sceptre of Ulthuan:* Magic Weapon. Additional hand weapon. The Royal Sceptre gives Finubar +1 Strength and the Flaming Attacks special rule. In addition, it contains a Bound Spell, Power Level 3. When cast, all enemy models in base contact suffer a Strength 5 Hit with the Flaming Attacks and Multiple Wounds (D3) special rules.
- *Crown of the Phoenix King:* Talisman. Enemy missile attacks suffer a \-1 To Hit penalty when firing at Finubar or any unit he is with. In addition, it makes Finubar and any unit of White Lions of Chrace that he joins Unbreakable. Finally, all friendly units within 6" of Finubar are Stubborn.

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

- *Phoenix King:* Finubar has a 5+ Ward save and the Immunity (Flaming Attacks, Psychology) special rule. In addition, if Finubar is included in your army, Phoenix Guard are taken as Special Units instead of Rare units.

#entry("ALARIELLE THE RADIANT")
#namecost("Everqueen of Avelorn", "")
#profile(
  (name: "Alarielle", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 1, ld: 10, points: 385),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Alarielle the Radiant is a Level 4 Wizard who uses spells from the Lore of Life, the Lore of Light and the Lore of High Magic. She can choose all of her spells from the same lore, or from two or more of the above lores in any")

combination.

#field("MAGIC ITEMS", "")

- *The Shieldstone of Isha*: Talisman. The Shieldstone of Isha grants Alarielle the Radiant and her unit a Ward save (5+) against any mundane attacks.
- *Stave of Avelorn*: Arcane Item. One use only. The Stave of Avelorn is used in the Magic phase. When used, it allows Alarielle to immediately attempt to cast a spell she has already cast that phase, even if the casting attempt failed, or was miscast. The spell is otherwise cast according to the normal rules.
- *Star of Avelorn*: Enchanted Item. At the start of your Movement phase, nominate a single friendly character within 12" – that model immediately regains a single Wound lost earlier in the battle. Alarielle can only restore her own Wounds if there is no other viable target within range.

#field("SPECIAL RULES", "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages")

- *Boon of Isha:* All attacks made by models in the Alarielle's unit adds +1 to all of its To Hit rolls. In addition, all models in her unit have the Immunity (Fear, Terror) and Magical Attacks special rules.
- *Chaos Bane:* At the start of each of Alarielle's Magic phases, before rolling for the Winds of Magic, every unit with the Daemonic special rule within 12" of Alarielle the Radiant suffers D6 Strength 4 hits, distributed as for shooting attacks. However, Alarielle suffers a
  - D3 penalty to her casting attempts if there is one or more models with the Daemonic special rule within 12".
- *Everqueen's Court Guards:* If Alarielle is with a unit of Sisters of Avelorn, the whole unit gains the Stubborn special rule. In addition, if Alarielle is included in your army, Sisters of Avelorn are taken as Special Units instead of Rare units.
- *Touch of the Everqueen:* If Alarielle's makes a successful roll To Hit in close combat, that model is reduced to Weapon Skill 1 for the remainder of that phase.

#entry("ELTHARION THE GRIM")
#namecost("Warden of Tor Yvresse", "")
#profile(
  (name: "Eltharion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 350),
  (name: "Stormwing (Griffon)", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: ""),
)
#field("TROOP TYPE", "Monstrous Creature (Special Character, High Elf)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Light lance/spear, Elven bow, heavy armour")
#field("MAGIC ITEMS", "")

- *Fangsword of Athel Tamarha:* Magic Weapon. Attacks made with the Fangsword are resolved at +2 Strength and Ignores Armour saves.
- *Helm of Yvresse:* Magic Armour. 6+ armour save. The Helm of Yvresse grants Eltharion a 5+ Ward save. In addition, Eltharion may re-roll any failed Leadership test.
- *Talisman of Hoeth:* Talisman. This item grants Eltharion the Magic Resistance (1) special rule. The Talisman of Hoeth also makes Eltharion a Level 2 Wizard, who uses spells from one of the eight Winds of Magic.

#field("MAGIC ITEMS", "")

- May be mounted on Stormwing +125 points

#field("SPECIAL RULES", "Fly (8), Hatred (Orcs & Goblins), Martial Prowess, Valour of Ages")

- *Silverin Guard:* If Eltharion the Grim is your Army General, you may upgrade one unit of Sentinels to Silverin Guard for a cost of +2 points per model. This unit has heavy armour and the Magic Resistance (1) special rule.

#entry("ELTHARION THE BLIND")
#namecost("Bladelord of Hoeth", "")
#profile(
  (name: "Eltharion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 235),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *The White Sword:* Magic Weapon. This weapon gives Eltharion the Killing Blow special rule.

#field("SPECIAL RULES", "Hatred (Dark Elves, Orcs & Goblins), Immunity (Psychology), Martial Prowess, Swordmaster, Valour of Ages")

- *The Dark Within:* Eltharion and any unit he joins is subject to the Berserk Rage part of the Frenzy special rule.
- *Great Leap:* At the start of any round of combat, before attacks are allocated or challenges issued, Eltharion may be moved to anywhere in the same combat (even leaving one unit and joining another, or becoming an independent character). He may not use this to position himself out of combat, or if he is already involved in a challenge.
- *Impenetrable defence:* Eltharion has the Dodge (5+) and Immunity (Killing Blow) special rules.
- *Lord of Hoeth:* If Eltharion the Blind is your General, you may take one unit of Swordmasters as a Core choice. Any unit of Swordmasters joined by Eltharion becomes Stubborn.
- *Swordmaster Fighting Styles:* At the start of each round of combat, Eltharion must declare which fighting style below he is using for that round.
  - *Way of the Willow Branch:* Any close combat attacks against Eltharion require 6's To Hit.
  - *Way of the Winter Breeze:* Eltharion gains +1 To Hit and ignores Parry saves.
  - *Way of the Swooping Eagle:* Eltharion gains +2 Strength.
  - *Way of the Breaking Storm:* Eltharion gains +2 Attacks.

#entry("ALITH ANAR")
#namecost("The Shadow King, Prince of Nagarythe", "")
#profile(
  (name: "Alith Anar", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 4, ld: 10, points: 250),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("MAGIC ITEMS", "")

- *The Moonbow: Magic Weapon.* The Moonbow is a bolt thrower with the profile given below. Alith Anar can shoot the Moonbow even if he moves (but not if he marches).

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "7", "Armour Piercing (1), Multiple Wounds (D3), Quick to Fire"))

Any unit of Dark Elves that suffers one or more casualties from the Moonbow also suffers a \-1 penalty to their Leadership until the end of the phase.

- *Stone of Midnight:* Talisman. The Stone of Midnight grants Alith Anar a 4+ Ward save. In addition, enemies suffer \-1 To Hit when shooting at Alith Anar or any unit he has joined.
- *The Shadow Crown:* Enchanted Item. Alith Anar and any unit he joins have the Swiftstride special rule.

#field("SPECIAL RULES", "Elven Grace, Hatred (Dark Elves), Loner, Martial Prowess, Scouts, Valour of Ages")

- *The Grey:* If Alith Anar is included in your army, you may upgrade one unit of Shadow Warriors to The Grey for a cost of +1 point per model. If this unit is wholly within a terrain feature, enemies cannot draw Line of Sight to them unless they are within 12".

#entry("IMRIK")
#namecost("Lord of Dragons, Prince of Caledor", "")
#profile(
  (name: "Imrik", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 5, ld: 10, points: 590),
  (name: "Minaithir (Star Dragon)", m: 6, ws: 7, bs: 0, s: 7, t: 7, w: 7, i: 2, a: 6, ld: 9, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, High Elf)")
#field("MOUNT", "Minaithir (Dragon)")
#field("BASE SIZE", "50x50, 50x100 or 60x100")
#field("MAGIC ITEMS", "")

- *Star Lance:* Magic Weapon. Heavy lance. Imrik gains the Mighty Blow (1) and Ignores Armour saves special rules when charging.
- *Armour of Caledor:* Magic Armour. Dragon Armour. The Armour of Caledor grants a 6+ Ward Save.
- *Dragonhorn:* Enchanted Item. One use only. At the start of any of his own turns, Imrik may sound the Dragonhorn. This fills his army with pride, and all friendly High Elf units may re-roll any failed Rally and Psychology tests until the start of their next turn.

#field("SPECIAL RULES", "Fiery Breath, Fly (7), Martial Prowess, Natural Armour (3+), Valour of Ages.")

- *Dragon Kin:* No Dragons will fight Imrik. If they are in base contact with other models (and not in a challenge) then they fight them instead, otherwise they may do nothing. Their riders (if they have any) still fight as normal.
- *The Fireborn:* If Imrik is your Army General, you may upgrade one unit of Dragon Princes of Caledor to The Fireborn for a cost of +2 points per model. This unit has the Flaming Attacks and Multiple Wounds (2) special rules.
- *Loyal Bond:* Whenever Imrik takes an unsaved Wound, Minaithnir will become subject to Hatred against the model or unit that inflicted the Wound for the remainder of the turn.

#entry("ALTHRAN STORMRIDER")
#namecost("Elven Prince", "")
#profile(
  (name: "Althran Stormrider", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 205),
  (name: "Sharpclaw (Griffon)", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Shield")
#field("MAGIC ITEMS", "")

- *The Stormrider's Sword:* Magic Weapon. This Sword gives Althran the Multiple Wounds (2) special rule.
- *Armour of Protection:* Magic Armour. Heavy armour. The Armour of Fortune grants Althran a 5+ Ward save.

#field("OPTIONS", "")

- May be mounted on Sharpclaw +125 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Valour of Ages")

- *Glory of the Elves:* Once per game, declared at the start of any close combat phase, Althran and all friendly units with the Martial Prowess special rule within 6" of him gain +1 To Hit for the duration of that phase.

#entry("BELANNAER THE WISE")
#namecost("Loremaster of the White Tower", "")
#profile(
  (name: "Belannaer the Wise", m: 5, ws: 6, bs: 5, s: 4, t: 3, w: 3, i: 9, a: 3, ld: 10, points: 405),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("MAGIC", "Belannaer is a Level 3 Wizard. Instead of choosing spells normally, he always knows the eight Signature")

Spells from the Winds of Magic.

#field("MAGIC ITEMS", "")

- *Blade of Bel-Korhadris*: Magic Weapon. This blade has the Ignore Armour Saves special rule against non- magical armour. In addition, once per battle, at the beginning of any close combat phase, Belannaer can choose to gain +D6 Attacks and the Flaming Attacks special rule that turn.
- *Cloak of Stars*: Talisman. All shooting and close combat Attacks that strike Belannaer will be resolved at \-1 Strength (with a minimum of 1).
- *Staff of Cyeos:* Arcane Item. Belannaer may add an additional free Power Dice to one spell attempt each turn.
- *Book of the Phoenix*: Enchanted Item. At the beginning of the battle Belannaer may read one of the verses of the book. The effect will last for the end of the game, unless the Book is destroyed or nullified by some means_._
  - *The Verse of Destruction:* This verse will double Belannaer's Strength characteristic.
  - *The Verse of Flame Eternal:* This verse will allow Belannaer to automatically cast one of his spells without using any power dice once per Magic phase. It can still be dispelled as normal, at a Power Level of 5.
  - *The Verse of Rebirth:* The first time Belannaer is killed, he causes a Flaming Strength 6 hit on each model, friend or foe, in base-to-base contact with him, and remain alive with D3 wounds. This does not apply if Belannaer is caught in pursuit.

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Swordmaster, Valour of Ages")

- *Glamour of Hoeth:* Enemies who declare a charge against Belannaer or his unit must re-roll successful charge distance rolls.

#entry("SEA LORD AISLINN")
#namecost("Master of the Mists, Herald of Mathlann", "")
#profile(
  (name: "Sea Lord Aislinn", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 3, i: 7, a: 3, ld: 10, points: 180),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, medium armour, shield")
#field("OPTIONS", "")

- May choose one of the following:
  - Spear +3 points
  - Light lance +3 points
- May be mounted on a Lothern Skycutter (replacing one of the crew) +75 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Naval Discipline (see Lothern Sea Helm), Valour of Ages, Windrider (see Lothern Sea Helm)")

- *Master of the Mists:* Immediately after both armies have been fully deployed (including scouts), each unit of Lothern Sea Guards and Eagle Claw Bolt Throwers in Aislinn's army gets to fire as if it was the Shooting phase, adding +D6" to their range (roll for each unit).
- *The Storm Riders:* If Sea Lord Aislinn is your Army General, you may upgrade one unit of Lothern Sea Guard to Storm Riders for a cost of +1 point per model. This unit has the Hatred special rule, and causes Fear in all Dark Elves.

= SPECIAL CHARACTERS (HEROES)

#entry("KORHIL LIONMANE", first: true)
#namecost("Charandis-bane, Hunter Captain of the White Lions", "")
#profile(
  (name: "Korhil", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 175),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC ITEMS", "")

- *Chayal:* Magic Weapon. Two hand weapons. Close combat attacks made with Chayal are resolved at +2 Strength and have the Killing Blow special rule.
- *Pelt of Charandis:* Magic Armour. The Pelt of Charandis have the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+2/5+", "Immunity (Poisoned Attacks)"))
#field("OPTIONS", "")

- May be mounted on a Lion Chariot of Chrace (replacing one of the crew) +95 points

#field("SPECIAL RULES", "Elven Grace, Forest Strider, Martial Prowess, Multiple Wounds (2), Stubborn, Valour of Ages")

- *Hunter Captain:* Korhil may make use of one the following abilities in close combat in the situations described below:
  - *Lion Rampant:* Lion Rampant can be used in a turn when choosing "Hold" as a charge reaction. Korhil gains the Parry (6+) special rule for the duration of the close combat phase.
  - *Lion Leaping:* Lion Leaping can be used in a turn when Korhil is charging. Enemy models in base contact are subject to the Always Strikes Last special rule for the duration of the close combat phase.
  - *Lion Claw:* Lion Claw can be used fighting against Monstrous Infantry, Monstrous Beasts and Monstrous Cavalry. Against these Troop Types, Korhil has the Heroic Killing Blow special rule in the first turn of close combat.
- *The Puremane Company:* Unless Korhil is mounted on a Lion Chariot of Chrace, he must be accompanied by a unit of White Lions of Chrace chosen from the army list as normal. This unit has the Immunity (Fear) special rule. Korhil may never choose to leave this unit.

#entry("CARADRYAN OF THE FLAME")
#namecost("Chosen of Asuryan, Captain of the Phoenix Guard", "")
#profile(
  (name: "Caradryan", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 200),
  (name: "Ashtari (Frostheart Phoenix)", m: 2, ws: 6, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 4, ld: 9, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("MAGIC ITEMS", "")

- *The Phoenix Blade:* Magic Weapon. Polearm. Close combat attacks made with the Phoenix Blade have the Flaming Attacks and Multiple Wounds (D3) special rules.

#field("OPTIONS", "")

- May be mounted on Ashtari +260 points

#field("SPECIAL RULES", "Blessings of Asuryan (see Anointed of Asuryan), Elven Grace, Fear, Magic Resistance (1), Martial Prowess, Valour of Ages, Witness to Destiny (see Anointed of Asuryan)")

- *Mark of Asuryan:* If Caradryan is slain in close combat, the unit that killed him immediately suffers D3 Wounds which Ignores Armour Saves. If Caradryan is killed in a challenge, then only his opponent takes these Wounds – any excess Wounds caused by the Mark of Asuryan count towards overkill.
- *Keepers of the Flame:* Unless Caradryan is mounted on Ashtari, he must be accompanied by a unit of Phoenix Guard chosen from the army list as normal. This unit has the Magical Attacks special rule. Caradryan may never choose to leave this unit.

#entry("PHYTRION")
#namecost("Chosen of Tor Yvresse", "")
#profile(
  (name: "Phytrion", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 120),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Shield")
#field("MAGIC ITEMS", "")

- *Sword of Retaliation:* Magic Weapon. All enemy models from the Forces of Destruction suffer \-1 To Hit Phytrion in close combat.
- *Moonshade Armour:* Magic Armour. Heavy armour. The Moonshade Armour gives Phytrion a 5+ Ward Save.

#field("SPECIAL RULES", "Elven Grace, Guardian of Yvresse, Hatred (Warriors of Chaos), Martial Prowess, Valour of Ages")

- *Favour of Destiny:* Roll a D3 at the start of the game; this is the number of dice that Phytrion may re-roll of either To Hit, To Wound, Armour Saves or Ward Saves.

#entry("GILEAD & FITHVAEL")
#namecost("Last of Tor Anrok", "")
#profile(
  (name: "Gilead", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 170),
  (name: "Shadowfast", m: 8, ws: 10, bs: 6, s: 4, t: 3, w: 3, i: 10, a: 8, ld: 10, points: "-"),
  (name: "Fithvael", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 70),
)
#field("TROOP TYPE", "Infantry (Special Character, High Elf)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon, Elven longbow, light armour, shield")
#field("MAGIC ITEMS", "")

- *Blade of Galeth:* Magic Weapon. All attacks made by Gilead with the Blade of Galeth have the Armour Piercing (1) special rule.

#field("SPECIAL RULES", "Elven Grace, Martial Prowess, Multiple Shots (3) (Fithvael only), Skirmishers, Valour of Ages")

- *Doom-saga:* At the beginning of the battle, after deployment, nominate one enemy character. Against this particular target, Gilead re-rolls all failed rolls To Hit and To Wound.
- *Melancholic Distractions*: At the start of each of his turns, Gilead must take a Leadership test, unless he is engaged in combat. If this test is failed, roll a dice. On a 1\-3 Gilead cannot move that turn. On a 4\-6 Gilead must move his full movement for that turn towards the closest table edge. If he leaves the table, he is treated as a casualty and will not return. If Gilead is engaged in combat, he will fight as normal.
- *Shadowfast*: Once per game, at the start of any of the High Elf player's movement phase, Gilead may enter Shadowfast. Until the start of his next turn, Gilead's stat line will change to his Shadowfast characteristics. In addition, while Shadowfast, Gilead also gains the Always Strikes First and Dodge (4+) special rules due to his inhuman speed.
