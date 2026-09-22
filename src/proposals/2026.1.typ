// The proposals, all of them, for every book in the edition.
//
// Not an edition of anything, and so not a fork of anything: a proposal alters
// no book, and the per-book Proposals forks this replaces were nine-tenths a
// second copy of the House book each derived from - 1,351 lines of 1,496 for
// Lizardmen, 4,712 of 5,118 for the rulebook - kept in step by hand and policed
// by a gate that existed for no other purpose.
//
// A chapter per book the proposals are about. Where a proposal reaches further
// than the book that defines the rule - armour penetration, the monsters'
// Stomps - it is filed where the mechanic lives and says so itself.

#import "../template.typ": *

#book-meta(
  slug: "proposals",
  army: "Proposals",
  version: "2026.1",
  layout: "rules",
  kind: "document",
  authored: true,
)

#show: book.with(title: "Proposals 2026.1", side: 3.1cm)

#cover(
  title: "Proposals",
  subtitle: "2026.1 · for Warhammer Armies Revamped",
)

#colophon((
  "Nothing in this document is a rule. Each proposal describes a change that has not been made: what it would do, why it is worth doing, and the best case against it. The books are untouched by all of it. A proposal becomes a rule only once it is agreed, and it is then written into a House edition and struck from here.",
  "The underlying work is the Warhammer Armies Project, written and freely distributed by Mathias Eliasson. All rules text, army design and points values are his; the proposals are ours alone, made for our own table, and carry no endorsement from him.",
  "Warhammer, Warhammer Fantasy Battle and all associated names, races and places are trademarks of Games Workshop Limited. This document is unofficial and unaffiliated, and no challenge to their status is intended.",
  "Typeset with Typst. Not for sale.",
))

#outline(title: [Contents], depth: 2)

= THE RULEBOOK

Proposals for #emph[The Game of Fantasy Battles 3.11], and for the House edition of it where one stands.

#proposal("Respread the Initiative ladder", status: "under discussion",
  page: "initiative-ladder",
  why: [
  The scale has ten rungs and the roster uses five of them. I3 alone holds 31% of the corpus, half of it sits in I1 to I3, and the four rungs from I7 up hold 7.6% between them. Nothing that is not a character sits above I6 at all.

  Compressed that far, the characteristic stops distinguishing. A Dwarf, an Orc and a Chaos Dwarf are all I2, and so is a Troll; a Skaven, a Skink and a Vampire are all I4, and so is a Yhetee. The differences are real and the scale has the room to print them — it is simply not being used.
  ],
  against: [
  It moves every profile in thirty-two books, which is the largest change on this shelf by a distance, and it cannot be done to one army at a time: a Dwarf at I3 fighting a Human still at I3 is a different game from a Dwarf at I3 fighting a Human at I5. Until the sweep is complete the two halves of the corpus do not play together.

  Placing by species is also a blunt instrument. The four anchors are settled and the forty placements are not, so the argument is really forty arguments, and any one of them can be had without disturbing the rest.
  ],
  cost: [
  Every profile line in the corpus — 2,010 of them across the thirty-two books, characters and large creatures included. The placements themselves are a table of forty species and thirty-nine beast classes, which is written; what is not written is the per-entry pass that applies them, nor what it does to points on the models that gain two rungs.
  ],
)[
  Initiative would be respread across the ten rungs it already has. Four anchors are settled: the human baseline moves from 3 to 5, the top of the living roster sits at 7, a character takes a flat +2 over its species, and I1 is reserved for the actually dead and the animated, so nothing living may sit there whatever its bulk. Forty species and thirty-nine beast classes are then placed against those four, and every placement below the anchors is an inference to argue with rather than a decision taken.
]

#proposal("Take armour penetration out of Strength", status: "under discussion",
  why: [
  Every other characteristic answers one question. Weapon Skill decides whether you hit, Toughness whether you are hurt, Initiative who swings first. Strength answers two, and the second one nobody chose: it is separately read off a chart to strip armour.

  That coupling costs us twice. It hands out armour penetration to things that were never designed to have it - a giant tears through plate as a by-product of being strong enough to wound - and it charges for it twice over anywhere a designer wanted it on purpose. A sling, whose whole identity is punching armour, has to buy Armour Piercing as a special rule to do what a crossbow gets free for being Strength 4.

  It also wastes the top of its own scale. No save can ever be better than 2+, so every modifier past \-5 does nothing at all, and the last three rows of the chart are decoration.

  Splitting the two makes armour penetration a number somebody decided on and printed, and leaves Strength the same shape as the eight characteristics beside it.
  ],
  against: [
  Strength doing two jobs is not an accident. It is the one lever that makes a big thing frightening without adding a stat to every profile in the game, and it is one number to learn rather than two. Splitting it buys clarity with paperwork, and the paperwork falls on thirty-one books.
  ],
  cost: [
  This is the most invasive change available to the ruleset, and it cannot be applied by halves: until a book is converted, armour is a great deal better against everything in it. Thirty-one weapon profiles in this book, 257 more across the army books, and an Armour Piercing line on any model whose own attacks should defeat armour. The offensive spells would need values too - thirty-two of them cause hits at a Strength - or magic stops stripping armour altogether.
  ],
  examples: [
  *At the table, almost nothing moves.* A knight in heavy armour with a shield has a 3+ save. Shot by a handgun he saves on a 5+ today, because Strength 5 costs him two points; under this proposal he still saves on a 5+, because the handgun's profile would read AP 2. Every weapon would be given the value it effectively has now.

  What moves is the part that was never stated. The same knight charged by a Strength 6 monster saves on a 6+ today, purely because the monster is big. Under this proposal the monster's profile has to say AP 3, or his armour holds.

  *What gets clearer.* A sling is Strength 3 with Armour Piercing (1): a weapon that wounds badly and defeats armour. A crossbow is Strength 4 with nothing - and defeats armour exactly as well, for free, as a side effect of wounding better. Both would simply print AP 1, and the difference between them would be the one that was always meant to be the difference: the crossbow wounds better.
  ],
)[
  Strength would do one job: rolled against Toughness to wound, and nothing further. How well an attack defeats armour would become a separate value printed on the attack itself - *Armour Piercing* - carried by a weapon in its profile, or by a model for the claws and horns that carry no weapon. The chart that turns Strength into an armour save modifier would go.
]

#proposal("Give every monster a weapon profile", status: "under discussion",
  why: [
  Everything else that strikes a blow in this game has a profile for it. A spear prints its Strength, its special rules and when each applies; a mortar prints two Strengths, one for the template and one for the model under the hole. A monster prints a number in the Attacks column, and takes the same Stomp (D6) as every other monster from its troop type. Whatever separates a Carnosaur from a Stegadon has to be taken on trust from the artwork.

  The Chimera and the War Hydra are both Weapon Skill 4, Strength 5, Toughness 5, 5 Wounds - 6 attacks and 8 attacks - and neither has a combat rule of its own. One of them breathes fire in every picture ever drawn of it.

  What makes this cheap is that the vocabulary already exists. *Multiple Wounds (D3)* is an anti-large rule and always has been: a model cannot suffer more wounds than it has on its profile, so the D3 is wasted entirely against one-wound infantry and doubles or trebles the damage against anything bigger. The Carnosaur already has it. What it lacks is a profile that says so, and somewhere to hang the touch of flavour that makes it a hunter rather than a big lizard - one point of To Hit against Monsters.

  Eighty-four of the 144 monsters are Rare choices. A monster that is good at everything has to be priced and rationed as though it were. One whose profile says what it is for can be cheaper, or Special rather than Rare, or genuinely frightening in the single role it is given.
  ],
  against: [
  If the rules a monster needs already exist, a profile only tidies them - the Carnosaur is already better against big targets than small ones, and printing a box around Multiple Wounds (D3) does not change a die roll anywhere. The honest answer is that the box is for the other 143: it is the place a designer has to look, and having to fill it in is what would stop a Hydra and a Chimera coming out identical.

  And it is 144 boxes to fill, on the entries that already carry the most rules on the table.
  ],
  cost: [
  A profile on each of 144 monsters, and the discipline not to make them mechanical. Points and army-list slots want revisiting alongside. The sensible first cut is one book: Lizardmen carries a hunter and a trampler three pages apart.
  ],
  examples: [
  *The Carnosaur, which is the case that prompted this.* Weapon Skill 4, Strength 6, 4 Attacks, Multiple Wounds (D3). Almost everything it needs is already there; none of it is anywhere a reader would look.

  #namecost("CARNOSAUR: RENDING JAWS", "")
  #minitable(("Attacks", "Strength", "Special Rules"), ("4", "As user", "Multiple Wounds (D3), +1 To Hit against Monsters"))

  #note[Nothing here is new except the last clause. Multiple Wounds is doing the work it was always doing - wasted against a rank of spearmen, trebling the damage against a Stegadon - and the point of hunting Monsters specifically is worth one point of To Hit, which is flavour rather than arithmetic. What the profile really buys is the question it forces for every other monster: what goes in this box?]
  ],
)[
  Every monster would carry a weapon profile of its own, printed in its entry the way a great weapon or a bolt thrower is: how many attacks, at what Strength, and with what special rules. Most of them need nothing invented - the rules the game already has are enough to say what a monster is for, once there is somewhere to print them.
]

