// Orcs & Goblins 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "orcs-goblins",
  army: "Orcs & Goblins",
  version: "1.6",
  layout: "army",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Orcs & Goblins 1.6")

#cover(
  title: "Orcs & Goblins",
  subtitle: "Warhammer Armies Project · 1.6",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Orcs & Goblins*, version 1.6 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in an Orc & Goblin army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Orc & Goblin units, and these are detailed here.

#namecost("ANIMOSITY", "")

Units with this special rule must test for Animosity in the Charge sub-phase after all normal charges have been declared during each of your turns, unless any of the following applies:

- The unit has fewer than 5 models.
- The unit has declared a charge this turn.
- The unit is engaged in close combat.
- The unit is garrisoning a building.
- The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Animosity test and must roll on the Animosity table below:

#chart((("D6", "Result"), ("1", "Get 'Em: For every complete rank the unit
has, it suffers D3 hits at the Strength
characteristic of the majority of the models in
the unit. The unit may not voluntarily move
or shoot this turn. Wounds caused by the Get
'Em result never cause Panic tests."), ("2-4", "Squabble: If it is possible to do so, the unit
must declare a charge against the closest
viable enemy unit. If the unit is unable to
declare a charge, the unit may not move in
the Movement phase or shoot this turn."), ("5-6", "We'll Show 'Em: Pivot the unit on the spot
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
#chartlabel("ARMED TO DA TEEF")

If a model with this special rule has more than one weapon and/or a shield, they may choose which weapon combination they want to use at the start of each round of close combat.

#namecost("GREENSKIN RACES", "")

Characters may only join units of the same race (such as Common Orc, Savage Orc, Black Orc, Common Goblin, Forest Goblin, Night Goblin or Snotling). Black Orc characters may still join units of Common Orcs, however.

#namecost("FEAR ELVES", "")

Models with this special rule treat all Elves as causing Fear against them.

#namecost("MAGIC MUSHROOMS", "")

A Wizard with this special rule may eat a Magic Mushroom once per Magic phase, before casting a spell. This adds another D6 to the casting result. This dice does not count as a power dice, and cannot contribute to Ultimate Power. However, if you roll a 1 on this dice you must roll a further D6. On a roll of 4+ nothing else happens, but on a roll of 1\-3 the Wizard suffers a Wound which Ignores Armour Saves, and the spell automatically fails.

#namecost("QUELL ANIMOSITY", "")

If a model with this special rule is in a unit that fails an Animosity test, they immediately inflicts D6 hits at their base Strength on their unit, distributed as shooting attacks. After removing casualties, the unit is treated as if the Animosity test was passed. These hits cannot be allocated to characters with this special rule, and do not cause a Panic test.

#namecost("SIZE MATTERS", "")

Models with this special rule treat Goblins and Snotlings of all types as Expendable.

#namecost("SPIDER VENOM", "")

A Wizard with this special rule may re-roll one dice per Magic phase when casting spells. However, any time they Miscast, they will also count as having failed a Stupidity test (if they survive).

#namecost("WAAAGH!", "")

If a model with this special rule is your Army General, then once per game he may call a Waaagh! The Waaagh! may only be called if the model first declares a charge, and must be announced immediately after making the charge declaration, before any charge reaction takes place. In the turn a Waaagh! is called, every combat involving Orcs in the army adds +1 to its combat resolution for the rest of the player turn. The General himself, and any unit he joins, adds +D3 to their combat resolution instead. In addition, every unit adds their rank bonus to the result rolled on the Animosity table.

#namecost("WALL-CRAWLER", "")

Models with this special rule has the Forest Strider and Obstacle Strider special rules. In addition, they treat ungarrisoned buildings as open terrain for the purposes of movement. They may not finish their movement inside or on top of an ungarrisoned building.

#namecost("WARPAINT", "")

Models with this special rule gain a 6+ Ward save.

#namecost("WAAAGH! MISCAST", "")

If an Orc or Goblin Wizard rolls a Miscast, they roll on the following table instead of the normal Miscast Table used by other wizards:

#chart((("D6", "Result"), ("1-3", "FZZZZZZAP! Resolve the effects as if the
Wizard had cast the Gaze of Mork spell and
then deduct D3 dice from the power pool."), ("4-5", "\"Yuuurgh!\" The Wizard is subject to the
Frenzy and Stupidity special rules for the
rest of the game, although he may never
lose his Frenzy. He may cast no further
spells this turn."), ("6-7", "\"I've Forgot!\" The Wizard may not cast
this spell for the rest of the game. In
addition, the resulting brainstorm
permanently reduces his Wizard Level by 1
(to a minimum of 0) and he may not cast
any further spells this phase."), ("8-9", "\"Me 'Ead 'Urts!\" All Orcs and Goblins
(friend or foe) within 12\" that are capable
of channelling power or dispel dice suffer a
Strength 4 hit which Ignores Armour saves.
In addition, D3 dice are lost from the pool."), ("10-11", "\"I Fink I'm Gonna…\": The Wizard
suffers a Strength 10 hit and all Orc and
Goblin units (friend or foe) within 12\"
suffer D6 Strength 5 hits which Ignores
Armour saves. In addition, D3 dice are lost
from the pool."), ("12+", "'EADBANG! Place the large round
template over the Wizard. Any model under
the template must pass a Toughness test or
also be killed outright with no armour saves
allowed. After resolving hits from this
template, removing the Wizard as casualty
with no saves allowed. In addition, D3 dice
are lost from the power pool.")))
]

= LORE OF DA BIG WAAAGH!

#columns(2)[
#namecost("POWER OF DA WAAAGH!", "")
#namecost("Lore Attribute", "")

A Wizard using this lore gains +1 to cast spells for each friendly Orc unit within 24" that is in close combat and has a Unit Strength of 10 of more. Conversely, a Wizard using this lore suffers \-1 to cast spells for each friendly Orc unit within 24" that is fleeing and has a Unit Strength of 10 or more.

#namecost("WRATH OF GORK", "")
#namecost("Signature Spell Cast on 5+", "")

_Wrath of Gork_ is a *magic missile* with a range of 24" that inflicts D3+1 Strength 4 hits for every friendly unit of 10 or more Orc models within 6" of the caster.

#namecost("BASH 'EM LADZ", "")
#namecost("Level 1 Cast on 6+", "")

_Bash 'em Ladz_ is an *augment* spell with a range of 18". The target unit may re-roll To Hit rolls in close combat until the start of the caster's next Magic phase.

#namecost("FISTS OF GORK", "")
#namecost("Level 1 Cast on 6+", "")

Remains in play. _Fists of Gork_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard gains +2 Strength and +3 Attacks.

#namecost("'ARD AS NAILS", "")
#namecost("Level 1 Cast on 7+", "")

_'Ard as Nails_ is an *augment* spell with a range of 18". All successful To Wound rolls against the target must be re-rolled until the start of the caster's next Magic phase.

#namecost("BIG GREEN CHOPPA", "")
#namecost("Level 2 Cast on 7+", "")

_Big Green Choppa_ is an *augment* spell with a range of 18". The target unit gains +1 Strength until the start of the caster's next Magic phase.

#namecost("'ERE WE GO!", "")
#namecost("Level 2 Cast on 7+", "")

_'Ere We Go!_ is a *conveyance* spell that targets all Orc units within 12". The targets add +D6" to their charge distance until the start of the caster's next Magic phase.

#namecost("GREEN PUKE", "")
#namecost("Level 2 Cast on 7+", "")

_Green Puke_ is a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models hit suffer a Strength 3 hit with the Armour Piercing (2) special rule.

#namecost("GAZE OF MORK", "")
#namecost("Level 3 Cast on 8+", "")

_Gaze of Mork_ is a *direct damage* spell. Extend a straight line, 30" in length, within the caster's forward arc and directly away from his base. Any model whose base falls under the line suffers a Strength 5 hit.

#namecost("'EADBUTT", "")
#namecost("Level 3 Cast on 9+", "")

_'Eadbutt_ is a *direct damage* spell with a range of 12". Choose a single enemy model, even a character in a unit ("Look Out, Sir!" cannot be used). The target suffers a Strength 4 hit with the Ignores Armour Saves and Multiple Wounds (D3) special rules.

#namecost("RAISE GREAT IDOL", "")
#namecost("Level 3 Cast on 10+", "")

_Raise Great Idol_ is *summoning* spell with a range of 18". This spell summons an Idol of Gork. Units that start the turn within 6" of the Idol can re-roll failed charge distance rolls. In addition, friendly units of Orcs within 6" may reroll failed To Hit rolls.

#namecost("WAAAGH!", "")
#namecost("Level 4 Cast on 13+", "")

_WAAAGH!_ is a *conveyance* spell that targets all Orc units within 12". The target units will immediately make a move using the Random Movement (2D6) special rule towards the nearest enemy unit within each unit's Line of Sight. If no enemy units are within Line of Sight, they will move directly forward instead.

#namecost("WALLOPIN' KRUNCH", "")
#namecost("Level 4 Cast on 14+", "")

_Wallopin' Krunch_ is a *direct damage* spell. Place the small round template anywhere within 18" of the Wizard – it then scatters D6". All models hit by the template suffer a Strength 6 hit with the Multiple Wounds (D3) special rule. In addition, all units within 3" of the template suffer D6 Strength 3 hits.

#namecost("FOOT OF GORK", "")
#namecost("Level 4 Cast on 15+", "")

_Foot of Gork_ is a *direct damage* spell. Place the small round template anywhere within 24" of the Wizard – it then scatters D6". All models hit by the template suffer a Strength 5 hit with the Multiple Wounds (D3) special rule. After resolving the effects of the spell, roll a D6 and consult the following table:

#chart((("D6", "Result"), ("1", "Your opponent places the template anywhere
on the table and resolves the effect of the
spell again. The spell then ends."), ("2-3", "The spell ends without further effect."), ("4-6", "Place the template and resolve the effect of
the spell again. After resolving the effects of
this stomp, roll again on this table.")))
]

= LORE OF DA SAVAGE WAAAGH!

#columns(2)[
#namecost("POWER OF DA WAAAGH!", "")
#namecost("Lore Attribute", "")

A Wizard using this lore gains +1 to cast spells for each friendly Orc unit within 24" that is in close combat and has a Unit Strength of 10 of more. Conversely, a Wizard using this lore suffers \-1 to cast spells for each friendly Orc unit within 24" that is fleeing and has a Unit Strength of 10 or more.

#namecost("BRUTAL BEAST SPIRITS", "")
#namecost("Signature Spell Cast on 6+", "")

_Brutal Beast Spirits_ is an *augment* spell with a range of 18" that targets Orcs. The unit gains +1 To Hit in close combat and may re-roll their pursuit distance until the start of the caster's next Magic phase.

#namecost("KUNNIN' BEAST SPIRITS", "")
#namecost("Level 1 Cast on 5+", "")

_Kunnin' Beast Spirits_ is an *augment* spell with a range of 18" that targets Orcs. Your opponent must re-roll all To Hit rolls of 6 that target the unit with missile attacks and in close combat until the start of the caster's next Magic phase.

#namecost("GLOWY GREEN TUSKS", "")
#namecost("Level 1 Cast on 6+", "")

_Glowy Green Tusks_ is an *augment* spell with a range of 18" that targets Orcs and their mounts. The target gains the Frenzy and Magical Attacks special rules until the start of the caster's next Magic phase.

#namecost("BREATH OF MORK", "")
#namecost("Level 2 Cast on 7+", "")

_Breath of Mork_ is a *conveyance* spell with a range of 18". The target immediately makes a normal Fly (10) move (not march) as if it was the Remaining Moves phase.

#namecost("FALLIN' FISTS", "")
#namecost("Level 2 Cast on 7+", "")

_Fallin' Fists_ is a *direct damage* spell with a range of 24". The target unit suffers 3D6 Attacks with Weapon Skill 3 and Strength Hits 4, resolved as close combat attacks.

#namecost("BONE KRUSHA", "")
#namecost("Level 3 Cast on 8+", "")

_Bone Krusha_ is a *magic missile* spell with a range of 24". The closer the target is to the caster, the more powerful the attack will be: if the target is within 12" of the caster, it suffers 2D6 Strength 5 Hits; if the target is between 12" and 18" away, it instead suffers D6 Strength 5 Hits; if the target is more than 18" away, it only suffers D3 Strength 5 Hits.

#namecost("SQUIGGLY CURSE", "")
#namecost("Level 3 Cast on 9+", "")

_Squiggly Curse_ is a *direct damage* spell with a range of 12" and targets a single enemy model (even a character in a unit). Roll a D6; on a 1 it has no effect, on a 2 to 3 that model suffers one Wound, on a 4 to 5 it suffers D3 Wounds and on a 6 it suffers D6 Wounds. These Wounds have the Ignores Armour Saves special rule. Each time a model is slain by Squiggly Curse, you can add +2 to any further casting attempts made by the caster this Magic Phase.

#namecost("GORK'S WAR CRY", "")
#namecost("Level 4 Cast on 11+", "")

_Gork's War Cry_ is a *direct damage* spell with a range of 18". The target suffers D6 Strength 5 which Ignores Armour Saves. In addition, the target halves all their Movement and is subject to the Always Strikes Last special rule until the start of the caster's next Magic phase.

#namecost("THE EVIL SUN", "")
#namecost("Level 4 Cast on 15+", "")

Remains in play. _The Evil Sun_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 5 hit. In addition, friendly units of Savage Orcs within 6" of the Evil Sun template may re-roll To Hit rolls of 1.
]

= LORE OF DA LITTLE WAAAGH!

#columns(2)[
#namecost("SNEAKY STEALIN'", "")
#namecost("Lore Attribute", "")

When a Spell of da Little Waaagh! is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.

#namecost("VINDICTIVE GLARE", "")
#namecost("Signature Spell Cast on 6+", "")

_Vindictive Glare_ is a *magic missile* with a range of 24" and causes 2D6 Strength 3 hits.

#namecost("OI! GERROFF!", "")
#namecost("Level 1 Cast on 5+", "")

_Oi! Gerroff!_ is a *magic missile* with a range of 18". The target is 'pushed' 2D3" directly away from the caster (it does not change facing). If the target comes into contact with impassable terrain or another unit it stops 1" away and both units suffer D6 Strength 3 hits. Targets that cannot move are not pushed back at all, but still suffer D6 Strength 3 hits.

#namecost("SNEAKY STABBIN'", "")
#namecost("Level 1 Cast on 5+", "")

_Sneaky Stabbin'_ is an *augment* spell with a range of 24" that targets Goblins. The target unit's close combat attacks have the Armour Piercing (1) special rule until the start of the caster's next Magic phase. In addition, while the spell is in effect, they can re-roll all failed To Hit and To Wound rolls when attacking in close combat against an enemy's flank or rear.

#namecost("BRAIN BURSTA", "")
#namecost("Level 1 Cast on 6+", "")

_Brain Bursta_ is a *direct damage* spell with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers a Strength 5 hit.

#namecost("MORK SAVE UZ!", "")
#namecost("Level 2 Cast on 6+", "")

_Mork Save Uz!_ is an *augment* spell with a range of 24" that targets Orcs or Goblins. The target unit gains the Magic Resistance (5) special rule until the start of the caster's next Magic phase.

#namecost("GAZE OF GORK", "")
#namecost("Level 2 Cast on 8+", "")

_Gaze of Gork_ is a *direct damage* spell. Extend a straight line, 24" in length, within the caster's forward arc and directly away from his base. Any model whose base falls under the line suffers a Strength 3 hit with the Ignores Armour Saves special rule.

#namecost("GORK'LL FIX IT", "")
#namecost("Level 2 Cast on 8+", "")

_Gork'll Fix It_ is a *hex* spell with a range of 24". The target unit must re-roll any of its To Hit, To Wound and armour save rolls of 6 (in shooting and close combat) until the start of the caster's next Magic phase.

#namecost("THE HAND OF GORK", "")
#namecost("Level 3 Cast on 8+", "")

_The Hand of Gork_ is a *conveyance* spell with a range of 24". The target is immediately picked up and may be moved to any point on the battlefield within 4D6" of its original position, just like a summoning spell.

#namecost("ITCHY NUISANCE", "")
#namecost("Level 3 Cast on 8+", "")

_Itchy Nuisance_ is a *hex* spell with a range of 24". Roll a D6. The target unit immediately reduces its Movement and Initiative by this number (to a minimum of 1), until the start of the caster's next Magic phase.

#namecost("SNEAKY DISTRACTION", "")
#namecost("Level 3 Cast on 8+", "")

_Sneaky Distraction_ is a *hex* spell that targets all enemy units within 12" of the caster. The targets suffer \-1 To Hit with missile attacks and in close combat until the start of the caster's next Magic phase.

#namecost("NIKKIT! NIKKIT!", "")
#namecost("Level 4 Cast on 11+", "")

_Nikkit! Nikkit!_ is a *direct damage* spell with a range of 12" that targets a single enemy character (even a character in a unit). If the target has one or more magic items, randomly select one of them – that item is stolen on the roll of 3+. If the caster does not already have a magic item of this type they can now use it, otherwise it is destroyed. In addition, the target suffers D3 Strength 4 Hits which Ignores Armour Saves.

