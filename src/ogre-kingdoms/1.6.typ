// Ogre Kingdoms 1.6 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "../template.typ": *

#book-meta(
  slug: "ogre-kingdoms",
  army: "Ogre Kingdoms",
  version: "1.6",
  layout: "army",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Ogre Kingdoms 1.6")

#cover(
  title: "Ogre Kingdoms",
  subtitle: "Warhammer Armies Project · 1.6",
  art: none,
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Ogre Kingdoms*, version 1.6 — written and freely distributed by Mathias
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

#upgrade-chapter("ARMY SPECIAL RULES", whole: true, intro: [This section of the book describes all the different units used in an Ogre Kingdoms army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Ogre Kingdoms units, and these are detailed here.])[
#upgrade("BENEATH CONTEMPT", none)[
Gnoblars have the Expendable special rule. In addition, even other Gnoblars treat them as being Expendable.
]

#upgrade("BICKER", none)[
Roll a D6 at the beginning of each of your turns for each unit with this special rule that is not in combat or fleeing and has a Unit Strength of 5 or more. If a unit rolls a 1 it may not move in the Movement phase or shoot in the Shooting phase this turn.
]

#upgrade("OGRE CHARGE", none)[
Each model on foot with the Ogre Charge special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.
]

#upgrade("BLOOD VULTURE", none)[
A blood vulture is treated as a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "4", "Quick to Fire"))

#note[_A Blood Vulture ignores all To Hit modifiers._]
]

#upgrade("CHAINTRAP", none)[
A chaintrap has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "6", "Killing Blow, Quick to Fire"))
]

#upgrade("GREAT THROWING SPEAR", none)[
A great throwing spear has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "As user", "Quick to Fire"))
]

#upgrade("GUTPLATE", none)[
A model with a gutplate gains a 6+ armour save against attacks to the front.
]

#upgrade("IRONFIST", none)[
Buckler. If a model with an ironfist rolls a natural 6 when making a Parry save, it automatically inflicts an extra Hit back onto the model or unit that struck the blow. In addition, a model using an ironfist benefits from the Parry special rule even while mounted.
]

#upgrade("HARPOON LAUNCHER", none)[
A harpoon launcher has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Move or Fire, Multiple Wounds (D3)"))
]

#upgrade("OGRE PISTOLS", none)[
Ogre pistols have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Armour Piercing (1), Multiple Shots (2)*, Quick to Fire"))

#note[_In close combat, a Ogre pistol counts as an additional hand weapon that does not give the model the Parry special rule. \*Requires a brace of Ogre pistols._]
]

#upgrade("ORIENTAL LONGSWORD", none)[
Oriental longswords have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Armour Piercing (1), Parry (6+)"))
]

#upgrade("LUCK-GNOBLAR", none)[
An Ogre with a Luck-Gnoblar may re-roll a single Armour or Ward save, once per battle.
]

#upgrade("SWORD-GNOBLAR", none)[
An Ogre with a Sword-Gnoblar benefits from one extra Strength 2 attack per close combat round, at the Weapon Skill of the owning model (the opponent's attention is elsewhere!).
]

#upgrade("TOOTH-GNOBLAR", none)[
One use only. After attempting to cast a spell from the Lore of the Great Maw, a Butcher with a Tooth- Gnoblar may choose to sacrifice one to get +1 to his casting value.
]

#upgrade("LOOK-OUT GNOBLAR", none)[
Any character in a unit with a Look-out Gnoblar benefits from the 'Look Out Sir!' special rule as long as there are three rank and file models of the same troop type remaining in the unit.
]

#upgrade("NAME-GNOBLAR", none)[
For each Name-Gnoblar an Ogre has, he can choose an additional Big Name.
]

#upgrade("SCALP-GNOBLAR", none)[
One use only. A Butcher with a Scalp-Gnoblar may re- roll a single dice when attempting to cast a spell from the Lore of the Great Maw.
]
]
#lore("THE LORE OF THE GREAT MAW")[
#spell("BLOODGRUEL", "Lore Attribute")[Roll a D6 immediately after resolving the effects of a successfully cast spell from the Lore of the Great Maw. On a roll of 2\-6, the Wizard that cast the spell recovers one lost Wound (up to his starting number of Wounds), and adds +1 to the total rolled on the dice the next time he attempts to cast or dispel a spell. On a roll of 1 the Wizard that cast the spell suffers a Strength 6 hit.]

#spell("SPINEMARROW", "Signature Spell", cast: "5+")[_Spinemarrow_ is an *augment* spell with a range of 18". The target has the Stubborn special rule until the start of the caster's next Magic phase.]

#spell("BILEBREW", 1, cast: "6+")[_Bilebrew_ is an *augment* spell with a range of 18". The target gains the Hatred special rule until the start of the caster's next Magic phase.]

#spell("BLOOD FEAST", 1, cast: "6+")[_Blood Feast_ is an *augment* spell with a range of 18". The target gains the Frenzy special rule until the start of the caster's next Magic phase.]

#spell("BULLGORGER", 1, cast: "6+")[_Bullgorger_ is an *augment* spell with a range of 18". The target gains +1 Strength until the start of the caster's next Magic phase.]

#spell("BONECRUSHER", 2, cast: "7+")[_Bonecrusher_ is a *magic missile* with a range of 18" that causes 2D6 Strength 2 hits which Ignores Armour saves.]

#spell("BRAINGOBBLER", 2, cast: "7+")[_Braingobbler_ is a *hex* spell with a range of 18". The target must take a Panic test. If the test is passed, the unit gains the Stupidity special rule until the start of the caster's next Magic phase.]

#spell("GREASY DELUGE", 2, cast: "7+")[_Greasy Deluge_ is a *hex* spell with a range of 24". The target suffer \-1 To Hit in close combat and with missile weapons until the start of the caster's next Magic phase.]

#spell("ROCKCHOMPER", 3, cast: "7+")[_Rockchomper_ is an *augment* spell with a range of 18". The target gains the Armour Piercing (1) and Killing Blow special rules until the start of the caster's next Magic phase.]

#spell("TOOTHCRACKER", 3, cast: "7+")[_Toothcracker_ is an *augment* spell with a range of 18". The target gains +1 Toughness until the start of the caster's next Magic phase.]

#spell("FEAST OF THE FALLEN", 3, cast: "10+")[Remains in play. _Feast of the Fallen_ is an *augment* spell with a range of 18" that targets Monstrous Infantry. While the spell is in effect, at the end of each round of close combat (before break tests are taken), the target unit regains a Wound suffered earlier during the game for every unsaved Wound they cause in close combat. Wounds are restored in the same manner as a *summoning* spell.]

#spell("VORACIOUS MAW", 4, cast: "11+")[_Voracious Maw_ is a *summoning* spell. Place the large round template anywhere within 24" of the Wizard. The template is considered Dangerous Terrain for all models, except that all tests fail on a 1\-2 rather than a 1. If the Voracious Maw inflicts five or more unsaved Wounds in a single phase, the template is removed.]

#spell("TROLLGUTS", 4, cast: "12+")[_Trollguts_ is an *augment* spell with a range of 18". The target has the Regeneration (4+) special rule until the start of the caster's next Magic phase.]

#spell("THE GREAT MAW AWAKENS", 4, cast: "15+")[Remains in play. _The Great Maw Awakens_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must take an Initiative test. Models that pass the test suffer a Strength 3 hit. Models that fail the test suffer a Strength 7 hit with the Multiple Wounds (D6) special rule.]
]
#upgrade-chapter("BIG NAMES OF THE OGRES", intro: [*Certain models are able to spend points on a Big Name, as detailed in the army list. No big name may be taken more than once in the same army.*])[
#upgrade("DEATHCHEATER", 20)[Starting from the end of the phase in which a character with a Deathcheater is down to their last Wound, he receives a 3+ Ward save.]