#proposal("Stomps should come from the size difference", status: "under discussion",
  why: [
  Line of Sight is already this game's ladder of size: 0 for a swarm, 1 for infantry, 2 for cavalry and chariots, 3 for monstrous cavalry and monstrous creatures, 4 for a ridden monstrous creature, 5 for a Monster. Stomp already leans on it - a Monster may Stomp anything with a value of 3 or less - so the scale is trusted to say _what_ may be trodden on. It is simply not trusted to say _how much_.

  The result is that a Dragon treads on a swarm exactly as hard as it treads on a monstrous creature, and both for D6. Making the number the size gap keeps the idea - big things trample smaller ones - and makes the trampling proportionate to the difference, which is what it was always meant to represent.

  It also makes a monster something to be used well rather than merely pointed at a unit. Today every legal target takes the same D6; under this the number falls away as the target grows, so choosing what to charge becomes the whole of the skill of running a monster.
  ],
  against: [
  It is a cut. Two stomps in place of D6 takes a monster's trampling of infantry from three and a half hits to two, and monsters are not obviously overpriced today. A die that always comes up 2 is also less fun to roll than a D6, which matters more than it sounds.

  And there is a crack in it that the proposal after this one drives straight through. Impact Hits are exempted because a chariot is momentum rather than mass - but once one thing prints its number and another derives it, the question is why anything derives it at all. Sixteen monsters already print their own Stomps, for precisely the reason a chariot prints its Impact Hits: somebody had something specific to say about that model. A rule that has to make exceptions for the interesting cases is only doing the boring ones.
  ],
  cost: [
  The Stomp special rule, and the Monsters and Monstrous Creatures troop types - three places, all of them in this book. Sixteen monsters across the army books print a Stomp of their own, most of them a number from 3D6 down to 1, and those would have to be reconciled or dropped. Nothing else in an army book need change, and no chariot is touched at all.
  ],
  examples: [
  *The whole rule, as a table.* Take the attacker's Line of Sight value, subtract the target's, and halve it.

  #minitable(("The gap in Line of Sight", "Stomps"), ("1 or less", "None", "2 or 3", "1", "4 or 5", "2"))

  #note[A Monster (5) treading on infantry (1) makes 2. On cavalry, chariots or monstrous infantry (2), 1. On monstrous cavalry or a monstrous creature (3), 1. On a ridden monstrous creature (4), none - and none against another Monster, exactly as now. A monstrous creature (3) makes one against infantry and nothing against cavalry.]

  *What it does to a Carnosaur.* Today it stomps D6 into a regiment of spearmen, which is its best work and has nothing whatever to do with being a hunter. Under this it makes two. Against the Stegadon it was bred to fight it makes none, exactly as it does now - both are Monsters, and the gap between them is nil.

  That last part is why the two proposals want taking together. A rule built on the size gap can only ever cut what a monster does to things beneath it; by construction it can give a monster nothing at all against its own kind. So whatever makes the Carnosaur a hunter has to come from its profile - Multiple Wounds against the many-wounded, a point of To Hit against Monsters - and never from trampling. The two halves do not overlap, which is exactly what makes them worth having at once.
  ],
)[
  Stomp (D6) would stop being a flat die. A model would make *one Stomp for every 2 full points by which its Line of Sight value exceeds its target's*. A Monster treading on infantry gets two; on cavalry or a monstrous creature, one; against another Monster, none at all.

  Impact Hits would be left exactly as they are. They are momentum rather than mass, and they already work the way this proposal wants everything else to: the Chariots troop type gives Impact Hits (D6) as a default, and an entry prints its own number where it differs, as six chariots already do.

  This is one of two answers to the same complaint. The other, which follows it, gives every monster its own printed Stomps instead of deriving them from anything.
]

#proposal("Every monster prints its own Stomps", status: "under discussion",
  why: [
  The size gap fixes the flat D6, but look at what it cannot fix. A Carnosaur and a Stegadon are both Monsters, so both have a Line of Sight value of 5, so a rule that reads nothing but the gap gives them *identical Stomps against every target on the table*. The Chimera and the War Hydra come out identical too, and for the same reason. The size gap makes trampling proportionate; it does not make one monster trample differently from another, because it never asks what the monster is - only how big.

  Printing the number does ask. A walking fortress that fights by weight keeps the full D6 and keeps it against nearly everything; a predator that fights with its jaws makes a token two, and only against what it can knock down. The difference between them stops being a difference in their statlines and becomes a difference in how they fight, which is the whole complaint.

  It also lets a monster be strange. Nothing in a derived rule can say _this one tramples infantry into paste and can barely tread on a horse_; a printed table says it in two lines.
  ],
  against: [
  It is 144 numbers to invent with nothing to anchor them to, and no rule to fall back on when a case comes up that the author did not think of. Half of them will be written D6 against 3 or less out of habit, which is the present rule with more ink, and the ones that are not will drift apart across thirty books written over years - the same drift that left Slow to Fire named in eight places across the books and defined in none of them.

  It is also the more expensive of the two by a wide margin. The size gap is three places in this book and sixteen printed values to reconcile; this one is an entry in each of 144 monsters across thirty books, and until a book is converted its monsters have no Stomps whatever.

  And it is more to look up. One rule you learn once beats a table on every monster in the army.
  ],
  cost: [
  The Stomp special rule and the Monsters and Monstrous Creatures troop types here, and then a line - sometimes two - on each of 144 monsters across the thirty army books. Unlike the size gap, this one cannot be done in the rulebook alone.

  The two are not exclusive. The most likely settlement is both: the size gap as the default for any monster without a printed table, and a printed table wherever a monster has earned one. That costs the three rules now and the 144 entries only as and when somebody has something to say about a monster.
  ],
  examples: [
  *The two Lizardmen monsters, three pages apart.* One fights by weight and one by tooth, and the tables say so where no derived number could.

  #namecost("STEGADON: TRAMPLING FEET", "")
  #minitable(("Stomps", "Against"), ("D6", "A Line of Sight value of 3 or less"))
  #namecost("CARNOSAUR: RAKING CLAWS", "")
  #minitable(("Stomps", "Against"), ("2", "A Line of Sight value of 2 or less"))

  #note[The Stegadon keeps precisely what every monster has today, because the walking fortress is the model the rule was written around. The Carnosaur keeps a token amount and loses it entirely against monstrous cavalry and monstrous creatures, so against anything of size it has to fight with its jaws - which, with Multiple Wounds (D3) on them, is exactly what it is for.]

  *More than one line, where a monster wants it.* A mammoth is not a Stegadon with bigger numbers; it is a thing that flattens men and shoulders horses aside, and those are two different effects rather than one effect at two sizes.

  #namecost("WAR MAMMOTH: TRAMPLING", "")
  #minitable(("Stomps", "Against"), ("D6", "A Line of Sight value of 1 or less", "D3", "A Line of Sight value of 2 or 3"))

  #note[Read the first line that applies. Nothing here needs a new rule, a new characteristic or a new roll - it is the Stomp the game already has, with its number and its reach moved out of the troop type and onto the monster.]
  ],
)[
  The rival to the proposal above, and the opposite instinct. Rather than deriving the number from anything, each monster would simply print its own: how many Stomps it makes, and against what. A Stegadon might keep D6 against a Line of Sight value of 3 or less; a Carnosaur might make 2, and only against 2 or less. Where a monster wants more than one line, it gets more than one line.
]