#namecost("THE GREAT GREEN SPITE", "")
#namecost("Level 4 Cast on 12+", "")

_The Great Green Spite_ is a *direct damage* spell with a range of 24". The target enemy unit suffers D6 Strength 4 hits with the Armour Piercing (1) special rule for every 10 points of Unit Strength the Wizard and any unit they are with have, up to a maximum of 4D6.

#namecost("MORK WANTS YA!", "")
#namecost("Level 4 Cast on 13+", "")

_Mork Wants Ya!_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target suffers D3 Strength 10 hits.
]

= LORE OF DA BAD MOON

#namecost("SNEAKY STEALIN'", "")
#namecost("Lore Attribute", "")

When a Spell of da Bad Moon is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.

#namecost("SPORE MAWS", "")
#namecost("Signature Spell Cast on 5+", "")

Remains in play. _Spore Maws_ is an *augment* spell with a range of 18". Each enemy unit in base contact with the target unit immediately suffers 3D6 Strength 3 hits at the end of each Magic phase.

#namecost("SQUIG LURE", "")
#namecost("Level 1 Cast on 5+", "")

_Squig Lure_ is a *conveyance* spell with a range of 24" that targets Squigs. The target immediately makes a Random Move (2D6) straight forward.

#namecost("MESMERISE", "")
#namecost("Level 1 Cast on 6+", "")

_Mesmerise_ is a *magic missile* with a range of 24". The target cannot choose to charge, cast spells or shoot at the Wizard or any unit they are with until the start of the caster's next Magic phase.

#namecost("NIK MAGIC", "")
#namecost("Level 2 Cast on 6+", "")

_Nik Magic_ is a *hex* spell with a range of 24" that targets a single Wizard, even if in a unit. Choose one spell the target knows and roll a D6; on 1\-4 they cannot use that spell in their next Magic Phase, on a 5\-6 they cannot attempt to cast this spell for the remainder of the game.

#namecost("FACE OF DA BAD MOON", "")
#namecost("Level 2 Cast on 7+", "")

Remains in play. _Face of da Bad Moon_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard gains the Terror special rule and all enemy units with Line of Sight to it suffer \-1 Leadership.

#namecost("BAD MOON RIZIN'", "")
#namecost("Level 3 Cast on 8+", "")

_Bad Moon Rizin'_ is a *hex* spell with a range of 24". The target unit is subject to the Always Strikes Last special rule until the start of the caster's next Magic phase.

#namecost("CALL DA MOON", "")
#namecost("Level 3 Cast on 10+", "")

_Call da Moon_ is a *direct damage* spell with a range of 36". Place the small round template with the centre anywhere within this range; it scatters and inflicts damage like a Stone Thrower. If a misfire is rolled, centre the template over the caster instead.

#namecost("NIGHT SHROUD", "")
#namecost("Level 4 Cast on 12+", "")

_Night Shroud_ is an *augment* spell that is cast on the Wizard itself. All missile attacks targeted against friendly units within 12" of the caster suffer a \-1 penalty To Hit until the start of the caster's next Magic phase. In addition, all models in any enemy unit that charges into base contact with the Wizard or the unit they are with while the spell is in effect must take a Dangerous Terrain test.

#namecost("CURSE OF DA BAD MOON", "")
#namecost("Level 4 Cast on 15+", "")

Remains in Play. _Curse of da Bad Moon_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Characteristic test or suffer a Wound which Ignores Armour Saves. The type of Characteristic test is determined by rolling on the following chart. Roll once each Magic phase, just before moving the template, and apply the result to all models affected by the curse in that Magic phase.

#chart((("D6", "Characteristic"), ("1-2", "Initiative"), ("3-4", "Strength"), ("5-6", "Toughness")))

= LORE OF DA SPIDER GOD

#namecost("SNEAKY STEALIN'", "")
#namecost("Lore Attribute", "")

When a Spell of da Spider God is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.

#namecost("VENOMOUS SPIDERLINGS", "")
#namecost("Signature Spell Cast on 5+", "")

_Venomous Spiderlings_ is a *direct damage* spell with a range of 24". The target suffers 2D6 Strength 1 Hits with the Poisoned Attacks special rule.

#namecost("CHITINOUS ARMOUR", "")
#namecost("Level 1 Cast on 5+", "")

_Chitinous Armour_ is an *augment* spell with a range of 18". The target gains the Natural Armour (6+) special rule until the start of the caster's next magic phase. If the target is a Forest Goblin, they gain Natural Armour (5+) instead.

#namecost("SPEED OF DA SPIDER GOD", "")
#namecost("Level 1 Cast on 6+", "")

_Speed of da Spider God_ is an *augment* spell with a range of 18" that targets Goblins. The target gains the Always Strikes First and Wall-crawler special rules until the start of the caster's next Magic phase. If the target already has the Wall-crawler special rule, they gain +1 Movement instead.

#namecost("DEADLY WEBBING", "")
#namecost("Level 2 Cast on 7+", "")

_Deadly Webbing_ is a *hex* spell with a range of 24". The target treats all terrain as Dangerous Terrain for all Movement and cannot march until the start of the caster's next Magic phase.

#namecost("SCUTTLING TERRORS", "")
#namecost("Level 3 Cast on 7+", "")

_Scuttling Terrors_ is a *conveyance* spell with a range of 18" that targets Goblins. The target unit may immediately make a Move as if it were the Remaining Moves phase.

#namecost("WEB OF FEAR", "")
#namecost("Level 3 Cast on 7+", "")

_Web of Fear_ is a *hex* spell that affects all enemy units within 18". Until the start of the caster's next Magic phase, the targets treats all Spider Swarms and Giant Spiders as causing Fear, Gigantic Spiders as causing Terror, and must re-roll successful Terror tests from Arachnarok Spiders.

#namecost("GIFT OF DA SPIDER GOD", "")
#namecost("Level 3 Cast on 10+", "")

_Gift of da Spider God_ is an *augment* spell with a range of 18" that targets Goblins and their mounts. The target gains the Poisoned Attacks and Regeneration (6+) special rules until the start of the caster's next Magic phase.

#namecost("CURSE OF DA SPIDER GOD", "")
#namecost("Level 4 Cast on 11+", "")

_Curse of da Spider God_ is a *hex* spell with a range of 24". The target must re-roll successful To Hit rolls (in shooting and close combat) and armour saves until the start of the caster's next Magic phase.

#namecost("SCUTTLETIDE", "")
#namecost("Level 4 Cast on 12+", "")

Remains in Play. _Scuttletide_ is a *magical vortex* that uses the large round template. Any model touched by the template at any point during its move suffers a Strength 2 Hit with the Poisoned Attacks special rule.

= LORE OF TROLL MAGIC

#namecost("BIG SMARTZ", "")
#namecost("Signature Spell Cast on 5+", "")

Remains in play. _Big Smartz_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, all friendly Trolls within 12" may re-roll failed Stupidity tests.

#namecost("TROLL BRAINZ", "")
#namecost("Level 1 Cast on 6+", "")

Remains in play. _Troll Brainz_ is a *hex* spell with a range of 24". While the spell is in effect, the target unit gains the Stupidity special rule and suffers \-1 to its Leadership.

#namecost("FOETID WHIRLPOOL", "")
#namecost("Level 1 Cast on 7+", "")

Remains in play. _Foetid Whirlpool_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must take a Dangerous Terrain test.

#namecost("RAVENOUS RECOURSE", "")
#namecost("Level 2 Cast on 7+", "")

_Ravenous Recourse_ is an *augment* spell that is cast on the Wizard itself. All friendly Trolls within 12" gains +2 to their Movement until the start of the caster's next Magic phase.

#namecost("RAPID REGENERATION", "")
#namecost("Level 2 Cast on 10+", "")

_Rapid Regeneration_ is an *augment* spell with a range of 18". The target unit gains the Regeneration (5+) special rule until the start of the caster's next Magic phase. Models that already have Regeneration (4+) or better may instead re-roll failed Regeneration saves.

#namecost("TORRENT OF FILTH", "")
#namecost("Level 3 Cast on 10+", "")

_Torrent of Filth_ is a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 4 hit with the Ignores Armour Saves special rule.

#namecost("ACIDIC BILE", "")
#namecost("Level 3 Cast on 11+", "")

_Acidic Bile_ is a *direct damage* spell. Place the small round template anywhere within 18" of the Wizard – it then scatters D6". All models under the template suffer a Strength 4 hit with the Ignores Armour Saves special rule.

= MAGIC ITEMS

*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Orcs & Goblins. These may be used in addition to the magic items found in the Warhammer rulebook.*

#entry("MAGIC WEAPONS")
#columns(2)[
#namecost("BATTLEAXE OF THE LAST BIG", "")
#namecost("WAAAGH!", "85 points")

Orcs only. Roll a D6 at the start of each round of combat – the wielder of this weapon adds that number to both his Attacks and Strength in that round. However, the bearer's Weapon Skill is lowered by an amount equal to half the dice roll (i.e. 1\-2 = \-1 Weapon Skill, 3\-4 = \-2 Weapon Skill, and 5\-6 = \-3 Weapon Skill).

#namecost("WARBOSS IRONCLAW'S WAAAGH!", "")
#namecost("CLEAVA", "60 points")

Common Orcs only. All hits from Warboss Ironclaw's Waaagh! Cleava Wound automatically with the Ignores Armour Saves special rule.

#namecost("BASHAS AXE OF STUNTY", "")
#namecost("SMASHIN'", "50 points")

The wielder of this weapon has the Armour Piercing (1) special rule, and adds +1 to both his Attacks and Strength in close combat. This bonus is doubled if the wielder is in base contact with a Dwarf. In addition, the wielder causes Fear in all Dwarfs.

#namecost("BASHA'S BLOODAXE", "50 points")

Common Orcs on foot only. The wielder of Basha's Bloodaxe gains the Frenzy rule. However, they get +D6 Attacks (rolled before making their Attacks) rather than +1 and can never lose their Frenzy.

#namecost("BONEHEAD'S WHACKER", "50 points")

Savage Orcs only. Great weapon. The Whacker gives the wielder the Always Strikes First special rule and allows them to re-roll failed To Wound rolls.

#namecost("SHAGA'S SCREAMING SWORD", "50 points")

Shaga's Screaming Sword gives the wielder the Fear special rule. In addition, they also gain +1 Strength and +1 Attack for each enemy character model within 12".

#namecost("BASHA'S BIG AXE OF BASHIN'", "30 points")

Basha's Big Axe of Bashin' gives wielder +1 Strength and Attacks.

#namecost("DA CHOPPIEST CHOPPA", "30 points")

Orcs only. This weapon gives the wielder +1 Strength and the Armour Piercing (3) special rule.

#namecost("KLEEVA'S CLEAVER OF CLEAVAGE", "30 points")

All hits with Kleeva's Cleaver of Cleavage Wound automatically. Armour saves are modified by the Strength of the bearer.

#namecost("FUMPA'S CLUB OF FUMPIN'", "25 points")

Fumpa's Club of Fumpin' gives the wielder +1 Strength and the Quell Animosity special rule.

#namecost("HACKA'S SWORD OF HACKIN'", "25 points")

Hacka's Sword of Hackin' makes the wielder always hit any opponent on roll of a 2+.

#namecost("KRUMPA'S CLUB OF CRUMPIN'", "25 points")

Great weapon. Krumpa's Club of Crumpin' gives the wielder the Ignores Armour Saves special rule.

#namecost("MARTOG'S BEST BASHA", "30 points")

Martog's Best Basha gives the wielder +1 Weapon Skill, +1 Strength and +1 Initiative.

#namecost("SNEAKY SKEWERER", "30 points")

Goblins only. The Sneaky Skewerer gives the wielder +1 To Hit and the Killing Blow special rule.

#namecost("DUFFFA'S CLUB OF DUFFIN'", "25 points")

Duffa's Club of Duffin' gives the wielder +3 Attacks in the first round of close combat.

#namecost("PORKO'S PIGSTIKKA", "25 points")

Mounted Orcs only. Light lance. On any turn that they charge, Porko's Pigstikka gives the wielder +1 Attack for each rank that the unit they are attacking has.

#namecost("ULAG'S AK'RIT AXE", "25 points")

Ulag's Ak'rit Axe allows the wielder to re-roll any failed To Hit rolls.

#namecost("BIGGER, CHOPPIER AXE", "20 points")

Orcs only. Great weapon. This weapon gives the wielder the Killing Blow special rule.

#namecost("KURBOG'S CURMUDGEONLY", "")
#namecost("CLOBBERA", "20 points")

Any model Wounded (but not slain) by Kurbog's Curmudgeonly Clobbera may not attack this close combat phase. If they have already attacked this close combat phase, they may not attack in the next close combat phase.

#namecost("BACKSTABBER'S BLADE", "15 points")

Goblins only. The Backstabber's Blade gives the wielder the Poisoned Attacks special rule. In addition, they get +1 Strength if they attack the enemy to their flank, or +2 Strength if they attack the enemy in their rear.

#namecost("WEEPWOOD BIG SHIV", "15 points")

Savage Orc only. Additional hand weapon. The Strength of this weapon is increased by 1 for the remainder of the game for each unsaved Wound it inflicts on a Monstrous Creature or Monster. Roll to Wound individually against these Troop Types.

#namecost("THE BLACK FANG", "10 points")

If the bearer rolls a natural 6 To Hit, that Attack automatically Wounds with the Multiple Wounds (D3) special rule.

#namecost("CLUB WIV A NAIL IN'", "10 points")

Great weapon. The wielder gains the Random Attacks (D6) special rule.

#namecost("GREATDRAKE TOOF", "10 points")

Savage Orc only. If the bearer rolls a natural 6 To Wound, that Attack has the Multiple Wounds (D6) special rule.

#namecost("LUCKY'S DIRK", "10 points")

Goblins only. Lucky's Dirk gives the wielder +1 Strength for each enemy Magic Item in base contact.

#runin[METALRIPPA]'#runin[S KLAW 10 points] Additional hand weapon. The wielder gains the Armour Piercing (1) special rule.

#runin[STABBY]'#runin[S RUSTY STIKKA 10 points] Goblins only. The wielder will automatically Wound on a To Hit roll of a natural 6.

#namecost("SWORD OF BORK", "10 points")

Any unit joined by the bearer of the Sword of Bork that fails their Animosity test may roll 2D6 on the Animosity table and discard the lowest result.

#namecost("WOLLOPA'S ONE HIT WUNDA", "10 points")

One use only. Wollopa's One Hit Wunda may be used at the start of any close combat phase when it is the wielder's turn to attack. The wielder may replace all their normal Attacks with a special attack that is resolved at +3 Strength with the Heroic Killing Blow special rule.

#namecost("BIG SPIRIT STIKK", "5 points")

Savage Orc Wizards only. The wielder of this item gains the Multiple Wounds (D3) special rule. Against Monstrous Creatures and Monsters, they gain the Multiple Wounds (D6) special rule.

#namecost("OWZAT'S CLUB OF SMACKIN'", "5 points")

An Infantry Character model which suffers an unsaved Wound (but is not slain) by Owzat's Club of Smackin' is immediately knocked clean out of combat and suffers a Strength 4 Hit. Move the model D6" backwards (measure from the back of any unit it is in), stopping at least 1" away from other units or impassable terrain.
]

#entry("MAGIC ARMOUR")
#namecost("ARMOUR OF GORK", "60 points")

Medium Armour. The wearer has +D3 Toughness. Roll to determine the armour's effectiveness the first time the wearer is hit each turn, and use the result for the rest of the turn. In addition, the wearer has the Impact Hits (D6) special rule.

#namecost("IRONSKIN SHIELD", "35 points")

Shield. The Ironskin Shield gives the bearer the Ward Save (5+) special rule.

#namecost("ARMOUR OF PROTECTYNESS", "25 points")

Medium armour. The Armour of Protectyness gives the wearer the Regeneration (5+) special rule.

#namecost("ARMOUR OF MORK", "25 points")

Medium armour. The Armour of Mork gives the wearer the Magic Resistance (2) special rule.

#namecost("TROLLHIDE TROUSERS", "25 points")

Common Orcs or Common Goblins only. This armour gives the wearer the Natural Armour (6+) and Regeneration (5+) special rules.

#namecost("NOBBLA'S 'ELMET", "20 points")

Common Goblins only. Nobbla's Helmet gives the wearer a 6+ armour save and the Ward save (6+) special rule.

#namecost("UGBRAG'S LUCKY SHIELD", "20 points")

Shield. Ugbrag's Lucky Shield enables the wearer to ignore the first Wounding Hit (after saves) suffered in the game.

#namecost("THE SPIKY SHOULDER PLATES", "10 points")

Common Orcs on foot only. The bearer gains a 6+ armour save and the Impact Hits (1) special rule.

#namecost("SPITEFUL SHIELD", "10 points")

Shield. For each To Hit roll of a 1 against the bearer in close combat, the Spiteful Shield inflicts a Strength 5 Hit against the model that struck the blow.

#entry("TALISMANS")
#columns(2)[
#namecost("WARBOSS UMM'S BEST BIG", "")
#namecost("BOSS'S 'AT", "25 points")

Warboss Umm's Best Big Boss's 'At gives the wearer the Ward Save (4+) special rule. However, if the wearer fails its Ward save at any point, it will no longer have any effect from the start of the next player turn.

