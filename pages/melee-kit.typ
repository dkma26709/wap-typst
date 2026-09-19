// The working behind "Kit should move melee skill, not only armour", in the
// rulebook chapter of the proposals document. It presumes the Melee Attack and
// Melee Defence split proposed beside it, and every figure here is measured
// against the nine species placements settled there plus the human baseline
// those placements imply.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= Melee skill, and the kit that carries it

Splitting Weapon Skill leaves the weapons chapter with a characteristic it has
never been able to touch. This page is the argument that it should, and the
measurements behind where each weapon lands.

Everything below is computed against the ten profiles settled in the split
proposal -- Skink, Kroxigor, Skaven, Orc, human, Dwarf, High Elf, Saurus, Wood
Elf, Dark Elf -- which between them generate a hundred matchups. The yardstick
throughout is a hand weapon and a medium shield, because that is what most of
the corpus carries.

== What a weapon says about defence today

Almost nothing, and what it does say it says through the wrong characteristic.

A great weapon is heavy, so the book gives it Initiative -2. But Initiative is
strike order, not clumsiness, and a model already striking last loses nothing
at all by carrying one. The same penalty is severe on a Dark Elf and free on a
Dwarf, for no reason anybody designed.

Defence, meanwhile, is armour and Parry. Armour is a save and does not care
what you are holding; Parry is also a save, granted flatly by a shield or a
second blade, worth the same to a peasant and a Phoenix King. So the weapons
chapter can make a model hit harder, hit sooner and hit more often, and has no
way whatever to make it harder to hit -- which is half of what holding a shield
is for.

== A shield in three classes

The book prints one shield and one buckler. The shield is already doing two
jobs that do not belong together: it adds armour in close combat, and it adds
a further point against missiles to the front of a model on foot. That second
clause is a tower shield's job and has been bolted onto every shield in the
game.

Split three ways, and the melee half becomes Melee Defence:

#minitable(
  ("Class", "Armour", "Melee Defence", "Against missiles", "What it is"),
  ("Light", "--", "+1", "--", "buckler, target, off-hand shield",
   "Medium", "+1", "+1", "--", "the infantry shield the book prints today",
   "Heavy", "+1", "--", "+1 to the front, on foot", "kite, tower, the cavalry shield"),
)

The choice that creates is the point of it. A light shield is bought for the
blade-work and gives up the armour; a heavy one is bought for the armour and
gives up the blade-work; the medium is the compromise the whole corpus is
currently issued by default.

== Parry stops being a save and becomes Melee Defence

Parry is an invulnerable save in close combat, granted by a shield used with a
hand weapon or by a second hand weapon, and refused to attacks against the
flank or rear and to attacks made at three or more Strength above the model's
own.

It would become +1 Melee Defence, and it would keep both restrictions. The
Strength clause is what makes the rule worth keeping rather than worth
replacing: a parry is not a force field, and a blow heavy enough goes through
the block whatever the model does with it. As a Melee Defence bonus that reads
as a modifier the attacker's own Strength switches off, which is unusual but
not novel -- the rulebook already gates Parry on exactly that condition.

What it buys is a whole dice step out of the close combat sequence. Parry is
rolled after hitting, after wounding and after armour; folded into Melee
Defence it is read once, at the same moment the attacker was already comparing
two numbers.

What it costs is that a shield stops being worth the same to everybody. A 6+
save is 17% of the wounds that reach it, whoever holds it. A point of Melee
Defence is worth a step of the chart or nothing at all depending on the
attacker's Melee Attack, so a Saurus at Melee Defence 4 and a Dwarf at 5 get
different value from an identical shield. That is the same property every
other number on the profile has under the new chart, but it is new for
equipment, and a player buying a shield should be told it.

== The weapons chapter gets a second axis

Two rules, and the second one exists to stop the first from sprawling.

*A weapon modifies Melee Defence.* It says how well the thing can be defended
with: reach holds an enemy off, a shield blocks, a weight of steel swung in
both hands leaves nothing to block with. This is the axis nearly every weapon
in the chapter has an opinion about.

*A weapon modifies Melee Attack only when it is genuinely inaccurate or
genuinely precise.* Today exactly one weapon qualifies, and it is the flail.
The restriction is not squeamishness -- it is that the nine close combat
weapons in the book differ almost entirely by reach and by weight, which are a
Melee Defence axis and a Strength axis, and a rule licensing Melee Attack
modifiers generally would be a rule with nothing to modify.

The corpus is quite clear that the missing weapons exist in the fiction. The
books name clubs 111 times, maces 87, scythes 82, whips 66, cleavers 41 and
glaives 36, and the rules see every one of them as a hand weapon or a great
weapon. A mace is blunt and a rapier is nothing but accuracy, and neither can
be written today. That is a weapons chapter worth expanding, and it is a
separate proposal: the chapter would go from nine entries to forty, and every
army would want its own blade.