#proposal("Rebuild Weapon Skill as two numbers and a gap", status: "under discussion",
  page: "melee-skill",
  why: [
  One number is answering two questions, and they are not the same question. A halberdier drilled to hold a line and a duellist trained to kill are both Weapon Skill 3, and there is no way to say that one is hard to hit while the other is good at hitting. The book describes the characteristic in both roles in a single sentence without remarking on it: Weapon Skill defines how skilled a model is to fight in close combat, and a model at Weapon Skill 0 is unable to attack with its normal attacks or defend itself in close combat. Two jobs, named in one breath, carried by one digit.

  The second complaint is the chart, and it is a measurement rather than a feeling. Weighted across the 2,007 profiles in the edition that carry a Weapon Skill, moving a model one rung changes the roll in two matchups out of five and changes nothing at all in the other three, as attacker and as defender alike. An attacker at Weapon Skill 5 hits Weapon Skill 5, 6, 7, 8, 9 and 10 on the same 4+. Ten rungs resolve into five results, and most of what resolution there is sits at the bottom of the chart where almost nothing stands.

  That would be survivable if the chart were at least regular, and it is not. The same advantage is priced differently depending on where it is taken: two rungs of advantage is a 2+ at Weapon Skill 3 against 1, and a 3+ at 5 against 3 and at 10 against 8. So the ladder cannot simply be respread to open the crowded bottom, because a profile that moves lands on whichever boundary happens to sit beneath it. Bump every profile in the corpus up a rung and 7% of matchups change, by no principle anybody could state.

  Reading nothing but the gap repairs both at once. The chart becomes symmetric by construction and five rows replace a hundred cells, which is a chart a player can hold in their head. Absolute Weapon Skill then stops meaning anything mechanically, and that is the point rather than a side effect: shifting the whole ladder becomes a true no-op, so where the standard soldier sits is settled on what the numeral tells a reader instead of on what it quietly does.

  The split is what makes a chart that coarse affordable. With one number, a designer who wants a model two rungs better at attacking must make it two rungs harder to hit as well, and with a step every two rungs there is no way to ask for less than that. With two, the model is placed where it was meant to land. The halves are not separate proposals that happen to agree -- each is what makes the other workable.

  They also cost less together than apart. The standing objection to splitting the characteristic has always been that nothing can be inherited: somebody must decide, for every profile in the game, which half of its Weapon Skill it keeps and what the other half becomes. That objection holds only while the ladder is otherwise standing still. A respread visits all 2,007 profiles regardless, so doing the three at once is one pass rather than three.
  ],
  against: [
  Three changes arrive as one thing and cannot be refused in part. Somebody who wants the split and dislikes a step every two rungs has nowhere to stand, and the answer that they are inseparable is convenient as well as true.

  Combat gets about a ninth less lethal. The average chance of a hit falls from 56.3% to 50.0%, with 38% of matchups harder and 1% easier. Every combat runs longer, which quietly rewards whoever brought more bodies and taxes the side that paid for quality. The 50.0% is forced rather than chosen -- a chart reading only the gap is symmetric under swapping the two models, so its mean is the middle of the die whatever the step size -- but a system-wide change in lethality should be argued for, not smuggled in inside a chart.

  And the flatness is not repaired. A step every two rungs leaves 63% of matchups unmoved by a rung, slightly worse than the 59% it replaces, because a step every two rungs means every other rung does nothing by definition. It shows up as promotions alternating in value: Weapon Skill 3 to 4 buys 4.4 points of hit chance where 4 to 5 buys 8.0. That is only tolerable if the ladder is laid out in even classes, so that one rung honestly means a shade and two mean a class -- which is the respread doing work the chart cannot do alone. One step every rung would cut the dead matchups to 34% and make every promotion worth the same, at the price of turning a two-rung gap into a 6+ and making this the loudest characteristic on the profile.

  Last, the single number is not only economy. It is a constraint that has kept close combat legible: one value, one comparison, and a player who knows their own Weapon Skill knows both halves of the fight. Two columns double what has to be held in mind at the moment a player is already holding Strength, Toughness and Initiative.
  ],
  cost: [
  Two numbers on every profile in thirty-three books, 2,007 of them, and a new chart at the centre of the combat phase. Neither number can be read off the old one, because the placements are the respread.

  Every rule that reads or alters Weapon Skill must then say which of the two it means. Melkoth's Mystifying Miasma reduces it; Big 'Uns and Red Crested Skinks add to it; each becomes a choice rather than a copy. The rules that reconcile two profiles want rewriting rather than adjusting: Cavalry take the highest Weapon Skill of rider and mount, which leaves a knight defended by whichever of the two swings better, and war machine crews use their own.

  Two decisions the formula forces. Unclamped it calls for an automatic hit wherever the gap reaches six, which is 0.6% of matchups. The rulebook does grant automatic hits, to magic missiles and Impact Hits and a number of special rules, but always by a rule that says so; one arriving out of the chart by arithmetic is a different thing, because a blow with no roll to make is a blow that no Weapon Skill and no modifier can ever touch. So it floors at 2+. At the other end it runs past 6+ and would bring the roll-a-6-then-roll-again machinery into close combat for the first time; capping at 6+ keeps the phase to a single roll.
  ],
  examples: [
  *The chart, entire.* Subtract the defender's Melee Defence from the attacker's Melee Attack and read the difference:

  #minitable(("Melee Attack minus Melee Defence", "To Hit"), ("+4 or more", "2+", "+2 or +3", "3+", "\-1, 0 or +1", "4+", "\-2 or \-3", "5+", "\-4 or less", "6+"))

  *The ladder it wants underneath it.* Four classes, two rungs apart, so that a class difference is always exactly one step of the chart: the untrained at 2, the trained soldier at 4, the veteran at 6, the hero at 8. Weapon Skill 1 keeps what it already means -- it holds six profiles in two thousand, and they are two Zombie entries, a Corpse Cart's dead, a palanquin-borne Slann, a Mechanical Steed and Kairos Fateweaver -- so it is where a model that does not fight goes. The odd rungs are the shading between the classes, and they are honest about it: one rung means a shade better and often nothing, two rungs mean a class above and always a step.

  *Where it pays.* The Lizardmen have three castes and one characteristic to tell them apart with:

  #minitable(("", "Melee Attack", "Melee Defence", "Reads as"), ("Skink", "2", "4", "cannot hurt you, hard to catch", "Kroxigor", "3", "2", "swings well enough, impossible to miss", "Saurus Warrior", "5", "4", "spawned for it"))

  The Skink proves the case. At Weapon Skill 2 today it is both feeble and easy to kill, and only the first was ever the intention. The Kroxigor is the inverse and equally inexpressible: a builder pressed into war, strong enough that the swing lands and slow enough that anything trained hits it whenever it likes. Neither model can be written with a single number, at any value, because one number forces the two halves to agree.

  Nothing already settled is disturbed by it. A Saurus at Weapon Skill 4 hits a Kroxigor at Weapon Skill 3 on a 3+ today and is hit back on a 4+; Melee Attack 5 against Melee Defence 2 is a 3+ and Melee Attack 3 against Melee Defence 4 is a 4+. What the split buys is the room to say something about the Skink standing beside them.

  *One convention falls out of it.* A profile whose Melee Attack exceeds its Melee Defence by one fights its own kind on a 4+, and so does a profile where the two are equal, because the truncation absorbs the odd rung. So the gap between a model's own two numbers is the whole of what it says about itself: nothing or one is an ordinary fighter, two is aggressive, minus two is defensive.
  ],
)[
  Weapon Skill would become two characteristics -- _Melee Attack_ for how well a model lands a blow, _Melee Defence_ for how hard it is to hit -- and the To Hit chart would read nothing but the difference between the attacker's Melee Attack and the defender's Melee Defence, one step for every two rungs of it. A hundred cells become five rows. The ladder is then respread against four classes set two rungs apart, so that a class difference is always one step and the rungs between them are shading.
]

#proposal("Kit should move melee skill, not only armour", status: "under discussion",
  page: "melee-kit",
  why: [
  The weapons chapter can make a model hit harder, hit sooner and hit more often, and has no way whatever to make it harder to hit. That is half of what holding a shield is for, and the book has nowhere to put it, because the single Weapon Skill cannot be lowered by a great weapon without also making the model worse at swinging one.

  So the weight of a weapon is priced in Initiative instead. A great weapon costs -2 Initiative, which is strike order rather than clumsiness: the penalty is severe on a Dark Elf and free on a Dwarf who was striking last regardless. The same weapon, the same drawback, and two entirely different prices paid, for no reason anybody designed.

  Defence is armour and Parry, and both are saves that do not care who is holding them. A Parry of 6+ is worth the same 17% to a peasant and to a Phoenix King, which is a strange thing to say about a skill. And the book prints a single shield doing two jobs that do not belong together -- armour in close combat, and a further point against missiles to the front of a model on foot, which is a tower shield's trick bolted onto every shield in the game.

  Splitting Weapon Skill opens all of this at once, and it would be a waste to split it and then leave the weapons chapter saying what it says today.
  ],
  against: [
  It cannot stand on its own. Every line of it presumes Melee Attack and Melee Defence exist, so it is a rider on a proposal that may not be taken, and it should be read as one.

  A shield stops being worth the same to everybody. A 6+ Parry save is 17% of the wounds that reach it whoever holds it; a point of Melee Defence is a step of the chart or nothing at all depending on the attacker's Melee Attack, so a Saurus at Melee Defence 4 and a Dwarf at 5 get different value from an identical shield. That is the same property every number on the profile has under the new chart, but it is new for equipment, and it is the sort of thing a player discovers at the table rather than reads.

  It also adds a second thing to check at the moment of rolling. Today a player compares two Weapon Skills; here they compare two numbers, each of which may have been moved by what the two models are carrying and by the arc the blow comes from. The chart got much simpler and the inputs to it did not.

  And the Melee Attack axis is licensed for exactly one weapon. That is either honest restraint or a rule written for a case that does not exist yet -- the nine close combat weapons differ by reach and by weight, which are a Melee Defence axis and a Strength axis, and only the flail is genuinely inaccurate. The clubs, maces, whips and rapiers that would use the axis properly are named hundreds of times in the books and have no rules of their own.
  ],
  cost: [
  Every entry carrying a shield must say which class it is -- 1,306 mentions of shields and 138 of bucklers across the corpus -- though medium is a safe default and most of them are medium.

  Parry stops being a save, which means rereading everything that grants one. The Parrying Blade grants Parry (5+), and a numbered save has no meaning once Parry is a characteristic modifier. Parry is currently cumulative with other sources of Parry, which needs a cap once it is a modifier instead: +2 total, which a spear and a shield already reach unaided.

  The weapons chapter gains a Melee Defence line on nine entries, and Frenzy gains one. Nothing needs repricing: the flail is placed so that its standing against the great weapon is what it is today, which matters because fifteen armies carry flails, across twenty-nine of the books.
  ],
  examples: [
  *The shield, in three classes.* The one shield the book prints is a medium shield with a tower shield's missile clause attached:

  #minitable(("Class", "Armour", "Melee Defence", "Against missiles"), ("Light", "--", "+1", "--", "Medium", "+1", "+1", "--", "Heavy", "+1", "--", "+1 to the front, on foot"))

  A light shield is bought for the blade-work and gives up the armour, a heavy one for the armour and gives up the blade-work.

  *The kit ladder.* Measured against the eleven profiles the split proposal settles, with a hand weapon and a medium shield as the yardstick:

  #minitable(("Loadout", "Melee Defence", "Their chance to hit"), ("Spear and shield", "+2", "-6.6%", "Hand weapon and shield", "+1", "the yardstick", "Two hand weapons", "+1", "the yardstick", "Hand weapon alone, polearm, pike, heavy shield", "--", "+6.7%", "Flail", "-1, and -1 Melee Attack", "+13.1%", "Great weapon", "-2", "+19.3%"))

  *Spear and pike stop being the same weapon.* A spear requires two hands only when bracing against a charge, so it keeps its shield and reaches +2 -- a full step harder to hit than the line beside it. A pike requires two hands always, gives the shield up, and buys three ranks of attacks with it. Defensive block or offensive one, which is a trade nothing else in the chapter offers.

  *The flail is wild rather than heavy.* At -1 Melee Attack and -1 Melee Defence it costs almost exactly what a great weapon costs and spends it somewhere else. Written as -3 Melee Defence instead it would be strictly worse than a great weapon and nobody would take one. A chain swung in a wide arc is hard to aim and hard to step inside, so missing more and blocking better is also the better description.

  *A pair of modifiers is not worth two points.* Frenzy takes -1 Melee Defence and no Melee Attack bonus, because it already grants +1 Attack. Worth knowing why the pair was never tempting: a +1 Melee Attack and a -1 Melee Defence land on two different rolls -- one on the model's own, one on the enemy's -- so they can never combine into a step the way a shield traded for a great weapon does. Split modifiers are two soft nudges; only modifiers landing on the same roll add up.
  ],
)[
  Equipment would move Melee Defence rather than only armour. Shields come in three classes -- light for the block, heavy for the armour, medium for both -- and Parry stops being an invulnerable save and becomes +1 Melee Defence, keeping the restrictions it already has against flank and rear attacks and against blows three or more Strength above the model's own. A weapon then states a Melee Defence modifier: a spear or a pike holds an enemy off, a great weapon or a flail leaves nothing to block with. A weapon modifies Melee Attack only where it is genuinely inaccurate, which today means the flail alone.
]

