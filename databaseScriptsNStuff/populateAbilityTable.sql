CREATE TABLE IF NOT EXISTS abilities(
    FIELD1              INTEGER  NOT NULL PRIMARY KEY,
	ability_name        VARCHAR(13) NOT NULL,
    generation          INTEGER  NOT NULL,
    effects             VARCHAR(1548) NOT NULL,
    ability_description VARCHAR(66) NOT NULL
);
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (0,'stench',3,'This Pokémon''s damaging moves have a 10% chance to make the target flinch with each hit if they do not already cause flinching as a secondary effect.

This ability does not stack with a held item.

Overworld: The wild encounter rate is halved while this Pokémon is first in the party.','The stench may cause
the target to flinch.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (1,'drizzle',3,'The weather changes to rain when this Pokémon enters battle and does not end unless replaced by another weather condition.

If multiple Pokémon with this ability, drought, sand stream, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.','The Pokémon makes it rain
when it enters a battle.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (2,'speed-boost',3,'This Pokémon''s Speed rises one stage after each turn.','Its Speed stat is
gradually boosted.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (3,'battle-armor',3,'Moves cannot score critical hits against this Pokémon.

This ability functions identically to shell armor.','Protects the Pokémon
from critical hits.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (4,'sturdy',3,'When this Pokémon is at full HP, any hit that would knock it out will instead leave it with 1 HP.  Regardless of its current HP, it is also immune to the one-hit KO moves: fissure, guillotine, horn drill, and sheer cold.

If this Pokémon is holding a focus sash, this ability takes precedence and the item will not be consumed.','It cannot be knocked
out with one hit.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (5,'damp',3,'While this Pokémon is in battle, self destruct and explosion will fail and aftermath will not take effect.','Prevents the use of
self-destructing moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (6,'limber',3,'This Pokémon cannot be paralyzed.

If a Pokémon is paralyzed and acquires this ability, its paralysis is healed; this includes when regaining a lost ability upon leaving battle.','Protects the Pokémon
from paralysis.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (7,'sand-veil',3,'During a sandstorm, this Pokémon has 1.25× its evasion, and it does not take sandstorm damage regardless of type.

The evasion bonus does not count as a stat modifier.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in a sandstorm.','Boosts the Pokémon’s
evasion in a sandstorm.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (8,'static',3,'Whenever a move makes contact with this Pokémon, the move''s user has a 30% chance of being paralyzed.

Pokémon that are immune to electric-type moves can still be paralyzed by this ability.

Overworld: If the lead Pokémon has this ability, there is a 50% chance that encounters will be with an electric Pokémon, if applicable.','Contact with the Pokémon
may cause paralysis.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (9,'volt-absorb',3,'Whenever an electric-type move hits this Pokémon, it heals for 1/4 of its maximum HP, negating any other effect on it.

This ability will not take effect if this Pokémon is ground-type and thus immune to Electric moves.  Electric moves will ignore this Pokémon''s substitute.

This effect includes non-damaging moves, i.e. thunder wave.','Restores HP if hit by an
Electric-type move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (10,'water-absorb',3,'Whenever a water-type move hits this Pokémon, it heals for 1/4 of its maximum HP, negating any other effect on it.

Water moves will ignore this Pokémon''s substitute.','Restores HP if hit by a
Water-type move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (11,'oblivious',3,'This Pokémon cannot be infatuated and is immune to captivate.

If a Pokémon is infatuated and acquires this ability, its infatuation is cleared.','Keeps the Pokémon from being
infatuated or falling for taunts.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (12,'cloud-nine',3,'While this Pokémon is in battle, weather can still be in play, but will not have any of its effects.

This ability functions identically to air lock.','Eliminates the effects of weather.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (13,'compound-eyes',3,'This Pokémon''s moves have 1.3× their accuracy.

This ability has no effect on the one-hit KO moves (fissure, guillotine, horn drill, and sheer cold).

Overworld: If the first Pokémon in the party has this ability, the chance of a wild Pokémon holding a particular item is raised from 50%, 5%, or 1% to 60%, 20%, or 5%, respectively.','Boosts the Pokémon’s accuracy.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (14,'insomnia',3,'This Pokémon cannot be asleep.

This causes rest to fail altogether.  If a Pokémon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.

This ability functions identically to vital spirit in battle.','Prevents the Pokémon
from falling asleep.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (15,'color-change',3,'Whenever this Pokémon takes damage from a move, the Pokémon''s type changes to match the move.

If the Pokémon has two types, both are overridden.  The Pokémon must directly take damage; for example, moves blocked by a substitute will not trigger this ability, nor will moves that deal damage indirectly, such as spikes.

This ability takes effect on only the last hit of a multiple-hit attack.

In Pokémon Colosseum and XD: Gale of Darkness, this ability does not take effect on Shadow-type moves.','The Pokémon’s type becomes
the type of the move used on it.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (16,'immunity',3,'This Pokémon cannot be poisoned.  This includes bad poison.

If a Pokémon is poisoned and acquires this ability, its poison is healed; this includes when regaining a lost ability upon leaving battle.','Prevents the Pokémon
from getting poisoned.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (17,'flash-fire',3,'This Pokémon is immune to fire-type moves.  Once this Pokémon has been hit by a Fire move, its own Fire moves will inflict 1.5× as much damage until it leaves battle.

This ability has no effect while the Pokémon is frozen.  The Fire damage bonus is retained even if the Pokémon is frozen and thawed or the ability is lost or disabled.  Fire moves will ignore this Pokémon''s substitute.  This ability takes effect even on non-damaging moves, i.e. will o wisp.','Powers up the Pokémon’s
Fire-type moves if it’s hit by one.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (18,'shield-dust',3,'This Pokémon is immune to the extra effects of moves used against it.

An extra effect is a move''s chance, listed as an "effect chance", to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move''s main effect.  For example, thunder shock''s paralysis is an extra effect, but thunder wave''s is not, nor are knock off''s item removal and air cutter''s increased critical hit rate.','Blocks the additional effects
of attacks taken.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (19,'own-tempo',3,'This Pokémon cannot be confused.

If a Pokémon is confused and acquires this ability, its confusion will immediately be healed.','Prevents the Pokémon
from becoming confused.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (20,'suction-cups',3,'This Pokémon cannot be forced out of battle by moves such as whirlwind.

dragon tail and circle throw still inflict damage against this Pokémon.

Overworld: If the lead Pokémon has this ability, the success rate while fishing is increased.','Negates all moves and items
that force switching out.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (21,'intimidate',3,'When this Pokémon enters battle, the opponent''s Attack is lowered by one stage.  In a double battle, both opponents are affected.

This ability also takes effect when acquired during a battle, but will not take effect again if lost and reobtained without leaving battle.

This ability has no effect on an opponent that has a substitute.

Overworld: If the first Pokémon in the party has this ability, any random encounter with a Pokémon five or more levels lower than it has a 50% chance of being skipped.','Lowers the opposing Pokémon’s
Attack stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (22,'shadow-tag',3,'While this Pokémon is in battle, opposing Pokémon cannot flee or switch out.

Other Pokémon with this ability are unaffected.  Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.','Prevents opposing Pokémon
from escaping.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (23,'rough-skin',3,'Whenever a move makes contact with this Pokémon, the move''s user takes 1/8 of its maximum HP in damage.

This ability functions identically to iron barbs.','Inflicts damage to the
attacker on contact.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (24,'wonder-guard',3,'This Pokémon is immune to damaging moves that are not super effective against it.

Moves that inflict fixed damage, such as night shade or seismic toss, are considered super effective if their types are.  Damage not directly dealt by moves, such as damage from weather, a status ailment, or spikes, is not prevented.

This ability cannot be copied with role play or traded away with skill swap, but it can be copied with trace, disabled with gastro acid, or changed with worry seed.  This Pokémon can still use Role Play itself to lose this ability, but not Skill Swap.

If this Pokémon has a substitute, this ability will block moves as usual and any moves not blocked will react to the Substitute as usual.','Only supereffective
moves will hit.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (25,'levitate',3,'This Pokémon is immune to ground-type moves, spikes, toxic spikes, and arena trap.

This ability is disabled during gravity or ingrain, or while holding an iron ball.  This ability is not disabled during roost.','Gives full immunity to all
Ground-type moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (26,'effect-spore',3,'Whenever a move makes contact with this Pokémon, the move''s user has a 30% chance of being paralyzed, poisoned, or put to sleep, chosen at random.

Nothing is done to compensate if the move''s user is immune to one of these ailments; there is simply a lower chance that the move''s user will be affected.','Contact may poison or
cause paralysis or sleep.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (27,'synchronize',3,'Whenever this Pokémon is burned, paralyzed, or poisoned, the Pokémon who gave this Pokémon that ailment is also given the ailment.

This ability passes back bad poison when this Pokémon is badly poisoned.  This ability cannot pass on a status ailment that the Pokémon did not directly receive from another Pokémon, such as the poison from toxic spikes or the burn from a flame orb.

Overworld: If the lead Pokémon has this ability, wild Pokémon have a 50% chance of having the lead Pokémon''s nature, and a 50% chance of being given a random nature as usual, including the lead Pokémon''s nature.  This does not work on Pokémon received outside of battle or roaming legendaries.','Passes poison, paralyze, or burn
to the Pokémon that inflicted it.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (28,'clear-body',3,'This Pokémon cannot have its stats lowered by other Pokémon.

This ability does not prevent any stat losses other than stat modifiers, such as the Speed cut from paralysis.  This Pokémon can still be passed negative stat modifiers through guard swap, heart swap, or power swap.

This ability functions identically to white smoke in battle.','Prevents other Pokémon
from lowering its stats.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (29,'natural-cure',3,'This Pokémon is cured of any major status ailment when it is switched out for another Pokémon.

If this ability is acquired during battle, the Pokémon is cured upon leaving battle before losing the temporary ability.','All status conditions heal when
the Pokémon switches out.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (30,'lightning-rod',3,'All other Pokémon''s single-target electric-type moves are redirected to this Pokémon if it is an eligible target.  Other Pokémon''s Electric moves raise this Pokémon''s Special Attack one stage, negating any other effect on it, and cannot miss it.

If the move''s intended target also has this ability, the move is not redirected.  When multiple Pokémon with this ability are possible targets for redirection, the move is redirected to the one with the highest Speed stat, or, in the case of a tie, to a random tied Pokémon.  follow me takes precedence over this ability.

If the Pokémon is a ground-type and thus immune to Electric moves, its immunity prevents the Special Attack boost.','Draws in all Electric-type moves
to boost its Sp. Atk stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (31,'serene-grace',3,'This Pokémon''s moves have twice their usual effect chance.

An effect chance is a move''s chance to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move''s main effect.  For example, flamethrower''s chance of burning the target is doubled, but protect''s chance of success and air cutter''s increased critical hit rate are unaffected.

secret power is unaffected.','Boosts the likelihood of
additional effects occurring.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (32,'swift-swim',3,'This Pokémon''s Speed is doubled during rain.

This bonus does not count as a stat modifier.','Boosts the Pokémon’s
Speed stat in rain.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (33,'chlorophyll',3,'This Pokémon''s Speed is doubled during strong sunlight.

This bonus does not count as a stat modifier.','Boosts the Pokémon’s
Speed stat in sunshine.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (34,'illuminate',3,'Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.

This ability has no effect in battle.','Raises the likelihood of
meeting wild Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (35,'trace',3,'When this Pokémon enters battle, it copies a random opponent''s ability.

This ability cannot copy flower gift, forecast, illusion, imposter, multitype, trace, wonder guard, or zen mode.','The Pokémon copies an
opposing Pokémon’s Ability.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (36,'huge-power',3,'This Pokémon''s Attack is doubled while in battle.

This bonus does not count as a stat modifier.

This ability functions identically to pure power.','Boosts the Pokémon’s
Attack stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (37,'poison-point',3,'Whenever a move makes contact with this Pokémon, the move''s user has a 30% chance of being poisoned.','Contact with the Pokémon
may poison the attacker.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (38,'inner-focus',3,'This Pokémon cannot flinch.','Protects the Pokémon
from flinching.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (39,'magma-armor',3,'This Pokémon cannot be frozen.

If a Pokémon is frozen and acquires this ability, it will immediately thaw out; this includes when regaining a lost ability upon leaving battle.

Overworld: If any Pokémon in the party has this ability, each egg in the party has its hatch counter decreased by 2 (rather than 1) each step cycle, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pokémon have this ability or flame body.','Prevents the Pokémon
from becoming frozen.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (40,'water-veil',3,'This Pokémon cannot be burned.

If a Pokémon is burned and acquires this ability, its burn is healed; this includes when regaining a lost ability upon leaving battle.','Prevents the Pokémon
from getting a burn.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (41,'magnet-pull',3,'While this Pokémon is in battle, opposing steel-type Pokémon cannot flee or switch out.

Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.

Overworld: If the lead Pokémon has this ability, Steel-type Pokémon have a higher encounter rate.','Prevents Steel-type
Pokémon from escaping.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (42,'soundproof',3,'This Pokémon is immune to moves flagged as being sound-based.

heal bell is unaffected.  uproar still prevents this Pokémon from sleeping.  This Pokémon can still receive a Perish Song counter through baton pass, and will retain a Perish Song counter if it acquires this ability after Perish Song is used.

howl, roar of time, sonic boom, and yawn are not flagged as sound-based.','Gives full immunity to all
sound-based moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (43,'rain-dish',3,'This Pokémon heals for 1/16 of its maximum HP after each turn during rain.','The Pokémon gradually
regains HP in rain.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (44,'sand-stream',3,'The weather changes to a sandstorm when this Pokémon enters battle and does not end unless cancelled by another weather condition.

If multiple Pokémon with this ability, drizzle, drought, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in a sandstorm.','The Pokémon summons a
sandstorm in battle.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (45,'pressure',3,'Moves targetting this Pokémon use one extra PP.

This ability stacks if multiple targets have it.  This ability still affects moves that fail or miss.  This ability does not affect ally moves that target either the entire field or just its side, nor this Pokémon''s self-targetted moves; it does, however, affect single-targetted ally moves aimed at this Pokémon, ally moves that target all other Pokémon, and opponents'' moves that target the entire field.  If this ability raises a move''s PP cost above its remaining PP, it will use all remaining PP.

When this Pokémon enters battle, all participating trainers are notified that it has this ability.

Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.','The Pokémon raises opposing
Pokémon’s PP usage.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (46,'thick-fat',3,'This Pokémon takes half as much damage from fire- and ice-type moves.','Boosts resistance to Fire-
and Ice-type moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (47,'early-bird',3,'This Pokémon''s remaining sleep turn count falls by 2 rather than 1.

If this Pokémon''s sleep counter is at 1, it will fall to 0 and then the Pokémon will wake up.','The Pokémon awakens
quickly from sleep.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (48,'flame-body',3,'Whenever a move makes contact with this Pokémon, the move''s user has a 30% chance of being burned.

Overworld: If any Pokémon in the party has this ability, each egg in the party has its hatch counter decreased by 2 (rather than 1) each step cycle, making eggs hatch roughly twice as quickly.  This effect does not stack if multiple Pokémon have this ability or magma armor.','Contact with the Pokémon
may burn the attacker.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (49,'run-away',3,'This Pokémon is always successful fleeing from wild battles, even if trapped by a move or ability.','Enables a sure getaway
from wild Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (50,'keen-eye',3,'This Pokémon cannot have its accuracy lowered.

This ability does not prevent any accuracy losses other than stat modifiers, such as the accuracy cut from fog; nor does it prevent other Pokémon''s evasion from making this Pokémon''s moves less accurate.  This Pokémon can still be passed negative accuracy modifiers through heart swap.

Overworld: If the first Pokémon in the party has this ability, any random encounter with a Pokémon five or more levels lower than it has a 50% chance of being skipped.','Prevents other Pokémon
from lowering accuracy.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (51,'hyper-cutter',3,'This Pokémon''s Attack cannot be lowered by other Pokémon.

This ability does not prevent any Attack losses other than stat modifiers, such as the Attack cut from a burn.  This Pokémon can still be passed negative Attack modifiers through heart swap or power swap.','Prevents other Pokémon
from lowering its Attack stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (52,'pickup',3,'At the end of each turn, if another Pokémon consumed or Flung a held item that turn, this Pokémon picks up the item if it is not already holding one.  After each battle, this Pokémon has a 10% chance of picking up an item if it is not already holding one.

The air balloon and eject button cannot be picked up.

The items that may be found vary by game, and, since Pokémon Emerald, by the Pokémon''s level.  This ability is checked after the battle ends, at which point any temporary ability changes have worn off.','The Pokémon may
pick up items.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (53,'truant',3,'Every second turn on which this Pokémon should attempt to use a move, it will instead do nothing ("loaf around").

Loafing around interrupts moves that take multiple turns the same way paralysis, flinching, etc do.  Most such moves, for example bide or rollout, are simply cut off upon loafing around.  Attacks with a recharge turn, such as hyper beam, do not have to recharge; attacks with a preparation turn, such as fly, do not end up being used.  Moves that are forced over multiple turns and keep going through failure, such as outrage, uproar, or any move forced by encore, keep going as usual.

If this Pokémon is confused, its confusion is not checked when loafing around; the Pokémon cannot hurt itself, and its confusion does not end or come closer to ending.

If this Pokémon attempts to move but fails, e.g. because of paralysis or gravity, it still counts as having moved and will loaf around the next turn.  If it does not attempt to move, e.g. because it is asleep or frozen, whatever it would have done will be postponed until its next attempt; that is, it will either loaf around or move as usual, depending on what it last did.

This ability cannot be changed with worry seed, but it can be disabled with gastro acid, changed with role play, or traded away with skill swap.','The Pokémon can’t attack
on consecutive turns.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (54,'hustle',3,'This Pokémon''s physical moves do 1.5× as much regular damage, but have 0.8× their usual accuracy.

Special moves are unaffected.  Moves that do set damage, such as seismic toss, have their accuracy affected, but not their damage.

Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.','Boosts the Attack stat,
but lowers accuracy.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (55,'cute-charm',3,'Whenever a move makes contact with this Pokémon, the move''s user has a 30% chance of being infatuated.

Overworld: If the first Pokémon in the party has this ability, any wild Pokémon whose species can be either gender has a 2/3 chance of being set to the opposite gender, and a 1/3 chance of having a random gender as usual.','Contact with the Pokémon
may cause infatuation.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (56,'plus',3,'This Pokémon has 1.5× its Special Attack if any friendly Pokémon has plus or minus.

This bonus does not count as a stat modifier.  If either ability is disabled by gastro acid, both lose their effect.','Boosts the Sp. Atk stat if another
Pokémon has Plus or Minus.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (57,'minus',3,'This Pokémon has 1.5× its Special Attack if any friendly Pokémon has plus or minus.

This bonus does not count as a stat modifier.  If either ability is disabled by gastro acid, both lose their effect.','Boosts the Sp. Atk stat if another
Pokémon has Plus or Minus.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (58,'forecast',3,'During rain, strong sunlight, or hail, this Pokémon''s type changes to water, fire, or ice, respectively, and its form changes to match.

This ability has no effect for any Pokémon other than castform.

If the weather ends or becomes anything that does not trigger this ability, or a Pokémon with air lock or cloud nine enters battle, this Pokémon''s type and form revert to their default.  If this ability is lost or disabled, this Pokémon cannot change its current type and form until it regains its ability.','Castform transforms with
the weather.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (59,'sticky-hold',3,'This Pokémon''s hold item cannot be removed by other Pokémon.

Damaging moves that would remove this Pokémon''s item can still inflict damage against this Pokémon, e.g. knock off or pluck.  This Pokémon can still use moves that involve the loss of its own item, e.g. fling or trick.

Overworld: If the lead Pokémon has this ability, the encounter rate while fishing is increased.','Protects the Pokémon
from item theft.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (60,'shed-skin',3,'After each turn, this Pokémon has a 33% of being cured of any major status ailment.','The Pokémon may heal its
own status conditions.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (61,'guts',3,'Whenever this Pokémon is asleep, burned, paralyzed, or poisoned, it has 1.5× its Attack.  This Pokémon is not affected by the usual Attack cut from a burn.

This bonus does not count as a stat modifier.','Boosts the Attack stat if the
Pokémon has a status condition.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (62,'marvel-scale',3,'Whenever this Pokémon has a major status ailment, it has 1.5× its Defense.

This bonus does not count as a stat modifier.','Boosts the Defense stat if the
Pokémon has a status condition.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (63,'liquid-ooze',3,'Whenever a Pokémon would heal after hitting this Pokémon with a leeching move like absorb, it instead loses as many HP as it would usually gain.

dream eater is unaffected.','Damages attackers
using any draining move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (64,'overgrow',3,'When this Pokémon has 1/3 or less of its HP remaining, its grass-type moves inflict 1.5× as much regular damage.','Powers up Grass-type moves
when the Pokémon is in trouble.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (65,'blaze',3,'When this Pokémon has 1/3 or less of its HP remaining, its fire-type moves inflict 1.5× as much regular damage.','Powers up Fire-type moves when
the Pokémon is in trouble.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (66,'torrent',3,'When this Pokémon has 1/3 or less of its HP remaining, its water-type moves inflict 1.5× as much regular damage.','Powers up Water-type moves
when the Pokémon is in trouble.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (67,'swarm',3,'When this Pokémon has 1/3 or less of its HP remaining, its bug-type moves inflict 1.5× as much regular damage.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is increased.','Powers up Bug-type moves when
the Pokémon is in trouble.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (68,'rock-head',3,'This Pokémon does not receive recoil damage from its recoil moves.

struggle''s recoil is unaffected.  This ability does not prevent crash damage from missing with jump kick or high jump kick.','Protects the Pokémon
from recoil damage.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (69,'drought',3,'The weather changes to strong sunlight when this Pokémon enters battle and does not end unless cancelled by another weather condition.

If multiple Pokémon with this ability, drizzle, sand stream, or snow warning are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.','Turns the sunlight harsh when
the Pokémon enters a battle.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (70,'arena-trap',3,'While this Pokémon is in battle, opposing Pokémon cannot flee or switch out.  flying-type Pokémon and Pokémon in the air, e.g. due to levitate or magnet rise, are unaffected.

Pokémon with run away can still flee.  Pokémon can still switch out with the use of a move or item.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.','Prevents opposing Pokémon
from fleeing.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (71,'vital-spirit',3,'This Pokémon cannot be asleep.

This causes rest to fail altogether.  If a Pokémon is asleep and acquires this ability, it will immediately wake up; this includes when regaining a lost ability upon leaving battle.

This ability functions identically to insomnia in battle.

Overworld: If the lead Pokémon has this ability, higher-levelled Pokémon have their encounter rate increased.','Prevents the Pokémon
from falling asleep.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (72,'white-smoke',3,'This Pokémon cannot have its stats lowered by other Pokémon.

This ability does not prevent any stat losses other than stat modifiers, such as the Speed cut from paralysis; nor self-inflicted stat drops, such as the Special Attack drop from overheat; nor opponent-triggered stat boosts, such as the Attack boost from swagger.  This Pokémon can still be passed negative stat modifiers through guard swap, heart swap, or power swap.

This ability functions identically to clear body in battle.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved.','Prevents other Pokémon
from lowering its stats.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (73,'pure-power',3,'This Pokémon''s Attack is doubled in battle.

This bonus does not count as a stat modifier.

This ability functions identically to huge power.','Boosts the Pokémon’s
Attack stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (74,'shell-armor',3,'Moves cannot score critical hits against this Pokémon.

This ability functions identically to battle armor.','Protects the Pokémon
from critical hits.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (75,'air-lock',3,'While this Pokémon is in battle, weather can still be in play, but will not have any of its effects.

This ability functions identically to cloud nine.','Eliminates the effects of weather.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (76,'tangled-feet',4,'When this Pokémon is confused, it has twice its evasion.','Raises evasion if the
Pokémon is confused.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (77,'motor-drive',4,'Whenever an electric-type move hits this Pokémon, its Speed rises one stage, negating any other effect on it.

This ability will not take effect if this Pokémon is immune to Electric moves.  Electric moves will ignore this Pokémon''s substitute.

This effect includes non-damaging moves, i.e. thunder wave.','Boosts the Speed stat when it’s
hit by an Electric-type move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (78,'rivalry',4,'This Pokémon inflicts 1.25× as much regular damage against Pokémon of the same gender and 0.75× as much regular damage against Pokémon of the opposite gender.

If either Pokémon is genderless, damage is unaffected.','Deals more damage to Pokémon
of the same gender.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (79,'steadfast',4,'Whenever this Pokémon flinches, its Speed rises one stage.','Boosts the Speed stat each time
the Pokémon flinches.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (80,'snow-cloak',4,'During hail, this Pokémon has 1.25× its evasion, and it does not take hail damage regardless of type.

The evasion bonus does not count as a stat modifier.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved in snow.','Boosts evasion in a hailstorm.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (81,'gluttony',4,'This Pokémon eats any held Berry triggered by low HP when it falls below 50% of its HP, regardless of the Berry''s usual threshold.','Makes the Pokémon use a held
Berry earlier than usual.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (82,'anger-point',4,'Whenever this Pokémon receives a critical hit, its Attack rises to the maximum of 6 stages.

This ability will still take effect if the critical hit is received by a substitute.','Maxes the Attack stat after
the Pokémon takes a critical hit.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (83,'unburden',4,'When this Pokémon uses or loses its held item, its Speed is doubled.  If it gains another item or leaves battle, this bonus is lost.

This includes when the Pokémon drops its item because of knock off.  This bonus does not count as a stat modifier.  There is no notification when this ability takes effect.','Boosts the Speed stat if its
held item is used or lost.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (84,'heatproof',4,'This Pokémon takes half as much damage from fire-type moves and burns.','Weakens the power of
Fire-type moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (85,'simple',4,'Each stage of this Pokémon''s stat modifiers acts as two stages.  These doubled stages are still limited to a minimum of -6 and a maximum of 6.

This Pokémon can still accumulate less than -3 or more than 3 stages of stat modifiers, even though the extra ones have no effect after doubling.','The Pokémon is prone to
wild stat changes.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (86,'dry-skin',4,'This Pokémon takes 1/8 of its maximum HP in damage after each turn during strong sunlight, but it heals for 1/8 of its HP each turn during rain.  This Pokémon takes 1.25× as much damage from fire-type moves, but whenever a water move hits it, it heals for 1/4 its maximum HP instead.','Reduces HP if it’s hot.
Water restores HP.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (87,'download',4,'When this Pokémon enters battle, its Attack or Special Attack, whichever corresponds to its opponents'' weaker total defensive stat, rises one stage.  In the event of a tie, Special Attack is raised.

This ability also takes effect when acquired during a battle.','Adjusts power based on an
opposing Pokémon’s stats.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (88,'iron-fist',4,'Moves flagged as being punch-based have 1.2× their base power for this Pokémon.

sucker punch is not flagged as punch-based; its original, Japanese name only means "surprise attack".','Powers up punching moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (89,'poison-heal',4,'If this Pokémon is poisoned, it will heal for 1/8 of its maximum HP after each turn rather than taking damage.  This includes bad poison.','Restores HP if the
Pokémon is poisoned.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (90,'adaptability',4,'This Pokémon inflicts twice as much damage with moves whose types match its own, rather than the usual same-type attack bonus of 1.5×.','Powers up moves of the
same type as the Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (91,'skill-link',4,'This Pokémon always hits five times with two-to-five-hit moves, such as icicle spear.  It also bypasses the accuracy checks on triple kick''s second and third hits.','Increases the number of times
multi-strike moves hit.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (92,'hydration',4,'This Pokémon is cured of any major status ailment after each turn during rain.','Heals status conditions if
it’s raining.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (93,'solar-power',4,'During strong sunlight, this Pokémon has 1.5× its Special Attack but takes 1/8 of its maximum HP in damage after each turn.','Boosts the Sp. Atk stat in sunny
weather, but HP decreases.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (94,'quick-feet',4,'Whenever this Pokémon has a major status ailment, it has 1.5× its Speed.  This Pokémon is not affected by the usual Speed cut from paralysis.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is halved.','Boosts the Speed stat if the
Pokémon has a status condition.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (95,'normalize',4,'This Pokémon''s moves all act as if they were normal-type.

Moves that inflict typeless damage do so as usual.  Moves of variable type, such as hidden power, are affected.  They otherwise work as usual, however; weather ball, for example, is always forced to be Normal, but it still has doubled power and looks different during weather.

As thunder wave is prevented by immunities, unlike most non-damaging moves, it does not affect ghost-type Pokémon under the effect of this ability.','All the Pokémon’s moves
become Normal type.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (96,'sniper',4,'This Pokémon inflicts triple damage with critical hits, rather than the usual double damage.','Powers up moves if they
become critical hits.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (97,'magic-guard',4,'This Pokémon is immune to damage not directly caused by a move.

For example, this Pokémon takes no damage from from weather, recoil, status ailments, or spikes, but it still suffers from the Attack cut when burned, and a life orb will still power up this Pokémon''s moves without damaging it.  Anything that directly depends on such damage will also not happen; for example, leech seed will neither hurt this Pokémon nor heal the opponent, and Pokémon with a jaboca berry or rowap berry will not consume the berry when hit by this Pokémon.

The following are unaffected: struggle, pain split (whether used by or against this Pokémon), belly drum, substitute, curse, moves that knock the user out, and damage from confusion.

This Pokémon will neither lose nor regain HP if it drains HP from a Pokémon with liquid ooze.

If this Pokémon is badly poisoned, the poison counter is still increased each turn; if the Pokémon loses this ability, it will begin taking as much damage as it would be if it had been taking increasing damage each turn.','The Pokémon only takes
damage from attacks.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (98,'no-guard',4,'Moves used by or against this Pokémon never miss.

One-hit KO moves are unaffected.  Moves affected by this ability can hit Pokémon during the preparation turn of moves like dig or fly.

Overworld: If the lead Pokémon has this ability, the wild encounter rate is doubled.','Ensures that attacks by or
against the Pokémon will land.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (99,'stall',4,'This Pokémon moves last within its priority bracket.

Multiple Pokémon with this ability move in order of Speed amongst themselves.

The full incense and lagging tail take precedence over this ability; that is, Pokémon with these items move after Pokémon with this ability.  Pokémon with both this ability and one of these items are delayed as much as if they had only the item.

This ability works as usual during trick room: Pokémon with this ability will move in reverse order of Speed after Pokémon without it.','The Pokémon moves after
all other Pokémon do.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (100,'technician',4,'This Pokémon''s moves have 1.5× their power if their base power is 60 or less.

This includes moves of variable power, such as hidden power and magnitude, when their power is 60 or less.  helping hand''s power boost is taken into account for any move, as is defense curl''s power boost for rollout.','Powers up the Pokémon’s
weaker moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (101,'leaf-guard',4,'This Pokémon cannot be given a major status ailment during strong sunlight.

This ability does not heal prior status ailments.  rest will fail altogether with this ability in effect.  yawn will immediately fail if used on this Pokémon during strong sunlight, and an already-used Yawn will fail if the weather turns to strong sunlight in the meantime.','Prevents status conditions
in sunny weather.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (102,'klutz',4,'In battle, this Pokémon cannot use its held item, nor will the item have any passive effect on the battle, positive or negative.  This Pokémon also cannot use fling.

The Speed cut from the iron ball and the effort items (the macho brace, power weight, power bracer, power belt, power lens, power band, and power anklet) is unaffected.  Items that do not directly affect the battle, such as the exp share, the amulet coin, or the soothe bell, work as usual.  All held items work as usual out of battle.

Other moves that use the held item, such as natural gift and switcheroo, work as usual.','The Pokémon can’t use
any held items.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (103,'mold-breaker',4,'This Pokémon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pokémon''s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon''s moves, e.g. dry skin or unaware, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon''s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon''s spikes are not affected by this ability after they have been placed.

When this Pokémon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to teravolt and turboblaze.','Moves can be used on the target
regardless of its Abilities.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (104,'super-luck',4,'This Pokémon''s moves have critical hit rates one stage higher than normal.','Boosts the critical-hit
ratios of moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (105,'aftermath',4,'When this Pokémon is knocked out by a move that makes contact, the move''s user takes 1/4 its maximum HP in damage.','Damages the attacker
landing the finishing hit.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (106,'anticipation',4,'When this Pokémon enters battle, if one of its opponents has a move that is super effective against it, self destruct, explosion, or a one-hit knockout move, all participating trainers are notified.

The move itself is not revealed; only that there is such a move.  Moves that inflict typeless damage, such as future sight, and moves of variable type, such as hidden power, count as their listed types.  counter, metal burst, mirror coat, and one-hit KO moves to which this Pokémon is immune do not trigger this ability.','Senses an opposing Pokémon’s
dangerous moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (107,'forewarn',4,'When this Pokémon enters battle, it reveals the move with the highest base power known by any opposing Pokémon to all participating trainers.

In the event of a tie, one is chosen at random.

Moves without a listed base power are assigned one as follows:

Power | Moves
----: | -----
  160 | One-hit KO moves: fissure, guillotine, horn drill, and sheer cold
  120 | Counter moves: counter, metal burst, and mirror coat
   80 | Variable power or set damage: crush grip, dragon rage, electro ball, endeavor, final gambit, flail, frustration, grass knot, gyro ball, heat crash, heavy slam, hidden power, low kick, natural gift, night shade, psywave, return, reversal, seismic toss, sonic boom, trump card, and wring out
    0 | Any such move not listed','Determines what moves
an opposing Pokémon has.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (108,'unaware',4,'This Pokémon ignores other Pokémon''s stat modifiers for the purposes of damage and accuracy calculation.

Effectively, this affects modifiers of every stat except Speed.

The power of punishment and stored power is calculated as usual.  When this Pokémon hurts itself in confusion, its stat modifiers affect damage as usual.','Ignores the opposing
Pokémon’s stat changes.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (109,'tinted-lens',4,'This Pokémon deals twice as much damage with moves that are not very effective against the target.','Powers up “not very
effective” moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (110,'filter',4,'This Pokémon takes 0.75× as much damage from moves that are super effective against it.

This ability functions identically to solid rock.','Reduces damage from
supereffective attacks.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (111,'slow-start',4,'This Pokémon''s Attack and Speed are halved for five turns upon entering battle.

This ability also takes effect when acquired during battle.  If this Pokémon loses its ability before the five turns are up, its Attack and Speed return to normal; if it then regains this ability without leaving battle, its Attack and Speed are halved again, but the counter keeps counting from where it was.','Temporarily halves the Pokémon’s
Attack and Speed stats.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (112,'scrappy',4,'This Pokémon ignores ghost-type Pokémon''s immunity to normal- and fighting-type moves.

Ghost Pokémon''s other types affect damage as usual.','Makes Normal- and Fighting-type
moves hit Ghost-type Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (113,'storm-drain',4,'All other Pokémon''s single-target water-type moves are redirected to this Pokémon, if it is an eligible target.  Other Pokémon''s Water moves raise this Pokémon''s Special Attack one stage, negating any other effect on it, and cannot miss it.

If the move''s intended target also has this ability, the move is not redirected.  When multiple Pokémon with this ability are possible targets for redirection, the move is redirected to the one with the highest Speed stat, or, in the case of a tie, to a random tied Pokémon.  follow me takes precedence over this ability.','Draws in all Water-type moves
to boost its Sp. Atk stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (114,'ice-body',4,'This Pokémon heals for 1/16 of its maximum HP after each turn during hail, and it does not take hail damage regardless of type.','The Pokémon gradually
regains HP in a hailstorm.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (115,'solid-rock',4,'This Pokémon takes 0.75× as much damage from moves that are super effective against it.

This ability functions identically to filter.','Reduces damage from
supereffective attacks.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (116,'snow-warning',4,'The weather changes to hail when this Pokémon enters battle and does not end unless cancelled by another weather condition.

If multiple Pokémon with this ability, drizzle, drought, or sand stream are sent out at the same time, the abilities will activate in order of Speed, respecting trick room.  Each ability''s weather will cancel the previous weather, and only the weather summoned by the slowest of the Pokémon will stay.','The Pokémon summons a
hailstorm when it enters a battle.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (117,'honey-gather',4,'This Pokémon has a chance of picking up honey after each battle.  This chance starts at 5% and rises another 5% after every tenth level: 5% from level 1–10, 10% from 11–20, and so on, up to 50% from 91–100.

This ability is checked after the battle ends, at which point any temporary ability changes have worn off.','The Pokémon may gather
Honey from somewhere.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (118,'frisk',4,'When this Pokémon enters battle, it reveals an opposing Pokémon''s held item to all participating trainers.

In a double battle, if one opponent has an item, this Pokémon will Frisk that Pokémon; if both have an item, it will Frisk one at random.','The Pokémon can check an
opposing Pokémon’s held item.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (119,'reckless',4,'This Pokémon''s recoil moves and crash moves have 1.2× their base power.

struggle is unaffected.

The "crash moves" are the moves that damage the user upon missing: jump kick and high jump kick.','Powers up moves that
have recoil damage.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (120,'multitype',4,'If this Pokémon is holding an elemental Plate, its type and form change to match the Plate.

This Pokémon''s held item, whether or not it is a Plate, cannot be taken by covet or thief, nor removed by knock off, nor traded by switcheroo or trick.  Covet, Thief, and Knock Off still inflict damage against this Pokémon.  Unlike with sticky hold, this Pokémon cannot use fling, Switcheroo, or Trick to lose its item itself, nor gain an item through Switcheroo or Trick if it does not have one.

This ability has no effect for any Pokémon other than arceus.  This ability cannot be traded with skill swap, nor copied with role play or trace, nor disabled with gastro acid, nor changed with worry seed.  This Pokémon cannot use Skill Swap or Role Play to lose its ability itself.  mold breaker cannot ignore this ability.

If a Pokémon Transforms into an Arceus with this ability, it will Transform into Arceus''s default, normal-type form.  If the Transforming Pokémon is holding a Plate, this ability will then activate and change the Pokémon into the corresponding form.','Changes the Pokémon’s type
to match the Plate it holds.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (121,'flower-gift',4,'Friendly Pokémon have 1.5× their Attack and Special Defense during strong sunlight if any friendly Pokémon has this ability.

Unlike forecast, multitype, and zen mode, this ability is not tied to its Pokémon''s form change; cherrim will switch between its forms even if it loses this ability.  As such, this ability also works if obtained by a Pokémon other than Cherrim.','Powers up party Pokémon
when it is sunny.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (122,'bad-dreams',4,'Opposing Pokémon take 1/8 of their maximum HP in damage after each turn while they are asleep.','Reduces the HP of sleeping
opposing Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (123,'pickpocket',5,'Whenever a move makes contact with this Pokémon, if it does not have a held item, it steals the attacker''s held item.

This Pokémon cannot steal upon being knocked out.  It can steal if the attacker has a substitute, but cannot steal when its own Substitute is hit.  If a move hits multiple times, only the last hit triggers this ability.  If this Pokémon is wild, it cannot steal from a trained Pokémon.','Steals an item from an attacker
that made direct contact.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (124,'sheer-force',5,'This Pokémon''s moves with extra effects have 1.3× their power, but lose their extra effects.

An effect chance is a move''s chance to inflict a status ailment, cause a stat change, or make the target flinch in addition to the move''s main effect. For example, thunder shock''s paralysis is an extra effect, but thunder wave''s is not, nor are knock off''s item removal and air cutter''s increased critical hit rate.

Moves that lower the user''s stats are unaffected.','Removes additional effects to
increase move damage.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (125,'contrary',5,'Whenever this Pokémon''s stats would be raised, they are instead lowered by the same amount, and vice versa.','Makes stat changes have
an opposite effect.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (126,'unnerve',5,'Opposing Pokémon cannot eat held Berries while this Pokémon is in battle.

Affected Pokémon can still use bug bite or pluck to eat a target''s Berry.','Unnerves opposing Pokémon and
makes them unable to eat Berries.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (127,'defiant',5,'When any of this Pokémon''s stats are lowered, its Attack rises by two stages.

If multiple stats are lowered at once, this ability takes effect with each stat lowered.','Boosts the Pokémon’s Attack stat
when its stats are lowered.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (128,'defeatist',5,'This Pokémon''s Attack and Special Attack are halved when it has half its HP or less.','Lowers stats when HP
becomes half or less.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (129,'cursed-body',5,'Moves that hit this Pokémon have a 30% chance of being Disabled afterward.','May disable a move used
on the Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (130,'healer',5,'Friendly Pokémon next to this Pokémon in double and triple battles each have a 30% chance of being cured of any major status ailment after each turn.','Sometimes heals an
ally’s status condition.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (131,'friend-guard',5,'All friendly Pokémon take 0.75× as much direct damage from moves while this Pokémon is in battle.

This effect stacks if multiple allied Pokémon have it.','Reduces damage done to allies.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (132,'weak-armor',5,'Whenever a physical move hits this Pokémon, its Speed rises one stage and its Defense falls one stage.

This ability triggers on every hit of a multiple-hit move.','Physical attacks lower its Defense
stat and raise its Speed stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (133,'heavy-metal',5,'This Pokémon has double the usual weight for its species.','Doubles the Pokémon’s weight.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (134,'light-metal',5,'This Pokémon has half the usual weight for its species.','Halves the Pokémon’s weight.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (135,'multiscale',5,'This Pokémon takes half as much damage when it is hit having full HP.','Reduces the damage taken by the
Pokémon when its HP is full.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (136,'toxic-boost',5,'This Pokémon has 1.5× its Attack when poisoned.','Powers up physical attacks when
the Pokémon is poisoned.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (137,'flare-boost',5,'This Pokémon has 1.5× its Special Attack when burned.','Powers up special attacks when
the Pokémon is burned.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (138,'harvest',5,'After each turn, if the last item this Pokémon consumed was a Berry and it is not currently holding an item, it has a 50% chance of regaining that Berry, or a 100% chance during strong sunlight.','May create another
Berry after one is used.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (139,'telepathy',5,'This Pokémon does not take damage from friendly Pokémon''s moves, including single-target moves aimed at it.','Anticipates an ally’s
attack and dodges it.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (140,'moody',5,'After each turn, one of this Pokémon''s stats at random rises two stages, and another falls one stage.

If a stat is already at 6 or -6 stages, it will not be chosen to be increased or decreased, respectively.','Raises one stat and
lowers another.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (141,'overcoat',5,'This Pokémon does not take damage from weather.','Protects the Pokémon from things
like sand, hail, and powder.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (142,'poison-touch',5,'This Pokémon''s contact moves have a 30% chance of poisoning the target with each hit.

This counts as an extra effect for the purposes of shield dust.  This ability takes effect before mummy.','May poison a target when the
Pokémon makes contact.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (143,'regenerator',5,'This Pokémon regains 1/3 of its maximum HP when it is switched out for another Pokémon under any circumstances other than having fainted.

This ability does not take effect when a battle ends.','Restores a little HP when
withdrawn from battle.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (144,'big-pecks',5,'This Pokémon''s Defense cannot be lowered by other Pokémon.

This Pokémon can still be passed negative Defense modifiers through heart swap or guard swap.','Protects the Pokémon from
Defense-lowering attacks.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (145,'sand-rush',5,'This Pokémon''s Speed is doubled during a sandstorm, and it does not take sandstorm damage, regardless of type.','Boosts the Pokémon’s
Speed stat in a sandstorm.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (146,'wonder-skin',5,'Non-damaging moves have exactly 50% base accuracy against this Pokémon.','Makes status moves
more likely to miss.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (147,'analytic',5,'This Pokémon''s moves have 1.3× their power when it moves last in a turn.

future sight and doom desire are unaffected.','Boosts move power when the
Pokémon moves after the target.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (148,'illusion',5,'This Pokémon, upon being sent out, appears to have the species, nickname, and Poké Ball of the last Pokémon in the party that is able to battle.  This illusion breaks upon being hit by a damaging move.

Other damage, e.g. from weather or spikes, does not break the illusion, nor does damage done to a substitute.

If the party order becomes temporarily shuffled around as Pokémon are switched out in battle, this ability chooses the last Pokémon according to that shuffled order.','Comes out disguised as the
Pokémon in the party’s last spot.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (149,'imposter',5,'This Pokémon transforms into a random opponent upon entering battle.  This effect is identical to the move transform.','The Pokémon transforms itself
into the Pokémon it’s facing.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (150,'infiltrator',5,'This Pokémon''s moves ignore light screen, reflect, and safeguard.','Passes through the opposing
Pokémon’s barrier and strikes.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (151,'mummy',5,'Whenever a contact move hits this Pokémon, the attacking Pokémon''s ability changes to Mummy.

multitype is unaffected.  If a Pokémon with moxie knocks this Pokémon out, the former''s ability will change without taking effect.','Contact with the Pokémon
spreads this Ability.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (152,'moxie',5,'This Pokémon''s Attack rises one stage upon knocking out another Pokémon, even a friendly Pokémon.

This ability does not take effect when the Pokémon indirectly causes another Pokémon to faint, e.g. through poison or spikes.

If this Pokémon knocks out a Pokémon with mummy, the former''s ability will change without taking effect.','Boosts the Attack stat after
knocking out any Pokémon.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (153,'justified',5,'Whenever a dark-type move hits this Pokémon, its Attack rises one stage.

The move is not negated in any way.','Boosts the Attack stat when
it’s hit by a Dark-type move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (154,'rattled',5,'This Pokémon''s Speed rises one stage with each hit from a damaging dark-, ghost-, or bug-type move.','Some move types scare
it and boost its Speed stat.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (155,'magic-bounce',5,'When this Pokémon is targeted by a move flagged as being reflectable, the move is redirected to its user.

All reflectable moves are non-damaging, and most non-damaging moves that target other Pokémon are reflectable.

A move reflected by this ability or magic coat cannot be reflected back.','Reflects status moves.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (156,'sap-sipper',5,'Whenever a grass-type move hits this Pokémon, its Attack rises one stage, negating any other effect on it.','Boosts the Attack stat when hit
by a Grass-type move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (157,'prankster',5,'This Pokémon''s non-damaging moves have their priority increased by one stage.','Gives priority to a status move.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (158,'sand-force',5,'During a sandstorm, this Pokémon''s rock-, ground-, and steel-type moves have 1.3× their base power.  This Pokémon does not take sandstorm damage, regardless of type.','Boosts certain moves’
power in a sandstorm.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (159,'iron-barbs',5,'Whenever a move makes contact with this Pokémon, the move''s user takes 1/8 of its maximum HP in damage.

This ability functions identically to rough skin.','Inflicts damage to the
attacker on contact.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (160,'zen-mode',5,'This Pokémon switches between Standard Mode and Zen Mode after each turn depending on its HP.  Below 50% of its maximum HP, it switches to Zen Mode, and at 50% or above, it switches to Standard Mode.

This Pokémon returns to Standard Mode upon leaving battle or losing this ability.  This ability has no effect if this Pokémon is not a darmanitan.','Changes the Pokémon’s
shape when HP is half or less.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (161,'victory-star',5,'All friendly Pokémon''s moves, including this Pokémon''s own moves, have 1.1× their usual accuracy while this Pokémon is in battle.','Boosts the accuracy of its
allies and itself.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (162,'turboblaze',5,'This Pokémon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pokémon''s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon''s moves, e.g. dry skin or unaware, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon''s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon''s spikes are not affected by this ability after they have been placed.

When this Pokémon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to mold breaker and teravolt.','Moves can be used on the target
regardless of its Abilities.');
INSERT INTO abilities(FIELD1,ability_name,generation,effects,ability_description) VALUES (163,'teravolt',5,'This Pokémon''s moves completely ignore abilities that could hinder or prevent their effect on the target.

For example, this Pokémon''s moves ignore abilities that would fully negate them, such as water absorb; abilities that would prevent any of their effects, such as clear body, shell armor, or sticky hold; and abilities that grant any general protective benefit, such as simple, snow cloak, or thick fat.  If an ability could either hinder or help this Pokémon''s moves, e.g. dry skin or unaware, the ability is ignored either way.

Abilities that do not fit this description, even if they could hinder moves in some other way, are not affected.  For example, cursed body only affects potential future uses of the move, while liquid ooze and shadow tag can only hinder a move''s effect on the user.  This ablity cannot ignore type or form changes granted by abilities, for example color change or forecast; nor effects that were caused by abilities but are no longer tied to an ability, such as the rain from drizzle.  This ability cannot ignore multitype at all.

An ability ignored by this ability is only nullified while the move is being used.  For example, this Pokémon''s moves can paralyze a Pokémon with limber, but Limber will activate and heal the paralysis immediately thereafter, and this Pokémon''s spikes are not affected by this ability after they have been placed.

When this Pokémon enters battle, all participating trainers are notified that it has this ability.

This ability functions identically to mold breaker and turboblaze.','Moves can be used on the target
regardless of its Abilities.');