#namecost("AMULET OF PROTECTYNESS", "25 points")

Whenever the bearer of the Amulet of Protectyness suffers a Wound, they count as having the same armour and Ward save as the model that caused the Wound.

#namecost("THE CLAMMY COWL", "25 points")

Night Goblins only. All Close Combat attacks targeting the wearer of this item must re-roll successful rolls To Hit.

#namecost("HEADDRESS OF MANY EYES", "30 points")

Forest Goblin on foot only. The wearer can only be hit in close combat on To Hit rolls of a natural 6.

#namecost("LUCKY SHRUNKEN HEAD", "25 points")

Savage Orc Wizards only. Any unit joined by the bearer of the Lucky Shrunken head may re-roll failed Ward saves from their Warpaint special rule.

#namecost("SIZZLA'S SHINY BAUBLES", "25 points")

Sizzla's Shiny Baubles can be used against any successfully cast enemy spell that targets the bearer or the unit they are with. Roll a D6; on 1\-3 nothing happens; on a 4+ the spell is reflected back at the caster and their unit and affects them instead, following all the normal rules for the spell. The original caster may then attempt to dispel their own spell using any remaining power dice.

#namecost("SPARKLY WIZARD FINDA", "25 points")

The bearer of the Sparkly Wizard Finda has the Hatred (Wizards) and Magic Resistance (2) special rules.

#namecost("THE COLLAR OF ZORGA", "20 points")

War Beasts, Monstrous Beasts, Monstrous Creatures, Monsters and all mounts require 6's to hit the bearer. In addition, the wearer can attempt to take control of any creatures in base contact mentioned above at the start of each close combat phase. Each player rolls a D6 for each beast and add the unmodified Leadership of the wearer of the Collar and each beast he is trying to control. If the Orc player scores equal or higher, he takes control of that beast who will now attack any friendly models in base contact for the remainder of the close combat phase (including Stomps, but not Impact Hits). If there are no friendly models for the beast to attack, it simply makes no attacks this round. If the Orc player scores lower, the beast may act normally this turn.

#namecost("EFFIGY OF MORK", "20 points")

Savage Orcs only. All close combat attacks made against the bearer of the Effigy of Mork suffer \-1 To Hit.

#namecost("MORK'S EYE PEBBLE", "20 points")

Goblins only. One use only. This item may be used at the start of any enemy shooting phase. If they do so, the bearer and all friendly units within 12" gain a Ward save (5+) against missile attacks for the duration of this phase.

#namecost("DAUBING OF MORK", "15 points")

Orcs on foot only. Enemy models must re-roll 6's To Wound against the bearer of this item.

#namecost("MAGICAL WARPAINT", "15 points")

Savage Orcs only. The wearer of the Magical Warpaint may re-roll failed Ward Saves.

#namecost("NECKLACE OF BLESSED TEEF", "15 points")

The bearer of the Necklace of Blessed Teef may re-roll any armour or Ward Save rolls of 1.

#namecost("DOKK JUICE", "10 points")

Savage Orc Wizards only. One use only. This item may be used at the start of any turn. Once used, the imbiber gains the Regeneration (4+) special rule for the remainder of the turn.

#namecost("GLOWIN' TATTOOZ", "10 points")

Savage Orc only. The bearer of this item may re-roll Ward save rolls of 1.

#namecost("GLOWY GREEN AMULET", "10 points")

Instead of making a normal dispel attempt, the wearer of the Glowy Green Amulet may attempt to nullify any enemy spell cast at the bearer or the unit they are with by a rolling a number of dice equal to the number of dice used to cast the spell. As long as no 1's are rolled, the spell is dispelled. However, if two or more 1's are rolled, the spell gets through automatically and the wearer is killed outright (with no saves allowed).

#namecost("GLOWY HOWZIT", "10 points")

This item gives the bearer a Ward save (5+). At the end of each phase in which the model suffered 1 or more Wounds, roll a D6 for each failed Ward save roll they made. On the roll a 1, the Glowy Howzit cannot be used for the remainder of the game.
]

#entry("ARCANE ITEMS")
#columns(2)[
#namecost("STAFF OF SNEAKY STEALIN'", "60 points")

Goblins only. At the start of each of your Magic phases, the Staff of Sneaky Stealin' allows you to remove one dice from the opponent's Dispel dice pool and add it to your own Power dice pool.

#namecost("SKULL WAND OF KALOTH", "50 points")

The Skull Wand unleashes a curse on a single enemy model that is in base contact with the bearer at the start of the Close Combat phase. The victim must pass a Leadership test (using its own, unmodified, Leadership) or be slain instantly, with no save of any kind allowed. In addition, the bearer of the Skull Wand causes Terror.

#namecost("GREAT GREEN VISIONS", "45 points")

Orc Wizard only. The bearer of this item may re-roll failed channelling rolls.

#namecost("SPEAKY-SKULL FETISH", "35 points")

Every time the bearer of this item rolls a 6 on their channelling roll, they gain an extra dice to the pool.

#namecost("BEAST-LURE GLYPHS", "30 points")

Savage Orcs only. One use only. The caster may cast one of their spells (with a casting value of 10 maximum) without using any power dice. The spell counts as having been cast on their minimum casting value and may be dispelled as normal.

#namecost("IDOL OF MORK", "30 points")

Orcs only. At the start of your magic phase, the Idol of Mork adds one power dice to your power pool for every friendly Orc unit (any type) with 10 or more Unit Strength in combat within 24" if the bearer. However, it removes one power dice from your power pool for every friendly fleeing Orc (any type) with 10 or more Unit Strength unit within 24" of the bearer.

#namecost("SCUTTLEPOT", "30 points")

Forest Goblins only. The bearer of this item gains a +D3 casting bonus. Roll for each casting attempt.

#namecost("DITTO'S DOUBLE DOIN' DOODAHS", "25 points")

The bearer of Ditto's Double Doin' Doodahs may choose to attempt to cast one of their spells twice per Magic phase.

#namecost("LOONSTONE TALISMAN", "20 points")

One use only. Night Goblin Wizard only. This item may be used at the start of any enemy Magic phase. Each time a Wizard with this item dispels an enemy spell this turn, they gain +1 Power Dice that they can use in their next Magic phase (up to a maximum of +3 dice).

#namecost("BUZGOB'S KNOBBLY STAFF", "20 points")

Buzgob's Knobbly Staff allows the wielder to re-roll all power dice used to cast a spell once per Magic phase (before rolling any Ultimate Power dice). This cannot be used if a miscast is rolled.

#namecost("MORK'S BONEY BITZ", "20 points")

Savage Orcs only. The bearer of this item gains +1 to cast for every Monster within 18".

#namecost("SHAMANIC SKULLCAPE", "20 points")

Common Orc Wizard only. The bearer of this item gains a +1 casting bonus. In addition, if they successfully kill an enemy Wizard in close combat or with a spell, you may choose one of the spells they knew at that time. The model may then cast that spell themselves for the remainder of the game.

#namecost("STAFF OF BADUUM", "20 points")

The bearer of this item gains a +2 casting bonus to one of their spells, chosen at the start of the battle. However, in case a Miscast is rolled when casting that spell, add 1 to the result rolled on the Waaagh! Miscast chart.

#namecost("WAAAGH! PAINT", "15 points")

Savage Orcs only. If the wearer of the Waaagh! Paint is in close combat at the start of your Magic phase, they receive +2 to the result of their spell casting attempts.

#namecost("AMBERBONE HOARD", "10 points")

Orc Wizard only. The bearer of this item gains +1 Strength and +1 Attack.

#namecost("DA HAG'S BREW", "10 points")

Orc or Goblin only. In addition to the Lores of Magic they may normally know spells from, the bearer of Da Hag's Brew knows the Signature spell from the Lore of Troll Magic.

#namecost("DANGLY WOTNOTZ", "10 points")

One use only. When casting a spell, the bearer of the Dangly Wotnotz may use it to add +1 to the result of one of the dice rolled. This may cause Ultimate Power or prevent a Miscast.

#namecost("DA GREAT ZAPPA SQUIG", "5 points")

Savage Orcs only. One use only. This item can be used at the start of any of your Magic phases. Roll a D6 and consult the table below:

#chart((("D6", "Result:"), ("1", "The bearer suffers a Strength 5 Hit."), ("2-4", "The bearer gains +1 Power dice."), ("5-6", "The bearer gains +D3 Power dice.")))
]

#entry("ENCHANTED ITEMS")
#columns(2)[
#namecost("SQUIGRILER PIPES", "35 points")

Night Goblins only. This item may be used in your Remaining Moves sub-phase. When used, all Squig units within 18" will immediately make a Random Move (using their normal Random Movement) directly towards the bearer of this item. If they get into base contact with the bearer, it is immediately removed as a casualty.

#namecost("BIGGED'S 'ED KICKIN' BOOTS", "30 points")

Common Orcs and Black Orcs on foot only. The wearer of Bigged's 'Ed Kickin' Boots gains the Stomp (D3) special rule.

#namecost("IRONBACK BOAR", "30 points")

Common Orcs and Black Orcs only. War Boar. The Ironback Boar has Strength 4 and the Impact Hits (D3) special rule.

#namecost("MOONFACE MOMMET", "30 points")

Night Goblins only. One use only. This item can be used against an enemy character (even within a unit) within 12" and Line of Sight during your Shooting phase. The target must take a Panic test. If passed, the model may not voluntarily move in their next turn.

#namecost("THE PIPES OF DOOM", "30 points")

Night Goblins only. One use only. The Pipes of Doom can be used at the start of the Shooting Phase. All enemy War Beasts (including Mixed Units), Cavalry, Monstrous Beasts, Monstrous Cavalry, Chariots (except those that do not have any mounts pulling them) and Monsters within 12" must take a Panic test.

#namecost("TRICKSY TRINKET", "30 points")

Goblins (of any type) only. No units in base contact with the wearer of the Tricksy Trinket may take Ward Saves.

#namecost("DA THINKIN' ORC'S 'AT", "25 Points")

Common Orc only. The wearer of Da Thinkin' Orc's 'At gains +1 Initiative. In addition, the wearer and any unit they have joined is not subject to the Animosity special rule.

#namecost("THE HORN OF URGOK", "25 points")

One use only. The horn can be used at the start of any of your turns. When this horn is sounded, all friendly units within 24" receive +1 Leadership and all enemy units within 24" suffer a \-1 penalty to their Leadership until the end of the turn.

#namecost("SAVAGE TROPHY", "25 points")

Savage Orc only. Army General only. The bearer of this item and any friendly units of Savage Orcs within 12" gain +1 to their Leadership.

#namecost("EL GROBIS' MASK OF THE FEARSOME", "")
#namecost("RENOWN", "20 points")

Goblin Bosses only. The bearer gains the Fear and Hidden special rules. In addition, it gains the Always Strikes First and Armour Piercing (1) special rules on the turn that it is revealed or charges into an enemy unit's flank or rear.

#namecost("GRISLY TROPHY RACK", "20 points")

Warboss or Big Boss only. All enemy units within 6" of the bearer of the Grisly Trophy Rack suffer \-1 modifier to their Leadership.

#namecost("MAD CAP MUSHROOMS", "20 points")

Night Goblins only. One use only. If the model bearing the Mad Cap Mushrooms is in a unit containing one or more Night Goblin Fanatics, each Fanatic from this unit inflicts an additional D6 Hits on any unit they move into base contact with this turn.

#namecost("NIBBLA'S 'ITTY RING", "20 points")

Bound Spell, Power Level 4. Nibbla's 'Itty Ring contains the _Vindictive Glare_ spell from the Lore of the Little Waaagh! Roll a D6 each time it has successfully been cast; on the roll of a 1, the caster suffers a Strength 5 Hit.

#namecost("SPIKER SEEDS", "20 points")

Goblins only. One use only. This item can be used if the bearer is charged and chooses to Hold or Stand & Shoot. All models in the enemy unit must take a Dangerous Terrain test before they begin their charge move (at the same time as any Stand & Shoot reaction is resolved).

#namecost("WARBOSS IMBAD'S IRON GNASHAS", "20 points")

Common Orcs and Black Orcs only. The model wearing Imbad's Iron Gnashas gains +1 Attack with the Killing Blow special rule. This attack does not benefit from any other weapon rules the wearer might have.

#namecost("BEASTKILLA SLOP", "15 points")

Goblins only. One use only. This item can be used at the start of any close combat phase. One enemy monster in base contact with the bearer of this item must take a number of Toughness tests equal to their starting number of Wounds. Each failed Toughness test causes D3 Wounds with no saves allowed. This has no effect against Daemons or Animated Constructs.

#namecost("BRIMSTONE BAUBLE", "15 points")

Goblins only. If the bearer of the Brimstone Bauble is slain in close combat (not including pursuit), all units (friends and foe) in base contact suffer D6 Strength 6 Hits, distributed as Hits from shooting. Any Wounds caused count towards combat resolution.

#namecost("EYE-BITER ASH", "15 points")

Goblins only. One use only. This item can be used at the start of any close combat phase. When used, roll a D6 and consult the table below:

*D6 Result: 1* The bearer and their unit suffer \-1 To Hit in close combat this phase. *2* No effect *3\-6* All enemy units in base contact with the bearer suffer \-1 To Hit in close combat this phase.

#namecost("GUZZLA'S BATTLE BREW", "15 points")

Roll a D6 for the bearer of Guzzla's Battle Brew at the start of the game and consult the table below to see what effect it has:

*D6 Result: 1* The model gains the Stupidity special rule. *2\-4* The model gains the Hatred special rule. *5\-6* The model gains the Hatred and Frenzy special rule.

#namecost("THE GOLDEN TOOF", "15 points")

Orcs only. The bearer of this item and any unit that they join may roll an additional dice and discard the highest result when taking Break tests. This has no effect if the bearer is a Lone Character.

#namecost("MAAD'S MAP", "15 points")

Model on foot only. Before deployment, roll a D6. On 4+, the bearer of Maad's Map and one unit they must join gains the Scouts special rule. On a 1\-3, the unit has gotten lost and gains the Ambushers special rule instead.

#namecost("'EADBUTTIN' 'AT", "10 points")

Orcs only. The 'Eadbuttin' 'At gives the wearer a special attack in challenges. This attack causes a hit at the wearer Strength with the Multiple Wounds (D3) special rule. This attack does not benefit from any other weapon rules the wearer might have.

#namecost("LOONSTONE TEEFCAPS", "10 points")

Mounted Night Goblins only. The close combat attacks of the bearer's mount have the Armour Piercing (2) special rule.

#namecost("PET GRIBBLY", "10 points")

Dankhold Trollboss only. Every time the bearer of this item suffers an unsaved Wound, roll a D6. On a 1, the Pet Gribbly is squished and removed from the game. When the Pet Gribbly is squished, the bearer gains the Hatred and Frenzy special rule for the remainder of the game.

#namecost("LUCKY BONE", "10 points")

Savage Orc only. The bearer of this item may re-roll a single To Hit or To Wound roll of 1 each close combat phase.

#namecost("FUNGUS WINE", "5 points")

Night Goblins only. One use only. This item may be used at the start of any of your turns. Until the start of your next turns, the model and any unit they are with have the Immunity (Psychology) special rule.

#namecost("WEB-STRUNG CLOAK", "5 points")

Forest Goblins only. Enemy units in base contact with the bearer of this item roll one dice less for their flee moves.
]

#entry("MAGIC STANDARDS")
#namecost("MORK'S SPIRIT TOTEM", "50 points")

A unit with Mork's Spirit Totem has Magic Resistance (D6). Roll to determine the effectiveness of the banner every time a spell is cast on the unit carrying it. For example, if a 5 is rolled, the unit with have Magic Resistance (5) against that spell. In addition, all magic items belonging to enemy units that are in base contact with the bearer of Mork's Spirit Totem do not work and will count as mundane versions of the same type.

#namecost("THE BAD MOON BANNER", "40 points")

Night Goblins only. Night Goblin models in a unit with the Bad Moon banner are Stubborn. In addition, the banner shrouds the unit in darkness. Enemies suffer \-1 To Hit with missile weapons against the bearer and any unit he joins. In addition, any enemy model that charges into base contact with the bearer or the unit must take a Dangerous Terrain test.

#namecost("DA ANGRY LADZ FLAG", "30 points")

The unit carrying Da Angry Ladz Flag gains the Frenzy special rule.

#namecost("GORK'S WAAAGH! BANNER", "30 points")

Orcs only. The unit carrying Gork's Waaagh! Banner gains D6" to its charge distance. This does not affect the unit's maximum charge range for the purpose of determining mandatory charge declarations. If the charge is failed, the unit will move forward its normal failed charge distance.

#namecost("ROWDY GROTT'S BIG RED RAGGEDY", "")
#namecost("BANNER", "35 points")

Common Goblins only. All Goblins within 12" of Rowdy Grott's Big Red Raggedy Banner have the Cold-blooded special rule when taking Break tests and Panic tests.

#namecost("GUFF'S FLAG", "25 points")

The unit carrying Guff's Flag has the Immunity (Psychology) special rule.

#namecost("NOGG'S BANNER OF BUTCHERY", "25 points")