#proposal("Rider and mount should not add their hides together", status: "under discussion",
  why: [
  The paragraph disagrees with itself in consecutive sentences. One says that when attacking a Cavalry model you always use the highest Weapon Skill, Toughness and Wounds of rider or mount. The next says that if both have armour saves, these may be combined. Three characteristics take the better of the two and the fourth adds them together, and nothing anywhere says why the save is different.

  It also reaches the ceiling before the player has bought anything. A Saurus Oldblood has Natural Armour 5+ of his own and a Carnosaur has 4+, and combining those on the reading the armour table implies, where a 6+ is worth one step and a 4+ three, puts an Oldblood who has bought no equipment at all on a 2+ the moment he is mounted.

  That the book never works this example is half the complaint: it says the saves may be combined as normal and nowhere says what normal is when two save values meet. The light armour and the shield he may then purchase change nothing whatever, because no save can be better than 2+ and he is already there. A rule that makes defensive equipment worthless on precisely the models that can most afford it is not doing the job it was written for.

  Half effect keeps the idea and loses the ceiling. A man in armour behind a scaled skull really is better protected than either alone, which is why taking the better of the two and discarding the rest reads badly. Carrying the rider across at half rate says the same thing without letting two hides finish the arithmetic on their own.
  ],
  against: [
  It is a conversion table where there is currently one sentence, and it lands on the entries that already take longest to write down. Every monster-mounted character in the game would have a small sum to do at list-building time.

  It is also a quiet reduction to every such character in thirty-two books at once, and those entries were priced with the stacked save in place. Taking the save down a step without revisiting the points takes value off models nobody complained about.
  ],
  cost: [
  One sentence in the Cavalry troop-type rules replaced by two, and a six-row conversion table beside them. Monstrous Cavalry and Chariots read the same sentence, so they are covered by the first of the two rules and want checking rather than rewriting.

  The points on monster-mounted characters want revisiting afterwards. The saving throw is most of what those models are paying for.
  ],
  examples: [
  *The conversion, for a ridden monster.* Work out what the rider's save would be on foot, count its steps, and give the mount one step of Natural Armour for every two, rounding down.

  #minitable(("Rider's save on foot", "Steps"), ("No save", "0", "6+", "1", "5+", "2", "4+", "3", "3+", "4", "2+", "5"))

  Every two rider steps improve the mount's Natural Armour by one. The result is capped at 2+, as any save is.

  *What it changes.* A Saurus Oldblood on a Carnosaur saves on 2+ today, and still saves on 2+ if he buys nothing, because his own 5+ hide and the Carnosaur's 4+ reach the cap between them. Under this he starts on 3+, since his bare 5+ is two steps and half of that is one. Buying the light armour and the shield takes his foot save to 3+, which is four steps, worth two to the Carnosaur, and he arrives at 2+ having paid for it. Same ceiling, reached by spending rather than by mounting.
  ],
)[
  The line letting a rider's and a mount's armour saves combine would become two rules. On Cavalry and Monstrous Cavalry the model would take the better of the two base saves and add equipment to it as normal. On a ridden monster the mount's Natural Armour would be the base, and the rider's own protection would carry over at half rate: one step of improvement for every two steps the rider would have on foot.
]

#proposal("Cap the To Wound chart at a flat 6+", status: "under discussion",
  why: [
  Poisoned Attacks is a +1 To Wound modifier, and its own rule adds that armour saves are still modified by the Strength of the attack as normal. A +1 Strength bonus moves the same single step on this chart and improves the armour modifier as well, so the poison is a Strength bonus with the useful half taken out. Counted across the chart there is nowhere it is the better of the two: in eighty-eight boxes the two are identical for wounding, in two the poison is worse, and in none is it better.

  Capping the chart is what gives it somewhere to be the right answer. Once the high-Toughness boxes are a flat 6, another point of Strength stops improving the roll there while a To Wound modifier still does, and the poison becomes the better buy in twenty-eight of them. Those twenty-eight are exactly the corner where a thing is too tough for weight of blow to matter, which is what poison was always supposed to be for.

  The chart's other oddity is that it asks for a roll it has already decided. Three boxes permit no attempt whatever, so the dice never leave the hand and the modifier on the attack has nothing to modify.
  ],
  against: [
  Toughness would stop scaling precisely where the largest creatures live. Under this a Strength 2 attack wounds Toughness 4 and Toughness 9 on the same 6, so the gap between a tough monster and an enormous one closes entirely against massed weak attacks, which is the one thing the biggest creatures are least able to answer. The two-roll band is ugly, but it is what currently makes Toughness above 5 worth paying for, and this removes it without putting anything in its place.
  ],
  cost: [
  One chart, with twenty-eight boxes rewritten and three filled in, and the paragraph explaining how a modifier applies to the second roll deleted along with the second roll itself. No other rule changes wording. Monsters priced on being nearly unwoundable by rank and file want revisiting, and that is the real bill.
  ],
  examples: [
  *What the numbers do.* The three cases that show the range of the change:

  #minitable(("Attack", "Today", "Capped"), ("Strength 3 against Toughness 6", "6 then 2+, 13.9%", "6+, 16.7%", "Strength 1 against Toughness 8", "6 then 6+, 2.8%", "6+, 16.7%", "Strength 1 against Toughness 9", "no attempt permitted", "6+, 16.7%"))

  And what it does for the modifier: as the chart stands there is no target anywhere against which Poisoned Attacks is a better buy than a point of Strength. Capped, it becomes the better buy in twenty-eight boxes, every one of them in the corner where another point of Strength has stopped helping.
  ],
)[
  The To Wound chart's two-roll boxes would go, and so would its three boxes that permit no roll at all. Anything a model can hurt, it would hurt on a 6. Twenty-eight of the chart's hundred boxes collapse from a 6 followed by a second die to a single 6, and three that currently forbid the attempt become a 6 like the rest.
]

#proposal("Swiftstride should extend the charge, not only insure it", status: "under discussion",
  why: [
  Re-rolling 1s is two throws pretending to be one. You roll, look for 1s, pick those dice back up and throw again, and the charge is not settled until the second throw lands. Rolling three dice and setting the lowest aside is one throw and one glance, nothing conditional about it, and the same motion every time. That is the whole of the case for it.

  It also does more of what the rule is named for. Re-rolling 1s has all but removed the hopeless charge already, but it barely moves the long one; discarding the lowest of three lifts a charge of 9 inches or more from a third of the time to better than half, so a fast unit threatens ground its neighbours cannot.

  The other half is a trap the book has already patched once and only once. Swiftstride is never issued by a troop type, only by a unit's own entry, so a fast regiment loses the rule outright the moment a character without it joins. The Mixed Unit rule saw this coming and says that Expendable, Swiftstride and Vanguard carry across to a unit's handlers. Nothing extends the same courtesy to a joined character, who is the far commoner case.
  ],
  against: [
  The measured gap is two thirds of an inch on the mean, which is not obviously worth changing a rule that thirty-two books already print, and it puts a third die on the table for every charge a fast unit makes. The character clause also wants care rather than deletion: ignoring joined characters is right, but a rule that simply asked whether any model in the unit had Swiftstride would let one attached rider make a regiment of infantry fleet, which is a worse trap than the one being fixed.
  ],
  cost: [
  Two sentences in one special rule, and nothing else in the rulebook. Every Swiftstride unit in the corpus charges about two thirds of an inch further on average and reaches a long charge half the time rather than a third, so cavalry-forward lists get a slightly surer opening strike and want watching before anything is repriced.
  ],
  examples: [
  *The three charges compared.* A 2D6 charge roll, before the unit's Movement is added:

  #minitable(("Charge roll", "Mean", "4 or less", "9 or more"), ("Ordinary charge, 2D6", "7.0", "16.7%", "27.8%", "Swiftstride as written", "7.8", "6.0%", "37.8%", "Extra die, lowest discarded", "8.5", "5.1%", "52.3%"))

  The middle row is why this is a change of purpose rather than a fix. Re-rolling 1s has all but solved the disastrous roll already, and the column it leaves alone is the one that decides whether a fast unit gets to pick its fight.
  ],
)[
  Swiftstride would roll an additional D6 and discard the lowest, in place of re-rolling 1s. The clause requiring every model in the unit to have the rule would also ignore joined characters, so an attached character stops switching it off for the regiment he is trying to help.
]