== The kit ladder, measured

#minitable(
  ("Loadout", "Melee Attack", "Melee Defence", "My hits", "Their hits"),
  ("Spear and shield", "--", "+2", "--", "-7.3%",
   "Hand weapon and shield", "--", "+1", "--", "the yardstick",
   "Two hand weapons", "--", "+1", "--", "the yardstick",
   "Hand weapon alone", "--", "--", "--", "+6.2%",
   "Hand weapon and heavy shield", "--", "--", "--", "+6.2%",
   "Polearm", "--", "--", "--", "+6.2%",
   "Pike", "--", "--", "--", "+6.2%",
   "Great weapon", "--", "-2", "--", "+18.3%",
   "Flail", "-1", "-1", "-7.3%", "+12.0%"),
)

Four tiers, and each of them says something the book cannot say now.

*The spear keeps its shield, and the pike does not.* A spear requires two hands
only when bracing against a charge, so a spearman carries a shield the rest of
the time and reaches +2: one full step harder to hit than the line beside him.
A pike requires two hands always, so it gives the shield up and buys three
ranks of attacks with it. Spear and pike stop being the same weapon at two
lengths and become a choice -- defensive block or offensive one -- which is a
trade nothing else in the chapter offers.

*The polearm pays for its reach with its shield and no more.* Reach and two
hands cancel, so a halberdier sits exactly where a man with a bare hand weapon
sits, and the +1 Strength is bought with the shield rather than with anything
new.

*The great weapon's cost becomes legible.* Two points of Melee Defence, plus
the shield it cannot carry, is three points against the yardstick and raises
the enemy's hit chance by 18.3%. Today the same weapon's only drawback is an
Initiative penalty that is free to half the models that take it.

*Two hand weapons keep the defence rather than gaining attack.* The loadout
already grants +1 Attack, which is the offensive half of fighting with two
blades and a larger bonus than a point of Melee Attack would be. Giving it
both would make it the only entry in the chapter with an upside and no trade.
Each blade defending with the other is also the better description: two swords
do not aim better than one.

== The flail is not a worse great weapon

Written as -3 Melee Defence, the flail becomes strictly worse than a great
weapon and nobody would take one. Its only advantage today is the absent
Initiative penalty, and it pays for that with a point it cannot afford.

#minitable(
  ("The flail written as", "My hits", "Their hits", "Net"),
  ("-1 MA, -2 MD", "-7.3%", "+18.3%", "-25.7%",
   "-1 MA, -1 MD", "-7.3%", "+12.0%", "-19.3%",
   "great weapon, for comparison", "--", "+18.3%", "-18.3%"),
)

At -1 and -1 the flail costs a single point more than a great weapon in total
and spends it in a different place: wild rather than heavy. That is worth more
than the arithmetic, because it is also the better description. A chain swung
in a wide arc is hard to aim and hard to step inside, so the flail should be
the weapon that misses more and is blocked with better -- which is exactly
what the two modifiers say.

It also avoids a points pass. Fifteen armies carry flails, across twenty-nine
of the books once old versions and House editions are counted, and a weapon
that came out meaningfully worse than it is today would need every one of
those entries repriced. At -1 and -1 the standing of flail against great
weapon is what it already is, so the points that exist stay valid.

== Frenzy

Frenzy would gain -1 Melee Defence and nothing else. The rule already grants
+1 Attack, which is the whole of its offensive half, and a Melee Attack bonus
beside it would be the same statement made twice.

One thing about it is worth writing down, because it looks like a contradiction
and is not. A modifier pair such as +1 Melee Attack and -1 Melee Defence reads
like two points, and it is not: one lands on the model's own attack roll and
the other on the enemy's, so the two can never combine into a step the way a
shield traded for a great weapon does. Split modifiers are always two soft
nudges and never one hard one. Frenzy losing its Melee Attack half therefore
costs it very little, and what remains -- a good thing and a bad thing, the bad
one biting about a third of the time -- is the shape the rule wanted.

== What it costs

Every entry in the corpus that carries a shield has to say which class it is,
which is 1,306 mentions of shields and 138 of bucklers, and the reasonable
default is medium. The weapons chapter gains a Melee Defence line on nine
entries. Parry stops being a save, so every magic item and special rule
granting it has to be reread: the Parrying Blade grants Parry (5+), which has
no meaning once Parry is a characteristic modifier rather than a save, and a
rule that stacked with other sources of Parry needs a cap once it is a
modifier instead.

That cap should be +2. A spear and a shield reach it unaided, and without one
a spear, a shield and any future evasion rule stack to +3 and a whole class of
model stops being hittable.

And the whole of it is contingent. None of this can be written while Weapon
Skill is one number, because a single characteristic cannot be lowered by a
great weapon without also making the model worse at swinging it.
