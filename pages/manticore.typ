// The working behind "The Manticore stops being tamed by whoever sits on it",
// in the Dark Elves chapter of the proposals document. The entry is printed
// identically in three books -- beastmen/3.0-house, dark-elves/3.1 and
// warriors-of-chaos/3.0-house -- and every rule is read from the House
// rulebook, src/rulebook/3.11-house.typ.
//
// The lore quoted here is NOT from any book in this repository: the WAP army
// books are lists and rules and carry no descriptive text. It is from the
// Warhammer wikis, read through search summaries rather than fetched directly.
//
// HTML export has no layout: headings, prose, lists and minitable only.

#import "../src/template.typ": *

= The Manticore, and the rider who cannot hold it

The Manticore is the creature the Empire's Griffon is defined against. Every
account of a Griffon draws the contrast explicitly -- precise, measured,
controlled, "in contrast to monsters such as Manticores" -- and the corpus
renders the Manticore's half correctly: *Fly (8), Frenzy, Killing Blow*. Five
attacks when frenzied, striking late, killing by luck. That is right and almost
none of it changes here.

What changes is that its single most-quoted trait is written into the profile
and then switched off by the troop-type rules in two books out of three.

== The rider problem

#quote[Even for creatures of Chaos, Manticores are particularly ferocious, and
will launch themselves roaring into a bloody and brutal conflict. They're so
bloodthirsty, even their riders often struggle to control them.]

That is already modelled, and modelled well. Frenzy's *Berserk Rage* forbids
fleeing as a charge reaction, demands a Leadership test to choose any reaction
but a counter-charge, and forces a charge at the nearest viable enemy unless a
Leadership test is passed. On the Manticore's *Leadership 5* those tests fail
far more often than they pass.

Except that the rulebook also says, of a split profile: *"The mount's Leadership
is never used, unless a spell or special rule states otherwise."*

So in Dark Elves and in Warriors of Chaos, where the Manticore is a character
mount, every Berserk Rage test is taken on the rider's Leadership 8 or 9. The
creature nobody can control becomes reliably controlled the moment somebody
climbs on it. Its Leadership 5 is read in exactly one book -- Beastmen, where
it is a standalone Special choice.

#minitable(
  ("Berserk Rage tested on", "Leadership", "Keeps control per test", "Through both tests", "Turns of six it steers itself"),
  ("A Chaos Lord", "9", "83%", "69%", "1.0",
   "A Dreadlord or Beastlord", "8", "72%", "52%", "1.7",
   "The Manticore itself", "5", "28%", "8%", "4.3"),
)

*Untameable.* Leadership tests that the Manticore is required to take as a
result of the Frenzy special rule always use its own Leadership, even when it is
ridden.

The wording stays deliberately narrow -- Frenzy tests only, not every Leadership
test -- and it needs no new machinery, because the rulebook's own sentence ends
"unless a spell or special rule states otherwise". This is that special rule.

It is a pure drawback with nothing given back, and a large one: four turns in
six the beast picks the target. It also hands the opponent a lever that costs
them almost nothing -- leave something cheap within charge range of a Manticore
and it will go and eat that instead, whatever its rider had in mind.

== Seventy-two decorative Leaderships

The Manticore's case is the sharpest instance of something wider. Counting
every monster entry that is bought as a character mount and prints a Leadership
value, *72 of them carry a number the split-profile rule guarantees is never
read* -- the Arachnarok's 3, the Carnosaur's 5, the Zombie Dragon's 4, the
Aggradon's 3.

Most of those are harmless: a number on the page that flavours the creature and
costs nothing. The Manticore is the one where the number was load-bearing, and
this proposal fixes only that one. Whether the other seventy-one want a general
answer is a separate argument and a bigger one.

== Weapon Skill 5 buys less than it looks

Trading a point of Weapon Skill for an Attack looks like a downgrade and mostly
is not, because on the To Hit chart Weapon Skill 5 beats Weapon Skill 4 in only
four columns out of ten: against Weapon Skill 2, 4, 9 and 10. The 9s and 10s
are six tenths of one percent of the corpus and can be set aside. Weapon Skill
2 and Weapon Skill 4 cannot -- they are 7.9% and 24.6% of all 2,011 profiles,
a third of everything between them.

So the extra Attack is free against two thirds of the game and costs a step
against the other third.