#proposal("Characters should shape the army, not only fight in it", status: "under discussion",
  why: [
  The reservation is near total, and it measures cleanly. Rules that let a character change the composition of a list, by unlocking a unit or moving a choice between Core, Special and Rare, appear twenty-seven times in the Special Characters chapters of the thirty-two army books and once in all their generic character sections put together.

  The exception is the Empire's Masters of the Knightly Orders, whose Master of Battle rule upgrades one unit of Knights for each character carrying it. Everywhere else, buying a named model reshapes the army and buying a generic lord buys a statline and a shopping allowance.

  That is the wrong way round, because the generic lord is the one nearly every list fields. He is also the reason lists of different armies play alike: strip the special characters out and what remains is a fighter with items, whose presence changes where the damage lands and nothing else about how the army is built.
  ],
  against: [
  Composition rules are where list-building degenerates fastest, and the special characters are gated precisely because those rules are strong. Spreading them across every generic entry multiplies the combinations by the number of lords in each book rather than by the handful of named ones, and each is a licence somebody will optimise.

  There is also an opposite failure waiting. A character bought purely for an aura, parked behind a hill and never risked, is duller than a character bought to fight. Shifting weight from the statline to the effect has to keep him worth putting in front of something.
  ],
  cost: [
  This is a direction rather than an edit, and the bill is every character section in thirty-two books, with the points moving on all of them. Nothing needs inventing: the shapes are already written and only need spreading.
  ],
  examples: [
  *The four shapes already in the books.* Every one of these is a character rule that changes something other than the character:

  #minitable(("Rule", "Book", "What it changes"), ("Master of Battle", "Empire", "One unit of Knights per character carrying the rule may be upgraded to Inner Circle", "Big 'Uns", "Orcs & Goblins", "One unit per Warboss may be upgraded, and moves from Core to Special", "Army of Kroq-Gar", "Lizardmen", "A list he leads may take Saurus Cold One Riders as a Core choice", "Prophet of Sotek", "Lizardmen", "Six different unit entries may be upgraded to Red Crested Skinks"))

  Three of those four belong to named models. Only the first is available to a list that has not spent its points on a character out of the story, and it is the one worth copying: it keys off a rule rather than a name, so any entry in any book could be given it.
  ],
)[
  Generic characters would carry more rules that change what the army may take and how the units around them behave, and lean correspondingly less on their own combat characteristics and magic item allowance. The mechanisms all exist already. They are simply reserved almost entirely for special characters, and this would move the family down to the entries that every list actually buys.
]

#proposal("Take the common magic items out of the rulebook", status: "under discussion",
  why: [
  The common list is the reason a Dwarf and a Dark Elf can carry the same sword. Nineteen arcane items, eighteen weapons, fourteen suits of armour, twelve standards, ten talismans and nine enchanted items sit in the rulebook, available to all thirty-two armies at once, and they are the least characterful things any of those armies can spend points on.

  The books are already carrying the weight without it. Thirty of them print magic items of their own, seventeen hundred and ten in total, a median of fifty-four to a book. The common list is not filling a gap; it sits on top of lists that were already long enough to choose from.

  An item anyone may take cannot say anything about the army taking it, so it competes on efficiency alone and wins on efficiency alone. A faction item competes on what it does for that faction's plan, which is the argument a magic item ought to be having.
  ],
  against: [
  The common list is the shared vocabulary. A player who has learned what one of those items does has learned it for every game against every opponent, and thirty-two divergent lists is thirty-two things to look up instead of one. Removing it makes every army harder to read across the table.

  It is also the safety net under the thinner books, and they are thinner than the median suggests. The Dwarfs print nineteen items of their own against a median of fifty-four, so deleting the common list costs some armies a large share of everything they could buy. This is not one change; it is thirty small commissions.
  ],
  cost: [
  The casualty easiest to miss is the asterisk. Twenty-nine of the eighty-two common items are marked as takeable in multiples, and only fourteen of the thirty books print an asterisked item of their own. Delete the common list as it stands and sixteen armies lose the ability to field any magic item in multiples whatever, so the asterisk has to be redistributed in the same pass.
  ],
  examples: [
  *Where the items actually are.* Counted from the books themselves:

  #minitable(("Source", "Items", "Takeable in multiples"), ("The rulebook, open to every army", "82", "29", "The thirty books' own lists", "1,710", "80", "Dwarfs, the shortest list", "19", "0", "Orcs & Goblins, the longest", "120", "1"))

  Sixteen of the thirty books print no asterisked item at all. For those armies, every magic item that may be taken more than once today comes out of the list this proposal deletes, which is why the asterisk cannot be left until afterwards.
  ],
)[
  The eighty-two magic items the rulebook offers to every army would go, and each army book's own list would grow to cover the ground they leave. A magic item would then always be something a particular army has, rather than something anybody may buy.
]

#proposal("Losing a fight should not always cost the unit", status: "talking point",
  why: [
  As it stands the break test is binary and terminal. Pass and you hold, fail and you flee, and a pursuer who catches you removes the unit from the game. The most decisive moment in a battle is one 2D6 roll against a Leadership already reduced by the combat result.

  That makes a lost round and a lost unit the same event. A regiment that was pushed back hard, but was never actually broken in any sense a spectator would recognise, is gone. Giving ground as the normal outcome puts a losing fight back into the game instead of ending it.
  ],
  against: [
  The current cycle is fast, decisive, and the reason manoeuvre pays. Breaking and pursuing is what makes a flank charge worth setting up and cavalry worth fielding; if losing costs ground rather than the unit, a deep block can simply grind, and the payoff for playing well shrinks.

  It also pulls on more threads than it looks. Steadfast exists precisely to stop a big unit breaking, Fear pays out in combat resolution, and victory points are scored for units destroyed and standards taken. Change the consequence of losing and all three want revisiting.
  ],
  cost: [
  Unknown until the source wording is to hand, and that is the honest position. What has to be decided is a short list: how far a beaten unit gives ground, whether the winner may follow up or must, what happens when the fall-back is blocked by friends or terrain, whether breaking survives at all for a badly lost combat, and what becomes of Steadfast once holding the line is no longer the only alternative to routing.
  ],
  examples: [
  *The numbers this ruleset would reach for.* If it were built from what is already here rather than imported, the distance would be the combat result difference in inches, capped at the unit's Movement, with the winner choosing to follow up or hold. That uses only quantities the combat phase already computes, and it makes a heavy loss push further than a narrow one without adding a roll. Whether it matches the wording being borrowed is exactly the open question.
  ],
)[
  A beaten unit would give ground rather than break: fall back in good order, keep its formation, and fight on. Breaking and being run down would become the exception rather than the ordinary result of losing a round. This is the shape of the change and not a specification, because the text it comes from is not in this project.
]

#proposal("Monsters should be designed around a role", status: "talking point",
  why: [
  Eighty-four of the hundred and forty-four monsters are Rare. A monster that is good against everything has to be priced and rationed as though it were, which is why so many of them are never fielded. A monster whose entry says what it is for can be cheaper, or Special rather than Rare, and frightening in the one thing it does.

  The three proposals above are the mechanisms and not the change. The weapon profile is where a role gets printed; the two rival stomp proposals are the two ways of stopping every monster trampling identically. What none of them proposes is the second half: once the role is stated, the statline, the price and the slot all move to match it.
  ],
  against: [
  A hundred and forty-four entries, every one a judgement rather than a calculation, and no way to check the answer except by playing it. It is the largest piece of work on this shelf by a wide margin.

  It also cannot be done a book at a time without the corpus contradicting itself for as long as it takes, and a half-converted set of monsters is worse than either end state.
  ],
  cost: [
  Open questions before anything is drafted: whether roles come from a fixed vocabulary or are written freehand per monster, whether the re-stat may touch Wounds and Toughness or only the offensive half, and whether the Rare-to-Special moves happen in the same pass or afterwards. Chariots are out of scope by decision. Monster Impact Hits are in.
  ],
  examples: [
  *The pair that prompted it.* A Carnosaur and a Stegadon are both Monsters, both sit at Line of Sight 5, and both therefore trample everything on the table for exactly the same D6. One is an ambush predator that hunts big prey and the other is a walking fortress with a crew on its back. Nothing in either entry says so, and no amount of adjusting the stomp number alone will make them play differently.
  ],
)[
  The umbrella over the three monster proposals above. Each monster would be given a role, that role would be stated in its rules and its statline, and its points and its army list slot would then follow from the role rather than from being generally alarming.
]

#proposal("The magic phase, in pieces", status: "talking point",
  why: [
  Bundled together they cannot be voted on. Agreeing with four of the six and objecting to two means voting against the lot, so a single motion to redo magic is a motion that can only fail. Split, each piece is small enough to argue and small enough to try.

  The six: how much power a phase has and whether it should be random at all; Wizard Level, which currently sets spells known, spells available, dice per attempt and the casting bonus; whether casting and dispelling stay one opposed roll; Ultimate Power and the miscast, where natural 6s cascade free dice and two 1s roll the same table whatever was being cast; which lores an army reaches and how a spell is chosen; and the items and bound spells that add dice or bonuses on top.
  ],
  against: [
  Splitting has its own cost. Several of these only mean anything together, and capping the winds while leaving Ultimate Power untouched changes the phase very little. A piecemeal set of votes can arrive at a combination nobody would have designed on purpose.
  ],
  cost: [
  Nothing until a piece is picked, at which point it becomes a proposal of its own with the usual argument on both sides.
  ],
  examples: [
  *The piece most ready to be written* is Wizard Level, because the argument already exists twice on this shelf. Splitting armour penetration out of Strength and splitting Weapon Skill into attack and defence both say that one number answering several questions can be tuned for none of them. Wizard Level answers four. Whether that makes it the right place to start or merely the easiest is worth deciding before anyone drafts it.
  ],
)[
  Not a proposal but a decomposition. Redoing magic is six separable arguments wearing one name, and this sets them out so they can be taken one at a time. Nothing here proposes an answer to any of them.
]

= LIZARDMEN

Proposals for #emph[Lizardmen 3.0], and for the House edition of it where one stands.