One use only. Nogg's Banner of Butchery may be used at the start of any close combat phase. All models in the unit (except mounts) carrying the Banner of Butchery gain +1 Attack for the remainder of the close combat phase.

#namecost("SPIDER BANNER", "25 points")

Forest Goblins only. The unit carrying the Spider Banner have the Poisoned Attacks special rule.

#namecost("TOTEM OF THE SPIDER GOD", "20 points")

Forest Goblins only. The unit carrying this standard gains the Multiple Wounds (2) special rule (including mounts).

#namecost("THE EVIL SUN BANNER", "15 points")

The unit carrying the Evil Sun Banner may re-roll any failed Animosity tests.

#namecost("THE BASHIN' FLAG OF BORK", "10 points")

The carrying the Bashin' Flag of Bork ignores their first failed Animosity roll of the game – it passes the test instead.

#namecost("DA BANNER OF DA NOMADZ", "10 points")

Goblin Wolf Riders only. When the unit carrying Da Banner of Da Nomadz makes a Charge, Flee or Pursuit roll, it may re-roll any dice that roll a natural 1.

#runin[GUFF]'#runin[S WINDY BANNER 10 points] The unit carrying Guff's Windy Banner may re-roll failed Panic tests.

#namecost("BANNER OF THE WILDZ", "5 points")

A unit carrying the Banner of the Wildz may re-roll failed Dangerous Terrain tests.

= LORDS

#entry("ORC WARBOSS", first: true)
#profile(
  (name: "Orc Warboss", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 4, ld: 9, points: 125),
)
#field("TROOP TYPE", "Infantry (Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Savage Orc +25 points
  - Black Orc +30 points
- May choose any of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +4 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour (Common and Black Orc only) +9 points
  - Heavy armour (Black Orc only) +18 points
- May take a shield +3 points
- May be mounted on one of the following
  - War Boar +24 points
  - Grunta (Common Orc only) +48 points
  - Boar Chariot (Common Orc or Black Orc only, replacing one of the crew) +80 points
  - Wyvern +160 points
  - Maw-grunta (Common Orc only, replacing one of the crew) +235 points
  - Maw-krusha +250 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters, Waaagh!")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Character, Savage Orc).
- *Black Orc:* The model gains +1 Weapon Skill, +1 Attack, Armed to da Teef, Immunity (Psychology) and Quell Animosity special rules. This changes their Troop Type to Infantry (Character, Black Orc).

#entry("WEIRDNOB")
#profile(
  (name: "Weirdnob", m: 4, ws: 3, bs: 3, s: 4, t: 5, w: 3, i: 2, a: 1, ld: 8, points: 185),
)
#field("TROOP TYPE", "Infantry (Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Weirdnob is a Level 3 Wizard which can use spells from the Lore of da Big Waaagh!")
#field("OPTIONS", "")

- May be upgraded to a Savage Orc +20 points
- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following
  - War Boar +24 points
  - Boar Chariot (Common Orc only, replacing one of the crew) +80 points
  - Wyvern +160 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Character, Savage Orc). A Savage Orc Weirdnob can use spells from the Lore of da Big Waaagh! or da Savage Waaagh!

#entry("GOBLIN WARBOSS")
#profile(
  (name: "Goblin Warboss", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Night Goblin free
  - Forest Goblin +10 points
- May choose one of the following:
  - Additional hand weapon +3 points
  - Spear +3 points
  - Light lance +4 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Shortbow +3 points
  - Bow (Common Goblin only) +4 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour (Common and Night Goblin only) +9 points
- May take a shield +3 points
- May be mounted on one of the following
  - Giant Wolf (Common Goblin only) +18 points
  - Giant Spider (Forest Goblin only) +21 points
  - Wolf Chariot (Common Goblin only, replacing one of the crew) +45 points
  - Gigantic Spider (Forest Goblin only) +48 points
  - Great Cave Squig (Night Goblin only) +48 points
  - Arachnarok Spider (Forest Goblin only, replacing one of the crew) +255 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Night Goblin:* The model gains the Hatred (Dwarfs) special rule. This changes their Troop Type to Infantry (Character, Night Goblin).
- *Forest Goblin:* The model gains the Poisoned Attacks special rule. This changes their Troop Type to Infantry (Character, Forest Goblin).

#entry("ODDNOB")
#profile(
  (name: "Oddnob", m: 4, ws: 2, bs: 3, s: 3, t: 4, w: 3, i: 2, a: 1, ld: 7, points: 155),
)
#field("TROOP TYPE", "Infantry (Character, Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Oddnob is a Level 3 Wizard which can use spells from the Lore of da Little Waaagh!")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Night Goblin +10 points
  - Forest Goblin +15 points
- May be upgraded to a Level 4 Wizard +35 points
- May be mounted on one of the following
  - Giant Wolf (Common Goblin only) +18 points
  - Giant Spider (Forest Goblin only) +21 points
  - Wolf Chariot (Common Goblin only, replacing one of the crew) +45 points
  - Gigantic Spider (Forest Goblin only) +48 points
  - Arachnarok Spider (Forest Goblin only, replacing one of the crew) +255 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Night Goblin:* The model gains the Hatred (Dwarfs) and Magic Mushrooms special rules. This changes their Troop Type to Infantry (Character, Night Goblin). A Night Goblin Oddnob can use spells from the Lore of da Little Waaagh! or da Bad Moon.
- *Forest Goblin:* The model gains the Poisoned Attacks and Spider Venom special rules. This changes their Troop Type to Infantry (Character, Forest Goblin). A Forest Goblin Oddnob can use spells from the Lore of da Little Waaagh! or da Spider God.

#entry("GIANT RIVER TROLL HAG")
#profile(
  (name: "Giant River Troll Hag", m: 5, ws: 3, bs: 1, s: 6, t: 5, w: 6, i: 1, a: "*", ld: 6, points: 270),
)
#field("TROOP TYPE", "Monster (Character, Troll)")
#field("BASE SIZE", "50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Giant River Troll Hag is a Level 2 Wizard who uses spells from the Lore of Troll Magic.")
#field("OPTIONS", "")

- May be upgraded to a Level 3 Wizard +50 points
- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Loner, Marsh Strider, Regeneration (4+), River Strider")

- *Slimy Shanks:* Enemies attempting to attack a Giant River Troll Hag in close combat suffer a \-1 penalty to their To Hit rolls.
- *Swamp Breath:* This is a Strength 3 Breath Weapon with the Ignores Armour saves special rule. A unit that takes casualties from to this attack suffers \-2 to its Leadership until the start of your next turn.
- *Water Wise:* Unless she is within a water feature of any type (including rivers, marshes, swamps, etc), the Giant River Troll Hag has the Stupidity special rule. If the test is failed and there is one or more water features on the table, the Troll Hag moves towards the closest of these instead of straight forwards.

- *Troll Hag Special Attacks:* To determine what happens in each Close Combat phase, pick a unit in base contact with the Troll Hag and roll a D6 on one of the following tables. Which table you use depends on the size of the Troll Hag's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*TIDDLERS TABLE *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Suck out its Marrow"), ("2-3", "Pick up and…"), ("4-6", "Crush with Stump"), ("6", "Grind its Bones")))

*WHOPPERS TABLE *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1-2", "Smother"), ("3-4", "Mother"), ("5-6", "Mither")))

*\- Suck out its Marrow:* The unit suffers D6 Strength 5 hits. For every wound the target loses, the Troll Hag gains one, up to its starting number. *\- Pick up and…:* The Troll Hag stoops down and grabs a single Character in base contact from the target unit (Troll Hag's choice). The Troll Hag grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Net: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Troll Hag should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Toss Back: The victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6
Strength 3 hits are inflicted on the unit (save as normal)."), ("3", "Send Packing: The Troll Hag will attempt to throw the victim in the nearest water feature (such
as a river, marsh or swamp) within 12\". The victim is automatically removed as a casualty
unless they have the Aquatic special rule in which case the model lands unharmed in the water.
If no water feature is in range, treat this as a Toss Back result instead."), ("4", "Squish: The model is removed as a casualty."), ("5", "Gobble: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Troll Hag had rolled the Stuff into Net result, and then
choose another victim. Roll again on this table to see what the Troll Hag does with it.")))

*\- Crush with Stump:* All models in base contact, friend or foe, suffer a Strength 6 hit. *\- Grind its Bones:* The Troll Hag may target a single model in base contact. This model suffers a single Strength 6 hit with the Multiple Wounds (D3) special rule. *\- Smother:* The target suffers D3 Wounds which Ignores Armour saves. This has no effect on Animated Constructs. In addition, the target may not make any attacks until the Troll Hag is either slain or rolls a different result on its special attack table. *\- Mother:* The target takes a single Strength 6 hit with the Multiple Wounds (D3) special rule. If the target survives the attack, it may not attack until the start of your next turn. *\- Mither:* Neither the Troll Hag nor the target actually fight if they have not already done so this round. The Troll Hag automatically wins the combat by 2 points or more. In addition, the target has its Weapon Skill reduced to 1 until the end of the next turn. This result has no effect against Animated Constructs.

= HEROES

#entry("ORC BIG BOSS", first: true)
#profile(
  (name: "Orc Big Boss", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 65),
)
#field("TROOP TYPE", "Infantry (Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- One Orc Big Boss may carry the Battle Standard +25 points
- May be upgraded to one of the following:
  - Savage Orc +25 points
  - Black Orc +30 points
- May choose any of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +3 points
  - Polearm +6 points
  - Great weapon +9 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour (Common and Black Orc only) +6 points
  - Heavy armour (Black Orc only) +12 points
- May take a shield +2 points
- May be mounted on one of the following
  - War Boar +16 points
  - Grunta (Common Orc only) +32 points
  - Boar Chariot (Common Orc or Black Orc only, replacing one of the crew) +80 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters, Waaagh!")
#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Character, Savage Orc).
- *Black Orc:* The model gains +1 Weapon Skill, +1 Attack, Armed to da Teef, Immunity (Psychology) and Quell Animosity special rules. This changes their Troop Type to Infantry (Character, Black Orc).

#entry("WEIRDBOY")
#profile(
  (name: "Weirdboy", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 1, ld: 7, points: 75),
)
#field("TROOP TYPE", "Infantry (Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "A Weirdboy is a Level 1 Wizard which can use spells from the Lore of da Big Waaagh!")
#field("OPTIONS", "")

- May be upgraded to a Savage Orc +20 points
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on a War Boar +16 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Character, Savage Orc). A Savage Orc Weirdboy can use spells from the Lore of da Big Waaagh! or da Savage Waaagh!

#entry("WARCHANTER")
#profile(
  (name: "Warchanter", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 8, points: 75),
)
#field("TROOP TYPE", "Infantry (Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May take medium armour +4 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters")

- *Violent Fury:* Any Orc unit joined by a Warchanter may re-roll 1's To Wound in close combat.
- *Warbeats:* At the start of each of your turns, the Warchanter can use one of the following Warbeats which affect themself and the unit they are with. Each Warbeat lasts until the start of your next turn. A unit can only be under the effect of one Warbeat at a time.
  - *Fixin' Beat:* The unit gains the Regeneration (6+) special rule.
  - *Get 'Em Beat:* The unit gains the Swiftstride special rule.
  - *Killa Beat:* The unit may re-roll 1's To Hit in close combat.

#field("NOTES", "")

- A Warchanter may never be the Army General.

#entry("GOBLIN BIG BOSS")
#profile(
  (name: "Goblin Big Boss", m: 4, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 7, points: 35),
)
#field("TROOP TYPE", "Infantry (Character, Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- One Goblin Big Boss may carry the Battle Standard +25 points
- May be upgraded to one of the following:
  - Night Goblin free
  - Forest Goblin +10 points
- May choose one of the following:
  - Additional hand weapon +2 points
  - Spear +2 points
  - Light lance +3 points
  - Polearm +6 points
  - Great weapon +9 points
- May choose one of the following:
  - Shortbow +3 points
  - Bow (Common Goblin only) +4 points
- May choose one of the following:
  - Light armour +2 points
  - Medium armour (Common and Night Goblin only) +6 points
- May take a shield +2 points
- May be mounted on one of the following
  - Giant Wolf (Common Goblin only) +12 points
  - Giant Spider (Forest Goblin only) +14 points
  - Wolf Chariot (Common Goblin only, replacing one of the crew) +45 points
  - Gigantic Spider (Forest Goblin only) +32 points
  - Great Cave Squig (Night Goblin only) +32 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Battle Standard:* The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
- *Night Goblin:* The model gains the Hatred (Dwarfs) special rule. This changes their Troop Type to Infantry (Character, Night Goblin).
- *Forest Goblin:* The model gains the Poisoned Attacks special rule. This changes their Troop Type to Infantry (Character, Forest Goblin).

#entry("ODDGIT")
#profile(
  (name: "Oddgit", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 1, ld: 7, points: 60),
)
#field("TROOP TYPE", "Infantry (Character, Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "An Oddgit is a Level 1 Wizard which can use spells from the Lore of da Little Waaagh!")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Night Goblin +10 points
  - Forest Goblin +15 points
- May be upgraded to a Level 2 Wizard +35 points
- May be mounted on one of the following
  - Giant Wolf (Common Goblin only) +12 points
  - Giant Spider (Forest Goblin only) +14 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Night Goblin:* The model gains the Hatred (Dwarfs) and Magic Mushrooms special rules. This changes their Troop Type to Infantry (Character, Night Goblin). A Night Goblin Oddnob can use spells from the Lore of da Little Waaagh! or da Bad Moon.
- *Forest Goblin:* The model gains the Poisoned Attacks and Spider Venom special rules. This changes their Troop Type to Infantry (Character, Forest Goblin). A Forest Goblin Oddnob can use spells from the Lore of da Little Waaagh! or da Spider God.

#entry("SQUIGBOSS")
#profile(
  (name: "Squigboss", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 6, points: 50),
  (name: "Gnasha-Squig", m: "*", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 2, ld: 3, points: ""),
)
#field("TROOP TYPE", "Infantry (Character, Night Goblin/Squig)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Great weapon, light armour")
#field("OPTIONS", "")

- May be mounted on a Great Cave Squig (replacing the Gnasha-Squig) +32 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Fear Elves, Hatred (Dwarfs), Loner")

- *Gnasha-Squig:* Squigbosses and Gnasha-Squigs follow the split profile rules for Cavalry.
- *Mycophile's Pouch:* At the start of each of your turns, the Squigboss can bestow one of the following shrooms to any unit of Squigs they are with. Each shrooms effect lasts until the start of your next turn. A unit can only be under the effect of one shroom type at a time.
  - *Crimson Deffcap:* All Squigs in the unit may roll an extra D6 for their Random Movement and discard the lowest result.
  - *Yellow Lurka:* All Squigs in the unit gain the Multiple Wounds (2) special rule.
  - *Sproutin' Moon:* All Squigs in the unit gain +1 Attack.
- *Squigboss:* Models with this special rule joining Mixed Units follow the rules for Handlers.

#entry("DANKHOLD TROLLBOSS")
#profile(
  (name: "Dankhold Trollboss", m: 6, ws: 4, bs: 1, s: 6, t: 5, w: 5, i: 1, a: 5, ld: 7, points: 200),
)
#field("TROOP TYPE", "Monstrous Creature (Character, Troll)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Loner, Magical Resistance (3), Regeneration (4+), Stupidity")

- *Copious Troll Vomit:* In addition to their normal Attacks, models with this special rule inflicts D3 automatic Strength 5 hits which Ignores Armour Saves.

= CHARACTER MOUNTS

#entry("WAR BOAR", first: true)
#profile(
  (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("OPTIONS", "")

- May take barding (Common or Black orc Only) free

#field("SPECIAL RULES", "Mighty Blow (2), Natural Armour (6+)")

#entry("GRUNTA")
#profile(
  (name: "Grunta", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 4, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Animal)")
#field("BASE SIZE", "50x75")
#field("OPTIONS", "")

- May take barding free

#field("SPECIAL RULES", "Mighty Blow (2), Natural Armour (6+)")

#compact-entry("WYVERN")[
#profile(
  (name: "Wyvern", m: 4, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 3, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monster (Wyvern)")
#field("BASE SIZE", "50x50 or 50x100")
#field("SPECIAL RULES", "Fly (8), Natural Armour (4+), Poisoned Attacks")
]

#compact-entry("MAW-KRUSHA")[
#profile(
  (name: "Maw-krusha", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 4, ld: 6, points: "-"),
)
#field("TROOP TYPE", "Monster (Wyvern)")
#field("BASE SIZE", "50x50 or 50x100")
#field("SPECIAL RULES", "Fly (5), Impact Hits (D6), Natural Armour (3+)")
]

#entry("GIANT WOLF")
#profile(
  (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50")
#field("OPTIONS", "")

- May take barding +5 points

#compact-entry("GIANT CAVE SQUIG")[
#profile(
  (name: "Great Cave Squig", m: "*", ws: 4, bs: 0, s: 6, t: 4, w: 3, i: 3, a: 3, ld: 3, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Squig)")
#field("BASE SIZE", "40x40 or 50x50")
#field("SPECIAL RULES", "Immunity (Psychology), Loner, Random Movement (3D6), Vanguard")
]