#upgrade("MOUNTAINEATER", 20)[A Mountaineater will never be wounded on a score better than a 3+. Hits that cause automatic Wounds are unaffected.]

#upgrade("KINEATER", 20, only: "Tyrants")[Any friendly unit within 12" of a Kineater may re-roll failed Panic tests.]

#upgrade("BEASTKILLER", 15, only: "Hunters")[When making attacks against War Beasts, Monstrous Beasts or Monsters, the Beastkiller gains +1 on his rolls To Wound. If the character is using a magic weapon, then he does not get this bonus.]

#upgrade("DAEMONKILLER", 15, only: "Tyrants")[A Tyrant with the Daemonkiller name causes Terror.]

#upgrade("GIANTBREAKER", 15)[A character with the Giantbreaker name has +1 Strength on his profile. He may never refuse challenges, and neither he nor a unit he is with may choose to flee as a charge reaction.]

#upgrade("MAWSEEKER", 15)[A character with the Mawseeker name has +1 Toughness on his profile. It also suffers from the Stupidity special rule.]

#upgrade("BRAWLERGUTS", 10, only: "Model on foot")[Brawlerguts gain the Impact Hits (D3) special rule.]

#upgrade("WALLCRUSHER", 10)[Wallcrushers do one additional Impact Hit on a successful Ogre Charge. In addition, Wallcrushers ignore all the effects of obstacles when attacking units that are defending them – he is likely to barge through or smash it down on top of the foe. This does not benefit a unit he joins.]

#upgrade("LONGSTRIDER", 5)[A character with the Longstrider big name gains +1 to its Movement value.]
]

#magic-item-chapter(intro: [*This section contains the rules for some of the most iconic and powerful magical artefacts used by the Ogres. These may be used in addition to the magic items found in the Warhammer rulebook.*])

#magic-item-section("weapon", first: true)[
#magic-weapon("FROSTFANG", 50)[The bearer gains the Ice Attacks special rule. In addition, at the start of each round of close combat, roll a D6. On a 4+, all attacks made by this weapon are increased by +1 Strength for the duration of the game. This effect is cumulative.]

#magic-weapon("THUNDERMACE", 35)[Great weapon. The wielder may choose to exchange all of his Attacks in close combat to make a single 'Thundercrush Attack'. Roll To Hit against the highest Weapon Skill amongst the enemy models in base contact. If the Thundercrush Attack hits, place the small template anywhere so that it is touching the wielder's base. Any infantry, war beasts or swarm models that lie underneath the template (friend or foe!) suffer a single Strength 3 hit. The model under the template's central hole instead suffers a single Strength 9 hit with the Multiple Wounds (D3) special rule. A model with any other troop type beneath the template is too big to be crushed, and doesn't suffer any hits.]

#magic-weapon("SIEGEBREAKER", 30)[Great weapon. Roll To Hit against the enemy's Initiative instead of his Weapon Skill, and no Parry saves are allowed – it is impossible to deflect a blow from the weapon. In addition, when assaulting models in a building, the wielder can make a 'Siegebreaker Attack' instead of attacking normally in the Close Combat phase. A Siegebreaker Attack inflicts D6 hits with a Strength equal to the height of the building in inches, up to a maximum Strength of 10 (so, for example, models in a building that is 6 inches high would suffer D6 Strength 6 hits). Measure from the base of the building to its highest point.]

#magic-weapon("THE TENDERISER", 30)[Great weapon. The Tenderiser gives the wielder the Multiple Wounds (D3) special rule.]

#magic-weapon("BLOODCLEAVER", 30)[Butcher or Slaughtermaster only. Every time the wielder causes an unsaved wound with the Bloodcleaver, he may regain one wound he lost earlier in the battle.]

#magic-weapon("FROSTSHARD JAVELINS", 30)[Hunter only. Great Throwing Spear. Attacks made with these javelins have the Ice Attacks special rule.]

#magic-weapon("THE FANG OF GHUR", 20)[The wielder of this weapon gains the Frenzy and Armour Piercing (1) special rules.]

#magic-weapon("SKY-TITAN SCATTER PISTOLS", 20)[Brace of Ogre Pistols. All shots from these weapons are resolved at Strength 5.]

#magic-weapon("BELLOWING BLADE", 15)[The wielder of this weapon may re-roll one failed To Hit or To Wound roll each round of close combat for every enemy Character within 12".]

#magic-weapon("BLADE OF ALL-FROST", 15)[For every successfully Wound this weapon inflicts on an enemy Character, Monstrous Creature or Monster, that model suffer \-1 Strength and Toughness for the remainder of the game.]

#magic-weapon("HEADSMASHER", 15)[Great weapon. Headsmasher gives the wielder the Killing Blow special rule.]

#magic-weapon("SPLATTER-CLEAVER", 10)[Butcher or Slaughtermaster only. Every time the wielder causes an unsaved wound with the Splatter- cleaver, he gains +1 Leadership for the duration of the close combat round.]
]

#magic-item-section("armour")[
#magic-armour("GREEDY FIST", 40)[Ironfist. The wearer gains +1 Strength and a Ward save (6+). If a Magic Weapon inflicts a Wound that is saved by this Ward save, its magical properties are consumed by the Greedy Fist; from the end of this close combat it is treated as a normal, non-magical weapon of the same type for the remainder of the game. In addition, an enemy Wizard loses a Wizard level and a randomly selected spell each time they are hit by an Ogre wearing the Greedy Fist.]

#magic-armour("MASTODON ARMOUR", 30)[Light armour. If the wearer is killed by an attack that is not made in close combat, roll a D6; on a 2+, they will remain in play with one Wound remaining.]

#magic-armour("GUT MAW", 25)[Gut-plate. An Ogre wearing the Gut Maw has the Terror special rule. In addition, he recovers one lost Wound (up to his starting number) for each unsaved Wound he causes in a challenge.]

#magic-armour("BULLGUT", 15)[Model on foot only. Gut-plate. The Bullgut gives the wearer the Impact Hits (D3) special rule, and all Impact Hits have the Armour Piercing (1) special rule.]

#magic-armour("KATTANAK BROWPLATE", 15)[Gut-plate. The wearer gains +1 Leadership. In addition, all War Beasts and Monstrous Beasts suffer \-1 To Hit against him.]

#magic-armour("GREATSKULL", 10)[Gut-plate. Any Wizard that targets the bearer with a spell will miscast on any roll of any double.

#runin[GRAWL]'#runin[S GUT-PLATE 10 points] Gut-plate. The bearer of this item and any unit they are with adds +D3" to their charge distance while within 18" of any enemy unit.]

#magic-armour("ICE MAMMOTH SKULL PLATE", 10)[Gut-plate. The wearer may re-roll failed armour saves.]

#magic-armour("SKULLPLUCKER", 10)[Ironfist. Any hits made with the Skullplucker have the Killing Blow special rule.]
]

#magic-item-section("talisman")[
#talisman("GNOBLAR THIEFSTONE", 40)[A Gnoblar Thiefstone grants the bearer Magic Resistance (1). In addition, roll on the following table when the model is deployed to see if the Thiefstone has helped them to 'find' any useful items. Note that this may result in the bearer of the Thiefstone having two or more Talismans. In addition, if a character is killed in close combat while being in base contact with the model wearing the Thiefstone, you will automatically be allowed to pick up any one Magic Item (except Magic Standards) that the slain character might have had, as long as the bearer does not already have a magic item of that type. The model with the Thiefstone may then use that item itself for the rest of the battle.

#chart((("D6", "Result"), ("1", "Nothing"), ("2", "Luckstone"), ("3", "Talisman of Protection"), ("4", "The Other Trickster's Shard"), ("5", "The Ruby Ring of Ruin"), ("6", "Talisman of Preservation")))]