#proposal("Red Crested Skinks without the prophet", status: "under discussion",
  why: [
  The rule is written already, and priced. Tehenhauin's Prophet of Sotek makes Red Crested Skinks of Skink Cohorts, Skink Skirmishers, Raptadon Riders, Horned One Riders, Terradon Riders and Ripperdactyl Riders, gives them +1 Weapon Skill with Devastating Charge, Hatred (Skaven) and Immunity (Poisoned Attacks) for two points a model, and lets Cohorts swap shields for great weapons at two more. Nothing here is invented. What goes is the requirement to field a named character to reach any of it.

  Requiring the Blessed Spawning of Sotek ties the crest to the god rather than to the man, and it does real work rather than standing as flavour. The Spawning is what grants Devastating Charge, so the crest itself no longer has to, and the Cohort pays the book's own rate of one point a model for a Spawning. One Spawning leaves the unit Core, which is what the Blessed Spawnings chapter allows.

  The printed rule bars Red Crested Skinks from taking any Spawning at all, and that is the one clause here being reversed rather than lifted. The bar makes sense as printed, because the crest already carried Devastating Charge and Sotek's Spawning would only have duplicated it. Moving the grant to the Spawning removes the reason for the bar.
  ],
  against: [
  Prophet of Sotek is a good part of what Tehenhauin is for. An army-wide rule is most of what a special character sells, and handing it to every list without him takes that away without giving him anything back.

  The unit is cheap for what it does. Seven points buys a Weapon Skill 3 model striking at Strength 5 in the first round under Mighty Blow, in a Core block that may be sixty strong. Toughness 2 and a 6+ Natural Armour are all that hold it, but that many great weapon attacks will have settled most combats before the answer lands.
  ],
  cost: [
  One rule and one option line on the Skink Cohort entry, and one clause of Tehenhauin's rule reversed for Cohorts. Prophet of Sotek stays exactly as printed for the five other units it covers, so a list that fields him loses nothing.

  Nothing else in the book moves.
  ],
  examples: [
  *As the entry would read.* Beneath the Skink Cohort's special rules:

  - *Red Crested Skinks:* A Skink Cohort may be upgraded to Red Crested Skinks. Red Crested Skinks have +1 Weapon Skill and the Hatred (Skaven) and Immunity (Poisoned Attacks) special rules. They must take the Blessed Spawning of Sotek and may take no other Blessed Spawning. In addition, they may replace their shields with great weapons.

  And among its options:

  - May be upgraded to Red Crested Skinks +1 point/model
  - Must take the Blessed Spawning of Sotek +1 point/model
  - May replace shields with great weapons +2 points/model

  *At the table.* Thirty Red Crested Skinks with great weapons come to 210 points, which is seven a model: three for the Skink, one for the crest, one for Sotek's Spawning and two for the weapon. Crest and Spawning together come to the same two points Tehenhauin's version charges for the crest alone, and the weapon to the same two. They fight at Weapon Skill 3 and Strength 5 in the first round, Strength 4 after it, with Toughness 2 and a 6+ save to keep them standing.
  ],
)[
  A Skink Cohort could take the red crest without Tehenhauin in the army. The crest grants +1 Weapon Skill, Hatred (Skaven) and Immunity (Poisoned Attacks); the unit must take the Blessed Spawning of Sotek, which supplies the Devastating Charge the printed version bundles into the same upgrade; and it may replace its shields with great weapons. The total is the price the book already charges. Only Skink Cohorts are covered, not the five other units the printed rule reaches.
]

#proposal("Kroxigor think better with Skinks about", status: "under discussion",
  why: [
  The book pairs the two everywhere except in the rules. Skink Skirmishers carry Skirmish Screen, written for no reason but to let Kroxigor walk through them, and those are the only two entries in the army that name each other at all.

  The mechanism needs no inventing either, because the corpus has written it twice. The Snotlings' Mimic keys off a friendly Orc or Goblin unit within 6 inches, and our own Tyranids' Synapse penalises any unit that is not within 12 inches of the right friendly model.

  What the discount buys is freedom of movement rather than a coin flip. The drawback is switched off by standing near a unit the list was always going to bring, so what it really costs is Kroxigor that must travel with their handlers instead of going where they please. The rulebook checks Stupidity only outside close combat, so it never bites once they arrive: this is entirely a rule about the approach.
  ],
  against: [
  The discount is anchored on unconditional Stupidity, which is not what this is. The corpus prices Stupidity away at three points a model, on the Skaven Rat Ogre's Brain Transplant, and that model is Stupid wherever it stands. A version a competent player switches off by keeping Skinks within six inches is worth less than the full three, so 44 is the generous reading and 45 the cautious one.

  It also collides with the Spawn-kin proposal at the front of this chapter. A Kroxigor standing inside a Skink Cohort is an inch from a Skink and would never test at all, taking the discount for nothing. That may be the intention, since it drives Kroxigor into the Cohort where the theme wants them, but the two cannot then be priced apart.
  ],
  cost: [
  A points value and one clause on the Kroxigors entry, plus a decision about whether the Kroxigor Ancient shares it. Worth knowing before agreeing it: Cold-blooded will not help. Stupidity here is a flat D6 against a table rather than a Leadership test, and Immunity (Psychology) covers only Panic, Fear and Terror, so the army's usual answer to wobbling does nothing at all against this.
  ],
  examples: [
  *What the roll actually does,* in any turn no Skinks are close enough:

  #minitable(("D6", "What happens"), ("1", "Lurches D6 inches straight forward, may only Hold if charged, no combat reform", "2-3", "Minus one to Weapon Skill, Ballistic Skill, Leadership and casting", "4-6", "Nothing at all"))

  Half the rolls do nothing, one in six is a real accident, and none of it is rolled at all while a Skink unit stands within six inches.
  ],
)[
  A Kroxigor would cost three points less, at 44, and be subject to Stupidity in any turn it starts with no friendly Skink unit within 6 inches. Standing near Skinks it behaves exactly as it does today.
]

#proposal("The Slann return to their generations", status: "under discussion",
  page: "slann-generations",
  why: [
  The Disciplines of the Old Ones are the generation ladder, taken apart and given prices. Wandering Deliberations at 25 points lets a Slann combine its spells across the winds, which is what an ordinary fifth-generation Slann simply did; Soul of Stone at 25 softens a miscast, where the fourth generation shrugged them off; The Focused Rumination at 30 grants one free casting die a phase, where the second generation had one on every attempt; and Becalming Cogitation and Harmonic Alignment between them are what the third generation did to enemy magic. The chapter is not a substitute for generations. It is generations, disassembled and sold.

  The first of those is the one that stings. A Wizard in this edition selects one Lore of Magic and stays in it -- the rulebook says so plainly, and every wizard in every book works that way. Combining spells across lores is not standard here and never has been. It is a purchase, with a price and a penalty attached, and it is the thing that made an ordinary Slann a Slann.

  The book also already writes its characters this way and makes one exception. Saurus Leaders is an Oldblood at 140 and a Scar-Veteran at 90; Skink Chiefs is a High Chief at 70 and a Chief at 35; Skink Priests is a High Priest at 165 and a Priest at 60. The Slann is the only character in the army that comes in one grade, and the word is already printed in the book besides -- Lord Kroak's own rule is called First Generation Spawning.

  And a ladder is the only route to the claim the army wants to make. Wizard Level is a hard ceiling: 163 Level 4 wizards across the corpus and nothing above, because the rulebook numbers spells 1 to 4 and lets a Wizard take spells of their own level or lower, so a fifth level would have nothing to reach for. The Slann is not the most expensive caster either -- the Verminlord is 450 and each Greater Daemon 400 -- and its +1 to cast and dispel is printed in Grand Cathay and Kingdoms of Ind as well. It cannot be made the best caster in the setting by level, by price, or by the bonus it already has. What no other book can answer is the same caster in four grades, the best of them priced beyond what an ordinary game can hold.

  The baseline comes down rather than up, and the rulebook is why. The Winds of Magic are rolled by the size of the game and not by what was spent on wizards -- 2D3 power dice below 2,000 points and 4D3 above -- so a lone Level 4 Slann sees about nine dice in a phase at 2,000 points and around five below it. It has room for twenty-four: six dice a cast, four spells, one attempt each. A caster in this edition is throttled by a pool the game hands out, so paying more for one buys quality per cast and never more casts. That is the diminishing return, it is why a 360-point Slann is dear beside a 190-point Grey Seer who also combines his lores, and it is why the only rung on this ladder that adds dice is the one at the top.
  ],
  against: [
  It only adds. Every rung buys power and gives nothing back, and points are the whole of the counterweight. The 6th edition ladder did not work that way: each step up consumed another character slot and put a hundred victory points on the Slann's head. Character slots genuinely do not exist here, composition being percentages. A victory-point bounty does, though -- the Dwarfs' Rune of the Dishonoured hands the enemy victory points equal to the bearer's whole cost -- so that half of the counterweight was available and has not been taken, on the grounds that the 25% single-model cap already does the gating. That is an answer about what is legal rather than about what happens in the game, and a model that simply gets better for money is a shape worth distrusting.

  Nothing was found to take instead, which is itself worth recording. Combat power is the obvious currency and the Slann has none -- its profile reads Attacks 0. Presence is the next candidate and it runs backwards, because Lizardmen venerate the Slann and the older the spawning the more fiercely, so an elder Slann commands more rather than less.

  Three of the four grades will rarely be seen. At 2,000 points no character may cost more than 500, so a second-generation Slann at 560 needs a 2,240-point game to be legal at all. That is intended, but it means most of this proposal is writing for games nobody at this table plays often.

  It also leaves the Disciplines chapter needing a second pass. With four of its thirteen absorbed or repriced, what remains has to be rewritten from flat additions into things that bend the Slann in a direction -- and only one template for that survives in the chapter afterwards, since Wandering Deliberations is the other and it retires into the fifth generation.

  Last, Lord Kroak contradicts the ladder on the page unless it is said out loud. His rule is First Generation Spawning and the ladder says the first generation cannot be fielded. The bar is on the living, and he is a mummified corpse who is barely present even in the lore -- but both entries have to say so or they argue with each other in print.
  ],
  cost: [
  The Slann Mage-Priest entry becomes four profiles and four prices, in the shape Saurus Leaders and Skink Chiefs already use. Every Lizardmen list moves with it, because the baseline Slann goes from 360 to 340 -- down, despite gaining the lore-combining, for the reason set out below.

  Wandering Deliberations retires into the fifth generation. Soul of Stone stays -- it acts on the miscast you do suffer rather than on whether you suffer one, so the fourth generation does not make it redundant -- but it costs less than 25 now that the commoner half of its job is innate. The Focused Rumination, Becalming Cogitation and Harmonic Alignment all stay purchasable, since a fifth-generation Slann may still want them.

  The eleven remaining Disciplines want rewriting as bends rather than additions, which is a separate piece of work and the larger half of it.
  ],
  examples: [
  *The ladder.* Each rung is cumulative on the ones below it:

  #minitable(("Generation", "Points", "What it adds"), ("5th", "340", "the Slann as printed, combining its spells across any lore it has access to", "4th", "375", "ignores the first die showing a 1 in any casting roll", "3rd", "440", "enemy Wizards within 24\" gain no additional dice from Ultimate Power, casting or dispelling", "2nd", "560", "one free additional die on every casting attempt", "1st", "--", "cannot be fielded; none lives"))

  *Why the fourth generation resists rather than is immune.* A miscast is two or more unmodified 1s, counting every die however granted, so ignoring the first 1 means three are needed:

  #minitable(("Dice thrown", "Miscast today", "Fourth generation"), ("2", "2.8%", "0%", "4", "13.2%", "1.6%", "6", "26.3%", "6.2%"))

  Flat immunity would delete the decision, because a Slann that cannot miscast throws six dice at everything for ever. This leaves it safe at the two and three dice where it spends most of the game and hands back a real risk when it reaches for six.

  *What the third generation costs an enemy.* Ultimate Power grants a free die for every natural 6. Denied it, a wizard throwing four dice loses 0.67 dice and about 2.3 of casting value -- roughly the difference between landing a level 3 spell reliably and not. It taxes commitment, since the harder they push the more it takes. The 24" is the distance at which the enemy army begins: deployment places units more than 12" from the centre line, so a shorter bubble on a model with Movement 4 would reach nothing for the first turns of the game.

  *Why the free die is safe at the top and not below it.* An extra die carries a one-in-six chance of another 1, which is what turns a large throw into a miscast. The second generation inherits the fourth's rule, which eats the first 1. The ladder being cumulative is what delivers the antidote before the poison, and it is also capped: the rulebook allows each Wizard one attempt per spell per turn, and a Level 4 knows four, so the free die improves four casts rather than buying a dozen cheap ones.
  ],
)[
  The Slann Mage-Priest would come in grades, as every other character in the book already does. A fifth-generation Slann is the model printed today, with the combining of its spells across lores made innate rather than bought for 25 points. Above it each generation is cumulative: the fourth ignores the first die showing a 1 in any casting roll, the third denies Ultimate Power to enemy Wizards within 24", and the second adds a free die to every casting attempt. The first generation cannot be fielded, because in the lore none still lives.
]