#entry("GIANT SPIDER")
#profile(
  (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 2, points: "-"),
)
#field("TROOP TYPE", "War Beast (Animal)")
#field("BASE SIZE", "25x50")
#field("SPECIAL RULES", "Poisoned Attacks, Wall-crawler")

- *Creeping Assault:* Unlike other mounts, Giant Spiders are allowed to attack when assaulting buildings.

#compact-entry("GIGANTIC SPIDER")[
#profile(
  (name: "Gigantic Spider", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: "-"),
)
#field("TROOP TYPE", "Monstrous Beast (Animal)")
#field("BASE SIZE", "50x50")
#field("SPECIAL RULES", "Natural Armour (6+), Poisoned Attacks, Wall-crawler")
]

= CORE UNITS

#entry("ORC BOYZ", first: true)
#profile(
  (name: "Orc", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 5),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Polearms (Common Orcs only) +2 points/model
  - Great weapons +3 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May take light armour (Common Orcs only) +0.5 point/model
- May upgrade two Savage Orcs to a Big Stabba for every 10 models in the unit +10 points/Big Stabba
- May upgrade one Orc Boy to a Leader +5 points
- May upgrade one Orc Boy to a Musician +5 points
- May upgrade one Orc Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Size Matters")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Savage Orc).
- *Big Stabbas:* A unit of Savage Orc Boyz may be upgraded to include Big Stabbas. This is represented by including one or more Big Stabba models in the unit. A Big Stabba is mounted on two Infantry bases and must be placed to cover both the first and second rank of the unit, but is otherwise equipped like the rest of the unit. Each Big Stabba model causes D3 Impact Hits with the Multiple Wounds (D3) special rule. Big Stabbas are always the last models to be removed as casualties (excluding any Command Group models); the weapons are picked up by other Savage Orcs in the unit should they be slain.

#entry("ARRER BOYZ")
#profile(
  (name: "Orc", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 7),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, bow")
#field("OPTIONS", "")

- May be upgraded to Savage Orcs +2 points/model
- May replace bows with one of the following:
  - Longbows (Common Orcs only) +1 point/model
  - Crossbows (Common Orcs only) +2 point/model
- May take light armour (Common Orcs only) +0.5 point/model
- May upgrade one Arrer Boy to a Leader +5 points
- May upgrade one Arrer Boy to a Musician +5 points
- May upgrade one Arrer Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Size Matters")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Savage Orc).

#field("NOTES", "")

- You may not have more units of Orc Arrer Boyz with crossbows than you have units of Common Orc Boyz.

#entry("BOAR BOYZ")
#profile(
  (name: "Orc", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 15),
  (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Common Orc)")
#field("MOUNT", "War Boar (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons (Savage Orcs only) +1 point/model
  - Light lances +1.5 points/model
- May take shields (unless armed with additional hand weapons) +1 point/model
- May take light armour (Common Orcs only) +1 point/model
- May upgrade one Boar Boy to a Leader +5 points
- May upgrade one Boar Boy to a Musician +5 points
- May upgrade one Boar Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Mighty Blow (2) (War Boars only), Natural Armour (6+), Size")

*Matters*

#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Cavalry (Savage Orc).

#entry("GOBLIN GITZ")
#profile(
  (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 2),
  (name: "Nasty Skulker", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
)
#field("UNIT SIZE", "20+")
#field("TROOP TYPE", "Infantry (Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to one of the following:
  - Night Goblin free
  - Forest Goblin +1 point/model
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms (Common and Night Goblins only) +1.5 points/model
  - Great weapons +2 points/model
  - Shortbows +2 points/model
  - Bows (Common Goblins only) +3 points/model
- May take shields (unless armed with great weapons, bows or shortbows) +0.5 point/model
- May take light armour (Common and Night Goblins only) +0.5 point/model
- May include one Nasty Skulker for every 10 models in the unit (Common Goblins only) +6 points/model
- May upgrade one Goblin Git to a Jester (Common Goblins only) +20 points
- May take Netters (Night Goblins only) +25 points
- May include one Fanatic for every 10 models in the unit (Night Goblins only) +25 points/model
- May upgrade one Goblin Git to a Leader +5 points
- May upgrade one Goblin Git to a Musician +5 points
- May upgrade one Goblin Git to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Fear Elves")
#field("UPGRADES", "")

- *Night Goblin:* The model gains the Hatred (Dwarfs) special rule. This changes their Troop Type to Infantry (Character, Night Goblin).
- *Forest Goblin:* The model gains the Poisoned Attacks special rule. This changes their Troop Type to Infantry (Character, Forest Goblin).
- *Jester:* A Jester counts as being part of the unit's command group. A unit joined by a Jester gains +1 Leadership and may re-roll failed Animosity tests. At the start of each round of close combat in which a Goblin Jester is involved, roll a dice and consult the table below:

*D6 Result: 1 Oh Dear!* The unit the jester is attached to suffers \-1 To Hit in close combat this turn. *2\-3 Nothing Happens:* The Jester has no effect this turn. *4\-6 You Annoying Little…!* All enemy units in base contact with the Jester's unit suffer \-1 To Hit in close combat this turn. This has no effect on units with Immunity (Psychology).

- *Nasty Skulkers:* Nasty Skulkers are equipped with two hand weapons and have the Hidden special rule. They may be targeted separately from the rest of the unit, just like characters. In addition, they have the Always Strikes First and Armour Piercing (1) special rules in any turn they are revealed or the unit they are with successfully charges an enemy in the flank or rear.
- *Netters:* At the start of each round of close combat, a unit including Netters must attempt to entangle one of the units they are fighting in their front arc. Roll a D3 for each of the first three ranks of 5 or more models in your unit; the result is the number of enemy models has become entangled (distributed as hits from shooting, but only affecting models that are allowed to strike). However, for each natural 1 rolled on these dice, the Netters have managed to cast the nets amongst their own ranks and entangle a member of their own unit instead. A model that has been entangled suffers a \-1 penalty to their Attacks (this applies to both the rider and the mount) until the end of the close combat round.

#entry("FANATICS")
#profile(
  (name: "Fanatic", m: "*", ws: "-", bs: "-", s: 5, t: 3, w: 1, i: 3, a: "*", ld: 10, points: "-"),
)
#field("TROOP TYPE", "Infantry (Night Goblin)")
#field("BASE SIZE", "25 or 30 (round)")
#field("EQUIPMENT", "Giant ball and chain")
#field("OPTIONS", "")

- Each individual Fanatic may replace giant ball and chain with Twackwheezer Puffshrooms free

#field("SPECIAL RULES", "Immunity (Psychology), Random Movement (2D6)")

- *Fanatic:* Fanatics deploy following the rules for Hidden models. However, they are not revealed like other Hidden models, but instead follow the rules below:

*\- Release the Fanatics:* Fanatics are automatically released when an enemy unit comes to within 8" of the concealing unit's Line of Sight. The moving unit stops immediately (fliers land). Once the Fanatic's movement has been resolved, the unit can continue their move (unless panicked). When a Fanatic is released, you may choose the direction in which it travels, and the point on the concealing unit from which it starts. Fanatics move 2D6" using the rules for Random Movement, measured from the base of its unit. After release, Fanatics are treated as individual units. In your subsequent turns they must move in the Compulsory Moves subphase using the Random Movement special rule, but they always move in a random direction.

*\- Splat!:* If a Fanatic's move would bring it into contact with another unit, then he moves through rather than stopping. If the Fanatic's move would end within one or more units, then he automatically bounces through them – place the Fanatic model 1" beyond the unit(s), in the direction he was moving. When a Fanatic moves through any unit it inflicts D6 Strength 5 Armour Piercing (1) hits.

*\- Force of Destruction:* Fanatics cannot be charged, but models can move into contact with them. Any unit that does so takes 2D6 Strength 5 Armour Piercing (1) hits. The Fanatic model is then removed, and the unit may carry on with its move.

*\- Out of Control:* A Fanatic is removed immediately as a casualty when:

- It contacts a piece of terrain of any kind that's not open ground.
- It contacts another Fanatic (both Fanatics are removed).
- It moves off a table edge.
- It rolls a double for movement. This does not apply the first time the Fanatic moves.
- Any unit moves into contact with the Fanatic.

#field("UPGRADE", "")

- *Thwackwheezer Puffshrooms:* Twackwheezer Puffshrooms replace the Fanatic's normal Strength 5 Hits. All models Hit must pass a Toughness test or suffer a Wound which Ignores Armour Saves. In addition, all units where the majority of the models are within 6" of a Fanatic with this upgrade count as being in soft cover.

#field("NOTES", "")

- Fanatics may only be taken as upgrades in units of Night Goblin Gitz, not as stand-alone units. Victory Points are rewarded for each slain Fanatic individually.

#entry("WOLF RIDERS")
#profile(
  (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 8),
  (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Common Goblin)")
#field("MOUNT", "Giant Wolf (Animal)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
  - Bows +2 points/model
- May take light armour +0.5 point/model
- May upgrade one Wolf Rider to a Leader +5 points
- May upgrade one Wolf Rider to a Musician +5 points
- May upgrade one Wolf Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Fast Cavalry, Fear Elves")

#entry("SPIDER RIDERS")
#profile(
  (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 11),
  (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 2, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Forest Goblin)")
#field("MOUNT", "Giant Spider (Animal)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
- May upgrade one Spider Rider to a Leader +5 points
- May upgrade one Spider Rider to a Musician +5 points
- May upgrade one Spider Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Animosity, Fast Cavalry, Fear Elves, Poisoned Attacks (including Giant Spiders), Wall-")

*crawler*

- *Creeping Assault:* Unlike other mounts, Giant Spiders are allowed to attack when assaulting buildings.

#compact-entry("SPIDER SWARMS")[
#profile(
  (name: "Spider Swarm", m: 4, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 1, a: 8, ld: 2, points: 40),
)
#field("UNIT SIZE", "2-10")
#field("TROOP TYPE", "Swarm (Animal)")
#field("BASE SIZE", "40x40")
#field("SPECIAL RULES", "Poisoned Attacks, Wall-crawler")
]

#entry("SNOTLINGS")
#profile(
  (name: "Snotlings", m: 4, ws: 2, bs: 0, s: 2, t: 2, w: 6, i: 3, a: 6, ld: 4, points: 20),
)
#field("UNIT SIZE", "2-10")
#field("TROOP TYPE", "Swarm (Snotling)")
#field("BASE SIZE", "40x40")
#field("OPTIONS", "")

- May take Explodin' Spores +5 points/model

#field("SPECIAL RULES", "")

- *Mimic:* A Snotling unit must deploy within 6" of friendly Orc or Goblin unit, and must attempt to move to within 6" of one if further away. If a Snotling unit is within 6" of a friendly Orc or Goblin unit, they will mimic the nearest of these. If the Orc or Goblin unit declares a charge, the Snotling unit must also declare a charge against the same target. If the Orc or Goblin unit flees, the Snotling unit will move in the same direction.

#field("UPGRADES", "")

- *Explodin' Spores:* Explodin' Spores automatically hit and have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "3", "Ignores Armour Saves, Quick to Fire"))

= SPECIAL UNITS

#entry("BIG 'UNS", first: true)
#profile(
  (name: "Big 'Un", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 8),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Polearms (Common Orcs only) +2 points/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Light armour (Common Orcs only) +0.5 point/model
  - Medium armour (Common Orcs only) +1.5 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May take medium armour (Common Orcs only) +1 point/model
- May upgrade two Savage Orcs to a Big Stabba for every 10 models in the unit +10 points/Big Stabba
- May upgrade one Big 'Un to a Leader +5 points
- May upgrade one Big 'Un to a Musician +5 points
- May upgrade one Big 'Un to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Size Matters")
#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Infantry (Savage Orc).

#field("NOTES", "")

- You may take 1 unit of Big 'Uns or Boar Boy Big 'Uns for each Orc Warboss in your army.

#entry("BIG 'UN BOAR BOYZ")
#profile(
  (name: "Big 'Un", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 18),
  (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Common Orc)")
#field("MOUNT", "War Boar (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons (Savage Orcs only) +1 point/model
  - Light lances +1.5 points/model
- May take shields (unless armed with additional hand weapons) +1 point/model
- May choose one of the following:
  - Light armour (Common Orcs only) +1.5 point/model
  - Medium armour (Common Orcs only) +3 points/model
- May upgrade one Big 'Un Boar Boy to a Leader +5 points
- May upgrade one Big 'Un Boar Boy to a Musician +5 points
- May upgrade one Big 'Un Boar Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Mighty Blow (2) (War Boars only), Natural Armour (6+), Size")

*Matters*

#field("UPGRADES", "")

- *Savage Orc:* The model gains the Frenzy and Warpaint special rules. This changes their Troop Type to Cavalry (Savage Orc).

#field("NOTES", "")

- You may take 1 unit of Big 'Uns or Boar Boy Big 'Uns for each Orc Warboss in your army.