#talisman("GREYBACK PELT", 30)[Hunter only. The Greyback Pelt gives the bearer the Forest Strider, Hill Strider, Ice Attacks, and Magical Attacks special rules.]

#talisman("SPANGLESHARD", 30)[For each Wound the bearer of the Spangleshard suffers, roll a D6. If this roll is higher than the result of the To Wound roll, that wound is ignored.]

#talisman("BATTERED TALISMAN", 25)[The bearer of this item gains a 4+ Ward save against Attacks with Strength 5 or more.]

#talisman("CATHAYAN JET PENDANT", 25)[The bearer of the Cathayan Jet gains the Magic Resistance (3) special rule. This has no effect on spells from the Lore of Yin and Yang.]

#talisman("THE PELT OF CHARNGAR", 25)[Hunter only. The bearer of this item gains the Natural Armour (6+) and Regeneration (5+) special rules.]

#talisman("THE RIME SHROUD", 25)[All successful To Hit rolls with missile attacks targeting the bearer of this item must be re-rolled.]

#talisman("SHRUNKEN PRIEST HEAD", 20)[Butcher or Slaughtermaster only. The bearer of this item gains a 5+ Ward save against the first wounding hit each phase.]

#talisman("WYRDSTONE NECKLACE", 20)[The wearer of the Wyrdstone Necklace gains a 5+ Ward save. However, they must take a pass Toughness test at the start of each of their turns or suffer a wound with no saves allowed.]
]

#magic-item-section("arcane")[
#arcane-item("HELLHEART", 50)[One Use Only. The Hellheart can be used at the start of one of the opposing side's Magic phases, immediately after rolling for the Winds of Magic. All enemy Wizards within 12" of the bearer must roll 2D6 on the Miscast table. Special rules or magic items that affect a normal miscast roll can be used against miscasts caused by the Hellheart. After resolving all the Miscasts, add an extra dispel dice to the Ogre's dispel pool for each enemy Wizard that was forced to roll on the Miscast table.]

#arcane-item("GRUT'S SICKLE", 30)[At the start of the Ogre Magic phase, the bearer of Grut's Sickle can inflict a single Wound on any unit he has joined. If he does so, then he adds +2 to all casting rolls he makes during that Magic phase. A Wound inflicted by Grut's Sickle is distributed as a shooting attack, and may not be saved in any way. Roll 2D6 at the end of each Magic phase where Grut's Sickle is used; on a roll of 3 or more nothing happens, but on a roll of double 1 the unit turns upon and slays the wielder of Grut's Sickle, and he is removed as a casualty with no saves of any kind allowed.]

#arcane-item("BANGSTICK", 35)[Bound Spell, Power Level 5. The Bangstick contains a *magic missile* with a range of 24" that causes 2D6 Strength 4 Hits with the Flaming Attacks special rule.]

#arcane-item("THE HUNGRY MAW", 30)[One use only. The Hungry Maw can be used after successfully dispelling an enemy spell. When used, the enemy spell can no longer be used for the remainder of the game.]

#arcane-item("HALFLING COOKBOOK", 25)[A model with the Halfling Cookbook may re-roll one dice (except 1's) per casting roll when using the Lore of the Great Maw.]

#arcane-item("DRAGON HEART", 20)[One use only. This item can be used at the start of any of your Magic phase. For the duration of this turn, the bearer may re-roll failed casting attempts.]

#arcane-item("FLASK OF CONGEALED MAW-JUICES", 20)[Model with Great Mawpot only. One use only. This item can be used at the start of any of your Magic phases. For the duration of this turn, you may add one free power dice to each of the model's casting attempts.]

#arcane-item("BLOODROCK TALISMAN", 20)[The bearer of this item gains a +2 dispel bonus if they are within 12" of the casting Wizard.]

#arcane-item("WIZARDFLESH APRON", 20)[Wizard with the Lore of the Great Maw only. At the start of each of your Magic phases, the bearer of this item can pick one additional spell from the Lore of the Great Maw of those normally available to them and cast it this turn.]
]

#magic-item-section("enchanted")[
#enchanted-item("TOKENS OF THE EVERWINTER", 30)[One use only. This can be used at the start of any round of close combat. For the duration of this turn, the model (but not any mount) gains +1 Strength as well as the Always Strikes First and Natural Armour (5+) special rules.]

#enchanted-item("BRAND OF THE SVARD", 25)[Mounted model only. The bearer's mount gain +1 To Hit in close combat.]

#enchanted-item("GNOBLAR BLAST KEG", 25)[Tyrant or Bruiser only. One use only. This item can be used during any of your Shooting phases. Place the small round template anywhere within 6" – it scatters D3". Any model touched by the template suffers a Strength 3 Hit with the Armour Piercing (1) special rule. The model under the whole suffers a Strength 6 Hit with the Armour Piercing (1) and Multiple Wounds (D3) special rules.]

#enchanted-item("THE SEAT OF ALVAGR", 25)[Mounted model only. The model may make double their normal amount of Stomps.]

#enchanted-item("BLEEDING SKULL OF DRAGAAR", 20)[Tyrant, Bruiser or Hunter only. The bearer of this item can channel dispel dice in the same manner as a Level 2 Wizard.]

#enchanted-item("GRUESOME TROPHY RACK", 20)[Tyrant only. Any unit joined by this model may re-roll 1's To Hit in close combat.]

#enchanted-item("SHATTERSTONE", 20)[All enemy units within 12" of the bearer of this item treat all terrain features as Dangerous Terrain. Terrain that is already Dangerous Terrain makes them fail the test on a 1\-2 instead of just a 1.]

#enchanted-item("BRAHMIR STATUE", 15)[Any Psychology tests caused by the bearer of the Brahmir Statue (or any unit they are with) on any Beastmen unit are taken with a \-3 Leadership penalty.]

#enchanted-item("ALVAGR RUNE-TOKENS", 15)[One use only. This item can be used at the start of any round of close combat. The wielder gains the Ice Attacks special rule for the duration of this round.]

#enchanted-item("CARVALOX FLANK", 15)[All friendly units of Yhetees within 12" of the bearer gain +2 to their Movement.]

#enchanted-item("ELIXIR OF FROSTWYRM", 15)[One use only. The bearer gains a Strength 4 Breath Weapon attack with the Ice Attacks special rule. However, after using it they will automatically suffer a Wound with no saves allowed.]

#enchanted-item("FROST-TALON SHARDBOLTS", 15)[Hunter with Harpoon Launcher only. All shots fired by their weapon have the Ice Attacks and Magical Attacks special rules.]

#enchanted-item("GREASE-SMEARED TUSKS", 15)[Butcher or Slaughtermaster only. All friendly Monstrous Beasts, Monstrous Creatures and Monsters within 12" gain +1 to their Movement.]

#enchanted-item("JADE LION", 15)[The bearer of the Jade Lion and any unit they are with may re-roll any failed Psychology tests. If the unit flees for any reason, this benefit is lost for the remainder of the game.]

#enchanted-item("BATTLE BREW", 10)[One use only. The bearer may use this item at the start of any of your turns. If they do so, they gain +1 To Hit and To Wound in Close Combat this turn. However, at the end of that round of close combat (before break tests are taken), they must pass a Toughness test or suffer a Wound with no saves allowed.]

#enchanted-item("FLASK OF STONEHORN BLOOD", 10)[One use only. The bearer may use this item at the start of any of your turns. If they do so, all attacks targeting them must re-roll successful rolls To Wound for the duration of this turn.]

#enchanted-item("SKULLMANTLE", 10)[Butcher or Slaughtermaster only. Any enemy unit forced to take any Leadership tests due to the bearer or a unit they have joined suffers a \-1 penalty to their Leadership.]