#proposal("Every Lizardmen monster is given a job", status: "under discussion",
  page: "lizardmen-monsters",
  why: [
  Seven monsters, and the rulebook says the same three things about every one of them. The Monsters troop type grants Line of Sight 5, Stomp (D6) and Terror, and nothing in any entry has ever contradicted it -- so a Carnosaur bred to hunt Stegadons and a Bastiladon that walks at the speed of a Saurus see the same distance and tread on the same things with the same weight. A ten-foot feathered serpent tramples a regiment for D6 automatic hits because it shares a troop type with a creature whose fins brush the jungle canopy.

  The entries themselves are better than that and the trouble is that nothing holds them to it. The Carnosaur's own description says its jaws are undeterred by the thickest hides and the toughest bony plates, and its Strength is 6, which is precisely the value at which hides start mattering. The Bastiladon's says its true abilities rely on fighting on the defensive, and its best weapon against rank infantry was a Stomp it shares with everything. The Troglodon is called one of Lustria's deadliest hunters and carries six jobs of which none is above average. The Coatl has a bite the lore calls venomous and no Poisoned Attacks.

  Every one of those is fixed with a rule the game already owns, or with a number the profile already has a column for. Not one rule in the whole pass is without a precedent somewhere in the corpus.
  ],
  against: [
  It is seven entries in one book, and the argument for each is a judgement about what a creature is rather than a calculation anybody can check. The measurements say what a change does; they cannot say whether a Carnosaur ought to be Strength 7.

  It also breaks the troop type's promise, which is a real cost. A player who learns that Monsters have Line of Sight 5 and Stomp (D6) currently knows it about all 160 of them; afterwards they know it about the ones that do not say otherwise, and every monster entry becomes a place to look. The saving is that the entry now tells them something worth reading.

  And the Coatl is the awkward one. Moving it from Monster to Monstrous Creature changes its Unit Strength, changes what may tread on it, and leaves the ridden version needing a ruling the Monsters troop type spells out and the Monstrous Creatures one does not.
  ],
  cost: [
  Seven entries in the Lizardmen book, and two of them are also character mounts, so the Skink Priests and Saurus Leaders entries move with them.

  Three rules are new and each is borrowed: *Layered Carapace* is the Ogre Kingdoms Stonehorn's Stone Skeleton under another name, *Pale Death* is the Blade of All-Frost and the Glaive of Putrefaction, and the Dread Saurian's roar is Be'lakor's Dark Master at the same radius. *Triangulate* is the furthest from its precedent: Stromfel's Fin, a fifteen-point magic weapon in Pirates of Sartosa, already re-rolls failed To Wound rolls against a unit that has taken Wounds, and this keys on the model's own shot instead and re-rolls To Hit.

  The Monsters troop type keeps its defaults and stops being the last word, which is the only rulebook change. Nothing else in any other army is touched, which is also the reason to do one book first.
  ],
  examples: [
  *The seven, and what each now answers.* Every figure is expected unsaved Wounds a round, read off the House edition:

  #minitable(("", "Points", "Line of Sight", "Stomps", "Reach", "For"), ("Troglodon", "175", "4", "1", "2", "dissolves large things with venom", "Bastiladon", "175", "4", "2", "2", "a fortress that breaks ribs", "Coatl", "175", "3", "--", "--", "a flying caster that bites", "Carnosaur", "190", "4", "1", "2", "pounces, then cannot be recalled", "Arcanadon", "195", "7", "2", "4", "the tallest thing on the field", "Stegadon", "200", "5", "2D3", "3", "flattens ranks on the charge", "Dread Saurian", "400", "6", "D6", "4", "the apex, tilted large"))

  *Strength is the anti-large characteristic, and nobody had used it as one.* Restoring the Carnosaur to the Strength 7 it carried in eighth edition does exactly what its blurb promises, because it is worth nothing at all against small targets:

  #minitable(("Target Toughness", "3", "4", "5", "6", "7", "8"), ("Strength 6 wounds on", "2+", "2+", "3+", "4+", "5+", "6+", "Strength 7 wounds on", "2+", "2+", "2+", "3+", "4+", "5+"))

  Against a Dread Saurian that is +80%, against a Bastiladon +67%, against a Saurus Warrior nothing whatever. And at Strength 7 a Bastiladon's Natural Armour 2+ still saves on a 6, which is the blurb's own word: that armour *sometimes* thwarts the bite of a Carnosaur.

  *A snake does not trample.* The Coatl prints no Stomp at all, which is the one answer no rule deriving the number from size can give -- and the reason this proposal settles the two rival stomp proposals in the rulebook chapter in favour of printing.

  *Venom that degrades rather than kills.* The Troglodon's Pale Death gives each unsaved Wound on a Character, Monstrous Creature or Monster a -1 to Strength and Toughness. Against a Stegadon it is dead in three rounds rather than five, and by the third it is striking at 30% of its output -- because a monster's Stomp and its Impact Hits both resolve at its own Strength, so the venom takes its damage away on three fronts at once. That is deliberately not the Carnosaur's job: one kills a monster, the other dissolves it.
  ],
)[
  Each of the seven Lizardmen monsters would state its own Line of Sight, its own number of Stomps and its own reach, in place of the Line of Sight 5 and Stomp (D6) the Monsters troop type gives them all -- and each would be given the one thing it is for. The Carnosaur returns to Strength 7 and pounces; the Stegadon trades Attacks for weight; the Bastiladon halves the Multiple Wounds that reach it; the Arcanadon becomes the tallest model on the table; the Troglodon poisons rather than kills; the Coatl becomes a Monstrous Creature that treads on nothing; and the Dread Saurian gains Wounds, reach and a roar. The troop type keeps its defaults and stops being the last word.
]

= TOMB KINGS

Proposals for #emph[Tomb Kings 3.1]. The army has no House edition, so these are
against the base book.