#minitable(
  ("Expected unsaved Wounds", "Rank infantry (WS3)", "Elite (WS4)", "Elves (WS5)", "A monster (WS4)"),
  ("WS5 with 4 Attacks, as printed", "2.22", "1.48", "1.67", "0.74",
   "WS4 with 5 Attacks, proposed", "2.78", "1.39", "2.08", "0.69",
   "Change", "+25%", "\-6%", "+25%", "\-6%"),
)

Weighted by how common each Weapon Skill actually is across the corpus, that
comes to about *+14%* -- a real gain rather than the wash the unweighted
average suggests, but not the free lunch a single-column reading would give.

It is also the right direction for the creature. The Empire proposal takes the
Griffon *up* to Weapon Skill 6 as the precise hunter; the Manticore going down
to 4 with a fifth claw is the same contrast drawn from the other end. Skill
against savagery, and the numbers now say which is which.

== The venom tail, and a second use of a rule nobody uses

#quote[Some have manes of writhing serpents, others pelts of iron scales, and
many sprout spiked tails with a poison strong enough to boil a man's blood in
his veins.]

That sentence is the Manticore's option list almost item for item -- *Bloodrage*,
*Iron-hard Skin*, *Venom Tail* -- so unlike the Griffon's struck upgrades, this
menu earns its place. What changes is only the tail, brought into line with the
other venom tails this pass has written: the Wyvern's, the Warsphinx's sting and
the Arachnarok's *Venom Surge*.

*Venom Tail (+20).* The Manticore has one additional Attack, resolved separately
at *Initiative 8*, with the Poisoned Attacks and Multiple Wounds (D3) special
rules.

Two things about that.

*Multiple Wounds makes it self-gating.* Against a one-Wound model the rule does
nothing whatever; against anything larger it doubles the tail's output. So the
upgrade is an anti-large purchase rather than a flat damage bump, which is what
a poison that boils blood ought to buy.

#minitable(
  ("The tail alone", "Rank infantry", "Elite infantry", "Elves", "A monster"),
  ("+1 Attack, Poisoned -- as printed", "0.67", "0.35", "0.50", "0.21",
   "with Multiple Wounds (D3)", "0.67", "0.35", "0.50", "0.42"),
)

*And it strikes on its own Initiative*, which is the second use in this pass of
*Split Profiles and Striking Order* -- the rulebook shape that resolves a model's
Attacks at two or more Initiative values, and which two entries in thirty-two
books use. The Chimera's tail was the first. Twice is about the right frequency
for machinery the game defines and nothing touches; a third would be a habit.

Initiative 8 puts the sting before 97% of the corpus. A scorpion tail whips over
while the beast is still landing.

== Stomp

A Monstrous Creature is granted Stomp (D3) at reach 1. A winged lion that
pounces is not a trampler, and its damage is emphatically in the claws and jaws
-- so it prints *Stomp (1)*, at the same reach. One heavy paw coming down,
rather than a creature that works by treading.

== What it does and what it costs

#minitable(
  ("", "M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Points"),
  ("As printed", "6", "5", "0", "5", "5", "4", "5", "4", "5", "150",
   "As proposed", "6", "4", "0", "5", "5", "4", "5", "5", "5", "120"),
)

Monstrous Creature (Chimeric). Fly (8), Frenzy, Killing Blow. Stomp (1),
reaching Line of Sight 1. *Untameable*. Rending Fangs +5, Bloodrage +15,
Iron-hard Skin +15, Venom Tail +20.

Melee and Stomp together fall about 13% -- the Stomp coming down from D3 to a
flat 1 costs more than the extra Attack gains -- and *Untameable* is worth
roughly fifteen points of that on its own, being a real loss of control in three
more turns out of six with nothing offered in exchange.

*Killing Blow is untouched*, and should be. It slays outright against Infantry,
Cavalry and War Beasts, and against every other troop type it still "inflicts
one Wound which Ignores Armour Saves and Regeneration" -- so it degrades rather
than switching off, which is a good match for a beast whose ferocity
#quote[often allows them to prevail over all but the largest foes].

The entry is printed identically in Beastmen, Dark Elves and Warriors of Chaos,
so all three move together. It is a Special-slot unit in the first and a
character mount in the other two, which is why the rider problem exists in two
of them and not the third.