#enchanted-item("FISTFUL OF LAURELS", 5)[One use only. The model with the Fistful of Laurels and any unit they are with may re-roll their first failed Break test in the game using an additional D6 and discard the highest result.]

#enchanted-item("ROCK EYE", 5)[At the beginning of each Ogre turn, pick one unit in the line of sight of the bearer of the Rock Eye. The opposing player must announce the presence of all Magic Items, Hidden models and the like that unit might have.]
]

#magic-item-section("standard")[
#magic-standard("DRAGONHIDE BANNER", 50)[The unit carrying this standard can re-roll all To Hit, To Wound and saving throw rolls of 1 on the turn they make a successful charge. In addition, the bearer of the banner can use it to unleash an icy blast. This is a Strength 3 Breath Weapon with the Ice Attacks special rule.]

#magic-standard("BANNER OF THE GREAT MAW", 25)[The unit carrying this standard gains the Killing Blow special rule.]

#magic-standard("CANNIBAL TOTEM", 25)[If the unit carrying the this standard is in base contact with an enemy Troop Type with the same or higher Unit Strength as them, all models in the unit re-roll failed To Hit and To Wound rolls in the first round of that combat. However, they may not Overrun and must Pursue the enemy if possible.]

#magic-standard("RUNE MAW", 25)[When any enemy spell targeting a unit with this standard is successfully cast, roll a D6. On a roll of 2+, the caster must choose a new target for the spell. If no other target is available (because no other target is in range or all eligible units have already been targeted, for example), then the spell is wasted but still counts as having been cast. Spells that do not specifically target the unit are not affected by the Rune Maw.]

#magic-standard("BULL STANDARD", 15)[The unit carrying this standard re-roll failed To Wound rolls for their Impact Hits.]

#magic-standard("RAGBANNER", 15)[The unit carrying this standard rolls have the Cold- blooded special rule when taking Panic tests.]
]
= LORDS