#proposal("Stone is not armour a man could take off", status: "under discussion",
  page: "tomb-kings-stone",
  why: [
  Ten entries in this army were carved rather than born, and the book cannot decide what that means. Four of them -- the Tomb Scorpion, the Necroserpent, the Necropolis Knights and the Khemric Titan -- already carry Natural Armour and no worn plate. Five buy armour from the same list a Skeleton Warrior does: the Ushabti, the Sepulchral Stalkers, both sphinxes and the Necrolith Colossus. Two have no save whatever, and one of those is a Monster with six Wounds.

  So this is not a principle being invented. It is a conversion the book began and left half-finished, and the Amazons reached the same answer without help -- Ancient Sentinels are Animated Construct with Natural Armour (4+) and no equipment but a hand weapon.

  What stone should additionally mean is that the armour cannot be taken off it, and the rulebook already owns that wording: Seamless Armour says a save cannot be reduced below a stated value. Applied at 6+ it does precisely one thing, and does it evenly -- nothing at all below Strength 5, where the save was never being stripped, and a flat sixth off everything above. A spear was never going to matter. A greatsword now chips the stone rather than shattering it, and so does a cannonball.
  ],
  against: [
  It is a defensive buff to ten entries in one army, and defensive buffs are the hardest kind to feel confident about, because the thing they change is how long an opponent's plan takes to work.

  Two earlier and larger versions of it were measured and abandoned, which is a fair warning about the third. Toughness 8 for the constructs turned out to blunt heavy attacks half again as much as it blunted light ones, and would have put four six-Wound models into a club whose four existing members all have ten Wounds and cost around 350. Toughness 6 for the rank stone -- Ushabti and the Dwarfs' Rune Guardians -- collided with the Monster rung, where 104 of the corpus's 185 monsters live.

  And it leaves the real problem standing. Monstrous Infantry is compressed to the point of uselessness, with 76% of 58 entries at Toughness 4 and a Troll sharing a rung with an Ogre Bull. This proposal does not fix that, and is careful not to pretend it does.
  ],
  cost: [
  One new special rule of two sentences, and ten entries in one book. Nine of the ten keep the save value they have now and only change what kind of save it is; the Hierotitan gains a 6+ where it has never had anything.

  Points move on seven of the ten, by 12% across the set. Nothing else in any other army is touched, though the same argument plainly reaches the Dwarfs' Rune Guardians and the Amazons' Ancient Sentinels and would be worth making there separately.
  ],
  examples: [
  *What the floor does, and where.* The Khemrian Warsphinx, Toughness 7 with a Natural Armour 5+, in expected unsaved Wounds per hit:

  #minitable(("", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10"), ("As now", "0.074", "0.116", "0.167", "0.333", "0.500", "0.667", "0.833", "0.833", "Floored at 6+", "0.074", "0.116", "0.139", "0.278", "0.417", "0.556", "0.694", "0.694"))

  Flat, and confined to the half of the range where a save currently evaporates.

  *Why not Toughness 8.* Against a Toughness 7 construct with a 5+, Strength 3 already needs a 6 followed by a 3 -- 7.4% a hit, eighty-one hits to kill a Warsphinx. The chart's two-roll boxes had already dealt with chaff, so a Toughness step had nothing left to do at the bottom and did all its work at the top instead, halving what Strength 6 achieves.

  *Why not Toughness 6 for the Ushabti.* Measured on the Ushabti body, an unstrippable 5+ at Toughness 5 and a plain 6+ at Toughness 6 are worth exactly the same -- 11.2 hits to kill either way, 58 points either way. They differ only in shape, and one of the two shapes stands on the rung the Monsters are already standing on.

  *The prices.*

  #minitable(("Entry", "Becomes", "Durability", "Points"), ("Ushabti", "Natural Armour (6+)", "+11%", "42 to 45", "Sepulchral Stalkers", "Natural Armour (5+)", "+8%", "48 to 50", "Necropolis Knights", "unchanged, floored", "+5%", "50, unchanged", "Tomb Scorpion", "unchanged, floored", "+6%", "100 to 105", "Necrolith Colossus", "Natural Armour (6+)", "+13%", "210 to 235", "Hierotitan", "Natural Armour (6+)", "+20%", "205 to 245", "Khemrian Warsphinx", "Natural Armour (5+)", "+7%", "225, unchanged", "Necrosphinx", "Natural Armour (5+)", "+7%", "250 to 210", "Khemric Titan", "unchanged, floored", "+8%", "320 to 345", "Sehenesmet", "Natural Armour (6+)", "+20%", "425, unchanged"))

  The Necrosphinx falls because the companion proposal takes its flight; Sehenesmet holds because a special character is priced for his rules and not for a 6+.
  ],
)[
  A new special rule, *Stone Construct*, would replace worn armour with Natural Armour of the same value on every entry in the army that is carved rather than born, and would set a floor under it: the save can never be reduced below 6+, whatever the Strength of the attack. Ten entries take it. Nine keep the save value they already have; the Hierotitan, a six-Wound Monster with no armour whatever, gains a 6+. Toughness is untouched everywhere.
]

#proposal("The two sphinxes stop being the same creature", status: "under discussion",
  why: [
  The Khemrian Warsphinx and the Necrosphinx have the same Movement, the same Weapon Skill, the same Toughness, the same Wounds, the same Initiative, the same Attacks, the same armour and the same Line of Sight. They differ by one point of Strength, one special rule and one crew. Twenty-five points apart, and the book offers no account of why you would field either.

  Their descriptions are not vague about it. A Warsphinx is a siege animal that walks into ranks with four Tomb Guard shooting off its back; a Necrosphinx is a headsman, and Heroic Killing Blow is already on its profile saying so. One should be flattening regiments and the other should be removing a single large thing from the board.

  Neither currently does its own job particularly well, and both do it in the same way: with Stomp (D6) at Line of Sight 5, which the Monsters troop type hands to all 185 monsters in the corpus and which is, for both of these, the largest single source of damage they have. The Necrosphinx kills monsters mostly by treading on them, which is a strange thing for a beheading engine to be doing.
  ],
  against: [
  This is two entries redesigned on a reading of their flavour text, and flavour text is not a measurement. The arithmetic can say what a change does; it cannot say that a Warsphinx ought to stomp harder than it bites.

  Taking flight from the Necrosphinx, the Necrolith Bone Dragon and the Khemric Titan is the most aggressive part of it and nothing is offered in return. The case is that a stone sphinx with small carved wings, a skeletal dragon and a two-hundred-ton monument are not credible flyers, and that the army keeps Carrion, the Tomb Barque, Prince Apophas and Arkhan -- so the ability does not leave the list, only the heavy end of it. The case against is simply that three entries get worse and are told to live with it.

  And the Warsphinx keeps Line of Sight 5 while stomping only at reach 3, which is a combination no entry in the corpus currently prints. It is deliberate -- the platform is tall, the feet are not discriminating -- but it is a new shape.
  ],
  cost: [
  Two entries, plus a line each on the Necrolith Bone Dragon and the Khemric Titan, plus the Tomb King and Tomb Prince entries that take a Warsphinx as a mount.

  Both need an entry to be able to print its own Stomps and its own reach. Printing the number is already established practice: thirteen Tyranids entries carry a Stomp value in their special rules, from Stomp (D3) on a Trygon to Stomp (D6+1) on a Carnifex, and seven Giants override theirs conditionally when they jump up and down. Printing a *reach* has no precedent anywhere -- no entry in the corpus does it -- and that half rests on the rulebook proposal.

  One rule is borrowed rather than new: Entombed Beneath the Sands is the Tomb Scorpion's own, already written and already in this book.
  ],
  examples: [
  *The Khemrian Warsphinx, as it would print.* Weapon Skill 4 to 3 and Attacks 4 to 3, because it is a beast and not a swordsman; Stomp (2D3+1) in place of Stomp (D6), reaching Line of Sight 3 rather than 5. Average Stomps rise from 3.5 to 5 and become far more reliable, and it can no longer tread on anything large.

  #minitable(("Expected unsaved Wounds a round", "Rank infantry", "Elite infantry", "A monster"), ("As printed", "6.47", "3.83", "1.86", "As proposed", "6.75", "4.39", "0.75"))

  Better at both of its jobs, 60% worse at somebody else's. It stays at 225.

  *Envenomed Sting, reworked.* Today it is +10 points for Poisoned Attacks on everything, which is a flat damage upgrade with no character. Instead: nominate one Attack before rolling To Hit; that Attack has Poisoned Attacks and Multiple Wounds (D3). The pattern is not invented -- the Arachnarok Spider's Venom Surge is the same rule at D6 -- and it gives the Warsphinx the one thing it lacked against anything large. Still +10. Fiery Roar is untouched at +30.

  *The Necrosphinx, as it would print.* Attacks printed at 5, with the two hand weapons and their Parry (6+) struck, so the profile says what it does; Stomp (D3) at reach 3; Envenomed Sting removed, since a headsman does not need venom; and Fly removed. In its place, Entombed Beneath the Sands as a paid upgrade at +25 -- it is a statue that waits under the sand, which is what the Tomb Scorpion does and what the Dread Saurian pays 25 for in another book.

  Heroic Killing Blow, its actual weapon, is untouched. 250 to 210.

  *And nothing large leaves the ground.* Fly comes off the Necrosphinx, the Necrolith Bone Dragon and the Khemric Titan. What is left airborne in the army: Carrion at 20 points, the Tomb Barque at 125, Prince Apophas at 130 and Arkhan the Black at 340.
  ],
)[
  The Warsphinx becomes the army's anti-rank engine and the Necrosphinx its headsman, where today they are the same model at two prices. The Warsphinx trades Weapon Skill and an Attack for Stomp (2D3+1) that reaches only Line of Sight 3, and its Envenomed Sting becomes one nominated Attack with Poisoned Attacks and Multiple Wounds (D3). The Necrosphinx prints its Attacks at 5 with the hand weapons struck, stomps D3 at reach 3, loses the Sting, and gains Entombed Beneath the Sands as a paid upgrade. Flight leaves all three of the army's heavy flyers -- the Necrosphinx, the Necrolith Bone Dragon and the Khemric Titan -- and nothing is given back.
]