#entry("BOAR CHARIOT")
#profile(
  (name: "Boar Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 80),
  (name: "Orc", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
  (name: "War Boar", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 (Common Orc)")
#field("DRAWN BY", "2 War Boars (Animal)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May take an additional Orc +5 points
- May take light lances +2 points
- May take scythes +5 points
- May be upgraded to a standard bearer +10 points

#field("SPECIAL RULES", "Mighty Blow (1) (Orc only), Mighty Blow (2) (War Boars only), Natural Armour (6+), Size")

*Matters*

#entry("BRUTES")
#profile(
  (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 26),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Large Infantry (Common Orc)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Two hand weapons, medium armour")
#field("OPTIONS", "")

- May replace hand weapons with one of the following:
  - Polearms +2 points/model
  - Great weapons +4 points/model
- May upgrade one Brute to a Leader +5 points

#field("SPECIAL RULES", "Animosity, Immunity (Fear), Mighty Blow (1), Size Matters")

- *Duff Up da Big Thing:* Orc Brutes may re-roll failed To Hit rolls against Monstrous Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creatures and Monsters.

#entry("BLACK ORCS")
#profile(
  (name: "Black Orc", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 8, points: 14),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "Infantry (Black Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, heavy armour")
#field("OPTIONS", "")

- May take additional hand weapons +1 point/model
- May take shields +1 point/model
- May take spears +1 point/model
- May take great weapons +3 points/model
- May upgrade one Black Orc to a Leader +5 points
- May upgrade one Black Orc to a Musician +5 points
- May upgrade one Black Orc to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Armed to da Teef, Immunity (Psychology), Mighty Blow (1)")

#entry("NASTY SKULKERS")
#profile(
  (name: "Nasty Skulker", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 6),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Two hand weapons")
#field("SPECIAL RULES", "Animosity, Fear Elves, Scouts, Skirmishers")

- *Puffball Smoke Bomb:* At the end of any Close Combat in which a unit of Nasty Skulkers take part, before taking break tests, they may choose to use their smoke bombs. On a 4+, the unit may disengage the combat by making a flee move. If they do so, the enemy cannot pursue them and they will rally automatically in their next turn.
- *Surprise!:* Nasty Skulkers have the Always Strikes First and Armour Piercing (1) special rules in any turn they successfully charge an enemy in the flank or rear.

#entry("WOLF CHARIOT")
#profile(
  (name: "Wolf Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 45),
  (name: "Goblin", m: "-", ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
  (name: "Giant Wolf", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("UNIT SIZE", "1-3")
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "2 (Common Goblin)")
#field("DRAWN BY", "2 Giant Wolves (Animal)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Hand weapon, light armour")
#field("OPTIONS", "")

- May take an additional Goblin +3 points
- May take an additional Giant Wolf +3 points
- May take light lances +2 points
- May take shortbows +2 points
- May take scythes +5 points
- May upgrade one Wolf Chariot to a standard bearer +10 points

#entry("SPEAR CHUKKA")
#profile(
  (name: "Spear Chukka", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 35),
  (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  (name: "Orc Bully", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine (Bolt Thrower)")
#field("CREW", "3 Goblins (Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take an Orc Bully +5 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Orc Bully:* An Orc Bully counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.

#field("NOTES", "")

- You may take 1\-2 Spear Chukka as a single Special choice.

#entry("ROCK LOBBA")
#profile(
  (name: "Rock Lobber", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
  (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  (name: "Orc Bully", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: ""),
)
#field("TROOP TYPE", "War Machine (Stone Thrower)")
#field("CREW", "3 Goblins (Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25 (Goblin), 25x25 or 30x30 (Orc Bully)")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take an Orc Bully +5 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Orc Bully:* An Orc Bully (Common Orc) counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.

#entry("SQUIG HUNTERS")
#profile(
  (name: "Squig Hunter", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 4),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Night Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Clubs +1 point/model
  - Nets +1 point/model
  - Prodders +1 point/model
- May upgrade one Squig Hunter to a Leader +5 points

#field("SPECIAL RULES", "Animosity, Hatred (Dwarfs), Immunity (Psychology), Loner, Scouts, Skirmishers")

- *Hunting Team:* The models in a unit of Night Goblin Squig Hunters may be armed with number of different weapons. This is represented by including one or more models with that weapon in the unit. If the unit includes Nets the unit follows the rules for Netters (see Night Goblin Gitz). If the unit includes Clubs all models fight with +1 Strength in close combat. If the unit includes Prodders all models gain the Fight in Extra Ranks (1) special rule.

#entry("SNEAKY SNUFFLERS")
#profile(
  (name: "Sneaky Snuffler", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 6),
  (name: "Snufflesquig", m: 4, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Infantry (Night Goblin/Squig)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Animosity, Immunity (Psychology), Hatred (Dwarfs), Loner, Skirmishers")

- *Snufflesquig:* Sneaky Snufflers and Snufflesquigs follow the split profile rules for Cavalry.
- *Mooncap Mushrooms:* At the start of your movement phase, as long as it is not in close combat or fleeing, you can say that this unit is harvesting mooncap mushrooms. If you do so, it cannot move in that movement phase, but you can roll a D6. On a 2+, pick a friendly Night Goblin unit within 6" of this unit. This unit gains the Frenzy special rule until the start of your next turn.

#entry("SQUIG HERD")
#profile(
  (name: "Cave Squig", m: "*", ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: 9),
  (name: "Herder", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 3),
)
#field("UNIT SIZE", "10+")
#field("TROOP TYPE", "War Beast (Squig)")
#field("HANDLER", "Herder (Night Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Random Movement (3D6), Hatred (Dwarfs) (Herder only), Immunity (Psychology), Loner, Mixed Unit")

- *Squigs Go Wild:* If the unit would flee, or if at any time there are only Squigs left alive in the unit with no Herders, all units within 2D6" (friend and foe) immediately take D6 Strength 5 hits. For every 5 Cave Squigs remaining when the Squigs Go Wild, add +1 to the number of hits caused. After damage is resolved, the Squig Herd is removed in its entirety.

#field("NOTES", "")

- One Herder must be included for every five Cave Squigs in the unit.

#entry("SQUIG HOPPERS")
#profile(
  (name: "Squig Hopper", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 12),
  (name: "Cave Squig", m: "*", ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
)
#field("UNIT SIZE", "5+")
#field("TROOP TYPE", "Cavalry (Night Goblin)")
#field("MOUNT", "Cave Squig (Squig)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take light lances +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Squig Hopper to a Leader +5 points

#field("SPECIAL RULES", "Random Movement (3D6), Hatred (Dwarfs), Immunity (Psychology), Loner, Skirmishers, Vanguard")

#entry("GIGANTIC SPIDER RIDERS")
#profile(
  (name: "Forest Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 33),
  (name: "Gigantic Spider", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Cavalry (Forest Goblin)")
#field("MOUNT", "Gigantic Spider (Animal)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
- May upgrade one Forest Goblin Gigantic Spider Rider to a Leader +5 points
- May upgrade one Forest Goblin Gigantic Spider Rider to a Musician +5 points
- May upgrade one Forest Goblin Gigantic Spider Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Animosity, Fear Elves, Natural Armour (6+), Poisoned Attacks (including Gigantic Spiders), Wall-crawler")

#entry("TROLLS")
#profile(
  (name: "Troll", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 1, a: 3, ld: 6, points: 44),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Troll)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +9 points/model
- May be upgraded to one of the following:
  - River Trolls +8 points/model
  - Stone Trolls +8 points/model

#field("SPECIAL RULES", "Loner, Regeneration (4+), Stupidity")

- *Troll Vomit:* In addition to their normal Attacks, models with this special rule inflicts one automatic Strength 4 hit which Ignores Armour Saves after resolving all their normal Attacks. This cannot be used with supporting attacks.

#field("UPGRADES", "")

- *River Trolls:* River Trolls have the Marsh Strider and River Strider special rules. Additionally, enemies attempting to attack a River Troll in close combat suffer a \-1 penalty on their To Hit rolls due to the stench and slime.
- *Stone Trolls:* Stone Trolls have the Magic Resistance (2) and Natural Armour (5+) special rules.

#entry("BADLANDS OGRES")
#profile(
  (name: "Ogre", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 25),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Infantry (Ogre)")
#field("BASE SIZE", "40x40 or 50x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Bucklers +3 points/model
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May choose one of the following:
  - Light armour +1.5 points/model
  - Medium armour +4.5 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points

#field("SPECIAL RULES", "Impact Hits (1), Loner")

= RARE UNITS

#entry("BRUTE RAGERZ", first: true)
#profile(
  (name: "Brute Rager", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 26),
)
#field("UNIT SIZE", "3-5")
#field("TROOP TYPE", "Large Infantry (Common Orc)")
#field("BASE SIZE", "30x30 or 40x40")
#field("EQUIPMENT", "Light armour")
#field("OPTIONS", "")

- Must choose one of the following:
  - Flails +4 points/model
  - Great weapons +6 points/model
- May be upgraded to Weirdbrute Wrekkaz +6 points/model
- May upgrade one Brute Rager to a Leader +5 points

#field("SPECIAL RULES", "Animosity, Frenzy, Mighty Blow (1), Size Matters, Skirmishers")

- *Green Rage:* Models with this special rule may make an additional Attack for every unsaved Wound they cause in close combat. These additional Attacks cannot generate additional Attacks.

#field("UPGRADES", "")

- *Weirdbrute Wrekkaz:* Models with this upgrade gain a 5+ Ward save.

#entry("GORE-GRUNTAS")
#profile(
  (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 56),
  (name: "Grunta", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 4, points: ""),
)
#field("UNIT SIZE", "3+")
#field("TROOP TYPE", "Monstrous Cavalry (Common Orc)")
#field("MOUNT", "Grunta (Animal)")
#field("BASE SIZE", "50x75")
#field("EQUIPMENT", "Hand weapon, medium armour")
#field("OPTIONS", "")

- May take light lances +2 points/model
- May take barding free
- May upgrade one Gore-grunta to a Leader +5 points
- May upgrade one Gore-grunta to a Musician +5 points
- May upgrade one Gore-grunta to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points

#field("SPECIAL RULES", "Animosity, Mighty Blow (1), Mighty Blow (2) (Gruntas only), Natural Armour (6+), Size")

*Matters*

#entry("MAW-GRUNTA")
#profile(
  (name: "Maw-grunta", m: 7, ws: 3, bs: 0, s: 5, t: 6, w: 5, i: 3, a: 5, ld: 4, points: 235),
  (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: ""),
)
#field("TROOP TYPE", "Monster (Animal)")
#field("CREW", "1 Brute (Common Orc)")
#field("BASE SIZE", "50x100")
#field("EQUIPMENT", "Two hand weapons (Brute only), medium armour, barding")
#field("OPTIONS", "")

- May take two additional crew armed with great weapons +10 points

#field("SPECIAL RULES", "Mighty Blow (1) (Orc brute only), Impact Hits (D6), Mighty Blow (2), Natural Armour (5+), Size Matters")

#entry("DOOM DIVER CATAPULT")
#profile(
  (name: "Doom Diver Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 80),
  (name: "Goblin Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
)
#field("TROOP TYPE", "War Machine (Stone Thrower)")
#field("CREW", "3 Goblins (Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Hand weapon")

- *Doom Diver Catapult:* A Doom Diver Catapult uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "5", "Ignores Armour Saves"))

Unlike other Stone Throwers, the Doom Diver uses a 30mm template. After rolling the scatter dice, you may roll a D6 and move the Doom Diver Goblin model by that many inches in any direction.

Should the artillery dice roll a misfire, roll a D6 and consult the Doom Diver Misfire table below:

#chart((("D6", "Result"), ("1-2", "Destroyed! The Doom Diver Catapult is destroyed."), ("3-4", "Disabled: The Doom Diver Catapult cannot shoot this turn or in the controlling player's next turn."), ("5", "Skidmarks: The Doom Diver will hit the first thing along the path towards his chosen target point. If this
is a piece of terrain he is removed immediately and inflicts no damage. If this is a unit (friend or foe) he
will inflict D6 Strength 5 hits, before being removed. The catapult may be fired next turn as normal."), ("6", "Wild Shot! The Doom Diver is fired D6x10\" in a random direction. This roll determines the impact point
for the Doom Diver – he is unable to move the impact point D6\" in this case. The catapult may be fired
next turn as normal.")))
#field("OPTIONS", "")

- May take an Orc Bully +5 points

#field("SPECIAL RULES", "Fear Elves")
#field("UPGRADES", "")

- *Orc Bully:* An Orc Bully counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.

#entry("MANGLER SQUIGS")
#profile(
  (name: "Mangler Squigs", m: "*", ws: "-", bs: "-", s: 6, t: 4, w: 6, i: 3, a: "*", ld: 3, points: 100),
)
#field("TROOP TYPE", "Monstrous Beast (Squig)")
#field("BASE SIZE", "50 or 80 (round)")
#field("SPECIAL RULES", "Immunity (Psychology), Random Movement (3D6).")

- *Ker-splat!:* If the Mangler Squigs' move would bring them into contact with another unit, then they move through rather than stopping. If the Mangler Squigs' move would end within one or more units, then they automatically bounce through them – place the Mangler Squigs 1" beyond the unit(s), in the direction in which they were moving. When Mangler Squigs move through a unit (friend or foe) they inflict 2D6 Strength 6 hits.
- *Gone Crazy!* Mangler Squigs that make a Ker-Splat! attack Go Crazy. Once Mangler Squigs have Gone Crazy they will move in a random direction when they move in the Compulsory Moves sub-phase.
- *Force of Total Destruction:* Mangler Squigs cannot be charged, but models can move into contact with them. Any unit that moves into contact with Mangler Squigs takes 2D6 Strength 6 hits for moving into the Squigs and a further D6 Strength 6 hits due to the Mangler Squigs' death throes. The Mangler Squig model is then removed, and the unit may carry on with its move.
- *Completely Out of Control:* Mangler Squigs are removed as a casualty when:
  - They contact other Mangler Squigs (both Mangler Squigs are removed as casualties).
  - They have Gone Crazy and rolled a triple for movement.
  - Any unit moves into contact with the Mangler Squigs – see the Force of Total Destruction rule, above.
- *Watch Out!* Mangler Squigs must take a Dangerous Terrain test if they move over any of the following types of terrain: Forests, Marshland, Obstacles or Mystical Monuments. If their move would take them into contact with a Building, Impassable Terrain or off a table edge then they must take a Dangerous Terrain test and will stop 1" short of the obstruction.

#field("NOTES", "")

- Mangler Squigs have a Unit Strength of 6.

#entry("SQUIG GOBBA")
#profile(
  (name: "Squig Gobba", m: "-", ws: 4, bs: 0, s: 6, t: 4, w: 3, i: 3, a: 3, ld: 3, points: 75),
  (name: "Tender", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monstrous Beast (Squig)")
#field("HANDLER", "4 Tenders (Night Goblin)")
#field("BASE SIZE", "50x75, 50x100 or 60x100")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Hatred (Dwarfs) (Tenders only), Immunity (Psychology), Mixed Unit.")

- *Squig Gobba:* The Squig Gobba may fire in the Shooting Phase as long as at least one Tender remains and it is not in close combat. When firing the Squig Gobba, roll 3D6 and consult the table below:

#chart((("Total", "Result"), ("3-4", "Acid Guts: Every model within 6\" of the Squig Gobba (including the Night Goblin Tenders) takes a
Strength 2 Hit which Ignores Armour saves."), ("5-6", "Stomach Rumblings: Nothing happens this turn, but you must instead roll 4D6 when firing the
Squig Gobba next shooting phase."), ("7-17", "Squig Torrent: This is resolved as a shot from a Stone Thrower that uses the large round template
with a range of 36\". Any model covered by the template suffers a Strength 4 hit. If a misfire is
rolled, the Squig Gobba suffers D3 Wounds and the shot is wasted."), ("18+", "Intestinal Explosion: The Squig Gobba immediately makes a Breath Weapon Attack at Strength 6.
After the attack has been resolved, the Squig Gobba suffers D3 Wounds.")))

- *Tied Down:* The Squig Gobba cannot move after it has been deployed except pivoting on the spot. It may not pursue an enemy it defeats in combat. If the Squig Gobba breaks from combat, it is automatically destroyed.

#entry("COLOSSAL SQUIG")
#profile(
  (name: "Colossal Squig", m: "*", ws: 4, bs: 0, s: 7, t: 5, w: 6, i: 3, a: 6, ld: 3, points: 150),
)
#field("TROOP TYPE", "Monster (Squig)")
#field("BASE SIZE", "60x100 or 100x150")
#field("SPECIAL RULES", "Immunity (Psychology), Random Movement (4D6).")

- *Dinner's Dinner!:* When the Colossal Squig's Random Movement special rule brings it into contact with any unit (friend or foe), it will attack it normally as if it were an enemy, and counts as charging that unit. This combat will continue until resolved normally.
- *Falls Apart:* When a Colossal Squig is removed as a casualty, every model in base contact with it suffers an automatic Strength 3 hit.

#entry("ARACHNAROK SPIDER")
#profile(
  (name: "Arachnarok Spider", m: 7, ws: 4, bs: 0, s: 5, t: 6, w: 8, i: 4, a: 8, ld: 3, points: 260),
  (name: "Forest Goblin", m: 4, ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monster (Animal)")
#field("CREW", "8 (Forest Goblin)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Spear, shortbow (Forest Goblins only)")
#field("OPTIONS", "")

- May choose one of the following:
  - Flinger +20 points
  - Catchweb Spidershrine +40 points

#field("SPECIAL RULES", "Immunity (Psychology), Natural Armour (4+), Poisoned Attacks (including the crew), Stubborn, Wall-crawler")

- *Venom Surge:* When fighting Monstrous Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creature or Monsters; before rolling to hit, nominate one of the Arachnarok's attacks to be made with the Venom Surge, and roll it separately. This is a Poisoned Attack with the Multiple Wounds (D6) special rule.

#field("UPGRADES", "")

- *Catchweb Spidershrine:* A Forest Goblin Oddnob mounted on an Arachnarok Spider with a Catchweb Spidershrine has the Loremaster (Spells of da Spider God) special rule and adds +1 to his channelling attempts.
- *Flinger:* The Flinger is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "1(3)", "Multiple Wounds (D3)"))

Any unit hit by a Flinger suffer \-1 to its Movement, Weapon Skill, Ballistic Skill, Strength and Initiative until the end of its next turn. If a Misfire is rolled, Flinger does not use the Stone Thrower Misfire table – a misfire result simply means that the Flinger may not shoot this turn.

#entry("PUMP WAGON")
#profile(
  (name: "Pump Wagon", m: "*", ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 45),
  (name: "Snotling", m: "-", ws: 2, bs: 0, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 4, points: ""),
)
#field("TROOP TYPE", "Chariot (Armour Save 6+)")
#field("CREW", "4 Snotlings (Snotlings)")
#field("BASE SIZE", "50x50, 50x75 or 50x100")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May take up to 6 additional Snotlings +1 point/model
- May take scythes +5 points
- May take Flappas +5 points
- May take Out-rigga +10 points
- May take Spiky Roller +15 points
- May take Giant Explodin' Spores +20 points

#field("SPECIAL RULES", "Impact Hits (2D6), Random Movement (2D6), Unstable")

- *Pump Harder Ladz!:* Before moving a Pump Wagon you may declare that the crew are 'pumping harder'. If you do so, you must roll 3D6 for its random movement.
- *Too Pumped Up:* Any time a Pump Wagon rolls two or more l's for its movement, it will not move as normal but instead veers out of control. Re-roll the Random Movement distance (including the extra dice if you were 'pumping harder'), but this time the Pump Wagon will move in a random direction. If the re-rolled movement also includes two or more ls, then the Pump Wagon has crashed – remove it as a casualty. Otherwise, all Random Movement rules apply, except that a Pump Wagon halted by a friendly unit will inflict 2D6 Impact Hits on the unit that blocks its move.

#field("UPGRADES", "")

- *Flappas:* The Pump Wagon only has to take Dangerous Terrain tests if they end their move in Dangerous Terrain.
- *Giant Explodin' Spores:* The Pump Wagon's Impact Hits has the Ignores Armour Saves special rule.
- *Spiky Roller:* The Pump Wagon's Impact Hits have +1 Strength.
- *Out-rigga:* The Pump Wagon's Random Movement is increased by D6.

#field("NOTES", "")

- You may take 1\-2 Snotling Pump Wagons as a single Rare choice.
- For every 3 additional Snotling Crew, the model's Unit Strength is increased by 1.

#entry("DANKHOLD TROLL")
#profile(
  (name: "Dankhold Troll", m: 6, ws: 3, bs: 1, s: 6, t: 5, w: 4, i: 1, a: 4, ld: 6, points: 170),
)
#field("TROOP TYPE", "Monstrous Creature (Troll)")
#field("BASE SIZE", "50x50")
#field("EQUIPMENT", "Hand weapon")
#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +8 points

#field("SPECIAL RULES", "Magical Resistance (3), Regeneration (4+), Stupidity")

- *Copious Troll Vomit:* In addition to their normal Attacks, models with this special rule inflicts D3 automatic Strength 5 hits which Ignores Armour Saves.

#entry("ROGUE IDOL OF GORK")
#profile(
  (name: "Rogue Idol", m: 6, ws: 3, bs: 0, s: 7, t: 7, w: 10, i: 1, a: 4, ld: 8, points: 245),
)
#field("TROOP TYPE", "Monster (Animated Construct)")
#field("BASE SIZE", "100x50 or 150x100")
#field("SPECIAL RULES", "Animated Construct, Impact Hits (D6), Unstable, Ward save (6+).")