#unit("TYRANT",
  first: true,
  profiles: (
    (name: "Tyrant", m: 6, ws: 6, bs: 4, s: 5, t: 5, w: 5, i: 4, a: 5, ld: 9, points: 215),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Ogre pistol +8 points
  - Brace of Ogre pistols +11 points
- May take an ironfist +6 points
- May take light armour +10 points
- May take up to 2 Name-Gnoblars +3 points/Gnoblar
- May take up to 2 Sword-Gnoblars +3 points/Gnoblar
- May take a Luck-Gnoblar +5 points
- May be mounted on one of the following:
  - Mournfang +45 points
  - Grimhorn Rhinox +96 points
  - Rhinox War Chariot (replacing the crew) +135 points
- May take Big Names and/or Magic Items up to a total of 100 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SLAUGHTERMASTER",
  profiles: (
    (name: "Slaughtermaster", m: 6, ws: 4, bs: 3, s: 4, t: 5, w: 5, i: 3, a: 4, ld: 8, points: 255),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon",
  magic: "A Slaughtermaster is a Level 3 Wizard who uses spells from the Lore of Beasts, Heavens, Death or the Great",
  magic-body: [
Maw. However, if you field any Butchers/Slaughtermasters in your army, at least one of them must choose his spells from the Lore of the Great Maw.
  ],
  options: [
- May be upgraded to a Level 4 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +12 points
- May take up to 2 Scalp-Gnoblars +5 points/Gnoblar
- May take up to 2 Tooth-Gnoblars +5 points/Gnoblar
- May take a Great Mawpot +100 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge, Immunity (Poisoned Attacks)",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

= HEROES

#unit("BRUISER",
  first: true,
  profiles: (
    (name: "Bruiser", m: 6, ws: 5, bs: 4, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 135),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  options: [
- One Bruiser may carry the Battle Standard +25 points
- May choose one of the following:
  - Additional hand weapon +4 points
  - Spear +4 points
  - Light lance +4 points
  - Polearm +8 points
  - Great weapon +12 points
- May choose one of the following:
  - Ogre pistol +7 points
  - Brace of Ogre pistols +10 points
- May take an ironfist +5 points
- May take light armour +10 points
- May take a Name-Gnoblar +3 points
- May take up to 2 Sword-Gnoblars +3 points/Gnoblar
- May take a Luck-Gnoblar +5 points
- May be mounted on one of the following:
  - Mournfang +30 points
  - Grimhorn Rhinox +96 points
  - Rhinox War Chariot (replacing the crew) +135 points
- May take Big Names and/or Magic Items up to a total of 50 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "upgrades"),
)

#unit("BUTCHER",
  profiles: (
    (name: "Butcher", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 4, i: 2, a: 3, ld: 7, points: 110),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon",
  magic: "A Butcher is a Level 1 Wizard who uses spells from the Lore of Beasts, Heavens, Death or the Great Maw.",
  magic-body: [
However, if you field any Butchers/Slaughtermasters in your army, at least one of them must choose his spells from the Lore of the Great Maw.
  ],
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +9 points
- May take up to 2 Scalp-Gnoblars +5 points/Gnoblar
- May take up to 2 Tooth-Gnoblars +5 points/Gnoblar
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge, Immunity (Poisoned Attacks)",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("HUNTER",
  profiles: (
    (name: "Hunter", m: 6, ws: 4, bs: 4, s: 5, t: 5, w: 4, i: 3, a: 3, ld: 9, points: 130),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  options: [
- May choose one of the following:
  - Additional hand weapon +4 points
  - Spear +4 points
  - Light lance +4 points
  - Great weapon +12 points
- May choose one of the following:
  - Blood Vulture +6 points
  - Chain trap +6 points
  - Great Throwing Spear +6 points
  - Harpoon Launcher +10 points
- May be mounted on a Stonehorn (replacing the Rider) +250 points
- May take Big Names and/or Magic Items up to a total of 50 points
  ],
  special-rules: "Loner, Natural Armour (6+), Ogre Charge, Scouts",
  special-rules-body: (
    rule("Their Master's Voice")[Models with this special rule can join units of War Beasts and Monstrous Beasts.],
  ),
  notes: [
- A Hunter mounted on a Stonehorn has Unit Strength 14 and a Line of Sight value of 6. However, they lose the Natural Armour (6+) and Scouts special rule.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("FIREBELLY",
  profiles: (
    (name: "Firebelly", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 4, i: 2, a: 3, ld: 7, points: 130),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  magic: "A Firebelly is a Level 1 Wizard who uses spells from the Lore of Fire.",
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +9 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Flaming Attacks, Immunity (Flaming Attacks), Natural Armour (6+), Ogre Charge",
  special-rules-body: (
    rule("Fire Breath")[A model with this special rule has a Strength 3 Breath Weapon with the Flaming Attacks special rule.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("YHETEE RIMESPEAKER",
  profiles: (
    (name: "Yhetee Rimespeaker", m: 7, ws: 3, bs: 3, s: 5, t: 4, w: 4, i: 4, a: 4, ld: 8, points: 160),
  ),
  troop-type: "Monstrous Infantry (Character, Yhetee)",
  base-size: "40x40",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +12 points
  ],
  special-rules: "Flammable, Forest Strider, Hill Strider, Ice Attacks, Loner, Magical Attacks",
  special-rules-body: [
- *Ice Breath:* Rimespeakers have a Strength 3 Breath Weapon with the Ice Attacks and Magical Attacks special rules.
- *Everwinter Prayers:* A model with this special rule knows the three Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the Prayers is answered and take immediate effect.
  - *Call of the Blizzard:* All missile fire targeting the Rimespeaker and their unit suffer \-1 to Hit until the start of your next turn.
  - *Keening Gale:* The Rimespeaker and their unit gains +3 Movement until the start of your next turn.
  - *Pulverising Hailstorm:* All enemy units in base contact with the Rimespeaker suffer D6 Strength 4 Hits.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("GNOBLAR HONCHO",
  profiles: (
    (name: "Gnoblar Honcho", m: 4, ws: 4, bs: 5, s: 3, t: 4, w: 2, i: 5, a: 3, ld: 6, points: 25),
  ),
  troop-type: "Infantry (Character, Gnoblar)",
  base-size: "20x20",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +9 points
- May choose one of the following:
  - Throwing weapons +3 points
  - Sling +5 points
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Beneath Contempt, Bicker",
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("MOURNFANG",
  first: true,
  profiles: (
    (name: "Mournfang", m: 8, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 2, a: 3, ld: 5, points: "-"),
  ),
  troop-type: "Mosntrous Beast (Animal)",
  base-size: "50x100",
  special-rules: "Impact Hits (D3), Natural Armour (6+)",
  notes: [
- A model mounted on a Mournfang has a Unit Strength and Line of Sight value of 4.
  ],
)

#unit("GRIMHORN RHINOX",
  profiles: (
    (name: "Grimhorn Rhinox", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 5, points: "-"),
  ),
  troop-type: "Monstrous Creature (Animal)",
  base-size: "50x100",
  special-rules: "Frenzy, Impact Hits (D3), Natural Armour (6+)",
  notes: [
- A model mounted on a Grimhorn Rhinox has a Unit Strength and Line of Sight value of 5.
  ],
)

#unit("GREAT MAWPOT",
  profiles: (
    (name: "Great Mawpot", m: "-", ws: "-", bs: "-", s: "-", t: 6, w: 5, i: "-", a: "-", ld: "-", points: "-"),
  ),
  troop-type: "War Machine",
  special-rules: (
    rule("Vessel of the Gulping God")[A Slaughtermaster with a Great Mawpot gains a 4+ Ward save as well as the Inspiring Presence (6) and Stubborn special rules. In addition, he gains a +1 casting bonus and add +6" to the range of his spells. Finally, his troop type changes to War Machine and he counts as being part of the crew. The Slaughtermaster can never choose to leave the Great Mawpot during the game. If the Slaughtermaster is killed, the Great Mawpot is also removed as a casualty.],
    rule("Battlebroth")[Whenever the Slaughtermaster casts an *augment* spell, the target unit regains 1 Wound's worth of models, just like a Summoning spell.],
  ),
)

= CORE UNITS

#unit("OGRE BULLS",
  first: true,
  profiles: (
    (name: "Ogre Bull", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 29),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Ironfists +3 points/model
- May upgrade one Ogre Bull to a Leader +5 points
- May upgrade one Ogre Bull to a Musician +5 points
- May upgrade one Ogre Bull to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("IRONGUTS",
  profiles: (
    (name: "Irongut", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 8, points: 43),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Great weapon, light armour, gut-plate",
  options: [
- May upgrade one Irongut to a Leader +5 points
- May upgrade one Irongut to a Musician +5 points
- May upgrade one Irongut to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  special-rules-body: (
    rule("Down to the Ironguts")[If a friendly unit of Ogres within 6" of an Irongut unit breaks from combat, the Ironguts may re-roll 1's when rolling To Hit and To Wound in close combat this turn.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("GNOBLAR FIGHTERS",
  before: [
*Profile M WS BS S T W I A Ld Points* Gnoblar Fighter 4 2 3 2 3 1 3 1 5 2.5
  ],
  unit-size: "20+",
  troop-type: "Infantry (Gnoblar)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, throwing weapon",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Shields +1 point/model
- May upgrade one Gnoblar Fighter to a Leader +5 points
- May upgrade one Gnoblar Fighter to a Musician +5 points
- May upgrade one Gnoblar Fighter to a Standard Bearer +10 points
  ],
  special-rules: "Beneath Contempt, Bicker",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

= SPECIAL UNITS

#unit("LEADBELCHERS",
  first: true,
  profiles: (
    (name: "Leadbelcher", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 42),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, Leadbelcher gun, gut-plate",
  equipment-body: [
- *Leadbelcher gun:* Leadbelcher guns have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24", "4", "Armour Piercing (1), Multiple Shots (D6), Rapid Fire, Slow to Fire"))
  ],
  options: [
- May upgrade one Leadbelcher to a Leader +5 points
- May upgrade one Leadbelcher to a Musician +5 points
- May upgrade one Leadbelcher to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("MOURNFANG CAVALRY",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 68),
    (name: "Mournfang", m: 8, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 2, a: 3, ld: 5, points: ""),
  ),
  unit-size: "2+",
  troop-type: "Monstrous Cavalry (Ogre)",
  mount: "Mournfang (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, light armour, gut-plate",
  options: [
- May choose one of the following:
  - Ironfists +3 points/model
  - Great weapons +9 points/model
- May upgrade one Ogre to a Leader +5 points
  - May take a brace of Ogre Pistols 6 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 25 points
  ],
  special-rules: "Impact Hits (D3), Natural Armour (5+)",
  notes: [
- Mournfang Cavalry have a Unit Strength and Line of Sight value of 4.
  ],
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("MANEATERS",
  profiles: (
    (name: "Maneater", m: 6, ws: 4, bs: 4, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 8, points: 43),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  options: [
- Any model may be armed with one of the following (different models may have different weapons):
  - Additional hand weapons +3 points/model
  - Ironfists +3 points/model
  - Oriental longsword +3 points/model
  - Ogre pistol +6 points/model
  - Polearm +6 points/model
  - Brace of Ogre pistols +9 points/model
  - Great weapon +9 points/model
- Any model may choose one of the following (different models may have different special rules):
  - Armour Piercing (1) +1 point/model
  - Devastating Charge +1 point/model
  - Killing Blow +2 points/model
  - Mighty Blow (1) +2 points/model
  - Multiple Wounds (2) +2 points/model
  - Parry (6+) +2 points/model
  - Poisoned Attacks (close combat only) +2 points/model
  - Hatred +3 points/model
- May take light armour +3 points/model
- May upgrade one Maneater to a Leader +5 points
- May upgrade one Maneater to a Musician +5 points
- May upgrade one Maneater to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Immunity (Psychology), Natural Armour (6+), Ogre Charge, Stubborn",
  special-rules-body: (
    rule("Motley Crew")[The models in a unit of Maneaters can have a variety of different weapons and special rules. If they do, your opponent must make it clear which model they want to allocate their attacks to. Any excess wounds are carried over to the rest of the unit as normal in an order chosen by your opponent.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("YHETEES",
  profiles: (
    (name: "Yhetee", m: 7, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 38),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Yhetee)",
  base-size: "40x40",
  equipment: "Two hand weapons",
  options: [
- May upgrade one Yhetee to a Leader +5 points
  ],
  special-rules: "Flammable, Forest Strider, Hill Strider, Ice Attacks, Loner, Magical Attacks",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("GORGERS",
  profiles: (
    (name: "Gorger", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 2, a: 4, ld: 8, points: 42),
  ),
  unit-size: "1-5",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40 or 50x50",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +12 points/model
- May upgrade one Gorger to a Leader +5 points
  ],
  special-rules: "Ambushers, Frenzy, Killing Blow, Natural Armour (6+), Skirmishers, Unbreakable",
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules"),
)

#unit("SABRETUSKS",
  profiles: (
    (name: "Sabretusk", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 4, points: 19),
  ),
  unit-size: "2+",
  troop-type: "War Beast (Animal)",
  base-size: "25x50",
  options: [
- May choose one of the following:
  - Ambushers +1 point/model
  - Killing Blow +1 point/model
  - Scouts +1 point/model
  ],
  special-rules: "Fear, Natural Armour (6+)",
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules"),
)

#unit("CRAGBEASTS",
  compact: true,
  profiles: (
    (name: "Cragbeast", m: 7, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 4, ld: 4, points: 46),
  ),
  unit-size: "1+",
  troop-type: "Monstrous Beast (Animal)",
  base-size: "50x50 or 50x75",
  special-rules: "Natural Armour (5+)",
)

#unit("RHINOX WAR CHARIOT",
  profiles: (
    (name: "Rhinox War Chariot", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 130),
    (name: "Charioteer", m: "-", ws: 3, bs: 2, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
    (name: "Young Rhinox", m: "-", ws: 3, bs: "-", s: 5, t: "-", w: "-", i: 2, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "1 Charioteer (Ogre)",
  drawn-by: "1 Young Rhinox (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, gut-plate",
  special-rules: "Fear, Natural Armour (5+)",
  notes: [
- A Rhinox War Chariot has a Line of Sight value of 4.
  ],
)

#unit("GNOBLAR TRAPPERS",
  profiles: (
    (name: "Gnoblar Trapper", m: 4, ws: 2, bs: 3, s: 2, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
  ),
  unit-size: "5-20",
  troop-type: "Infantry (Gnoblar)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, throwing weapon",
  options: [
- May upgrade one Gnoblar Fighter to a Leader +5 points
  ],
  special-rules: "Beneath Contempt, Bicker, Scouts, Skirmishers",
  special-rules-body: (
    rule("Trappers")[Enemy units that successfully charge a unit of Gnoblar Trappers' front must take 1 Dangerous Terrain test for each Trapper in the unit as soon as the charge is completed.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("GNOBLAR SCRAPLAUNCHER",
  profiles: (
    (name: "Scraplauncher", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 130),
    (name: "Scrapper", m: "-", ws: 2, bs: 3, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
    (name: "Young Rhinox", m: "-", ws: 3, bs: 0, s: 5, t: "-", w: "-", i: 2, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "7 Scrappers (Gnoblar)",
  drawn-by: "1 Young Rhinox (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, Scraplauncher Catapult",
  equipment-body: [
- *Scraplauncher Catapult:* A scraplauncher catapult is a Stone Thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "3(3)", "Killing Blow"))

If a misfire is rolled, roll a D6 and consult the Scraplauncher Misfire chart.

#chart((("D6", "Result"), ("1", "Kerrr-unch! The Scraplauncher is destroyed."), ("2", "Groink?!? The Scraplauncher may not shoot this turn, and from now on it has the Random
Movement (2D6) special rule, and will move in a random direction."), ("3-4", "Splang! The Scraplauncher suffers one Wound which Ignores Armour Saves, and may not shoot this
turn or in the controlling player's next turn."), ("5-6", "It's Mine! The Scraplauncher may not fire this turn.")))
  ],
  special-rules: "Fear, Natural Armour (6+)",
  notes: [
- A Scraplauncher has a Line of Sight value of 4.
  ],
)

#unit("GNOBLAR SKEWERSLINGER",
  profiles: (
    (name: "Skewerslinger", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 90),
    (name: "Scrapper", m: "-", ws: 2, bs: 3, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
    (name: "Young Rhinox", m: "-", ws: 3, bs: 0, s: 5, t: "-", w: "-", i: 2, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "7 Scrappers (Gnoblar)",
  drawn-by: "1 Young Rhinox (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, Skewerslinger Bolt Thrower",
  equipment-body: [
- *Skewerslinger Bolt Thrower:* A skewerslinger is a Bolt Thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("48\"", "6", "Multiple Shots (D3), Multiple Wounds (D3), Rapid Fire"))

The Skewerslinger does not suffer To Hit penalties for moving and shooting. If the To Hit roll for a shooting attack made by a Skewerslinger is a natural 1, roll a D6 and consult the Skewerslinger Misfire chart.

#chart((("D6", "Result"), ("1", "Kerrr-unch! The Skewerslinger is destroyed."), ("2", "Groink?!? The Skewerslinger may not shoot this turn, and from now on it has the Random
Movement (2D6) special rule, and will move in a random direction."), ("3-4", "Splang! The Skewerslinger suffers one Wound which Ignores Armour Saves, and may not shoot this
turn or in the controlling player's next turn."), ("5-6", "It's Mine! The Skewerslinger may not fire this turn.")))
  ],
  special-rules: "Fear, Natural Armour (6+)",
  notes: [
- A Skewerslinger has a Line of Sight value of 4.
  ],
)

= RARE UNITS

#unit("GRIMHORN RHINOX RIDERS",
  first: true,
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 4, ld: 7, points: 100),
    (name: "Grimhorn Rhinox", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 5, points: ""),
  ),
  unit-size: "2+",
  troop-type: "Monstrous Creature (Ogre)",
  mount: "Grimhorn Rhinox (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, light armour, gut-plate",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Ironfists +3 points/model
  - Great weapons +9 points/model
- May upgrade one Ogre to a Leader +5 points
  - May take a brace of Ogre Pistols 6 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Look-out Gnoblar 5 points
  - May take a Magic Standard worth up to 50 points
  ],
  special-rules: "Frenzy, Impact Hits (D3), Natural Armour (5+)",
  notes: [
- Grimhorn Rhinox Riders have a Unit Strength and Line of Sight value of 5.
- Grimhorn Rhinox Riders follow the rules for Ranks and Supporting Attacks from Monstrous Cavalry.
  ],
  order: ("unit-size", "troop-type", "mount", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("IRONBLASTER",
  profiles: (
    (name: "Ironblaster", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 180),
    (name: "Leadbelcher", m: "-", ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
    (name: "Gnoblar Scrapper", m: "-", ws: 2, bs: 3, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
    (name: "Young Rhinox", m: "-", ws: 3, bs: 0, s: 5, t: "-", w: "-", i: 2, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "1 Leadbelcher (Ogre)",
  drawn-by: "1 Young Rhinox (Animal)",
  base-size: "50x100",
  equipment: "Hand weapon, Cannon of the Sky-titans, gut-plate",
  equipment-body: [
- *Cannon of the Sky-titans:* A cannon of the Sky-titans is a Cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "10", "Multiple Wounds (D3)"))

When rolling to determine the bounce distance for a cannon of the Sky-titans, roll the artillery dice twice and use the highest roll. The cannonballs will fail to bounce only if both dice roll a misfire result. Grapeshot fired by a cannon of the Sky-titans has a Strength of 10. If a misfire is rolled, roll a D6 and consult the Ironblaster Misfire chart.

#chart((("D6", "Result"), ("1", "Krakabooom! The Ironblaster is destroyed and all units within D6\" take 2D6 Strength 5 hits."), ("2", "Krrack! The cannon may not be fired for the rest of the battle."), ("3-4", "Squelch! The cannon may not fire this turn or next turn."), ("5-6", "Lurch! Roll a scatter dice and turn the Ironblaster to face the direction rolled. The cannon may not
shoot this turn.")))
  ],
  special-rules: "Fear, Natural Armour (5+)",
  notes: [
- An Ironblaster has a Line of Sight value of 4.
  ],
)

#unit("STONEHORN",
  profiles: (
    (name: "Stonehorn", m: 7, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 5, points: 260),
    (name: "Beast Rider", m: 6, ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monster (Animal)",
  crew: "1 Beast Rider (Ogre)",
  base-size: "100x150",
  equipment: "Light lance, gut-plate (Beast Rider only)",
  options: [
- May replace light lance with a Blood Vulture +3 points
  ],
  special-rules: "Frenzy, Natural Armour (3+)",
  special-rules-body: (
    rule("Earth-shattering Charge")[A Stonehorn has the Impact Hits (D6) special rule. When a Stonehorn makes a successful charge, you may roll 2D6 when determining the number of Impact Hits, and choose the highest result.],
    rule("Stone Skeleton")[If an Attack with the Multiple Wounds special rule successfully wounds a Stonehorn, halve the number of Wounds inflicted (rounding fractions up)],
  ),
  notes: [
- A Stonehorn has Unit Strength 14 and a Line of Sight value of 6.
  ],
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("THUNDERTUSK",
  profiles: (
    (name: "Thundertusk", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 4, ld: 5, points: 260),
    (name: "Beast Rider", m: 6, ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monster (Animal)",
  crew: "2 Beast Riders (Ogre)",
  base-size: "100x150",
  equipment: "Chaintrap, harpoon launcher, gut-plate (Beast Riders only)",
  special-rules: "Immunity (Ice Attacks), Impact Hits (D6), Natural Armour (4+)",
  special-rules-body: [
- *Numbing Chill:* Any enemy unit within 6" of a Thundertusk has the Always Strikes Last special rule. This has no effect on models with Immunity (Ice Attacks).
- *Sphere of Frost-wreathed Ice:* The Thundertusk can make a stone thrower shooting attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6-24\"", "3(6)", "Ice Attacks, Multiple Wounds (D3)"))

Do not use the Stone Thrower Misfire chart if the sphere of frost-wreathed ice suffers a misfire. Instead, a misfire means that the sphere does not fire this turn, though it may still fire as normal next turn.
  ],
  notes: [
- One Beast Rider has a chaintrap, one Beast Rider has a harpoon launcher.
- A Thundertusk has Unit Strength 16 and a Line of Sight value of 6.
  ],
)

#unit("ICE MAMMOTH",
  profiles: (
    (name: "Ice Mammoth", m: 8, ws: 3, bs: 0, s: 7, t: 6, w: 10, i: 1, a: "*", ld: 5, points: 350),
    (name: "Beast Rider", m: 6, ws: 3, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monster (Animal)",
  crew: "2 Beast Riders (Ogre)",
  base-size: "100x150",
  equipment: "Chaintrap, harpoon launcher, gut-plate (Beast Riders only)",
  options: [
- May take an additional Ogre Beast Rider (armed with either a chaintrap or harpoon launcher) +15 points
  ],
  special-rules: "Impact Hits (D6+1), Immunity (Psychology), Natural Armour (4+)",
  special-rules-body: [
- *Mammoth Attacks:* When the Ice Mammoth attacks, roll on the appropriate following table to determine its action. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms. _*D6 Attack Type 1\-2* Trample *3\-4* Stomp *5* Bellow *6* Pick up and\.\.\.

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Attack Type"), ("1-2", "Butt"), ("3-5", "Gore"), ("6", "Bellow")))

\- *Trample:* A single enemy unit in base contact suffers D6 Strength 7 hits, plus an additional D3 Hits for each rank of five or more models it has. - *Bellow:* Neither the Mammoth nor any unit in contact with it fight if they have not already done so this turn. The Mammoth automatically wins the combat by 3 points or more. This result has no effect against Animated Constructs. - *Butt:* The Mammoth inflicts one automatic hit against one model in base contact (your choice), causing D3 Strength 7 hits with the Multiple Wounds (D3) special rule - *Stomp:* The Mammoth inflicts 3D6 Hits with its Stomp Attack this turn. - *Gore:* The Mammoth makes D6 attacks against a chosen unit in dose combat with the Heroic Killing Blow special rule. - *Pick up and\.\.\.:* The Mammoth grabs a Character from the target unit (Mammoth player's choice). Roll a D6 to see what unfortunate fate befalls the victim.

#chart((("D6", "Result"), ("1-2", "Throw back into combat: The victim is hurled back into their own unit like a missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3-4", "Hurl: The victim is hurled into an enemy unit within 12\" of the Mammoth – randomly
determine which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits.
Unsaved Wounds from these hits count towards the Mammoth's combat result. If no enemy
units are in range, treat this as a Throw Back into Combat result instead."), ("5", "Eat: The victim model is removed as a casualty, and the Mammoth may immediately recover a
single Wound it has lost previously in the game."), ("6", "Squash and grab another: The model is removed as a casualty and the Mammoth then picks
another victim. Roll again on this table to see what happens.")))
  ],
  notes: [
- One Beast Rider has a chaintrap, one Beast Rider has a harpoon launcher.
- An Ice Mammoth has Unit Strength 24 (26 with an additional Beast Rider) and a Line of Sight value of 10.
  ],
  order: ("troop-type", "crew", "base-size", "equipment", "options", "special-rules", "notes"),
)

#unit("SLAVE GIANT",
  profiles: (
    (name: "Slave Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 155),
  ),
  troop-type: "Monster (Giant).",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology), Natural Armour (6+)",
  special-rules-body: [
- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small round template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *Giant Special Attacks:* To determine what a Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Flail with Chain")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Throttle with Chain"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Flail with Chain:* The Giant inflicts D6 Hits this round. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will attack using the Stomp (2D6) special rule. A Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Throttle with Chain:* Both the Slave Giant and the target roll a D6 and add their respective Strength values. If the Slave Giant's roll is higher than the target's, the target suffers D6 Wounds which Ignore Armour Saves. If the Slave Giant's roll is 1 during the roll-off, they cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Giant – randomly determine
which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved
Wounds from these hits count towards the Giant's combat result. If no enemy units are in range,
treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and
then choose another victim. Roll again on this table to see what the Giant does with it.")))
  ],
)

= SPECIAL CHARACTERS (LORDS)

#unit("GREASUS GOLDTOOTH",
  first: true,
  subtitle: "Overtyrant of the Ogre Kingdoms",
  profiles: (
    (name: "Greasus Goldtooth", m: 4, ws: 6, bs: 3, s: 5, t: 6, w: 6, i: 1, a: 3, ld: 9, points: 370),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x80 or 50x100",
  equipment: "Light armour",
  magic-items: (
    rule("Sceptre of the Titans")[Magic Weapon. Any friendly Ogre Kingdoms unit that is fleeing at the beginning of the Ogre player's turn, and is within 12" from Greasus, rallies automatically. All close combat attacks made with this weapon have a Strength of 10 and the Multiple Wounds (D3) special rule.],
    rule("Overtyrant's Crown")[Talisman. The Overtyrant's Crown gives Greasus a 4+ Ward save. In addition, Greasus and any unit he joins have the Immunity (Psychology) special rule.],
  ),
  special-rules: "Natural Armour (6+)",
  special-rules-body: (
    rule("Everyone Has Their Price")[At the start of each enemy turn (before any Stupidity tests are taken) you can nominate D3 enemy units that are within 18" of Greasus to have the Stupidity special rule for the remainder of the turn. This ability has no effect on units that have Immunity (Psychology).],
    rule("The Goldtooth Tribe")[At least one unit of Ironguts must be included in an army led by Greasus.],
    rule("Hoardmaster")[Unless Greasus is fleeing, all friendly units within 18" of Greasus (including the Overtyrant himself), add +1 to their combat result scores.],
  ),
)

#unit("GHARK IRONSKIN",
  subtitle: "Tyrant of the Ironskin Tribe",
  profiles: (
    (name: "Ghark Ironskin", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 5, i: 4, a: 5, ld: 9, points: 385),
    (name: "Iron Rhinox", m: 7, ws: 4, bs: 0, s: 6, t: 5, w: 5, i: 4, a: 5, ld: "-", points: ""),
  ),
  troop-type: "Monstrous Creature (Special Character, Ogre)",
  mount: "Iron Rhinox (Daemon)",
  base-size: "50x100",
  equipment: "Hand weapon, gut-plate",
  magic-items: (
    rule("Ironskin Armor")[Magic Armour. Medium armour. The Ironskin Armor gives Ghark a 6+ Ward save.],
  ),
  options: [
- May take Magic Items up to a total of 75 points
  ],
  special-rules: "Frenzy (Iron Rhinox only), Impact Hits (D3+1), Natural Armour (3+)",
  special-rules-body: (
    rule("Iron Rhinox")[The Iron Rhinox has a Strength 2 Breath Weapon with the Armour Piercing (2) special rule.],
    rule("The Ironskin Tribe")[If Ghark is the Army General, Leadbelchers count as a Core Units instead of Special Units and Grimhorn Rhinox Riders count as a Special Units instead of Rare Units.],
  ),
  order: ("troop-type", "mount", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("SKRAG THE SLAUGHTERER",
  subtitle: "Prophet of the Great Maw",
  profiles: (
    (name: "Skrag the Slaughterer", m: 6, ws: 5, bs: 3, s: 5, t: 6, w: 5, i: 3, a: 4, ld: 9, points: 460),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre, Slaughtermaster)",
  base-size: "40x80 or 50x100",
  equipment: "Light armour",
  magic: "Skrag is a Level 4 Wizard that uses spells from the Lore of the Great Maw.",
  magic-items: [
- *Cauldron of the Great Maw:* Enchanted Item. Skrag and all Gorgers in the army receive the blessings of their ever-hungry god according to the table below. The 'Models Killed' column refers to models killed by Skrag in close combat. Models killed by spells or that were pursued and caught when fleeing do not count towards this total. When a new level is reached, bonuses take effect immediately and are cumulative.

#chart((("Models Killed", "Effect on Skrag", "Effect on Gorgers"), ("1+", "Skrag gains Regeneration (4+).", "All Gorgers that have not entered play do so in
their next turn."), ("5+", "Skrag gains +1 Attack.", "All Gorgers gain +1 Attack."), ("10+", "Skrag gains Hatred.", "All Gorgers gain Hatred."), ("15+", "Skrag becomes Unbreakable.", "All Gorgers gain Regeneration (4+).")))
  ],
  special-rules: "Frenzy, Immunity (Poisoned Attacks), Killing Blow, Natural Armour (6+), Ogre Charge, Terror",
)

#unit("GROTH ONEFINGER",
  subtitle: "First Prophet of the Great Maw",
  profiles: (
    (name: "Groth Onefinger", m: 6, ws: 4, bs: 3, s: 4, t: 5, w: 5, i: 3, a: 4, ld: 8, points: 360),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre, Slaughtermaster)",
  base-size: "40x40",
  equipment: "Hand weapon",
  magic: "Groth Onefinger is a Level 4 Wizard that uses spells from the Lore of the Great Maw.",
  options: [
- May take up to 2 Scalp-Gnoblars +5 points/Gnoblar
- May take up to 2 Tooth-Gnoblars +5 points/Gnoblar
- May take a Great Mawpot +50 points
- May take Magic Items up to a total of 75 points
  ],
  special-rules: "Immunity (Poisoned Attacks), Loremaster (Lore of the Great Maw), Mawseeker (see Big",
  special-rules-body: [
Names)*, Natural Armour (6+), Ogre Charge, Terror*

- *The First Butcher:* Once per turn, Groth may re-roll a dice when casting a spell or when trying to dispel an enemy spell.
- *The Lazarghs:* Choose one unit of Ogre Bulls or Ironguts in an army including Groth. This unit causes Terror instead of Fear.
  ],
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("MORG MAGMABORN",
  subtitle: "Avatar of the Fire Mouth",
  profiles: (
    (name: "Morg Magmaborn", m: 6, ws: 4, bs: 3, s: 4, t: 5, w: 5, i: 3, a: 4, ld: 8, points: 340),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x40",
  equipment: "Gut-plate",
  magic: "Morg Magmaborn is a Level 3 Wizard that uses spells from the Lore of Fire.",
  magic-items: (
    rule("The Basalt Staff")[Magic Weapon. Morg’s close combat attacks have the Armour Piercing (1) special rule. In addition, the Staff contains a Bound Spell, power level 3, which casts the _Fire Ball_ spell from the Lore of Fire.],
  ),
  special-rules: "Fire Breath (see Firebellies), Flaming Attacks, Immunity (Flaming Attacks), Natural",
  special-rules-body: [
*Armour (6+), Ogre Charge*

- *Avatar of the Fire Mouth:* When Morg suffers an unsaved wound in close combat, enemy models in base contact suffer a Strength 4 Hit with the Flaming Attacks special rule. When Morg is slain, place the small template above him. All models underneath the template suffer a Strength 4 hit with the Flaming Attacks special rule.
  ],
)

= SPECIAL CHARACTERS (HEROES)

#unit("GOLGFAG MANEATER",
  first: true,
  subtitle: "Mercenary Captain",
  profiles: (
    (name: "Golgfag Maneater", m: 6, ws: 5, bs: 4, s: 5, t: 5, w: 4, i: 4, a: 5, ld: 8, points: 155),
    (name: "Skaff", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x40",
  equipment: "Two hand weapons, Ogre pistol, light armour, gut-plate",
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Immunity (Psychology), Natural Armour (6+), Ogre Charge, Stubborn",
  special-rules-body: (
    rule("Golgfag's Maneaters")[Golgfag Maneater must be accompanied by a unit of Maneaters chosen from the army list as normal. The unit must be given a Standard Bearer and Musician. Skaff is the unit's Standard Bearer. Golgfag is the unit's Leader and may never choose to leave this unit.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("BRAGG THE GUTSMAN",
  subtitle: "Champion Executioner of Ogrekind",
  profiles: (
    (name: "Bragg the Gutsman", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 150),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x40",
  equipment: "Gut-plate",
  magic-items: (
    rule("Great Gutgouger")[Magic Weapon. Flail. While Bragg is involved in a challenge, he gains the Heroic Killing Blow special rule. In addition, if Bragg slays his foe in a challenge, any enemy units in base contact with him are Disrupted for the remainder of the turn.],
  ),
  options: [
- May take Magic Items up to a total of 25 points
  ],
  special-rules: "Natural Armour (6+), Ogre Charge",
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("BRAUGH SLAVELORD",
  subtitle: "The Corpse-Slaver",
  profiles: (
    (name: "Braugh Slavelord", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 195),
    (name: "Slave", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre). Slaves are Infantry (Human).",
  base-size: "40x80",
  magic-items: (
    rule("Soul-binder Chains")[Magic Weapon. Two hand weapons. At the beginning of each close combat phase, Braugh may nominate one enemy model in base contact. That model loses D3 Attacks for that phase.],
    rule("The Great Bullplate")[Magic Armour. Gut-plate. The Bullplate gives Braugh and his unit the Swiftstride special rule when charging.],
  ),
  special-rules: "Natural Armour (6+), Ogre Charge, Stubborn",
  special-rules-body: (
    rule("Slavelord")[Braugh begins the game with 12 slaves, these must form up with Braugh placed in the centre of the unit. Braugh benefits from "Look Out, Sir!" as long as there are at least 5 slaves in the unit. He may not voluntarily leave the unit under any circumstances. In addition, as long as Braugh is alive, all slaves have the Regeneration (5+) and Stubborn special rules.],
  ),
)

#unit("JHARED THE RED",
  subtitle: "Longstrider, Hunt-father",
  profiles: (
    (name: "Jhared the Red", m: 7, ws: 5, bs: 4, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 9, points: 160),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, great throwing spear, gut-plate",
  options: [
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Loner, Ogre Charge, Natural Armour (6+), Scouts, Their Master's Voice (see Hunters)",
  special-rules-body: (
    rule("Hunt-father")[Jhared may re-roll To Hit and to Wound rolls of 1 when fighting War Beasts, Monstrous Beasts, Monstrous Cavalry, Monstrous Creatures and Monsters. In addition, he ignores Terror caused by Monstrous Creatures and Monsters.],
    rule("Running with the Pack")[If Jhared deploys as part of a Sabretusk pack, then both he and the pack have the Vanguard special rule. In addition, the entire unit may re-roll failed charge distances.],
  ),
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)