- *Da Big Un:* If it is possible for a Rogue Idol to charge an enemy it must do so (however if multiple targets are within charge range, its player may pick which to attack). At the start of any turn that a Rogue Idol is not able to charge or is not already in combat, its player must roll a D6. On a roll of a 1 it must instead charge a friendly unit if one is available to charge, and a single round of combat is fought as normal, after which the Rogue Idol is pushed 1" back if the charged unit does not break. If no friendly units are available to charge the Rogue Idol may do nothing this turn.

#entry("GIANT")
#profile(
  (name: "Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 175),
)
#field("TROOP TYPE", "Monster (Giant).")
#field("BASE SIZE", "50x50 or 50x75")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology), Stubborn.")

- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small round template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *Giant Special Attacks:* To determine what a Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Thump with Club"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on

either side) count towards the combat result. Otherwise, it will attack using the Stomp (2D6) special rule. A Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Giant fights using the Random Attacks (2D6) special rule this round. *\- Thump with Club:* The Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D3 Wounds which Ignores Armour Saves. If a double is rolled the Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

*D6 Result 1 Stuff into Bag:* The model is effectively removed as a casualty and can do nothing whilst in the bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the battle, and no longer counts as casualties. *2 Throw Back into Combat:* The victim is hurled into its own unit like a living missile. The victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are inflicted on the unit (save as normal). *3 Hurl:* The victim is hurled into an enemy unit within 12" of the Giant – randomly determine which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved Wounds from these hits count towards the Giant's combat result. If no enemy units are in range, treat this as a Throw Back into Combat result instead. *4\-5 Squash or Eat:* The model is removed as a casualty. *6 Pick Another:* Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and then choose another victim. Roll again on this table to see what the Giant does with it.

#entry("BONEGRINDER GIANT")
#profile(
  (name: "Bonegrinder Giant", m: 10, ws: 3, bs: 3, s: 8, t: 8, w: 10, i: 1, a: "*", ld: 10, points: 375),
)
#field("TROOP TYPE", "Monster (Giant).")
#field("BASE SIZE", "50x100, 60x100 or 100x150")
#field("EQUIPMENT", "Hand weapon")
#field("SPECIAL RULES", "Immunity (Psychology), Stubborn.")

- *Fall Over:* A Bonegrinder Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Bonegrinder Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Bonegrinder Giant falls over roll a D6. On a roll of 1, the Bonegrinder Giant falls over. A slain Bonegrinder Giant falls over automatically. To determine in which direction the Bonegrinder Giant falls, roll a scatter dice. Place the large round template in base contact with the Bonegrinder Giant in the direction of the scatter dice, measured from the centre of the Bonegrinder Giant's base. A model hit by a falling Bonegrinder Giant suffers a Strength 8 Hit with the Multiple Wounds (D6) special rule. If the unit is in combat and the Bonegrinder Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Bonegrinder Giant count towards the combat result. A Bonegrinder Giant that falls over automatically suffers 1 wound. If the Bonegrinder Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Bonegrinder Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Bonegrinder Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Bonegrinder Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Bonegrinder Giant may attack in close combat as usual on the turn he stands up.

- *Bonegrinder Giant Special Attacks:* To determine what a Bonegrinder Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Bonegrinder Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4", "Vomit"), ("5", "Kick"), ("6", "Crush")))

*BIG THINGS CHART *_Use this chart when fighting Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club (see Giants, but using the Random Attacks (3D6) special rule)")))

*BIGGER THINGS CHART *_Use this chart when fighting Monsters and Monstrous Creatures. _*D6 Result* 1 Yell and Bawl 2\-3 Thump with Club 4\-5 'Eadbutt 6 Grapple and\.\.\.

*\- 'Eadbutt:* The Bonegrinder Giant automatically inflicts D6 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Bonegrinder Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will attack using the Stomp (3D6) special rule. A Bonegrinder Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Bonegrinder Giant fights using the Random Attacks (3D6) special rule this round. *\- Thump with Club:* The Bonegrinder Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D6 Wounds which Ignores Armour Saves. If a double is rolled the Bonegrinder Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Bonegrinder Giant nor models in contact with it fight if they have not already done so this round. The Bonegrinder Giant automatically wins the combat by 3 points. *\- Vomit:* Place the flame template so that the narrow end is in base contact with the Bonegrinder Giant and the body of the template is over at least one other unit. All models (friendly and enemy) under the template suffer an automatic Strength 5 hit which Ignores Armour Saves. All unsaved Wounds from these hits count towards the combat result (unsaved Wounds on friendly models count to your opponent's combat result). Once damage has been resolved, roll a D6. On a roll of 1\-3, the Bonegrinder Giant falls over. *\- Kick:* Choose a model in base contact with the Bonegrinder Giant That model immediately receives a brutal toe-punt and is removed as a casualty. However, the victim's remains hurtle through its unit in the same manner as a shot from a bolt thrower (Look Out Sir! Applies as normal). The model immediately behind the victim suffers a Strength 8 hit with the Multiple Wounds (D3) special rule. If he is slain, the model behind him suffers a Strength 7 hit with the Multiple Wounds (D3) special rule, and so on, until the soggy remains fail to cause a casualty; or the unit runs out of ranks/files. *\- Crush!:* Place the small round template so that it is at least partially covering one or more models in base contact with the Giant, but not the Giant himself. The model under the centre of the template suffers an automatic Strength 10 hit with the Multiple Wounds (D6) special rule. Models around him might get lucky – the Giant's aim may be off; and only strike them a glancing blow (not that a glancing blow from a Giant is anything to be thankful for). Roll an artillery dice and halve the result – all other models (friendly and enemy) under the template suffer an automatic hit of this Strength. If the roll is a: misfire, the Giant manages to miss the rest of the unit.

*\- Grapple and\.\.\.:* Roll a D6 and consult the table below:

*D6 Result 1\-2 Knobbly Knee:* The victim immediately suffers D3 Wounds which Ignores Armour Saves and has their Weapon Skill and Initiative reduced to 1 until the end of the next player turn. *3 Slam:* The victim immediately suffers 2D3 Wounds which Ignores Armour Saves. If there is another enemy unit in base contact with the Bonegrinder Giant, that unit also suffers 2D3 Wounds which Ignores Armour Saves. If there are two or more other enemy units in base contact with the Bonegrinder Giant, randomise to see which is slammed. *4 Bear Hug:* Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as a casualty with no saves of any kind allowed. *5 Fall Over:* Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as a casualty with no saves of any kind allowed. Then continue to resolve the Bonegrinder Giant falling over, in the direction of the target. *6 Punch, and\.\.\.:* The victim suffers D3 Wounds which Ignores Armour Saves, then roll again on this table.

*\- Pick Up and\.\.\.:* The Bonegrinder Giant stoops down and grabs a single Character in base contact from the target unit (Bonegrinder Giant player's choice). The Bonegrinder Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Bonegrinder Giant should be slain, any enemy trapped in its bag are freed at the
end of the battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 8 Hits which Ignores Armour saves, and D6 Strength 5 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Bonegrinder Giant – randomly
determine which. The victim is removed as a casualty, and the unit takes D6 Strength 5 hits.
Unsaved Wounds from these hits count towards the Bonegrinder Giant's combat result. If no
enemy units are in range, treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Bonegrinder Giant had rolled the Stuff into Bag result,
above, and then choose another victim. Roll again on this table to see what the Giant does with
it.")))

= SPECIAL CHARACTERS (LORDS)

#entry("GORBAD IRONCLAW", first: true)
#namecost("Da Great Leader, Warboss of the Ironclaw Tribe", "")
#profile(
  (name: "Gorbad Ironclaw", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 335),
  (name: "Gnarla (War Boar)", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Common Orc)")
#field("MOUNT", "Gnarla (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC ITEMS", "")

- *Morglor the Mangler:* Magic Weapon. This weapon gives Gorbad the Always Strikes First, Ignores Armour Saves and Multiple Wounds (D3) special rules.

#field("SPECIAL RULES", "Mighty Blow (1), Mighty Blow (2) (Gnarla only), Natural Armour (6+), Size Matters, Waaagh!")

- *Da Boss 'as a Plan!:* Gorbad must be the Army General and also counts as the Battle Standard Bearer. In addition, he has the Inspiring Presence (6) and Hold Your Ground (6) special rules.
- *Da Great Leader:* Friendly units within 18" of Gorbad that fail an Animosity test add Gorbad's current number of Wounds to their roll on the Animosity table.
- *Orcs are da Best:* An Orc & Goblin army that includes Gorbad may take one of unit of Common Orc Big 'Uns and Common Orc Boar Boy Big 'Uns as a Core choice instead of a Special choice.

#entry("AZHAG THE SLAUGHTERER")
#namecost("Warboss of the Bonerattlaz", "")
#profile(
  (name: "Azhag the Slaughterer", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 460),
  (name: "Skullmuncha (Wyvern)", m: 4, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 3, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Common Orc)")
#field("MOUNT", "Skullmuncha (Wyvern)")
#field("BASE SIZE", "50x50, 50x100 or 100x150")
#field("MAGIC ITEMS", "")

- *Slagga's Slashas:* Magic Weapon. Two hand weapons. The Slashas allow Azhag to re-roll failed To Hit rolls in the first round of combat.
- *Azhag's 'Ard Armour:* Magic Armour. Medium armour. The 'Ard Armour gives Azhag the Ward save (5+) special rule.
- *Daemon Staff:* Arcane Item. The Daemon Staff gives Azhag +1 to cast spells.
- *The Crown of Sorcery:* Enchanted Item. The crown makes Azhag a Level 2 Wizard who uses spells from the Lore of Death. In addition, Azhag suffers from Stupidity.

#field("SPECIAL RULES", "Fly (8), Mighty Blow (1), Natural Armour (4+), Poisoned Attacks (Skullmuncha only), Size")

*Matters, Waaagh!*

- *Get on Wiv it!* Azhag must be the Army General. Any unit within range of Azhag's Inspiring Presence that fails an Animosity test must immediately re-roll the dice.

#entry("GORFANG ROTGUT")
#namecost("Chieftain of Black Crag", "")
#profile(
  (name: "Gorfang Rotgut", m: 4, ws: 6, bs: 1, s: 5, t: 5, w: 3, i: 4, a: 4, ld: 9, points: 190),
)
#field("TROOP TYPE", "Infantry (Special Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Shield")
#field("MAGIC ITEMS", "")

- *The Red Fang:* Magic Weapon. The Red Fang gives the wielder +1 Attack and +1 To Hit in close combat.
- *Evil Sun Armour:* Magic Armour. Heavy armour. This armour gives Gorfang the Magic Resistance (2) special rule.

#field("SPECIAL RULES", "Hatred (Dwarfs), Mighty Blow (1), Size Matters, Waaagh!")

#entry("GROTFANG SKAB")
#namecost("Warboss of the Ironclaw Tribe", "")
#profile(
  (name: "Grotfang Ironclaw", m: 4, ws: 6, bs: 1, s: 5, t: 5, w: 3, i: 4, a: 4, ld: 9, points: 185),
  (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Common Orc)")
#field("MOUNT", "War Boar (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("EQUIPMENT", "Hand weapon, light armour, shield")
#field("MAGIC ITEMS", "")

- *The Crown of Gork:* Enchanted Item. All friendly units within 12" of Grotfang may re-roll failed Animosity tests.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters, Waaagh!")

- *Grotfang's Yell:* All friendly Orcs and Goblins within 12" of Grotfang gain +1 Leadership when taking Rally tests.

#entry("GRUMLOK & GAZBAG")
#namecost("Warboss of the Bloody Sun Boyz", "")
#profile(
  (name: "Grumlok", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 300),
  (name: "Gazbag", m: 4, ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Medium armour")
#field("MAGIC", "Gazbag is a Level 2 Wizard who uses the Lore of da Bad Moon.")
#field("OPTIONS", "")

- May take Magic Items up to a total of 100 points

#field("SPECIAL RULES", "Hatred (Dwarfs) (Gazbag only), Magic Mushrooms (see Night Goblin Oddnobs), Mighty")

*Blow (1)* (Grumlok only)*, Size Matters, Waaagh!*

#entry("GORDRAKK")
#namecost("The Fist of Gork", "")
#profile(
  (name: "Gordrakk", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 5, ld: 9, points: 500),
  (name: "Bigteef (Maw-krusha)", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 6, points: ""),
)
#field("TROOP TYPE", "Monster (Special Character, Common Orc)")
#field("MOUNT", "Bigteef (Wyvern)")
#field("BASE SIZE", "100x150")
#field("EQUIPMENT", "Heavy armour")
#field("MAGIC ITEMS", "")

- *Smasha and Kunnin':* Magic Weapon. Two hand weapons. When targeting a Wizard in close combat, Gordrakk may re-roll failed rolls To Hit and gains the Multiple Wounds (D3) special rule. When targeting a Character that is not a Wizard in close combat, Gordrakk may re-roll failed rolls To Wound and gains the Killing Blow special rule.

#field("SPECIAL RULES", "Fly (5), Impact Hits (2D6), Mighty Blow (1), Natural Armour (3+), Size Matters, Waaagh!.")

- *Voice of Gork:* All friendly units within 12" of Gordrakk gain the Devastating Charge special rule.

#entry("OGDRUZ SWAMPDIGGA")
#namecost("Da Troll Calla", "")
#profile(
  (name: "Ogdruz Swampdigga", m: 4, ws: 3, bs: 3, s: 4, t: 5, w: 3, i: 2, a: 1, ld: 8, points: 245),
)
#field("TROOP TYPE", "Infantry (Special Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Ogdruz Swampdigga is a Level 3 Wizard who can use spells from the Lore of Troll Magic.")
#field("MAGIC ITEMS", "")

- *Bog-wood Staff:* Magic Weapon. Great weapon. For each unsaved Wound inflicted with this weapon, Ogdruz recovers a lost Wound.
- *Trollhide Shawl:* Magic Armour. This item gives Ogdruz a 6+ armour save and the Regeneration (5+) special rule.

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters")

- *Da Troll Calla:* All friendly Trolls treat Ogdruz as the Army General.
- *Protect Da Boss:* Ogdruz may join and use "Look Out, Sir!" from friendly units of Trolls, even though they are not the same Troop Type.
- *Syphoned Strength:* Whilst Ogdruz Swampdigga is within 6" of a friendly unit of Trolls with 3 or more models, he gains +1 to cast spells.

#entry("WURRZAG UD URA ZAHUBU")
#namecost("The Great Green Prophet, Great Shaman of the Bone Nose Tribe", "")
#profile(
  (name: "Wurrzag", m: 4, ws: 3, bs: 3, s: 4, t: 5, w: 3, i: 2, a: 1, ld: 8, points: 330),
  (name: "Spleenrippa (War Boar)", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Savage Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC", "Wurrzag is a Level 4 Wizard which can use spells from the Lore of da Savage Waaagh!")
#field("MAGIC ITEMS", "")

- *Baleful Mask:* Enchanted Item. Bound spell (power level 5). The Baleful Mask contains the Gaze of Mork spell from Spells of da Big Waaagh!
- *Bonewood Staff:* Arcane Item. Bound spell (power level 5). The Bonewood Staff contains the _Wurrzag's Revenge_ spell. _Wurrzag's Revenge_ is a *hex* spell, which targets all enemy Wizards within 12" of Wurrzag. Roll a D6 for each Wizard that is affected. On a roll of 1\-5 they shake off the spell, but on a roll of 6 they are turned into a Squiggly Beast and removed as a casualty, along with any mount they have, with no saves of any kind allowed. In addition, you may store one extra dice in Wizzbang the Power Squig (see below) for each Wizard that is transformed.
- *Wizzbang the Power Squig:* Arcane Item. At the end of either player's Magic phase, you can store one unused dice from your pool in the Power Squig. At the start of the next Magic phase, you must add this extra dice to your power or dispel pool as appropriate.

#field("OPTIONS", "")

- May be mounted on Spleenrippa +24 points

#field("SPECIAL RULES", "Frenzy, Mighty Blow (1), Size Matters.")

- *Mork's Favourite:* Wurrzag adds +1 to cast spells, and may re-roll the result on the Waaagh! Miscast chart.
- *Warpaint of Wurrzag:* Wurrzag's Warpaint gives him a 5+ Ward save.

#entry("GRIMGOR IRONHIDE")
#namecost("The Green Slaughterer, Harbinger of Gork", "")
#profile(
  (name: "Grimgor Ironhide", m: 4, ws: 8, bs: 1, s: 5, t: 5, w: 3, i: 5, a: 5, ld: 9, points: 320),
)
#field("TROOP TYPE", "Infantry (Special Character, Black Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *Gitsnik:* Magic Weapon. Close combat attacks made with Gitsnik are resolved at +2 Strength. In addition, the axe grants Grimgor the Always Strikes First special rule.
- *Blood-Forged Armour:* Magic Armour. The Blood-forged Armour gives Grimgor a 1+ armour save and a 5+ ward save.
- *Mork's All-Seeing Eye:* Talisman. The Eye gives Grimgor the Magic Resistance (1) special rule.

#field("SPECIAL RULES", "Hatred, Immunity (Psychology), Mighty Blow (1), Quell Animosity, Waaagh!")

- *He's da Boss:* If your army includes Grimgor, he must be the Army General.
- *Da Immortulz:* Grimgor must be accompanied by a unit of Black Orcs chosen from the army list at a cost of 15 points per model. This unit has +1 Weapon Skill. Grimgor may never choose to leave this unit.

#entry("MORGLUM NECKSNAPPER")
#namecost("Warboss of the Necksnapper Tribe", "")
#profile(
  (name: "Morglum Necksnapper", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 5, ld: 9, points: 260),
  (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Black Orc)")
#field("MOUNT", "War Boar (Animal)")
#field("BASE SIZE", "25x50 or 30x60")
#field("MAGIC ITEMS", "")

- *The Humie Hewers:* Magic Weapon. Two hand weapons. Whenever Morglum's To Hit roll on a D6 is higher than his target's Weapon Skill, the attack will not only hit regardless of the score normally needed to hit, but will also be multiplied into 2 Hits.
- *Bulak's Bloody Armour:* Magic Armour. Heavy armour. This armour gives Morglum the Ward save (4+) special rule. However, if he rolls a 1 when rolling his Ward save the number of Wounds suffered is doubled.

#field("SPECIAL RULES", "Immunity (Psychology), Mighty Blow (1), Quell Animosity, Waaagh!")

- *Natural Leader:* Morglum Necksnapper must be the Army General.

#entry("GROM THE PAUNCH")
#namecost("Warboss of the Misty Mountain", "")
#profile(
  (name: "Grom", m: "-", ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 140),
)
#field("TROOP TYPE", "Infantry (Special Character, Common Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Axe of Grom:* Magic Weapon. Great weapon. Attacks made with this axe have the Killing Blow special rule. In addition, against Elves, Grom's Axe will cause a Killing Blow on a To Wound roll of 5+.
- *Lucky Banner:* Magic Standard. This is the Battle Standard. The Lucky Banner allows Grom to re-roll failed armour and Ward saves. This item requires Grom to be mounted on a Wolf Chariot to have any effect.

#field("OPTIONS", "")

- May be mounted on a Wolf Chariot (replacing one of the crew) +100 points

#field("SPECIAL RULES", "Regeneration (4+).")

- *Goblin General:* If your army includes Grom, he must be the Army General. In addition, you may not include any Orc Lords if Grom is your General. An army containing Grom must include at least one unit of Goblin Gitz.
- *Eats Elves for Breakfast:* As long as Grom is alive, all Goblins in his army ignore the Fear Elves special rule.
- *Grom's Goblin Guard:* Grom may include a unit of Common Goblin Gitz chosen from the army list at a cost of 4 points per model. This unit has +1 Weapon Skill and wears medium armour.
- *Grom's Waaagh!:* Grom has the Waaagh! special rule. When Grom calls a Waaagh!, in addition to the units that would normally be affected, every unit of five or more Goblins in the army adds +1 to its combat resolution for the rest of the player turn.

#field("NOTES", "")

- Grom's Chariot includes an additional Giant Wolf, and may take no additional equipment or crew except scythes.

#entry("KIKNIK TOOFSNATCHA")
#namecost("Goblin Warboss", "")
#profile(
  (name: "Kiknik Toofsnatcha", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 145),
  (name: "Chompa (Giant Wolf)", m: 9, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Common Goblin)")
#field("MOUNT", "Chompa (Animal)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Light armour, shield")
#field("MAGIC ITEMS", "")

- *Da Skull Smasha:* Magic Weapon. This weapon can be used in one of two ways, chosen at the start of each round of close combat. It can either be used to add +1 Strength, or the Armour Piercing (1) and Multiple Wounds (2) special rules.
- *Da Boss' Trophy Rack:* Enchanted Item. During a turn in which he charged, Kiknik and any unit he has joined have the Fear special rule and gain an additional +1 bonus to their Combat Resolution.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Fear Elves")

- *All Sneaky Like:* One unit of Wolf Riders may have the Ambushers special rule. In addition, they gain +1 to the result when rolling to determine if they arrive.
- *'It & Run:* In any close combat phase in which Kiknik and any unit he is with does not break or break their enemy, they may choose to disengage from combat instead of doing a combat reform (if the unit lost the combat they must pass a Leadership test just like when attempting to Reform from Defeat). If the unit manages to disengage from combat, the unit will make a Flee move as if it had broken from combat. This Flee move follows the rule for Feigned Flight (though only Fast Cavalry and Skirmishers may choose to move normally in the Remaining Moves phase after rallying). After finishing its move, the unit rallies automatically. The enemy unit is not allowed to Pursue, but may make a Combat Reform as normal.

#entry("SKARSNIK")
#namecost("Warboss of the Eight Peaks", "")
#profile(
  (name: "Skarsnik", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 200),
  (name: "Gobbla (Great Cave Squig)", m: "-", ws: 5, bs: 0, s: 6, t: "-", w: "-", i: 4, a: 4, ld: "-", points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Night Goblin/Squig)")
#field("BASE SIZE", "60x40 or 75x50")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Skarsnik's Prodder:* Magic Weapon. Polearm. The Prodder contains a Bound Spell (power level 5). This spell is a *magic missile* with a range of 24" that causes D3 Strength 6 hits with the Ignores Armour saves special rule. The number of hits is increased to D6 if Skarsnik is within a Night Goblin unit with at least 5 models.

#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Hatred (Dwarfs), Fear Elves, Killing Blow (Gobbla only)")

- *Gobbla:* Skarsnik and Gobbla follow the Split Profile rules for Cavalry.
- *Sneaky Schemes:* At the start of the game, before deployment, roll a D6 for each enemy unit. On a roll of 6, that unit has been delayed by a Wild Squig strike or some other happening. Affected units do not deploy as normal, but instead enter play as reinforcements in the Movement phase of their first turn.
- *Tricksy Traps:* Any friendly Night Goblin unit that chooses to flee as a charge reaction and subsequently rallies at the beginning of its next turn may reform as normal, but is then also free to move during the Remaining Moves sub-phase. The unit is also free to shoot as normal (but it always counts as having moved).

#field("NOTES", "")

- Skarsnik & Gobbla have a combined Unit Strength of 4.

#entry("SKITGIT")
#namecost("The Black Gobbo", "")
#profile(
  (name: "Skitgit", m: 4, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 150),
)
#field("TROOP TYPE", "Infantry (Special Character, Night Goblin)")
#field("BASE SIZE", "20x20 or 25x25")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Thagi Az:* Magic Weapon. If Skitgit scores a hit against an enemy who has a magic weapon, the enemy's magic weapon is destroyed on the roll of a 4+. In addition, the axe confers +1 Strength and +1 Attack to the wielder.
- *Belt Buckle of Durzik Al Drazh:* Magic Armour. Skitgit may reroll any single D6 roll once per game that affects him directly.
- *Gotkid's Beard:* Talisman. The protective runes within the beard confer a Ward save (6+) to Skitgit.
- *Hood of Night:* Enchanted Item. This hood causes units of Night Goblins to treat Skitgit as if he had Leadership 9.

#field("OPTIONS", "")

- May choose one of the following:
  - Additional hand weapon +3 points
  - Shield +3 points

#field("SPECIAL RULES", "Fear Elves, Surprise! (see Nasty Skulkers)")

- *Really Hates Dwarfs:* The Black Gobbo may re-roll all failed rolls To Hit when fighting Dwarfs. In addition, the Black Gobbo and any unit he accompanies are Stubborn when they are in base contact with any Dwarf.

#entry("SKRAGROTT")
#namecost("The Moon King", "")
#profile(
  (name: "Skragrott", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 2, a: 1, ld: 7, points: 330),
)
#field("TROOP TYPE", "Infantry (Special Character, Night Goblin)")
#field("BASE SIZE", "40x60 or 50x75")
#field("MAGIC", "Skragrott is a Level 4 Wizard who uses the Lore of da Bad Moon.")
#field("MAGIC ITEMS", "")

- *Da Moon Onna Stikk:* Magic Weapon. If an enemy model suffers one or more unsaved Wounds from Da Moon Onna Stikk, they must pass a Toughness test at the start of each Movement phase or suffer 1 additional Wound with no saves allowed.
- *Babbling Wand:* Arcane Item. The Babbling Wand allows Skragrott to re-roll any failed Channelling rolls.
- *Moon King's Crown:* Talisman. The Moon King's Crown gives Skragrott +1 to cast spells and the Ward Save (4+) special rule.

#field("SPECIAL RULES", "Fear Elves, Hatred (Dwarfs), Magic Mushrooms")

- *The Moon King's Entreaty:* Skragrott can always choose to re-roll any number of dice when determining the distance the template from the _Curse of da Bad Moon_ spell moves.

#entry("TRUGG THE TROLL KING")
#profile(
  (name: "Trugg the Troll King", m: 6, ws: 5, bs: 1, s: 7, t: 6, w: 6, i: 1, a: 6, ld: 7, points: 375),
)
#field("TROOP TYPE", "Monster (Special Character, Troll)")
#field("BASE SIZE", "100x50 or 100x60")
#field("EQUIPMENT", "Hand weapon")
#field("MAGIC ITEMS", "")

- *Malfunctioning Leystone:* Enchanted Item. This item may be used at the start of any of your turns. Roll a D6 and consult the table below.

#chart((("D6", "Result"), ("1", "Glyph of Shyish: Trugg suffers 1 Wound with no saves allowed."), ("2", "Glyph of Aqshy: Trugg gains the Flaming Attacks and Multiple Wounds (D3) special rules until the
start of your next turn."), ("3", "Glyph of Ghur: Trugg gains +1 Attack until the start of your next turn."), ("4", "Glyph of Hysh: Trugg gains +1 Leadership until the start of your next turn."), ("5", "Glyph of Ulgu: Enemy shooting and close combat attacks suffer -1 To Hit Trugg until the start of your
next turn."), ("6", "Glyph of Chamon: Trugg gains a 3+ armour save until the start of your next turn.")))
#field("SPECIAL RULES", "Loner, Magical Resistance (3), Regeneration (4+), Stupidity")

- *Massive Troll Vomit:* In addition to his normal Attacks, Trugg inflicts D6 automatic Strength 6 hits which Ignores Armour Saves.
- *Crushing Grip:* In addition to his normal attacks, Trugg may do a special attack against any single model in base contact with a Unit Strength of 2 or less. That model immediately suffers D3 Wounds which Ignores Armour Saves.
- *Imbued with Life:* Trugg may re-roll failed Regeneration rolls.
- *Troll King:* You may take units of Trolls as Core Units instead of Special Units in an army containing Trugg the Troll King. In addition, all friendly Trolls treat him as the Army General instead of whoever the actual Army General is.

= SPECIAL CHARACTERS (HEROES)

#entry("RUGLUD BONECHEWER", first: true)
#namecost("Leader of the Armoured Orcs", "")
#profile(
  (name: "Ruglud Bonechewer", m: 4, ws: 5, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 75),
  (name: "Maggot (Goblin)", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
)
#field("TROOP TYPE", "Infantry (Special Character, Common Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Hand weapon, crossbow, medium armour")
#field("OPTIONS", "")

- May take Magic Items up to a total of 50 points

#field("SPECIAL RULES", "Mighty Blow (1)")

- *The Armoured Orcs:* Ruglud Bonechewer must be accompanied by a unit of Orc Arrer Boyz chosen from the army list at a cost of 10 points per model. This unit is armed with crossbows and medium armour. The unit must be given a full command. Maggot is the unit's Standard Bearer. Ruglud Bonechewer is the unit's Leader and may never choose to leave this unit.
- *Ignore Greenskin Panic:* Ruglud and his unit treat all other Orcs and Goblins as Expendable.
- *Maggot:* Maggot adds an additional +1 to the unit's Combat Resolution.

#entry("ZOGGROK ANVILSMASHA")
#namecost("Legendary Orc Smith", "")
#profile(
  (name: "Zoggrok Anvilsmasha", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 100),
  (name: "Klonk (Squig)", m: 4, ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
)
#field("TROOP TYPE", "Large Infantry (Special Character, Common Orc)")
#field("BASE SIZE", "30x30 or 40x40 (Zoggrok Anvilsmasha), 20x20 or 25x25 (Klonk)")
#field("EQUIPMENT", "Light armour")
#field("MAGIC ITEMS", "")

- *Ward-smashing Choppa:* Magic Weapon. Ward saves may not be taken against Wounds caused by this weapon.

#field("SPECIAL RULES", "Mighty Blow (1), Size Matters")

- *Klonk:* Klonk must always be kept in base contact with Zoggrok Anvilsmasha, but may otherwise be targeted separately.
- *Power of da Great Green God:* Any unit joined by Zoggrok Anvilsmasha gains the Armour Piercing (1) special rule while he remains in the unit.

#entry("BORGUT FACEBEATER")
#namecost("Champion of Grimgor Ironhide", "")
#profile(
  (name: "Borgut Facebeater", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 4, ld: 9, points: 185),
)
#field("TROOP TYPE", "Infantry (Special Character, Black Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("MAGIC ITEMS", "")

- *'Ardlad's Axe o' Doom:* Magic Weapon. Two hand weapons. This massive axe adds +1 to Borgut's Strength and allows him to re-roll failed armour saves.
- *Drog's Dead 'Ard Armour:* Magic Armour. This armour gives Borgut a 1+ Armour save that cannot be improved.

#field("SPECIAL RULES", "Immunity (Psychology), Mighty Blow (1), Quell Animosity")

- *Do as I say and wot I do:* If Borgut is included in your army, then you may make one unit of Orc Big 'Uns as a Core Unit. Borgut must deploy with this unit and may never choose to leave it.
- *The Facebeater:* If Borgut fights in a challenge, then at the beginning of the first Close Combat phase of the challenge, he can make a special attack in addition to his normal attacks, which is resolved before any other attacks in the challenge. If this attack inflicts an unsaved Wound, the target is reduced to Weapon Skill 1 and gains the Always Strike Last special rule for the rest of the Close Combat phase. If this attack kills his opponent, Borgut can still make his remaining attacks to calculate Overkill for the purposes of combat resolution.
- *Keep Your Enemies Closer:* If your army includes Grimgor, then you may never deploy Borgut further than 6" from him when setting up your army.

#entry("BADRUK 'EADSPLITTA")
#namecost("Scourge of the Grey Dwarfs of Karak Norn", "")
#profile(
  (name: "Badruk 'Eadsplitta", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 4, ld: 8, points: 150),
)
#field("TROOP TYPE", "Infantry (Special Character, Black Orc)")
#field("BASE SIZE", "25x25 or 30x30")
#field("EQUIPMENT", "Great weapon, heavy armour")
#field("MAGIC ITEMS", "")

- *Dwarf Trinket:* Talisman. One use only. Once per battle, Badruk can cause one enemy model fighting him in close combat to miss with all his normal attacks. He may wait until after the enemy has rolled to hit to decide to use it, but must choose before he rolls To Wound.

#field("SPECIAL RULES", "Immunity (Psychology), Mighty Blow (1), Quell Animosity")

- *Executioner's Strike:* Badruk has the Killing Blow special rule. In addition, he causes a Killing Blow on the To Wound roll of a 5+ rather than a 6.

#entry("GITILLA DA HUNTER")
#namecost("Big Boss of da Drippin' Fangs", "")
#profile(
  (name: "Gitilla da Hunter", m: 4, ws: 4, bs: 6, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 65),
  (name: "Ulda (Giant Wolf)", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Common Goblin)")
#field("MOUNT", "Ulda (Animal)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Spear")
#field("MAGIC ITEMS", "")

- *Bone Bow:* Magic Weapon. The Bone Bow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Multiple Shots (3), Quick to Fire"))
#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#field("SPECIAL RULES", "Fear Elves, Natural Armour (6+)")

- *Ulda the Great Wolf:* Gitilla, and any unit he is with, can choose to re-roll any Pursuit or Flee rolls they make.
- *Da Howlerz:* Gitilla must be accompanied by a unit of Goblin Wolf Riders chosen from the army list at a cost of 10 points per model. This unit has +1 Ballistic Skill and the Quick to Fire special rule. Gitilla may never choose to leave this unit.

#entry("SNAGLA GROBSPIT")
#namecost("Leader of the Deff Creepers", "")
#profile(
  (name: "Snagla Grobspit", m: 4, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 90),
  (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 2, points: ""),
)
#field("TROOP TYPE", "Cavalry (Special Character, Forest Goblin)")
#field("MOUNT", "Giant Spider (Animal)")
#field("BASE SIZE", "25x50")
#field("EQUIPMENT", "Light lance")
#field("MAGIC ITEMS", "")

- *Fangspike:* Magic Weapon. The Fangspike has the Poisoned Attacks and Multiple Wounds (D3) special rules.
- *Sting of Snagla:* Magic Weapon. The Sting of Snagla has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "3", "Multiple Wounds (D3), Poisoned Attacks, Quick To Fire"))
#field("OPTIONS", "")

- May take Magic Items up to a total of 25 points

#field("SPECIAL RULES", "Fear Elves, Hatred (The Empire), Poisoned Attacks (including Giant Spider), Wall-crawler.")

- *The Deff Creepers:* Snagla Grobspit must be accompanied by a unit of Forest Goblin Spider Riders chosen from the army list at a cost of 12 points per model. This unit has the Ambushers, Devastating Charge and Hatred (Empire) special rules. Snagla Grobspit may never choose to leave this unit.
