CREATE TABLE IF NOT EXISTS moves(
    FIELD1        INTEGER  NOT NULL PRIMARY KEY , 
    move_name     VARCHAR(14) NOT NULL, 
    accuracy      VARCHAR(3) NOT NULL, 
    class         VARCHAR(8) NOT NULL, 
    game_desc     VARCHAR(144), 
    effect_chance VARCHAR(2554) NOT NULL, 
    generation    INTEGER  NOT NULL, 
    machines      VARCHAR(4)  NOT NULL, 
    crit_rate     INTEGER  NOT NULL, 
    move_type     VARCHAR(8) NOT NULL, 
    power         VARCHAR(3) NOT NULL, 
    pp            INTEGER  NOT NULL, 
    priority      INTEGER  NOT NULL
);
INSERT INTO moves(FIELD1, move_name, accuracy, class, game_desc, effect_chance, generation, machines, crit_rate, move_type, power, pp, priority) 
VALUES (0,'pound','100','physical','The target is physically pounded with
a long tail, a foreleg, or the like.','Inflicts regular damage.',1,'NA',0,'normal','40',35,0),
       (1,'karate-chop','100','physical','The target is attacked with a sharp chop.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,'NA',1,'fighting','50',25,0),
       (2,'double-slap','85','physical','The target is slapped repeatedly, back
and forth, two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','15',10,0),
       (3,'comet-punch','85','physical','The target is hit with a flurry of punches
that strike two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','18',15,0),
       (4,'mega-punch','85','physical','The target is slugged by a punch thrown
with muscle-packed power.','Inflicts regular damage.',1,'tm01',0,'normal','80',20,0),
       (5,'pay-day','100','physical','Numerous coins are hurled at the
target to inflict damage.
Money is earned after the battle.','Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.',1,'tm16',0,'normal','40',20,0),
       (6,'fire-punch','100','physical','The target is punched with a fiery fist.
This may also leave the target with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.',1,'tm48',0,'fire','75',15,0),
       (7,'ice-punch','100','physical','The target is punched with an icy fist.
This may also leave the target frozen.','Inflicts regular damage.  Has a 10% chance to freeze the target.',1,'tm33',0,'ice','75',15,0),
       (8,'thunder-punch','100','physical','The target is punched with an electrified
fist. This may also leave the target
with paralysis.','Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,'tm41',0,'electric','75',15,0),
       (9,'scratch','100','physical','Hard, pointed, sharp claws rake
the target to inflict damage.','Inflicts regular damage.',1,'NA',0,'normal','40',35,0),
       (10,'vice-grip','100','physical','The target is gripped and squeezed from
both sides to inflict damage.','Inflicts regular damage.',1,'NA',0,'normal','55',30,0),
       (11,'guillotine','30','physical','A vicious, tearing attack with big pincers.
The target faints instantly if this attack hits.','Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,'NA',0,'normal','NA',5,0),
       (12,'razor-wind','100','special','A two-turn attack. Blades of wind hit
opposing Pokémon on the second turn.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.',1,'tm02',1,'normal','80',10,0),
       (13,'swords-dance','NA','status','A frenetic dance to uplift the fighting
spirit. This sharply raises the user’s
Attack stat.','Raises the user''s Attack by two stages.',1,'tm03',0,'normal','NA',20,0),
       (14,'cut','95','physical','The target is cut with a scythe or claw.
This can also be used to cut down thin trees.','Inflicts regular damage.',1,'hm01',0,'normal','50',30,0),
       (15,'gust','100','special','A gust of wind is whipped up by wings and
launched at the target to inflict damage.','Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.',1,'NA',0,'flying','40',35,0),
       (16,'wing-attack','100','physical','The target is struck with large, imposing
wings spread wide to inflict damage.','Inflicts regular damage.',1,'NA',0,'flying','60',35,0),
       (17,'whirlwind','NA','status','The target is blown away, and a different
Pokémon is dragged out. In the wild,
this ends a battle against a single Pokémon.','Switches the target out for another of its trainer''s Pokémon selected at random.  Wild battles end immediately.

Doesn''t affect Pokémon with suction cups or under the effect of ingrain.',1,'tm04',0,'normal','NA',20,-6),
       (18,'fly','95','physical','The user soars and then strikes
its target on the next turn. This can
also be used to fly to any familiar town.','Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.',1,'hm02',0,'flying','90',15,0),
       (19,'bind','85','physical','Things such as long bodies or tentacles
are used to bind and squeeze
the target for four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,'NA',0,'normal','15',20,0),
       (20,'slam','75','physical','The target is slammed with a long tail,
vines, or the like to inflict damage.','Inflicts regular damage.',1,'NA',0,'normal','80',20,0),
       (21,'vine-whip','100','physical','The target is struck with slender,
whiplike vines to inflict damage.','Inflicts regular damage.',1,'NA',0,'grass','45',25,0),
       (22,'stomp','100','physical','The target is stomped with a big foot.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.

Power is doubled against Pokémon that have used minimize since entering the field.',1,'NA',0,'normal','65',20,0),
       (23,'double-kick','100','physical','The target is quickly kicked twice in
succession using both feet.','Inflicts regular damage.  Hits twice in one turn.',1,'NA',0,'fighting','30',30,0),
       (24,'mega-kick','75','physical','The target is attacked by a kick launched
with muscle-packed power.','Inflicts regular damage.',1,'tm05',0,'normal','120',5,0),
       (25,'jump-kick','95','physical','The user jumps up high, then strikes
with a kick. If the kick misses, the
user hurts itself.','Inflicts regular damage. If this move misses, is blocked by protect or detect, or has no effect, the user takes damage equal to half of its max HP rounded down.

This move cannot be used while gravity is in effect.',1,'NA',0,'fighting','100',10,0),
       (26,'rolling-kick','85','physical','The user lashes out with a quick, spinning
kick. This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,'NA',0,'fighting','60',15,0),
       (27,'sand-attack','100','status','Sand is hurled in the target’s face,
reducing the target’s accuracy.','Lowers the target''s accuracy by one stage.',1,'NA',0,'ground','NA',15,0),
       (28,'headbutt','100','physical','The user sticks out its head and attacks
by charging straight into the target.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,'tm02',0,'normal','70',15,0),
       (29,'horn-attack','100','physical','The target is jabbed with a sharply
pointed horn to inflict damage.','Inflicts regular damage.',1,'NA',0,'normal','65',25,0),
       (30,'fury-attack','85','physical','The target is jabbed repeatedly with a
horn or beak two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','15',20,0),
       (31,'horn-drill','30','physical','The user stabs the target with a horn
that rotates like a drill. The target
faints instantly if this attack hits.','Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,'tm07',0,'normal','NA',5,0),
       (32,'tackle','100','physical','A physical attack in which the user
charges and slams into the target
with its whole body.','Inflicts regular damage.',1,'NA',0,'normal','40',35,0),
       (33,'body-slam','100','physical','The user drops onto the target
with its full body weight. This may also
leave the target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',1,'tm08',0,'normal','85',15,0),
       (34,'wrap','90','physical','A long body or vines are used to wrap and
squeeze the target for four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,'NA',0,'normal','15',20,0),
       (35,'take-down','85','physical','A reckless, full-body charge attack for
slamming into the target.
This also damages the user a little.','Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',1,'tm09',0,'normal','90',20,0),
       (36,'thrash','100','physical','The user rampages and attacks
for two to three turns.
The user then becomes confused.','Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',1,'NA',0,'normal','120',10,0),
       (37,'double-edge','100','physical','A reckless, life-risking tackle.
This also damages the user
quite a lot.','Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',1,'tm10',0,'normal','120',15,0),
       (38,'tail-whip','100','status','The user wags its tail cutely, making
opposing Pokémon less wary and
lowering their Defense stat.','Lowers the target''s Defense by one stage.',1,'NA',0,'normal','NA',30,0),
       (39,'poison-sting','100','physical','The user stabs the target
with a poisonous stinger.
This may also poison the target.','Inflicts regular damage.  Has a 30% chance to poison the target.',1,'NA',0,'poison','15',35,0),
       (40,'twineedle','100','physical','The user damages the target twice in
succession by jabbing it with two spikes.
This may also poison the target.','Inflicts regular damage.  Hits twice in the same turn.  Has a 20% chance to poison the target.',1,'NA',0,'bug','25',20,0),
       (41,'pin-missile','95','physical','Sharp spikes are shot at the target
in rapid succession.
They hit two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'bug','25',20,0),
       (42,'leer','100','status','The user gives opposing Pokémon
an intimidating leer that lowers the Defense stat.','Lowers the target''s Defense by one stage.',1,'NA',0,'normal','NA',30,0),
       (43,'bite','100','physical','The target is bitten
with viciously sharp fangs.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,'NA',0,'dark','60',25,0),
       (44,'growl','100','status','The user growls in an endearing way,
making opposing Pokémon less wary.
This lowers their Attack stats.','Lowers the target''s Attack by one stage.',1,'NA',0,'normal','NA',40,0),
       (45,'roar','NA','status','The target is scared off, and a different
Pokémon is dragged out. In the wild,
this ends a battle against a single Pokémon.','Switches the target out for another of its trainer''s Pokémon selected at random.  Wild battles end immediately.

Doesn''t affect Pokémon with suction cups or under the effect of ingrain.',1,'tm05',0,'normal','NA',20,-6),
       (46,'sing','55','status','A soothing lullaby is sung in a calming
voice that puts the target into a
deep slumber.','Puts the target to sleep.',1,'NA',0,'normal','NA',15,0),
       (47,'supersonic','55','status','The user generates odd sound waves from
its body that confuse the target.','Confuses the target.',1,'NA',0,'normal','NA',20,0),
       (48,'sonic-boom','90','special','The target is hit with a destructive shock
wave that always inflicts 20 HP damage.','Inflicts exactly 20 damage.',1,'NA',0,'normal','NA',20,0),
       (49,'disable','100','status','For four turns, this move prevents the
target from using the move it last used.','Disables the target''s last used move, preventing its use for 4–7 turns, selected at random, or until the target leaves the field.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed,  if its last used move has 0 PP remaining, or if it already has a move disabled, this move will fail.',1,'NA',0,'normal','NA',20,0),
       (50,'acid','100','special','The opposing Pokémon are attacked
with a spray of harsh acid. This may
also lower their Sp. Def stats.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',1,'NA',0,'poison','40',30,0),
       (51,'ember','100','special','The target is attacked with small flames.
This may also leave the target with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.',1,'NA',0,'fire','40',25,0),
       (52,'flamethrower','100','special','The target is scorched with an intense
blast of fire. This may also leave the target
with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.',1,'tm35',0,'fire','90',15,0),
       (53,'mist','NA','status','The user cloaks itself and its allies in a
white mist that prevents any of their stats
from being lowered for five turns.','Pokémon on the user''s side of the field are immune to stat-lowering effects for five turns.

guard swap, heart swap, and power swap may still be used.

defog used by an opponent will end this effect.',1,'NA',0,'ice','NA',30,0),
       (54,'water-gun','100','special','The target is blasted with a
forceful shot of water.','Inflicts regular damage.',1,'tm12',0,'water','40',25,0),
       (55,'hydro-pump','80','special','The target is blasted by a huge volume
of water launched under great pressure.','Inflicts regular damage.',1,'NA',0,'water','110',5,0),
       (56,'surf','100','special','The user attacks everything around it by
swamping its surroundings with a giant wave.
This can also be used for crossing water.','Inflicts regular damage.

If the target is in the first turn of dive, this move will hit with double power.',1,'hm03',0,'water','90',15,0),
       (57,'ice-beam','100','special','The target is struck with an icy-cold
beam of energy.
This may also leave the target frozen.','Inflicts regular damage.  Has a 10% chance to freeze the target.',1,'tm13',0,'ice','90',10,0),
       (58,'blizzard','70','special','A howling blizzard is summoned to strike
opposing Pokémon. This may also leave
the opposing Pokémon frozen.','Inflicts regular damage.  Has a 10% chance to freeze the target.

During hail, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of protect and detect.',1,'tm14',0,'ice','110',5,0),
       (59,'psybeam','100','special','The target is attacked with a peculiar ray.
This may also leave the target confused.','Inflicts regular damage.  Has a 10% chance to confuse the target.',1,'NA',0,'psychic','65',20,0),
       (60,'bubble-beam','100','special','A spray of bubbles is forcefully ejected
at the target. This may also lower
its Speed stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,'tm11',0,'water','65',20,0),
       (61,'aurora-beam','100','special','The target is hit with a rainbow-colored
beam. This may also lower the target’s
Attack stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Attack by one stage.',1,'NA',0,'ice','65',20,0),
       (62,'hyper-beam','90','special','The target is attacked with a powerful
beam. The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',1,'tm15',0,'normal','150',5,0),
       (63,'peck','100','physical','The target is jabbed with a sharply
pointed beak or horn.','Inflicts regular damage.',1,'NA',0,'flying','35',35,0),
       (64,'drill-peck','100','physical','A corkscrewing attack with a
sharp beak acting as a drill.','Inflicts regular damage.',1,'NA',0,'flying','80',20,0),
       (65,'submission','80','physical','The user grabs the target and recklessly
dives for the ground. This also damages
the user a little.','Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',1,'tm17',0,'fighting','80',20,0),
       (66,'low-kick','100','physical','A powerful low kick that makes the target
fall over. The heavier the target,
the greater the move’s power.','Inflicts regular damage.  Power increases with the target''s weight in kilograms, to a maximum of 120.

Target''s weight | Power
--------------- | ----:
Up to 10kg      |    20
Up to 25kg      |    40
Up to 50kg      |    60
Up to 100kg     |    80
Up to 200kg     |   100
Above 200kg     |   120',1,'NA',0,'fighting','NA',20,0),
       (67,'counter','100','physical','A retaliation move that counters any
physical attack, inflicting double the
damage taken.','Targets the last opposing Pokémon to hit the user with a physical move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by mirror move, nor selected by assist or metronome.',1,'tm18',0,'fighting','NA',20,-5),
       (68,'seismic-toss','100','physical','The target is thrown using the power of
gravity. It inflicts damage equal to
the user’s level.','Inflicts damage equal to the user''s level.  Type immunity applies, but other type effects are ignored.',1,'tm19',0,'fighting','NA',20,0),
       (69,'strength','100','physical','The target is slugged with a punch thrown
at maximum power. This can also be used
to move heavy boulders.','Inflicts regular damage.',1,'hm04',0,'normal','80',15,0),
       (70,'absorb','100','special','A nutrient-draining attack. The user’s
HP is restored by half the damage taken
by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,'NA',0,'grass','20',25,0),
       (71,'mega-drain','100','special','A nutrient-draining attack. The user’s
HP is restored by half the damage taken
by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,'tm21',0,'grass','40',15,0),
       (72,'leech-seed','90','status','A seed is planted on the target. It steals
some HP from the target every turn.','Plants a seed on the target that drains 1/8 of its max HP at the end of every turn and heals the user for the amount taken.  Has no effect on grass Pokémon.  The seed remains until the target leaves the field.

The user takes damage instead of being healed if the target has liquid ooze.

rapid spin will remove this effect.

This effect is passed on by baton pass.',1,'NA',0,'grass','NA',10,0),
       (73,'growth','NA','status','The user’s body grows all at once,
raising the Attack and Sp. Atk stats.','Raises the user''s Attack and Special Attack by one stage each.  During sunny day, raises both stats by two stages.',1,'NA',0,'normal','NA',20,0),
       (74,'razor-leaf','95','physical','Sharp-edged leaves are launched
to slash at the opposing Pokémon.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,'NA',1,'grass','55',25,0),
       (75,'solar-beam','100','special','A two-turn attack. The user gathers
light, then blasts a bundled beam on the
next turn.','Inflicts regular damage.  User charges for one turn before attacking.

During sunny day, the charge turn is skipped.

During hail, rain dance, or sandstorm, power is halved.

This move cannot be selected by sleep talk.',1,'tm22',0,'grass','120',10,0),
       (76,'poison-powder','75','status','The user scatters a cloud of poisonous
dust on the target. This may also poison
the target.','Poisons the target.',1,'NA',0,'poison','NA',35,0),
       (77,'stun-spore','75','status','The user scatters a cloud of numbing
powder that paralyzes the target.','Paralyzes the target.',1,'NA',0,'grass','NA',30,0),
       (78,'sleep-powder','75','status','The user scatters a big cloud
of sleep-inducing dust
around the target.','Puts the target to sleep.',1,'NA',0,'grass','NA',15,0),
       (79,'petal-dance','100','special','The user attacks the target by scattering
petals for two to three turns.
The user then becomes confused.','Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',1,'NA',0,'grass','120',10,0),
       (80,'string-shot','95','status','The opposing Pokémon are bound
with silk blown from the user’s mouth
that harshly lowers the Speed stat.','Lowers the target''s Speed by two stages.',1,'NA',0,'bug','NA',40,0),
       (81,'dragon-rage','100','special','This attack hits the target with a shock
wave of pure rage. This attack always
inflicts 40 HP damage.','Inflicts exactly 40 damage.',1,'tm23',0,'dragon','NA',10,0),
       (82,'fire-spin','85','special','The target becomes trapped within a
fierce vortex of fire that rages for four
to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,'NA',0,'fire','35',15,0),
       (83,'thunder-shock','100','special','A jolt of electricity crashes down on
the target to inflict damage. This may
also leave the target with paralysis.','Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,'NA',0,'electric','40',30,0),
       (84,'thunderbolt','100','special','A strong electric blast crashes down on the
target. This may also leave the target
with paralysis.','Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,'tm24',0,'electric','90',15,0),
       (85,'thunder-wave','90','status','The user launches a weak jolt
of electricity that paralyzes the target.','Paralyzes the target.',1,'tm45',0,'electric','NA',20,0),
       (86,'thunder','70','special','A wicked thunderbolt is dropped
on the target to inflict damage.
This may also leave the target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.

During rain dance, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of protect and detect.

During sunny day, this move has 50% accuracy.',1,'tm25',0,'electric','110',10,0),
       (87,'rock-throw','90','physical','The user picks up and throws a small
rock at the target to attack.','Inflicts regular damage.',1,'NA',0,'rock','50',15,0),
       (88,'earthquake','100','physical','The user sets off an earthquake that
strikes every Pokémon around it.','Inflicts regular damage.

If the target is in the first turn of dig, this move will hit with double power.',1,'tm26',0,'ground','100',10,0),
       (89,'fissure','30','physical','The user opens up a fissure in the ground
and drops the target in.
The target faints instantly if this attack hits.','Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,'tm27',0,'ground','NA',5,0),
       (90,'dig','100','physical','The user burrows, then attacks
on the next turn.
It can also be used to exit dungeons.','Inflicts regular damage.  User digs underground for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, earthquake, fissure, and magnitude still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be selected by sleep talk.',1,'tm28',0,'ground','80',10,0),
       (91,'toxic','90','status','A move that leaves the target
badly poisoned.
Its poison damage worsens every turn.','Badly poisons the target.  Never misses when used by a poison-type Pokémon.',1,'tm06',0,'poison','NA',10,0),
       (92,'confusion','100','special','The target is hit by a weak telekinetic
force. This may also confuse the target.','Inflicts regular damage.  Has a 10% chance to confuse the target.',1,'NA',0,'psychic','50',25,0),
       (93,'psychic','100','special','The target is hit by a strong telekinetic
force. This may also lower the target’s
Sp. Def stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',1,'tm29',0,'psychic','90',10,0),
       (94,'hypnosis','60','status','The user employs hypnotic suggestion
to make the target fall into a deep sleep.','Puts the target to sleep.',1,'NA',0,'psychic','NA',20,0),
       (95,'meditate','NA','status','The user meditates to awaken the power
deep within its body and raise its
Attack stat.','Raises the user''s Attack by one stage.',1,'NA',0,'psychic','NA',40,0),
       (96,'agility','NA','status','The user relaxes and lightens its body to
move faster. This sharply raises the Speed stat.','Raises the user''s Speed by two stages.',1,'NA',0,'psychic','NA',30,0),
       (97,'quick-attack','100','physical','The user lunges at the target at a speed
that makes it almost invisible.
This move always goes first.','Inflicts regular damage.',1,'NA',0,'normal','40',30,1),
       (98,'rage','100','physical','As long as this move is in use, the power
of rage raises the Attack stat each
time the user is hit in battle.','Inflicts regular damage.  Every time the user is hit after it uses this move but before its next action, its Attack raises by one stage.',1,'tm20',0,'normal','20',20,0),
       (99,'teleport','NA','status','Use it to flee from any wild Pokémon.
It can also warp to the last Pokémon
Center visited.','Does nothing.  Wild battles end immediately.',1,'tm30',0,'psychic','NA',20,-6),
       (100,'night-shade','100','special','The user makes the target see a
frightening mirage. It inflicts damage
equal to the user’s level.','Inflicts damage equal to the user''s level.  Type immunity applies, but other type effects are ignored.',1,'NA',0,'ghost','NA',15,0),
       (101,'mimic','NA','status','The user copies the target’s last move.
The move can be used during battle
until the Pokémon is switched out.','This move is replaced by the target''s last successfully used move, and its PP changes to 5.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, or if the user already knows the targeted move, this move will fail.  This effect vanishes when the user leaves the field.

If chatter, metronome, mimic, sketch, or struggle is selected, this move will fail.

This move cannot be copied by mirror move, nor selected by assist or metronome, nor forced by encore.',1,'tm31',0,'normal','NA',10,0),
       (102,'screech','85','status','An earsplitting screech harshly reduces
the target’s Defense stat.','Lowers the target''s Defense by two stages.',1,'NA',0,'normal','NA',40,0),
       (103,'double-team','NA','status','By moving rapidly, the user makes illusory
copies of itself to raise its evasiveness.','Raises the user''s evasion by one stage.',1,'tm32',0,'normal','NA',15,0),
       (104,'recover','NA','status','Restoring its own cells, the user
restores its own HP by half of
its max HP.','Heals the user for half its max HP.',1,'NA',0,'normal','NA',10,0),
       (105,'harden','NA','status','The user stiffens all the muscles in its
body to raise its Defense stat.','Raises the user''s Defense by one stage.',1,'NA',0,'normal','NA',30,0),
       (106,'minimize','NA','status','The user compresses its body
to make itself look smaller,
which sharply raises its evasiveness.','Raises the user''s evasion by two stages.

stomp and steamroller have double power against Pokémon that have used this move since entering the field.',1,'NA',0,'normal','NA',10,0),
       (107,'smokescreen','100','status','The user releases an obscuring cloud
of smoke or ink. This lowers the
target’s accuracy.','Lowers the target''s accuracy by one stage.',1,'NA',0,'normal','NA',20,0),
       (108,'confuse-ray','100','status','The target is exposed to a sinister
ray that triggers confusion.','Confuses the target.',1,'NA',0,'ghost','NA',10,0),
       (109,'withdraw','NA','status','The user withdraws its body into its hard
shell, raising its Defense stat.','Raises the user''s Defense by one stage.',1,'NA',0,'water','NA',40,0),
       (110,'defense-curl','NA','status','The user curls up to conceal weak spots
and raise its Defense stat.','Raises user''s Defense by one stage.

After this move is used, the power of ice ball and rollout are doubled until the user leaves the field.',1,'tm40',0,'normal','NA',40,0),
       (111,'barrier','NA','status','The user throws up a sturdy wall that
sharply raises its Defense stat.','Raises the user''s Defense by two stages.',1,'NA',0,'psychic','NA',20,0),
       (112,'light-screen','NA','status','A wondrous wall of light is put up to
reduce damage from special attacks
for five turns.','Erects a barrier around the user''s side of the field that reduces damage from special attacks by half for five turns.  In double battles, the reduction is 1/3.  Critical hits are not affected by the barrier.

If the user is holding light clay, the barrier lasts for eight turns.

brick break or defog used by an opponent will destroy the barrier.',1,'tm16',0,'psychic','NA',30,0),
       (113,'haze','NA','status','The user creates a haze that eliminates
every stat change among all the Pokémon
engaged in battle.','Removes stat, accuracy, and evasion modifiers from every Pokémon on the field.

This does not count as a stat reduction for the purposes of clear body or white smoke.',1,'NA',0,'ice','NA',30,0),
       (114,'reflect','NA','status','A wondrous wall of light is put up to
reduce damage from physical attacks
for five turns.','Erects a barrier around the user''s side of the field that reduces damage from physical attacks by half for five turns.  In double battles, the reduction is 1/3.  Critical hits are not affected by the barrier.

If the user is holding light clay, the barrier lasts for eight turns.

brick break or defog used by an opponent will destroy the barrier.',1,'tm33',0,'psychic','NA',20,0),
       (115,'focus-energy','NA','status','The user takes a deep breath and
focuses so that critical hits land
more easily.','User''s critical hit rate is two levels higher until it leaves the field.  If the user has already used focus energy since entering the field, this move will fail.

This effect is passed on by baton pass.',1,'NA',0,'normal','NA',30,0),
       (116,'bide','NA','physical','The user endures attacks for two
turns, then strikes back to cause
double the damage taken.','User waits for two turns.  On the second turn, the user inflicts twice the damage it accumulated on the last Pokémon to hit it.  Damage inflicted is typeless.

This move cannot be selected by sleep talk.',1,'tm34',0,'normal','NA',10,1),
       (117,'metronome','NA','status','The user waggles a finger and stimulates
its brain into randomly using nearly
any move.','Selects any move at random and uses it.  Moves the user already knows are not eligible.  Assist, meta, protection, and reflection moves are also not eligible, specifically, assist, chatter, copycat, counter, covet, destiny bond, detect, endure, feint, focus punch, follow me, helping hand, me first, metronome, mimic, mirror coat, mirror move, protect, quick guard, sketch, sleep talk, snatch, struggle, switcheroo, thief, trick, and wide guard will not be selected by this move.

This move cannot be copied by mimic or mirror move, nor selected by assist, metronome, or sleep talk.',1,'tm35',0,'normal','NA',10,0),
       (118,'mirror-move','NA','status','The user counters the target by mimicking
the target’s last move.','Uses the last move targeted at the user by a Pokémon still on the field.  A move counts as targeting the user even if it hit multiple Pokémon, as long as the user was one of them, however, moves targeting the field itself do not count.  If the user has not been targeted by an appropriate move since entering the field, or if no Pokémon that targeted the user remains on the field, this move will fail.

Moves that failed, missed, had no effect, or were blocked are still copied.

Assist moves, time-delayed moves, “meta” moves that operate on other moves/Pokémon/abilities, and some other special moves cannot be copied and are ignored, if the last move to hit the user was such a move, the previous move will be used instead.  The full list of ignored moves is: acid armor, acupressure, after you, agility, ally switch, amnesia, aqua ring, aromatherapy, aromatic mist, assist, autotomize, barrier, baton pass, belch, belly drum, bide, bulk up, calm mind, camouflage, celebrate, charge, coil, conversion, conversion 2, copycat, cosmic power, cotton guard, counter, crafty shield, curse, defend order, defense curl, destiny bond, detect, doom desire, double team, dragon dance, electric terrain, endure, final gambit, flower shield, focus energy, focus punch, follow me, future sight, geomancy, grassy terrain, gravity, growth, grudge, guard split, hail, happy hour, harden, haze, heal bell, heal order, heal pulse, healing wish, helping hand, hold hands, hone claws, howl, imprison, ingrain, ion deluge, iron defense, kings shield, light screen, lucky chant, lunar dance, magic coat, magnet rise, magnetic flux, mat block, me first, meditate, metronome, milk drink, mimic, minimize, mirror coat, mirror move, mist, misty terrain, moonlight, morning sun, mud sport, nasty plot, nature power, perish song, power split, power trick, protect, psych up, quick guard, quiver dance, rage powder, rain dance, recover, recycle, reflect, reflect type, refresh, rest, rock polish, role play, roost, rototiller, safeguard, sandstorm, shadow blast, shadow bolt, shadow half, shadow rush, shadow shed, shadow sky, shadow storm, shadow wave, sharpen, shell smash, shift gear, sketch, slack off, sleep talk, snatch, soft boiled, spikes, spiky shield, spit up, splash, stealth rock, sticky web, stockpile, struggle, substitute, sunny day, swallow, swords dance, synthesis, tail glow, tailwind, teleport, toxic spikes, transform, water sport, wide guard, wish, withdraw and work up.

This move cannot be selected by assist, metronome, or sleep talk, nor forced by encore.',1,'NA',0,'flying','NA',20,0),
       (119,'self-destruct','100','physical','The user attacks everything around it
by causing an explosion.
The user faints upon using this move.','User faints, even if the attack fails or misses.  Inflicts regular damage.',1,'tm36',0,'normal','200',5,0),
       (120,'egg-bomb','75','physical','A large egg is hurled at the target
with maximum force to inflict damage.','Inflicts regular damage.',1,'tm37',0,'normal','100',10,0),
       (121,'lick','100','physical','The target is licked with a long tongue,
causing damage. This may also leave
the target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',1,'NA',0,'ghost','30',30,0),
       (122,'smog','70','special','The target is attacked with a
discharge of filthy gases.
This may also poison the target.','Inflicts regular damage.  Has a 40% chance to poison the target.',1,'NA',0,'poison','30',20,0),
       (123,'sludge','100','special','Unsanitary sludge is hurled at the target.
This may also poison the target.','Inflicts regular damage.  Has a 30% chance to poison the target.',1,'NA',0,'poison','65',20,0),
       (124,'bone-club','85','physical','The user clubs the target with a bone.
This may also make the target flinch.','Inflicts regular damage.  Has a 10% chance to make the target flinch.',1,'NA',0,'ground','65',20,0),
       (125,'fire-blast','85','special','The target is attacked with an intense
blast of all-consuming fire.
This may also leave the target with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.',1,'tm38',0,'fire','110',5,0),
       (126,'waterfall','100','physical','The user charges at the target and may make it
flinch. This can also be used to climb a waterfall.','Inflicts regular damage.  Has a 20% chance to make the target flinch.',1,'hm05',0,'water','80',15,0),
       (127,'clamp','85','physical','The target is clamped and squeezed by
the user’s very thick and sturdy shell for
four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,'NA',0,'water','35',15,0),
       (128,'swift','NA','special','Star-shaped rays are shot at the opposing
Pokémon. This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',1,'tm39',0,'normal','60',20,0),
       (129,'skull-bash','100','physical','The user tucks in its head to raise its
Defense in the first turn, then
rams the target on the next turn.','Inflicts regular damage.  Raises the user''s Defense by one stage.  User then charges for one turn before attacking.

This move cannot be selected by sleep talk.',1,'tm40',0,'normal','130',10,0),
       (130,'spike-cannon','100','physical','Sharp spikes are shot at the target
in rapid succession.
They hit two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','20',15,0),
       (131,'constrict','100','physical','The target is attacked with long, creeping
tentacles or vines.
This may also lower the target’s Speed stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,'NA',0,'normal','10',35,0),
       (132,'amnesia','NA','status','The user temporarily empties its mind to
forget its concerns.
This sharply raises the user’s Sp. Def stat.','Raises the user''s Special Defense by two stages.',1,'NA',0,'psychic','NA',20,0),
       (133,'kinesis','80','status','The user distracts the target
by bending a spoon.
This lowers the target’s accuracy.','Lowers the target''s accuracy by one stage.',1,'NA',0,'psychic','NA',15,0),
       (134,'soft-boiled','NA','status','The user restores its own HP
by up to half of its max HP.
May also be used in the field to heal HP.','Heals the user for half its max HP.',1,'tm41',0,'normal','NA',10,0),
       (135,'high-jump-kick','90','physical','The target is attacked with a knee kick
from a jump. If it misses, the user is
hurt instead.','Inflicts regular damage. If this move misses, is blocked by protect or detect, or has no effect, the user takes damage equal to half of its max HP rounded down.

This move cannot be used while gravity is in effect.',1,'NA',0,'fighting','130',10,0),
       (136,'glare','100','status','The user intimidates the target with the
pattern on its belly to cause paralysis.','Paralyzes the target.',1,'NA',0,'normal','NA',30,0),
       (137,'dream-eater','100','special','The user eats the dreams of a sleeping
target. It absorbs half the damage
caused to heal its own HP.','Fails if not used on a sleeping Pokémon.  Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,'tm42',0,'psychic','100',15,0),
       (138,'poison-gas','90','status','A cloud of poison gas is sprayed
in the face of opposing Pokémon.
This may also poison those hit.','Poisons the target.',1,'NA',0,'poison','NA',40,0),
       (139,'barrage','85','physical','Round objects are hurled at the target
to strike two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','15',20,0),
       (140,'leech-life','100','physical','The user drains the target’s blood.
The user’s HP is restored by half the
damage taken by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,'NA',0,'bug','80',10,0),
       (141,'lovely-kiss','75','status','With a scary face, the user tries to
force a kiss on the target. If it
succeeds, the target falls asleep.','Puts the target to sleep.',1,'NA',0,'normal','NA',10,0),
       (142,'sky-attack','90','physical','A second-turn attack move where
critical hits land more easily.
This may also make the target flinch.','Inflicts regular damage.  User charges for one turn before attacking.  Critical hit chance is one level higher than normal.  Has a 30% chance to make the target flinch.

This move cannot be selected by sleep talk.',1,'tm43',1,'flying','140',5,0),
       (143,'transform','NA','status','The user transforms into a copy of the
target right down to having
the same move set.','User copies the target''s species, weight, type, ability, calculated stats (except HP), and moves.  Copied moves will all have 5 PP remaining.  IVs are copied for the purposes of hidden power, but stats are not recalculated.

choice band, choice scarf, and choice specs stay in effect, and the user must select a new move.

This move cannot be copied by mirror move, nor forced by encore.',1,'NA',0,'normal','NA',10,0),
       (144,'bubble','100','special','A spray of countless bubbles is jetted at
the opposing Pokémon.
This may also lower their Speed stats.','Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,'NA',0,'water','40',30,0),
       (145,'dizzy-punch','100','physical','The target is hit with rhythmically
launched punches. This may also
leave the target confused.','Inflicts regular damage.  Has a 20% chance to confuse the target.',1,'NA',0,'normal','70',10,0),
       (146,'spore','100','status','The user scatters bursts of spores
that induce sleep.','Puts the target to sleep.',1,'NA',0,'grass','NA',15,0),
       (147,'flash','100','status','The user flashes a bright light that cuts the
target’s accuracy.
It can also be used to illuminate dark caves.','Lowers the target''s accuracy by one stage.',1,'tm70',0,'normal','NA',20,0),
       (148,'psywave','100','special','The target is attacked with an odd
psychic wave.
The attack varies in intensity.','Inflicts typeless damage between 50% and 150% of the user''s level, selected at random in increments of 10%.',1,'tm46',0,'psychic','NA',15,0),
       (149,'splash','NA','status','The user just flops and splashes around
to no effect at all...','Does nothing.

This move cannot be used while gravity is in effect.',1,'NA',0,'normal','NA',40,0),
       (150,'acid-armor','NA','status','The user alters its cellular structure to
liquefy itself, sharply raising its
Defense stat.','Raises the user''s Defense by two stages.',1,'NA',0,'poison','NA',20,0),
       (151,'crabhammer','90','physical','The target is hammered with a large pincer.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,'NA',1,'water','100',10,0),
       (152,'explosion','100','physical','The user attacks everything around it
by causing a tremendous explosion.
The user faints upon using this move.','User faints, even if the attack fails or misses.  Inflicts regular damage.',1,'tm47',0,'normal','250',5,0),
       (153,'fury-swipes','80','physical','The target is raked with sharp claws or
scythes quickly two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,'NA',0,'normal','18',15,0),
       (154,'bonemerang','90','physical','The user throws the bone it holds. The
bone loops to hit the target twice,
coming and going.','Inflicts regular damage.  Hits twice in one turn.',1,'NA',0,'ground','50',10,0),
       (155,'rest','NA','status','The user goes to sleep for two turns.
This fully restores the user’s HP and
heals any status conditions.','User falls to sleep and immediately regains all its HP.  If the user has another major status effect, sleep will replace it.  The user will always wake up after two turns, or one turn with early bird.

This move fails if the Pokémon cannot fall asleep due to uproar, insomnia, or vital spirit.  It also fails if the Pokémon is at full health or is already asleep.',1,'tm44',0,'psychic','NA',10,0),
       (156,'rock-slide','90','physical','Large boulders are hurled at the opposing
Pokémon to inflict damage. This may also make
the opposing Pokémon flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,'tm48',0,'rock','75',10,0),
       (157,'hyper-fang','90','physical','The user bites hard on the target
with its sharp front fangs.
This may also make the target flinch.','Inflicts regular damage.  Has a 10% chance to make the target flinch.',1,'NA',0,'normal','80',15,0),
       (158,'sharpen','NA','status','The user lowers its polygon count to
make itself more jagged, raising the
Attack stat.','Raises the user''s Attack by one stage.',1,'NA',0,'normal','NA',30,0),
       (159,'conversion','NA','status','The user changes its type to become the
same type as the move at the top of the
list of moves it knows.','User''s type changes to the type of one of its moves, selected at random.  hidden power and weather ball are treated as normal.  Only moves with a different type are eligible, and curse is never eligible.  If the user has no suitable moves, this move will fail.',1,'NA',0,'normal','NA',30,0),
       (160,'tri-attack','100','special','The user strikes with a simultaneous
three-beam attack. May also burn, freeze,
or leave the target with paralysis.','Inflicts regular damage.  Has a 20% chance to burn, freeze, or paralyze the target.  One of these effects is selected at random, they do not each have independent chances to occur.',1,'tm49',0,'normal','80',10,0),
       (161,'super-fang','90','physical','The user chomps hard on the
target with its sharp front fangs.
This cuts the target’s HP in half.','Inflicts typeless damage equal to half the target''s remaining HP.',1,'NA',0,'normal','NA',10,0),
       (162,'slash','100','physical','The target is attacked with a slash
of claws or blades.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,'NA',1,'normal','70',20,0),
       (163,'substitute','NA','status','The user makes a copy of itself using
some of its HP.
The copy serves as the user’s decoy.','Transfers 1/4 the user''s max HP into a doll that absorbs damage and causes most negative move effects to fail.  If the user leaves the field, the doll will vanish.  If the user cannot pay the HP cost, this move will fail.

The doll takes damage as normal, using the user''s stats and types, and will break when its HP reaches zero.  Self-inflicted damage from confusion or recoil is not absorbed.  Healing effects from opponents ignore the doll and heal the user as normal.  Moves that work based on the user''s HP still do so, the doll''s HP does not influence any move.

The doll will block major status effects, confusion, and flinching.  The effects of smelling salts and wake up slap do not trigger against a doll, even if the Pokémon behind the doll has the appropriate major status effect.  Multi-turn trapping moves like wrap will hit the doll for their regular damage, but the multi-turn trapping and damage effects will not activate.

Moves blocked or damage absorbed by the doll do not count as hitting the user or inflicting damage for any effects that respond to such, e.g., avalanche, counter, or a rowap berry.  magic coat still works as normal, even against moves the doll would block.  Opposing Pokémon that damage the doll with a leech move like absorb are healed as normal.

It will also block acupressure, block, the curse effect of curse, dream eater, embargo, flatter, gastro acid, grudge, heal block, leech seed, lock on, mean look, mimic, mind reader, nightmare, pain split, psycho shift, spider web, sketch, swagger, switcheroo, trick, worry seed, and yawn.  A Pokémon affected by yawn before summoning the doll will still fall to sleep.

The doll blocks intimidate, but all other abilities act as though the doll did not exist.  If the user has an ability that absorbs moves of a certain type for HP (such as volt absorb absorbing thunder wave), such moves will not be blocked.

life orb and berries that cause confusion still work as normal, but their respective HP loss and confusion are absorbed/blocked by the doll.

The user is still vulnerable to damage inflicted when entering or leaving the field, such as by pursuit or spikes, however, the doll will block the poison effect of toxic spikes.

The doll is passed on by baton pass.  It keeps its existing HP, but uses the replacement Pokémon''s stats and types for damage calculation.

All other effects work as normal.',1,'tm50',0,'normal','NA',10,0),
       (164,'struggle','NA','physical','An attack that is used in desperation
only if the user has no PP. This also
damages the user a little.','Inflicts typeless regular damage.  User takes 1/4 its max HP in recoil.  Ignores accuracy and evasion modifiers.

This move is used automatically when a Pokémon cannot use any other move legally, e.g., due to having no PP remaining or being under the effect of both encore and torment at the same time.

This move''s recoil is not treated as recoil for the purposes of anything that affects recoil, such as the ability rock head.  It also is not prevented by magic guard.

This move cannot be copied by mimic, mirror move, or sketch, nor selected by assist or metronome, nor forced by encore.',1,'NA',0,'normal','50',1,0),
       (165,'sketch','NA','status','It enables the user to permanently learn
the move last used by the target.
Once used, Sketch disappears.','Permanently replaces itself with the target''s last used move.  If that move is chatter or struggle, this move will fail.

This move cannot be copied by mimic or mirror move, nor selected by assist or metronome, nor forced by encore.',2,'NA',0,'normal','NA',1,0),
       (166,'triple-kick','90','physical','A consecutive three-kick attack that
becomes more powerful with each
successive hit.','Inflicts regular damage.  Hits three times in the same turn.  The second hit has double power, and the third hit has triple power.  Each hit has a separate accuracy check, and this move stops if a hit misses.

skill link does not apply.',2,'NA',0,'fighting','10',10,0),
       (167,'thief','100','physical','The user attacks and steals the target’s
held item simultaneously. The user can’t
steal anything if it already holds an item.','Inflicts regular damage.  If the target is holding an item and the user is not, the user will permanently take the item.  Damage is still inflicted if an item cannot be taken.

Pokémon with sticky hold or multitype are immune to the item theft effect.

The target cannot recover its item with recycle.

This move cannot be selected by assist or metronome.',2,'tm46',0,'dark','60',25,0),
       (168,'spider-web','NA','status','The user ensnares the target with thin,
gooey silk so it can’t flee from battle.','The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',2,'NA',0,'bug','NA',10,0),
       (169,'mind-reader','NA','status','The user senses the target’s movements
with its mind to ensure its next
attack does not miss the target.','If the user targets the same target again before the end of the next turn, the move it uses is guaranteed to hit.  This move itself also ignores accuracy and evasion modifiers.

One-hit KO moves are also guaranteed to hit, as long as the user is equal or higher level than the target.  This effect also allows the user to hit Pokémon that are off the field due to moves such as dig or fly.

If the target uses detect or protect while under the effect of this move, the user is not guaranteed to hit, but has a (100 - accuracy)% chance to break through the protection.

This effect is passed on by baton pass.',2,'NA',0,'normal','NA',5,0),
       (170,'nightmare','100','status','A sleeping target sees a nightmare
that inflicts some damage every turn.','Only works on sleeping Pokémon.  Gives the target a nightmare, damaging it for 1/4 its max HP every turn.  If the target wakes up or leaves the field, this effect ends.',2,'tm50',0,'ghost','NA',15,0),
       (171,'flame-wheel','100','physical','The user cloaks itself in fire and
charges at the target.
This may also leave the target with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',2,'NA',0,'fire','60',25,0),
       (172,'snore','100','special','An attack that can be used only if the
user is asleep. The harsh noise may also
make the target flinch.','Only usable if the user is sleeping.  Inflicts regular damage.  Has a 30% chance to make the target flinch.',2,'tm13',0,'normal','50',15,0),
       (173,'curse','NA','status','A move that works differently for the
Ghost type than for all other types.','If the user is a ghost: user pays half its max HP to place a curse on the target, damaging it for 1/4 its max HP every turn.
Otherwise: Lowers the user''s Speed by one stage, and raises its Attack and Defense by one stage each.

The curse effect is passed on by baton pass.

This move cannot be copied by mirror move.',2,'tm03',0,'ghost','NA',10,0),
       (174,'flail','100','physical','The user flails about aimlessly to attack.
The less HP the user has,
the greater the move’s power.','Inflicts regular damage.  Power varies inversely with the user''s proportional remaining HP.

64 * current HP / max HP | Power
-----------------------: | ----:
 0– 1                    |  200
 2– 5                    |  150
 6–12                    |  100
13–21                    |   80
22–42                    |   40
43–64                    |   20',2,'NA',0,'normal','NA',15,0),
       (175,'conversion-2','NA','status','The user changes its type to make itself
resistant to the type of the attack the
opponent used last.','Changes the user''s type to a type either resistant or immune to the last damaging move that hit it.  The new type is selected at random and cannot be a type the user already is.  If there is no eligible new type, this move will fail.',2,'NA',0,'normal','NA',30,0),
       (176,'aeroblast','95','special','A vortex of air is shot at the target to
inflict damage.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',2,'NA',1,'flying','100',5,0),
       (177,'cotton-spore','100','status','The user releases cotton-like spores
that cling to the opposing Pokémon,
which harshly lowers their Speed stats.','Lowers the target''s Speed by two stages.',2,'NA',0,'grass','NA',40,0),
       (178,'reversal','100','physical','An all-out attack that becomes more
powerful the less HP the user has.','Inflicts regular damage.  Power varies inversely with the user''s proportional remaining HP.

64 * current HP / max HP | Power
-----------------------: | ----:
 0– 1                    |  200
 2– 5                    |  150
 6–12                    |  100
13–21                    |   80
22–42                    |   40
43–64                    |   20',2,'NA',0,'fighting','NA',15,0),
       (179,'spite','100','status','The user unleashes its grudge on the move
last used by the target by cutting 4 PP
from it.','Lowers the PP of the target''s last used move by 4.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, or if its last used move has 0 PP remaining, this move will fail.',2,'NA',0,'ghost','NA',10,0),
       (180,'powder-snow','100','special','The user attacks with a chilling gust
of powdery snow.
This may also freeze the opposing Pokémon.','Inflicts regular damage.  Has a 10% chance to freeze the target.',2,'NA',0,'ice','40',25,0),
       (181,'protect','NA','status','Enables the user to evade all attacks.
Its chance of failing rises if it is used
in succession.','No moves will hit the user for the remainder of this turn.  If the user is last to act this turn, this move will fail.

If the user successfully used detect, endure, protect, quick guard, or wide guard on the last turn, this move has a 50% chance to fail.

lock on, mind reader, and no guard provide a (100 – accuracy)% chance for moves to break through this move.  This does not apply to one-hit KO moves (fissure, guillotine, horn drill, and sheer cold), those are always blocked by this move.

thunder during rain dance and blizzard during hail have a 30% chance to break through this move.

The following effects are not prevented by this move:

* acupressure from an ally
* curse''s curse effect
* Delayed damage from doom desire and future sight, however, these moves will be prevented if they are used this turn
* feint, which will also end this move''s protection after it hits
* imprison
* perish song
* shadow force
* Moves that merely copy the user, such as transform or psych up

This move cannot be selected by assist or metronome.',2,'tm17',0,'normal','NA',10,4),
       (182,'mach-punch','100','physical','The user throws a punch at blinding
speed. This move always goes first.','Inflicts regular damage.',2,'NA',0,'fighting','40',30,1),
       (183,'scary-face','100','status','The user frightens the target with a scary
face to harshly lower its Speed stat.','Lowers the target''s Speed by two stages.',2,'NA',0,'normal','NA',10,0),
       (184,'feint-attack','NA','physical','The user approaches the target
disarmingly, then throws a sucker punch.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',2,'NA',0,'dark','60',20,0),
       (185,'sweet-kiss','75','status','The user kisses the target with a sweet,
angelic cuteness that causes confusion.','Confuses the target.',2,'NA',0,'fairy','NA',10,0),
       (186,'belly-drum','NA','status','The user maximizes its Attack stat in
exchange for HP equal to half its max HP.','User pays half its max HP to raise its Attack to +6 stages.  If the user cannot pay the HP cost, this move will fail.',2,'NA',0,'normal','NA',10,0),
       (187,'sludge-bomb','100','special','Unsanitary sludge is hurled at the target.
This may also poison the target.','Inflicts regular damage.  Has a 30% chance to poison the target.',2,'tm36',0,'poison','90',10,0),
       (188,'mud-slap','100','special','The user hurls mud in the target’s face to
inflict damage and lower its accuracy.','Inflicts regular damage.  Has a 100% chance to lower the target''s accuracy by one stage.',2,'tm31',0,'ground','20',10,0),
       (189,'octazooka','85','special','The user attacks by spraying ink in the
target’s face or eyes.
This may also lower the target’s accuracy.','Inflicts regular damage.  Has a 50% chance to lower the target''s accuracy by one stage.',2,'NA',0,'water','65',10,0),
       (190,'spikes','NA','status','The user lays a trap of spikes at the
opposing team’s feet. The trap hurts
Pokémon that switch into battle.','Scatters spikes around the opposing field, which damage opposing Pokémon that enter the field for 1/8 of their max HP.  Pokémon immune to ground moves are immune to this damage, except during gravity.  Up to three layers of spikes may be laid down, adding 1/16 to the damage done: two layers of spikes damage for 3/16 max HP, and three layers damage for 1/4 max HP.

wonder guard does not block damage from this effect.

rapid spin removes this effect from its user''s side of the field.  defog removes this effect from its target''s side of the field.',2,'NA',0,'ground','NA',20,0),
       (191,'zap-cannon','50','special','The user fires an electric blast like a
cannon to inflict damage and
cause paralysis.','Inflicts regular damage.  Has a 100% chance to paralyze the target.',2,'tm07',0,'electric','120',5,0),
       (192,'foresight','NA','status','Enables a Ghost-type target to be hit by
Normal- and Fighting-type attacks. This also
enables an evasive target to be hit.','Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A ghost under this effect takes normal damage from normal and fighting moves.  This move itself ignores accuracy and evasion modifiers.',2,'NA',0,'normal','NA',40,0),
       (193,'destiny-bond','NA','status','When this move is used, if the user faints,
the Pokémon that landed the knockout
hit also faints.','If the user faints before its next move, the Pokémon that fainted it will automatically faint.  End-of-turn damage is ignored.

This move cannot be selected by assist or metronome.',2,'NA',0,'ghost','NA',5,0),
       (194,'perish-song','NA','status','Any Pokémon that hears this song
faints in three turns, unless it switches
out of battle.','Every Pokémon is given a counter that starts at 3 and decreases by 1 at the end of every turn, including this one.  When a Pokémon''s counter reaches zero, that Pokémon faints.  A Pokémon that leaves the field will lose its counter, its replacement does not inherit the effect, and other Pokémon''s counters remain.

This effect is passed on by baton pass.

This move cannot be copied by mirror move.',2,'NA',0,'normal','NA',5,0),
       (195,'icy-wind','95','special','The user attacks with a gust of chilled air.
This also lowers the opposing Pokémon’s
Speed stats.','Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',2,'tm16',0,'ice','55',15,0),
       (196,'detect','NA','status','Enables the user to evade all attacks.
Its chance of failing rises if it is used
in succession.','No moves will hit the user for the remainder of this turn.  If the user is last to act this turn, this move will fail.

If the user successfully used detect, endure, protect, quick guard, or wide guard on the last turn, this move has a 50% chance to fail.

lock on, mind reader, and no guard provide a (100 – accuracy)% chance for moves to break through this move.  This does not apply to one-hit KO moves (fissure, guillotine, horn drill, and sheer cold), those are always blocked by this move.

thunder during rain dance and blizzard during hail have a 30% chance to break through this move.

The following effects are not prevented by this move:

* acupressure from an ally
* curse''s curse effect
* Delayed damage from doom desire and future sight, however, these moves will be prevented if they are used this turn
* feint, which will also end this move''s protection after it hits
* imprison
* perish song
* shadow force
* Moves that merely copy the user, such as transform or psych up

This move cannot be selected by assist or metronome.',2,'tm43',0,'fighting','NA',5,4),
       (197,'bone-rush','90','physical','The user strikes the target with a hard
bone two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',2,'NA',0,'ground','25',10,0),
       (198,'lock-on','NA','status','The user takes sure aim at the target.
This ensures the next attack does not
miss the target.','If the user targets the same target again before the end of the next turn, the move it uses is guaranteed to hit.  This move itself also ignores accuracy and evasion modifiers.

One-hit KO moves are also guaranteed to hit, as long as the user is equal or higher level than the target.  This effect also allows the user to hit Pokémon that are off the field due to moves such as dig or fly.

If the target uses detect or protect while under the effect of this move, the user is not guaranteed to hit, but has a (100 - accuracy)% chance to break through the protection.

This effect is passed on by baton pass.',2,'NA',0,'normal','NA',5,0),
       (199,'outrage','100','physical','The user rampages and attacks for two
to three turns.
The user then becomes confused.','Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',2,'NA',0,'dragon','120',10,0),
       (200,'sandstorm','NA','status','A five-turn sandstorm is summoned
to hurt all combatants except the
Rock, Ground, and Steel types.','Changes the weather to a sandstorm for five turns.  Pokémon that are not ground, rock, or steel take 1/16 their max HP at the end of every turn.  Every rock Pokémon''s original Special Defense is raised by 50% for the duration of this effect.

solar beam''s power is halved.

moonlight, morning sun, and synthesis only heal 1/4 the user''s max HP.',2,'tm37',0,'rock','NA',10,0),
       (201,'giga-drain','100','special','A nutrient-draining attack. The user’s
HP is restored by half the damage
taken by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',2,'tm19',0,'grass','75',10,0),
       (202,'endure','NA','status','The user endures any attack with at least
1 HP. Its chance of failing rises if it is
used in succession.','The user''s HP cannot be lowered below 1 by any means for the remainder of this turn.

If the user successfully used detect, endure, protect, quick guard, or wide guard on the last turn, this move has a 50% chance to fail.

This move cannot be selected by assist or metronome.',2,'tm20',0,'normal','NA',10,4),
       (203,'charm','100','status','The user gazes at the target rather
charmingly, making it less wary.
This harshly lowers its Attack stat.','Lowers the target''s Attack by two stages.',2,'NA',0,'fairy','NA',20,0),
       (204,'rollout','90','physical','The user continually rolls into the target
over five turns. It becomes more powerful
each time it hits.','Inflicts regular damage.  User is forced to use this move for five turns.  Power doubles every time this move is used in succession to a maximum of 16x, and resets to normal after the lock-in ends.  If this move misses or becomes unusable, the lock-in ends.

If the user has used defense curl since entering the field, this move has double power.',2,'tm04',0,'rock','30',20,0),
       (205,'false-swipe','100','physical','A restrained attack that prevents the
target from fainting.
The target is left with at least 1 HP.','Inflicts regular damage.  Will not reduce the target''s HP below 1.',2,'tm54',0,'normal','40',40,0),
       (206,'swagger','85','status','The user enrages and confuses the target.
However, this also sharply raises the
target’s Attack stat.','Raises the target''s Attack by two stages, then confuses it.  If the target''s Attack cannot be raised by two stages, the confusion is not applied.',2,'tm34',0,'normal','NA',15,0),
       (207,'milk-drink','NA','status','The user restores its own HP
by up to half of its max HP.
May also be used in the field to heal HP.','Heals the user for half its max HP.',2,'NA',0,'normal','NA',10,0),
       (208,'spark','100','physical','The user throws an electrically charged
tackle at the target. This may also leave
the target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',2,'NA',0,'electric','65',20,0),
       (209,'fury-cutter','95','physical','The target is slashed with scythes or
claws. This attack becomes more powerful
if it hits in succession.','Inflicts regular damage.  Power doubles after every time this move is used, whether consecutively or not, maxing out at 16x.  If this move misses or the user leaves the field, power resets.',2,'tm49',0,'bug','40',20,0),
       (210,'steel-wing','90','physical','The target is hit with wings of steel.
This may also raise the user’s Defense stat.','Inflicts regular damage. Has a 10% chance to raise the user''s Defense one stage.',2,'tm47',0,'steel','70',25,0),
       (211,'mean-look','NA','status','The user pins the target with a dark,
arresting look.
The target becomes unable to flee.','The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',2,'NA',0,'normal','NA',5,0),
       (212,'attract','100','status','If it is the opposite gender of the user,
the target becomes infatuated and less
likely to attack.','Causes the target to fall in love with the user, giving it a 50% chance to do nothing each turn.  If the user and target are the same gender, or either is genderless, this move will fail.  If either Pokémon leaves the field, this effect ends.',2,'tm45',0,'normal','NA',15,0),
       (213,'sleep-talk','NA','status','While it is asleep, the user randomly uses
one of the moves it knows.','Only usable if the user is sleeping.  Randomly selects and uses one of the user''s other three moves.  Use of the selected move requires and costs 0 PP.

This move will not select assist, bide, bounce, chatter, copycat, dig, dive, fly, focus punch, me first, metronome, mirror move, shadow force, skull bash, sky attack, sky drop, sleep talk, solar beam, razor wind, or uproar.

If the selected move requires a recharge turn—i.e., one of blast burn, frenzy plant, giga impact, hydro cannon, hyper beam, roar of time, or rock wrecker—and the user is still sleeping next turn, then it''s forced to use this move again and pay another PP for the recharge turn.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',2,'tm35',0,'normal','NA',10,0),
       (214,'heal-bell','NA','status','The user makes a soothing bell chime
to heal the status conditions of all the
party Pokémon.','Removes major status effects and confusion from every Pokémon in the user''s party.',2,'NA',0,'normal','NA',5,0),
       (215,'return','100','physical','A full-power attack that grows more
powerful the more the user likes
its Trainer.','Inflicts regular damage.  Power increases with happiness, given by `happiness * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.',2,'tm27',0,'normal','NA',20,0),
       (216,'present','90','physical','The user attacks by giving the target a
gift with a hidden trap. It restores
HP sometimes, however.','Randomly uses one of the following effects.

Effect                                             | Chance
-------------------------------------------------- | -----:
Inflicts regular damage with 40 power  |    40%
Inflicts regular damage with 80 power  |    30%
Inflicts regular damage with 120 power |    10%
Heals the target for 1/4 its max HP    |    20%

On average, this move inflicts regular damage with 52 power and heals the target for 1/20 its max HP.',2,'NA',0,'normal','NA',15,0),
       (217,'frustration','100','physical','A full-power attack that grows more
powerful the less the user likes
its Trainer.','Inflicts regular damage.  Power increases inversely with happiness, given by `(255 - happiness) * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.',2,'tm21',0,'normal','NA',20,0),
       (218,'safeguard','NA','status','The user creates a protective field
that prevents status conditions
for five turns.','Protects Pokémon on the user''s side of the field from major status effects and confusion for five turns.  Does not cancel existing ailments.  This effect remains even if the user leaves the field.

If yawn is used while this move is in effect, it will immediately fail.

defog used by an opponent will end this effect.

This effect does not prevent the confusion caused by outrage, petal dance, or thrash.',2,'tm20',0,'normal','NA',25,0),
       (219,'pain-split','NA','status','The user adds its HP to the target’s HP,
then equally shares the combined HP
with the target.','Changes the user''s and target''s remaining HP to the average of their current remaining HP.  Ignores accuracy and evasion modifiers.  This effect does not count as inflicting damage for other moves and effects that respond to damage taken.

This effect fails against a substitute.',2,'NA',0,'normal','NA',20,0),
       (220,'sacred-fire','95','physical','The target is razed with a mystical fire
of great intensity. This may also leave the
target with a burn.','Inflicts regular damage.  Has a 50% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',2,'NA',0,'fire','100',5,0),
       (221,'magnitude','100','physical','The user attacks everything around it
with a ground-shaking quake.
Its power varies.','Inflicts regular damage.  Power is selected at random between 10 and 150, with an average of 71:

Magnitude | Power | Chance
--------: | ----: | -----:
        4 |    10 |     5%
        5 |    30 |    10%
        6 |    50 |    20%
        7 |    70 |    30%
        8 |    90 |    20%
        9 |   110 |    10%
       10 |   150 |     5%

This move has double power against Pokémon currently underground due to dig.',2,'NA',0,'ground','NA',30,0),
       (222,'dynamic-punch','50','physical','The user punches the target with full,
concentrated power.
This confuses the target if it hits.','Inflicts regular damage.  Has a 100% chance to confuse the target.',2,'tm01',0,'fighting','100',5,0),
       (223,'megahorn','85','physical','Using its tough and impressive horn,
the user rams into the target
with no letup.','Inflicts regular damage.',2,'NA',0,'bug','120',10,0),
       (224,'dragon-breath','100','special','The user exhales a mighty gust that
inflicts damage. This may also leave the
target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',2,'tm24',0,'dragon','60',20,0),
       (225,'baton-pass','NA','status','The user switches places with a party
Pokémon in waiting and passes along
any stat changes.','User switches out, and the trainer selects a replacement Pokémon from the party.  Stat changes, confusion, and persistent move effects are passed along to the replacement Pokémon.

The following move effects are passed:

* aqua ring
* both the user''s and target''s effect of block, mean look, and spider web
* the curse effect of curse
* embargo
* focus energy or an activated lansat berry
* gastro acid
* ingrain
* being sapped by leech seed
* being targeted by lock on or mind reader
* magnet rise
* perish song''s counter
* power trick
* substitute, the doll''s HP is unchanged

The replacement Pokémon does not trigger effects that respond to Pokémon switching in.',2,'NA',0,'normal','NA',40,0),
       (226,'encore','100','status','The user compels the target
to keep using only the move
it last used for three turns.','The next 4–8 times (selected at random) the target attempts to move, it is forced to repeat its last used move.  If the selected move allows the trainer to select a target, an opponent will be selected at random each turn.  If the target is prevented from using the selected move by some other effect, struggle will be used instead.  This effect ends if the selected move runs out of PP.

If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, if it does not know the selected move, or if the selected move has 0 PP remaining, this move will fail.  If the target''s last used move was encore, mimic, mirror move, sketch, struggle, or transform, this move will fail.',2,'NA',0,'normal','NA',5,0),
       (227,'pursuit','100','physical','An attack move that inflicts double damage
if used on a target that is switching out
of battle.','Inflicts regular damage.  If the target attempts to switch out this turn before the user acts, this move hits the target before it leaves and has double power.

This effect can still hit a Pokémon that switches out when it has a substitute up or when an ally has used follow me.',2,'NA',0,'dark','40',20,0),
       (228,'rapid-spin','100','physical','A spin attack that can also eliminate
such moves as Bind, Wrap, Leech Seed,
and Spikes.','Inflicts regular damage.  Removes leech seed from the user, frees the user from bind, clamp, fire spin, magma storm, sand tomb, whirlpool, and wrap, and clears spikes, stealth rock, and toxic spikes from the user''s side of the field.  If this move misses or has no effect, its effect doesn''t activate.',2,'NA',0,'normal','50',40,0),
       (229,'sweet-scent','100','status','A sweet scent that harshly lowers opposing
Pokémon’s evasiveness. This also lures wild
Pokémon if used in places such as tall grass.','Lowers the target''s evasion by one stage.',2,'tm12',0,'normal','NA',20,0),
       (230,'iron-tail','75','physical','The target is slammed with a steel-hard
tail. This may also lower the target’s
Defense stat.','Inflicts regular damage.  Has a 30% chance to lower the target''s Defense by one stage.',2,'tm23',0,'steel','100',15,0),
       (231,'metal-claw','95','physical','The target is raked with steel claws.
This may also raise the user’s Attack stat.','Inflicts regular damage. Has a 10% chance to raise the user''s Attack one stage.',2,'NA',0,'steel','50',35,0),
       (232,'vital-throw','NA','physical','The user attacks last. In return, this throw
move never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',2,'NA',0,'fighting','70',10,-1),
       (233,'morning-sun','NA','status','The user restores its own HP.
The amount of HP regained varies
with the weather.','Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,'NA',0,'normal','NA',5,0),
       (234,'synthesis','NA','status','The user restores its own HP.
The amount of HP regained varies
with the weather.','Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,'NA',0,'grass','NA',5,0),
       (235,'moonlight','NA','status','The user restores its own HP.
The amount of HP regained varies
with the weather.','Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,'NA',0,'fairy','NA',5,0),
       (236,'hidden-power','100','special','A unique attack that varies in type
depending on the Pokémon using it.','Inflicts regular damage.  Power and type are determined by the user''s IVs.

Power is given by `x * 40 / 63 + 30`.  `x` is obtained by arranging bit 1 from the IV for each of Special Defense, Special Attack, Speed, Defense, Attack, and HP in that order.  (Bit 1 is 1 if the IV is of the form `4n + 2` or `4n + 3`.  `x` is then 64 * Special Defense IV bit 1, plus 32 * Special Attack IV bit 1, etc.)

Power is always between 30 and 70, inclusive.  Average power is 49.5.

Type is given by `y * 15 / 63`, where `y` is similar to `x` above, except constructed from bit 0.  (Bit 0 is 1 if the IV is odd.)  The result is looked up in the following table.

Value | Type
----: | --------
    0 | fighting
    1 | flying
    2 | poison
    3 | ground
    4 | rock
    5 | bug
    6 | ghost
    7 | steel
    8 | fire
    9 | water
   10 | grass
   11 | electric
   12 | psychic
   13 | ice
   14 | dragon
   15 | dark

This move thus cannot be normal.  Most other types have an equal 1/16 chance to be selected, given random IVs.  However, due to the flooring used here, bug, fighting, and grass appear 5/64 of the time, and dark only 1/64 of the time.',2,'tm10',0,'normal','60',15,0),
       (237,'cross-chop','80','physical','The user delivers a double chop with its
forearms crossed.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',2,'NA',1,'fighting','100',5,0),
       (238,'twister','100','special','The user whips up a vicious tornado
to tear at the opposing Pokémon.
This may also make them flinch.','Inflicts regular damage.  Has a 20% chance to make each target flinch.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.',2,'NA',0,'dragon','40',20,0),
       (239,'rain-dance','NA','status','The user summons a heavy rain
that falls for five turns,
powering up Water-type moves.','Changes the weather to rain for five turns, during which water moves inflict 50% extra damage, and fire moves inflict half damage.

If the user is holding damp rock, this effect lasts for eight turns.

thunder has 100% accuracy.  If the target has used detect or protect, thunder has a (100 - accuracy)% chance to break through the protection.

solar beam has half power.

moonlight, morning sun, and synthesis heal only 1/4 of the user''s max HP.

Pokémon with swift swim have doubled original Speed.

Pokémon with forecast become water.

Pokémon with dry skin heal 1/8 max HP, Pokémon with hydration are cured of major status effects, and Pokémon with rain dish heal 1/16 max HP at the end of each turn.',2,'tm18',0,'water','NA',5,0),
       (240,'sunny-day','NA','status','The user intensifies the sun
for five turns, powering up
Fire-type moves.','Changes the weather to sunshine for five turns, during which fire moves inflict 50% extra damage, and water moves inflict half damage.

If the user is holding heat rock, this effect lasts for eight turns.

Pokémon cannot become frozen.

thunder has 50% accuracy.

solar beam skips its charge turn.

moonlight, morning sun, and synthesis heal 2/3 of the user''s max HP.

Pokémon with chlorophyll have doubled original Speed.

Pokémon with forecast become fire.

Pokémon with leaf guard are not affected by major status effects.

Pokémon with flower gift change form, every Pokémon on their side of the field have their original Attack and Special Attack increased by 50%.

Pokémon with dry skin lose 1/8 max HP at the end of each turn.

Pokémon with solar power have their original Special Attack raised by 50% but lose 1/8 their max HP at the end of each turn.',2,'tm11',0,'fire','NA',5,0),
       (241,'crunch','100','physical','The user crunches up the target
with sharp fangs. This may also lower
the target’s Defense stat.','Inflicts regular damage.  Has a 20% chance to lower the target''s Defense by one stage.',2,'NA',0,'dark','80',15,0),
       (242,'mirror-coat','100','special','A retaliation move that counters any
special attack, inflicting double the
damage taken.','Targets the last opposing Pokémon to hit the user with a special move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by mirror move, nor selected by assist or metronome.',2,'NA',0,'psychic','NA',20,-5),
       (243,'psych-up','NA','status','The user hypnotizes itself into
copying any stat change made
by the target.','Discards the user''s stat changes and copies the target''s.

This move cannot be copied by mirror move.',2,'tm09',0,'normal','NA',10,0),
       (244,'extreme-speed','100','physical','The user charges the target at blinding
speed. This move always goes first.','Inflicts regular damage.',2,'NA',0,'normal','80',5,2),
       (245,'ancient-power','100','special','The user attacks with a prehistoric power.
This may also raise all the user’s stats
at once.','Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',2,'NA',0,'rock','60',5,0),
       (246,'shadow-ball','100','special','The user hurls a shadowy blob at the
target. This may also lower the target’s
Sp. Def stat.','Inflicts regular damage.  Has a 20% chance to lower the target''s Special Defense by one stage.',2,'tm30',0,'ghost','80',15,0),
       (247,'future-sight','100','special','Two turns after this move is used,
a hunk of psychic energy
attacks the target.','Inflicts typeless regular damage at the end of the third turn, starting with this one.  This move cannot score a critical hit.  If the target switches out, its replacement will be hit instead.  Damage is calculated at the time this move is used, stat changes and switching out during the delay won''t change the damage inflicted.  No move with this effect can be used against the same target again until after the end of the third turn.

This effect breaks through wonder guard.

If the target is protected by protect or detect on the turn this move is used, this move will fail.  However, the damage on the third turn will break through protection.

The damage is applied at the end of the turn, so it ignores endure and focus sash.

This move cannot be copied by mirror move.',2,'NA',0,'psychic','120',10,0),
       (248,'rock-smash','100','physical','The user attacks with a punch.
This may also lower the target’s Defense stat.
This move can also shatter rocks in the field.','Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',2,'tm08',0,'fighting','40',15,0),
       (249,'whirlpool','85','special','The user traps the target in a violent swirling
whirlpool for four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

If the target is in the first turn of dive, this move will hit with double power.',2,'hm05',0,'water','35',15,0),
       (250,'beat-up','100','physical','The user gets all party Pokémon to attack
the target. The more party Pokémon,
the greater the number of attacks.','Inflicts typeless regular damage.  Every Pokémon in the user''s party, excepting those that have fainted or have a major status effect, attacks the target.  Calculated stats are ignored, the base stats for the target and assorted attackers are used instead.  The random factor in the damage formula is not used.  dark Pokémon still get STAB.

This effect breaks through wonder guard.',2,'NA',0,'dark','NA',10,0),
       (251,'fake-out','100','physical','An attack that hits first and makes the
target flinch. It only works the first turn
the user is in battle.','Inflicts regular damage.  Causes the target to flinch.  Can only be used on the user''s first turn after entering the field.',3,'NA',0,'normal','40',10,3),
       (252,'uproar','100','special','The user attacks in an uproar for
three turns. During that time,
no one can fall asleep.','Inflicts regular damage.  User is forced to use this move for 2–5 turns, selected at random.  All Pokémon on the field wake up, and none can fall to sleep until the lock-in ends.

Pokémon cannot use rest during this effect.

This move cannot be selected by sleep talk.',3,'NA',0,'normal','90',10,0),
       (253,'stockpile','NA','status','The user charges up power and raises
both its Defense and Sp. Def stats.
The move can be used three times.','Raises the user''s Defense and Special Defense by one stage each.  Stores energy for use with spit up and swallow.  Up to three levels of energy can be stored, and all are lost if the user leaves the field.  Energy is still stored even if the stat boosts cannot be applied.

If the user uses baton pass, the stat boosts are passed as normal, but the stored energy is not.',3,'NA',0,'normal','NA',20,0),
       (254,'spit-up','100','special','The power stored using the move Stockpile
is released at once in an attack. The more
power is stored, the greater the move’s power.','Inflicts regular damage.  Power is equal to 100 times the amount of energy stored by stockpile.  Ignores the random factor in the damage formula.  Stored energy is consumed, and the user''s Defense and Special Defense are reset to what they would be if stockpile had not been used.  If the user has no energy stored, this move will fail.

This move cannot be copied by mirror move.',3,'NA',0,'normal','NA',10,0),
       (255,'swallow','NA','status','The power stored using the move Stockpile
is absorbed by the user to heal its HP.
Storing more power heals more HP.','Heals the user depending on the amount of energy stored by stockpile: 1/4 its max HP after one use, 1/2 its max HP after two uses, or fully after three uses.  Stored energy is consumed, and the user''s Defense and Special Defense are reset to what they would be if stockpile had not been used.  If the user has no energy stored, this move will fail.',3,'NA',0,'normal','NA',10,0),
       (256,'heat-wave','90','special','The user attacks by exhaling hot breath
on the opposing Pokémon. This may also leave
those Pokémon with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target.',3,'NA',0,'fire','95',10,0),
       (257,'hail','NA','status','The user summons a hailstorm lasting five
turns. It damages all Pokémon except the
Ice type.','Changes the weather to hail for five turns, during which non-ice Pokémon are damaged for 1/16 their max HP at the end of every turn.

If the user is holding icy rock, this effect lasts for eight turns.

blizzard has 100% accuracy.  If the target has used detect or protect, blizzard has a (100 - accuracy)% chance to break through the protection.

moonlight, morning sun, and synthesis heal only 1/4 of the user''s max HP.

Pokémon with snow cloak are exempt from this effect''s damage.',3,'tm07',0,'ice','NA',10,0),
       (258,'torment','100','status','The user torments and enrages the
target, making it incapable of using
the same move twice in a row.','Prevents the target from attempting to use the same move twice in a row.  When the target leaves the field, this effect ends.

If the target is forced to attempt a repeated move due to choice band, choice scarf, choice specs, disable, encore, taunt, only having PP remaining for one move, or any other effect, the target will use struggle instead.  The target is then free to use the forced move next turn, as it didn''t use that move this turn.',3,'tm41',0,'dark','NA',15,0),
       (259,'flatter','100','status','Flattery is used to confuse the target.
However, this also raises the target’s
Sp. Atk stat.','Raises the target''s Special Attack by one stage, then confuses it.',3,'NA',0,'dark','NA',15,0),
       (260,'will-o-wisp','85','status','The user shoots a sinister, bluish-white
flame at the target to inflict a burn.','Burns the target.',3,'tm61',0,'fire','NA',15,0),
       (261,'memento','100','status','The user faints when using this move.
In return, this harshly lowers the target’s
Attack and Sp. Atk stats.','Lowers the target''s Attack and Special Attack by two stages.  User faints.',3,'NA',0,'dark','NA',10,0),
       (262,'facade','100','physical','An attack move that doubles its power if
the user is poisoned, burned, or
has paralysis.','Inflicts regular damage.  If the user is burned, paralyzed, or poisoned, this move has double power.',3,'tm42',0,'normal','70',20,0),
       (263,'focus-punch','100','physical','The user focuses its mind before
launching a punch. This move fails
if the user is hit before it is used.','Inflicts regular damage.  If the user takes damage this turn before hitting, this move will fail.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',3,'tm01',0,'fighting','150',20,-3),
       (264,'smelling-salts','100','physical','This attack inflicts double damage on a
target with paralysis. This also cures the
target’s paralysis, however.','Inflicts regular damage.  If the target is paralyzed, this move has double power, and the target is cured of its paralysis.',3,'NA',0,'normal','70',10,0),
       (265,'follow-me','NA','status','The user draws attention to itself,
making all targets take aim
only at the user.','Until the end of this turn, any moves that opposing Pokémon target solely at the user''s ally will instead target the user.  If both Pokémon on the same side of the field use this move on the same turn, the Pokémon that uses it last will become the target.

This effect takes priority over lightning rod and storm drain.

If the user''s ally switches out, opposing Pokémon may still hit it with pursuit.

This move cannot be selected by assist or metronome.',3,'NA',0,'normal','NA',20,2),
       (266,'nature-power','NA','status','An attack that makes use of nature’s
power. Its effects vary depending on the
user’s environment.','Uses another move chosen according to the terrain.

Terrain                   | Selected move
------------------------- | ------------------
Building                  | tri attack
Cave                      | rock slide
Deep water                | hydro pump
Desert                    | earthquake
Grass                     | seed bomb
Mountain                  | rock slide
Road                      | earthquake
Shallow water             | hydro pump
Snow                      | blizzard
Tall grass                | seed bomb
electric terrain | thunderbolt
grassy terrain   | energy ball
misty terrain    | moonblast

In Pokémon Battle Revolution:

Terrain        | Selected move
-------------- | ------------------
Courtyard      | tri attack
Crystal        | rock slide
Gateway        | hydro pump
Magma          | rock slide
Main Street    | tri attack
Neon           | tri attack
Stargazer      | rock slide
Sunny Park     | seed bomb
Sunset         | earthquake
Waterfall      | seed bomb

This move cannot be copied by mirror move.',3,'tm96',0,'normal','NA',20,0),
       (267,'charge','NA','status','The user boosts the power of the Electric
move it uses on the next turn. This also
raises the user’s Sp. Def stat.','Raises the user''s Special Defense by one stage.  If the user uses an electric move next turn, its power will be doubled.',3,'NA',0,'electric','NA',20,0),
       (268,'taunt','100','status','The target is taunted into a rage that
allows it to use only attack moves
for three turns.','Target is forced to only use damaging moves for the next 3–5 turns, selected at random.  Moves that select other moves not known in advance do not count as damaging.

assist, copycat, me first, metronome, mirror move, and sleep talk do not directly inflict damage and thus may not be used.

bide, counter, endeavor, metal burst, and mirror coat are allowed.',3,'tm12',0,'dark','NA',20,0),
       (269,'helping-hand','NA','status','The user assists an ally by boosting
the power of that ally’s attack.','Boosts the power of the target''s moves by 50% until the end of this turn.

This move cannot be copied by mirror move, nor selected by assist or metronome.',3,'NA',0,'normal','NA',20,5),
       (270,'trick','100','status','The user catches the target off guard
and swaps its held item with its own.','User and target permanently swap held items.  Works even if one of the Pokémon isn''t holding anything.  If either Pokémon is holding mail, this move will fail.

If either Pokémon has multitype or sticky hold, this move will fail.

If this move results in a Pokémon obtaining choice band, choice scarf, or choice specs, and that Pokémon was the latter of the pair to move this turn, then the move it used this turn becomes its chosen forced move.  This applies even if both Pokémon had a choice item before this move was used.  If the first of the two Pokémon gains a choice item, it may select whatever choice move it wishes next turn.

Neither the user nor the target can recover its item with recycle.

This move cannot be selected by assist or metronome.',3,'NA',0,'psychic','NA',10,0),
       (271,'role-play','NA','status','The user mimics the target completely,
copying the target’s natural Ability.','User''s ability is replaced with the target''s until the user leaves the field.  Ignores accuracy and evasion modifiers.

If the target has flower gift, forecast, illusion, imposter, multitype, stance change, trace, wonder guard, or zen mode, this move will fail.

This move cannot be copied by mirror move.',3,'NA',0,'psychic','NA',10,0),
       (272,'wish','NA','status','One turn after this move is used,
the target’s HP is restored by
half the user’s max HP.','At the end of the next turn, user will be healed for half its max HP.  If the user is switched out, its replacement will be healed instead for half of the user''s max HP.  If the user faints or is forcefully switched by roar or whirlwind, this effect will not activate.',3,'NA',0,'normal','NA',10,0),
       (273,'assist','NA','status','The user hurriedly and randomly
uses a move among those known
by other Pokémon in the party.','Uses a move from another Pokémon in the user''s party, both selected at random.  Moves from fainted Pokémon can be used.  If there are no eligible Pokémon or moves, this move will fail.

This move will not select assist, chatter, circle throw, copycat, counter, covet, destiny bond, detect, dig, dive, dragon tail, endure, feint, fly focus punch, follow me, helping hand, me first, metronome, mimic, mirror coat, mirror move, phantom force protect, quick guard, roar shadow force, sketch, sleep talk, snatch, struggle, switcheroo, thief, trick, whirlwind, or wide guard.

This move cannot be copied by mirror move, nor selected by metronome or sleep talk.',3,'NA',0,'normal','NA',20,0),
       (274,'ingrain','NA','status','The user lays roots that restore
its HP on every turn. Because it is
rooted, it can’t switch out.','Prevents the user from switching out.  User regains 1/16 of its max HP at the end of every turn.  If the user was immune to ground attacks, it will now take normal damage from them.

roar and whirlwind will not affect the user.  The user cannot use magnet rise.

The user may still use u turn to leave the field.

This effect can be passed with baton pass.',3,'NA',0,'grass','NA',20,0),
       (275,'superpower','100','physical','The user attacks the target with great
power. However, this also lowers the
user’s Attack and Defense stats.','Inflicts regular damage, then lowers the user''s Attack and Defense by one stage each.',3,'NA',0,'fighting','120',5,0),
       (276,'magic-coat','NA','status','A barrier reflects back to the target
moves like Leech Seed and moves
that damage status.','The first non-damaging move targeting the user this turn that inflicts major status effects, stat changes, or trapping effects will be reflected at its user.

defog, memento, and teeter dance are not reflected.

attract, flatter, gastro acid, leech seed, swagger, worry seed, and yawn are reflected.

This move cannot be copied by mirror move.',3,'NA',0,'psychic','NA',15,4),
       (277,'recycle','NA','status','The user recycles a held item that
has been used in battle so it can be
used again.','User recovers the last item consumed by the user or a Pokémon in its position on the field.  The item must be used again before it can be recovered by this move again.  If the user is holding an item, this move fails.

Items taken or given away by covet, knock off, switcheroo, thief, or trick may not be recovered.',3,'tm67',0,'normal','NA',10,0),
       (278,'revenge','100','physical','An attack move that inflicts double the
damage if the user has been hurt by the
opponent in the same turn.','Inflicts regular damage.  If the target damaged the user this turn and was the last to do so, this move has double power.

pain split does not count as damaging the user.',3,'NA',0,'fighting','60',10,-4),
       (279,'brick-break','100','physical','The user attacks with a swift chop. It
can also break barriers, such as Light
Screen and Reflect.','Destroys any light screen or reflect on the target''s side of the field, then inflicts regular damage.',3,'tm31',0,'fighting','75',15,0),
       (280,'yawn','NA','status','The user lets loose a huge yawn that
lulls the target into falling asleep
on the next turn.','Puts the target to sleep at the end of the next turn.  Ignores accuracy and evasion modifiers.  If the target leaves the field, this effect is canceled.  If the target has a status effect when this move is used, this move will fail.

If the target is protected by safeguard when this move is used, this move will fail.

insomnia and vital spirit prevent the sleep if the target has either at the end of the next turn, but will not cause this move to fail on use.',3,'NA',0,'normal','NA',10,0),
       (281,'knock-off','100','physical','The user slaps down the target’s held item, and
that item can’t be used in that battle. The move
does more damage if the target has a held item.','Inflicts regular damage.  Target loses its held item.

Neither the user nor the target can recover its item with recycle.

If the target has multitype or sticky hold, it will take damage but not lose its item.',3,'NA',0,'dark','65',20,0),
       (282,'endeavor','100','physical','An attack move that cuts down the
target’s HP to equal the user’s HP.','Inflicts exactly enough damage to lower the target''s HP to equal the user''s.  If the target''s HP is not higher than the user''s, this move has no effect.  Type immunity applies, but other type effects are ignored.  This effect counts as damage for moves that respond to damage.',3,'NA',0,'normal','NA',5,0),
       (283,'eruption','100','special','The user attacks opposing Pokémon with
explosive fury. The lower the user’s HP,
the lower the move’s power.','Inflicts regular damage.  Power increases with the user''s remaining HP and is given by `150 * HP / max HP`, to a maximum of 150 when the user has full HP.',3,'NA',0,'fire','150',5,0),
       (284,'skill-swap','NA','status','The user employs its psychic power to
exchange Abilities with the target.','User and target switch abilities.  Ignores accuracy and evasion modifiers.

If either Pokémon has multitype or wonder guard, this move will fail.',3,'tm48',0,'psychic','NA',10,0),
       (285,'imprison','NA','status','If opposing Pokémon know any move
also known by the user,
they are prevented from using it.','Prevents any Pokémon on the opposing side of the field from using any move the user knows until the user leaves the field.  This effect is live, if the user obtains new moves while on the field, these moves become restricted.  If no opposing Pokémon knows any of the user''s moves when this move is used, this move will fail.',3,'NA',0,'psychic','NA',10,0),
       (286,'refresh','NA','status','The user rests to cure itself of a
poisoning, burn, or paralysis.','Removes a burn, paralysis, or poison from the user.',3,'NA',0,'normal','NA',20,0),
       (287,'grudge','NA','status','If the user faints, the user’s grudge
fully depletes the PP of the opponent’s
move that knocked it out.','If the user faints before it next acts, the move that fainted it will have its PP dropped to 0.  End-of-turn damage does not trigger this effect.',3,'NA',0,'ghost','NA',5,0),
       (288,'snatch','NA','status','The user steals the effects of any attempts
to use a healing or stat-changing move.','The next time a Pokémon uses a beneficial move on itself or itself and its ally this turn, the user of this move will steal the move and use it itself.  Moves which may be stolen by this move are identified by the "snatchable" flag.

If two Pokémon use this move on the same turn, the faster Pokémon will steal the first beneficial move, and the slower Pokémon will then steal it again—thus, only the slowest Pokémon using this move ultimately gains a stolen move''s effect.

If the user steals psych up, it will target the Pokémon that used psych up.  If the user was the original target of psych up, and the Pokémon that originally used it''s affected by pressure, it will only lose 1 PP.

This move cannot be copied by mirror move, nor selected by assist or metronome.',3,'tm49',0,'dark','NA',10,4),
       (289,'secret-power','100','physical','An attack whose additional effects
depend upon where it was used.
Can also be used to make a Secret Base.','Inflicts regular damage.  Has a 30% chance to inflict an effect chosen according to the terrain.

Terrain        | Effect
-------------- | -------------------------------------------------------------
Building       | Paralyzes target
Cave           | Makes target flinch
Deep water     | Lowers target''s Attack by one stage
Desert         | Lowers target''s accuracy by one stage
Grass          | Puts target to sleep
Mountain       | Makes target flinch
Road           | Lowers target''s accuracy by one stage
Shallow water  | Lowers target''s Attack by one stage
Snow           | Freezes target
Tall grass     | Puts target to sleep

In Pokémon Battle Revolution:

Terrain        | Effect
-------------- | -------------------------------------------------------------
Courtyard      | Paralyzes target
Crystal        | Makes target flinch
Gateway        | Lowers target''s Attack by one stage
Magma          | Makes target flinch
Main Street    | Paralyzes target
Neon           | Paralyzes target
Stargazer      | Makes target flinch
Sunny Park     | Puts target to sleep
Sunset         | Lowers target''s accuracy by one stage
Waterfall      | Puts target to sleep',3,'tm43',0,'normal','70',20,0),
       (290,'dive','100','physical','Diving on the first turn, the user floats up
and attacks on the next turn.
It can be used to dive deep in the ocean.','Inflicts regular damage.  User dives underwater for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, surf, and whirlpool still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be selected by sleep talk.',3,'hm06',0,'water','80',10,0),
       (291,'arm-thrust','100','physical','The user lets loose a flurry of open-palmed
arm thrusts that hit two to five times in
a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,'NA',0,'fighting','15',20,0),
       (292,'camouflage','NA','status','The user’s type is changed depending on
its environment, such as at water’s edge,
in grass, or in a cave.','User''s type changes according to the terrain.

Terrain        | New type
-------------- | --------------
Building       | normal
Cave           | rock
Desert         | ground
Grass          | grass
Mountain       | rock
Ocean          | water
Pond           | water
Road           | ground
Snow           | ice
Tall grass     | grass

In Pokémon Battle Revolution:

Terrain        | New type
-------------- | --------------
Courtyard      | normal
Crystal        | rock
Gateway        | water
Magma          | rock
Main Street    | normal
Neon           | normal
Stargazer      | rock
Sunny Park     | grass
Sunset         | ground
Waterfall      | grass',3,'NA',0,'normal','NA',20,0),
       (293,'tail-glow','NA','status','The user stares at flashing lights to
focus its mind, drastically raising its
Sp. Atk stat.','Raises the user''s Special Attack by three stages.',3,'NA',0,'bug','NA',20,0),
       (294,'luster-purge','100','special','The user lets loose a damaging burst
of light. This may also lower the target’s
Sp. Def stat.','Inflicts regular damage.  Has a 50% chance to lower the target''s Special Defense by one stage.',3,'NA',0,'psychic','70',5,0),
       (295,'mist-ball','100','special','A mist-like flurry of down envelops and
damages the target. This may also lower
the target’s Sp. Atk stat.','Inflicts regular damage.  Has a 50% chance to lower the target''s Special Attack by one stage.',3,'NA',0,'psychic','70',5,0),
       (296,'feather-dance','100','status','The user covers the target’s body with a
mass of down that harshly lowers its
Attack stat.','Lowers the target''s Attack by two stages.',3,'NA',0,'flying','NA',15,0),
       (297,'teeter-dance','100','status','The user performs a wobbly dance that
confuses the Pokémon around it.','Confuses all targets.',3,'NA',0,'normal','NA',20,0),
       (298,'blaze-kick','90','physical','The user launches a kick that lands a
critical hit more easily.
This may also leave the target with a burn.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to burn the target.',3,'NA',1,'fire','85',10,0),
       (299,'mud-sport','NA','status','The user covers itself with mud.
This weakens Electric-type moves
for five turns.','electric moves inflict half damage, regardless of target.  If the user leaves the field, this effect ends.',3,'NA',0,'ground','NA',15,0),
       (300,'ice-ball','90','physical','The user continually rolls into the target
over five turns. It becomes stronger
each time it hits.','Inflicts regular damage.  User is forced to use this move for five turns.  Power doubles every time this move is used in succession to a maximum of 16x, and resets to normal after the lock-in ends.  If this move misses or becomes unusable, the lock-in ends.

If the user has used defense curl since entering the field, this move has double power.',3,'NA',0,'ice','30',20,0),
       (301,'needle-arm','100','physical','The user attacks by wildly swinging its
thorny arms. This may also make the
target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',3,'NA',0,'grass','60',15,0),
       (302,'slack-off','NA','status','The user slacks off, restoring its own HP
by up to half of its max HP.','Heals the user for half its max HP.',3,'NA',0,'normal','NA',10,0),
       (303,'hyper-voice','100','special','The user lets loose a horribly echoing
shout with the power to inflict damage.','Inflicts regular damage.',3,'NA',0,'normal','90',10,0),
       (304,'poison-fang','100','physical','The user bites the target with toxic
fangs. This may also leave the target
badly poisoned.','Inflicts regular damage.  Has a 50% chance to badly poison the target.',3,'NA',0,'poison','50',15,0),
       (305,'crush-claw','95','physical','The user slashes the target with hard
and sharp claws. This may also lower
the target’s Defense stat.','Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',3,'NA',0,'normal','75',10,0),
       (306,'blast-burn','90','special','The target is razed by a fiery explosion.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,'NA',0,'fire','150',5,0),
       (307,'hydro-cannon','90','special','The target is hit with a watery blast.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,'NA',0,'water','150',5,0),
       (308,'meteor-mash','90','physical','The target is hit with a hard punch fired
like a meteor. This may also raise
the user’s Attack stat.','Inflicts regular damage. Has a 20% chance to raise the user''s Attack one stage.',3,'NA',0,'steel','90',10,0),
       (309,'astonish','100','physical','The user attacks the target while shouting
in a startling fashion.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',3,'NA',0,'ghost','30',15,0),
       (310,'weather-ball','100','special','An attack move that varies in power and
type depending on the weather.','Inflicts regular damage.  If a weather move is active, this move has double power, and its type becomes the type of the weather move.  shadow sky is typeless for the purposes of this move.',3,'NA',0,'normal','50',10,0),
       (311,'aromatherapy','NA','status','The user releases a soothing scent that
heals all status conditions affecting
the user’s party.','Removes major status effects and confusion from every Pokémon in the user''s party.',3,'NA',0,'grass','NA',5,0),
       (312,'fake-tears','100','status','The user feigns crying to fluster
the target, harshly lowering its
Sp. Def stat.','Lowers the target''s Special Defense by two stages.',3,'NA',0,'dark','NA',20,0),
       (313,'air-cutter','95','special','The user launches razor-like wind
to slash the opposing Pokémon.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',3,'NA',1,'flying','60',25,0),
       (314,'overheat','90','special','The user attacks the target at full power.
The attack’s recoil harshly lowers the
user’s Sp. Atk stat.','Inflicts regular damage, then lowers the user''s Special Attack by two stages.',3,'tm50',0,'fire','130',5,0),
       (315,'odor-sleuth','NA','status','Enables a Ghost-type target to be hit by
Normal- and Fighting-type attacks. This also
enables an evasive target to be hit.','Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A ghost under this effect takes normal damage from normal and fighting moves.  This move itself ignores accuracy and evasion modifiers.',3,'NA',0,'normal','NA',40,0),
       (316,'rock-tomb','95','physical','Boulders are hurled at the target. This also
lowers the target’s Speed stat by preventing
its movement.','Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',3,'tm39',0,'rock','60',15,0),
       (317,'silver-wind','100','special','The target is attacked with powdery
scales blown by wind.
This may also raise all the user’s stats.','Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',3,'tm62',0,'bug','60',5,0),
       (318,'metal-sound','85','status','A horrible sound like scraping metal
harshly lowers the target’s
Sp. Def stat.','Lowers the target''s Special Defense by two stages.',3,'NA',0,'steel','NA',40,0),
       (319,'grass-whistle','55','status','The user plays a pleasant melody that
lulls the target into a deep sleep.','Puts the target to sleep.',3,'NA',0,'grass','NA',15,0),
       (320,'tickle','100','status','The user tickles the target into laughing,
reducing its Attack and Defense stats.','Lowers the target''s Attack and Defense by one stage.',3,'NA',0,'normal','NA',20,0),
       (321,'cosmic-power','NA','status','The user absorbs a mystical power from
space to raise its Defense and
Sp. Def stats.','Raises the user''s Defense and Special Defense by one stage.',3,'NA',0,'psychic','NA',20,0),
       (322,'water-spout','100','special','The user spouts water to damage opposing
Pokémon. The lower the user’s HP,
the lower the move’s power.','Inflicts regular damage.  Power increases with the user''s remaining HP and is given by `150 * HP / max HP`, to a maximum of 150 when the user has full HP.',3,'NA',0,'water','150',5,0),
       (323,'signal-beam','100','special','The user attacks with a sinister beam of
light. This may also confuse the target.','Inflicts regular damage.  Has a 10% chance to confuse the target.',3,'NA',0,'bug','75',15,0),
       (324,'shadow-punch','NA','physical','The user throws a punch from the shadows.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,'NA',0,'ghost','60',20,0),
       (325,'extrasensory','100','special','The user attacks with an odd,
unseeable power.
This may also make the target flinch.','Inflicts regular damage.  Has a 10% chance to make the target flinch.',3,'NA',0,'psychic','80',20,0),
       (326,'sky-uppercut','90','physical','The user attacks the target with an
uppercut thrown skyward with force.','Inflicts regular damage.

This move can hit Pokémon under the effect of bounce, fly, or sky drop.',3,'NA',0,'fighting','85',15,0),
       (327,'sand-tomb','85','physical','The user traps the target inside a harshly
raging sandstorm for four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',3,'NA',0,'ground','35',15,0),
       (328,'sheer-cold','30','special','The target is attacked with a blast of
absolute-zero cold. The target faints
instantly if this attack hits.','Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',3,'NA',0,'ice','NA',5,0),
       (329,'muddy-water','85','special','The user attacks by shooting muddy water
at the opposing Pokémon.
This may also lower their accuracy.','Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',3,'NA',0,'water','90',10,0),
       (330,'bullet-seed','100','physical','The user forcefully shoots seeds at the
target two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,'tm09',0,'grass','25',30,0),
       (331,'aerial-ace','NA','physical','The user confounds the target with speed,
then slashes.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,'tm40',0,'flying','60',20,0),
       (332,'icicle-spear','100','physical','The user launches sharp icicles at the
target two to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,'NA',0,'ice','25',30,0),
       (333,'iron-defense','NA','status','The user hardens its body’s surface
like iron, sharply raising its
Defense stat.','Raises the user''s Defense by two stages.',3,'NA',0,'steel','NA',15,0),
       (334,'block','NA','status','The user blocks the target’s way with arms
spread wide to prevent escape.','The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',3,'NA',0,'normal','NA',5,0),
       (335,'howl','NA','status','The user howls loudly to raise its spirit,
which raises its Attack stat.','Raises the user''s Attack by one stage.',3,'NA',0,'normal','NA',40,0),
       (336,'dragon-claw','100','physical','The user slashes the target with huge,
sharp claws.','Inflicts regular damage.',3,'tm02',0,'dragon','80',15,0),
       (337,'frenzy-plant','90','special','The user slams the target with
an enormous tree.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,'NA',0,'grass','150',5,0),
       (338,'bulk-up','NA','status','The user tenses its muscles to bulk up
its body, raising both its Attack and
Defense stats.','Raises the user''s Attack and Defense by one stage each.',3,'tm08',0,'fighting','NA',20,0),
       (339,'bounce','85','physical','The user bounces up high, then drops on
the target on the second turn. This may
also leave the target with paralysis.','Inflicts regular damage.  User bounces high into the air for one turn, becoming immune to attack, and hits on the second turn.  Has a 30% chance to paralyze the target.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, and twister still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.',3,'NA',0,'flying','85',5,0),
       (340,'mud-shot','95','special','The user attacks by hurling a blob of mud
at the target.
This also lowers the target’s Speed stat.','Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',3,'NA',0,'ground','55',15,0),
       (341,'poison-tail','100','physical','The user hits the target with its tail.
This may also poison the target.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to poison the target.',3,'NA',1,'poison','50',25,0),
       (342,'covet','100','physical','The user endearingly approaches
the target, then steals the target’s
held item.','Inflicts regular damage.  If the target is holding an item and the user is not, the user will permanently take the item.  Damage is still inflicted if an item cannot be taken.

Pokémon with sticky hold or multitype are immune to the item theft effect.

The target cannot recover its item with recycle.

This move cannot be selected by assist or metronome.',3,'NA',0,'normal','60',25,0),
       (343,'volt-tackle','100','physical','The user electrifies itself, then charges.
This also damages the user quite a lot.
This may leave the target with paralysis.','Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.  Has a 10% chance to paralyze the target.',3,'NA',0,'electric','120',15,0),
       (344,'magical-leaf','NA','special','The user scatters curious leaves
that chase the target.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,'NA',0,'grass','60',20,0),
       (345,'water-sport','NA','status','The user soaks itself with water.
This weakens Fire-type moves
for five turns.','fire moves inflict half damage, regardless of target.  If the user leaves the field, this effect ends.',3,'NA',0,'water','NA',15,0),
       (346,'calm-mind','NA','status','The user quietly focuses its mind and
calms its spirit to raise its Sp. Atk and
Sp. Def stats.','Raises the user''s Special Attack and Special Defense by one stage each.',3,'tm04',0,'psychic','NA',20,0),
       (347,'leaf-blade','100','physical','The user handles a sharp leaf like a
sword and attacks by cutting its target.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',3,'NA',1,'grass','90',15,0),
       (348,'dragon-dance','NA','status','The user vigorously performs a mystic,
powerful dance that raises its Attack and
Speed stats.','Raises the user''s Attack and Speed by one stage each.',3,'NA',0,'dragon','NA',20,0),
       (349,'rock-blast','90','physical','The user hurls hard rocks at the target.
Two to five rocks are launched in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,'NA',0,'rock','25',10,0),
       (350,'shock-wave','NA','special','The user strikes the target with a quick
jolt of electricity.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,'tm34',0,'electric','60',20,0),
       (351,'water-pulse','100','special','The user attacks the target with
a pulsing blast of water.
This may also confuse the target.','Inflicts regular damage.  Has a 20% chance to confuse the target.',3,'tm03',0,'water','60',20,0),
       (352,'doom-desire','100','special','Two turns after this move is used, the
user blasts the target with a
concentrated bundle of light.','Inflicts typeless regular damage at the end of the third turn, starting with this one.  This move cannot score a critical hit.  If the target switches out, its replacement will be hit instead.  Damage is calculated at the time this move is used, stat changes and switching out during the delay won''t change the damage inflicted.  No move with this effect can be used against the same target again until after the end of the third turn.

This effect breaks through wonder guard.

If the target is protected by protect or detect on the turn this move is used, this move will fail.  However, the damage on the third turn will break through protection.

The damage is applied at the end of the turn, so it ignores endure and focus sash.

This move cannot be copied by mirror move.',3,'NA',0,'steel','140',5,0),
       (353,'psycho-boost','90','special','The user attacks the target at full power.
The attack’s recoil harshly lowers the
user’s Sp. Atk stat.','Inflicts regular damage, then lowers the user''s Special Attack by two stages.',3,'NA',0,'psychic','140',5,0),
       (354,'roost','NA','status','The user lands and rests its body.
It restores the user’s HP by up to
half of its max HP.','Heals the user for half its max HP.  If the user is flying, its flying type is ignored until the end of this turn.',4,'tm19',0,'flying','NA',10,0),
       (355,'gravity','NA','status','Gravity is intensified for five turns,
making moves involving flying unusable
and negating Levitate.','For five turns (including this one), all immunities to ground moves are disabled.  For the duration of this effect, the evasion of every Pokémon on the field is lowered by two stages.  Cancels the effects of bounce, fly, and sky drop.

Specifically, flying Pokémon and those with levitate or that have used magnet rise are no longer immune to ground attacks, arena trap, spikes, or toxic spikes.

bounce, fly, sky drop, high jump kick, jump kick, and splash cannot be used while this move is in effect.

*Bug*: If this move is used during a double or triple battle while Pokémon are under the effect of sky drop, Sky Drop''s effect is not correctly canceled on its target, and it remains high in the air indefinitely.  As Sky Drop prevents the target from acting, the only way to subsequently remove it from the field is to faint it.',4,'NA',0,'psychic','NA',5,0),
       (356,'miracle-eye','NA','status','Enables a Dark-type target to be hit by
Psychic-type attacks. This also enables
an evasive target to be hit.','Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A dark Pokémon under this effect takes normal damage from psychic moves.  This move itself ignores accuracy and evasion modifiers.',4,'NA',0,'psychic','NA',40,0),
       (357,'wake-up-slap','100','physical','This attack inflicts big damage on a
sleeping target. This also wakes the target
up, however.','Inflicts regular damage.  If the target is sleeping, this move has double power, and the target wakes up.',4,'NA',0,'fighting','70',10,0),
       (358,'hammer-arm','90','physical','The user swings and hits with its strong
and heavy fist.
It lowers the user’s Speed, however.','Inflicts regular damage, then lowers the user''s Speed by one stage.',4,'NA',0,'fighting','100',10,0),
       (359,'gyro-ball','100','physical','The user tackles the target with a high-speed
spin. The slower the user compared to the
target, the greater the move’s power.','Inflicts regular damage.  Power increases with the target''s current Speed compared to the user, given by `1 + 25 * target Speed / user Speed`, capped at 150.',4,'tm74',0,'steel','NA',5,0),
       (360,'healing-wish','NA','status','The user faints. In return, the Pokémon
taking its place will have its HP restored
and status conditions cured.','User faints.  Its replacement''s HP is fully restored, and any major status effect is removed.  If the replacement Pokémon is immediately fainted by a switch-in effect, the next replacement is healed by this move instead.',4,'NA',0,'psychic','NA',10,0),
       (361,'brine','100','special','If the target’s HP is half or less,
this attack will hit with double
the power.','Inflicts regular damage.  If the target has less than half its max HP remaining, this move has double power.',4,'tm55',0,'water','65',10,0),
       (362,'natural-gift','100','physical','The user draws power to attack by using
its held Berry.
The Berry determines the move’s type and power.','Inflicts regular damage.  Power and type are determined by the user''s held berry.  The berry is consumed.  If the user is not holding a berry, this move will fail.',4,'tm83',0,'normal','NA',15,0),
       (363,'feint','100','physical','An attack that hits a target using
Protect or Detect. This also lifts
the effects of those moves.','Inflicts regular damage.  Removes the effects of detect or protect from the target before hitting.

This move cannot be copied by mirror move, nor selected by assist or metronome.',4,'NA',0,'normal','30',10,2),
       (364,'pluck','100','physical','The user pecks the target. If the target
is holding a Berry, the user eats it and
gains its effect.','Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.',4,'tm88',0,'flying','60',20,0),
       (365,'tailwind','NA','status','The user whips up a turbulent whirlwind
that ups the Speed stat of the user and
its allies for four turns.','For the next three turns, all Pokémon on the user''s side of the field have their original Speed doubled.  This effect remains if the user leaves the field.',4,'NA',0,'flying','NA',15,0),
       (366,'acupressure','NA','status','The user applies pressure to stress
points, sharply boosting one of its or
its allies’ stats.','Raises one of the target''s stats by two stages.  The raised stat is chosen at random from any stats that can be raised by two stages.  If no stat is eligible, this move will fail.

If the target has a substitute, this move will have no effect, even if the user is the target.

This move cannot be copied by mirror move.',4,'NA',0,'normal','NA',30,0),
       (367,'metal-burst','100','physical','The user retaliates with much greater
power against the opponent
that last inflicted damage on it.','Targets the last opposing Pokémon to hit the user with a damaging move this turn.  Inflicts 1.5× the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.',4,'NA',0,'steel','NA',10,0),
       (368,'u-turn','100','physical','After making its attack, the user
rushes back to switch places with
a party Pokémon in waiting.','Inflicts regular damage, then the user immediately switches out, and the trainer selects a replacement Pokémon from the party.  If the target faints from this attack, the user''s trainer selects the new Pokémon to send out first.  If the user is the last Pokémon in its party that can battle, it will not switch out.

The user may be hit by pursuit when it switches out, if it has been targeted and pursuit has not yet been used.

This move may be used even if the user is under the effect of ingrain.  ingrain''s effect will end.',4,'tm89',0,'bug','70',20,0),
       (369,'close-combat','100','physical','The user fights the target up close
without guarding itself. This also lowers
the user’s Defense and Sp. Def stats.','Inflicts regular damage, then lowers the user''s Defense and Special Defense by one stage each.',4,'NA',0,'fighting','120',5,0),
       (370,'payback','100','physical','The user stores power, then attacks.
If the user moves after the target,
this attack’s power will be doubled.','Inflicts regular damage.  If the target uses a move or switches out this turn before this move is used, this move has double power.',4,'tm66',0,'dark','50',10,0),
       (371,'assurance','100','physical','If the target has already taken some
damage in the same turn, this attack’s
power is doubled.','Inflicts regular damage.  If the target takes damage this turn for any reason before this move is used, this move has double power.',4,'NA',0,'dark','60',10,0),
       (372,'embargo','100','status','This move prevents the target from
using its held item. Its Trainer is
also prevented from using items on it.','Target cannot use its held item for five turns.  If the target leaves the field, this effect ends.

If a Pokémon under this effect uses bug bite or pluck on a Pokémon holding a berry, the berry is destroyed but not used.  If a Pokémon under this effect uses fling, it will fail.

This effect is passed by baton pass.',4,'tm63',0,'dark','NA',15,0),
       (373,'fling','100','physical','The user flings its held item at the target
to attack. This move’s power and effects
depend on the item.','Inflicts regular damage.  Power and type are determined by the user''s held item.  The item is consumed.  If the user is not holding an item, or its item has no set type and power, this move will fail.

This move ignores sticky hold.

If the user is under the effect of embargo, this move will fail.',4,'tm56',0,'dark','NA',10,0),
       (374,'psycho-shift','100','status','Using its psychic power of suggestion,
the user transfers its status conditions
to the target.','If the user has a major status effect and the target does not, the user''s status is transferred to the target.',4,'NA',0,'psychic','NA',10,0),
       (375,'trump-card','NA','special','The fewer PP this move has,
the greater its power.','Inflicts regular damage.  Power is determined by the PP remaining for this move, after its PP cost is deducted.  Ignores accuracy and evasion modifiers.

PP remaining | Power
------------ | ----:
4 or more    |    40
3            |    50
2            |    60
1            |    80
0            |   200

If this move is activated by another move, the activating move''s PP is used to calculate power.',4,'NA',0,'normal','NA',5,0),
       (376,'heal-block','100','status','For five turns, the user prevents the
opposing team from using any moves,
Abilities, or held items that recover HP.','For the next five turns, the target may not use any moves that only restore HP, and move effects that heal the target are disabled.  Moves that steal HP may still be used, but will only inflict damage and not heal the target.',4,'NA',0,'psychic','NA',15,0),
       (377,'wring-out','100','special','The user powerfully wrings the target.
The more HP the target has, the greater
the move’s power.','Inflicts regular damage.  Power directly relates to the target''s relative remaining HP, given by `1 + 120 * current HP / max HP`, to a maximum of 121.',4,'NA',0,'normal','NA',5,0),
       (378,'power-trick','NA','status','The user employs its psychic power to
switch its Attack with its Defense stat.','The user''s original Attack and Defense are swapped.

This effect is passed on by baton pass.',4,'NA',0,'psychic','NA',10,0),
       (379,'gastro-acid','100','status','The user hurls up its stomach acids on
the target. The fluid eliminates the effect
of the target’s Ability.','The target''s ability is disabled as long as it remains on the field.

This effect is passed on by baton pass.',4,'NA',0,'poison','NA',10,0),
       (380,'lucky-chant','NA','status','The user chants an incantation toward
the sky, preventing opposing Pokémon
from landing critical hits.','For five turns, opposing Pokémon cannot score critical hits.',4,'NA',0,'normal','NA',30,0),
       (381,'me-first','NA','status','The user cuts ahead of the target to steal and
use the target’s intended move with greater power.
This move fails if it isn’t used first.','If the target has selected a damaging move this turn, the user will copy that move and use it against the target, with a 50% increase in power.

If the target moves before the user, this move will fail.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',4,'NA',0,'normal','NA',20,0),
       (382,'copycat','NA','status','The user mimics the move used immediately
before it. The move fails if no other move
has been used yet.','Uses the last move that was used successfully by any Pokémon, including the user.

This move cannot copy itself, nor roar nor whirlwind.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',4,'NA',0,'normal','NA',20,0),
       (383,'power-swap','NA','status','The user employs its psychic power to
switch changes to its Attack and
Sp. Atk stats with the target.','User swaps its Attack and Special Attack stat modifiers modifiers with the target.',4,'NA',0,'psychic','NA',10,0),
       (384,'guard-swap','NA','status','The user employs its psychic power to
switch changes to its Defense and
Sp. Def stats with the target.','User swaps its Defense and Special Defense modifiers with the target.',4,'NA',0,'psychic','NA',10,0),
       (385,'punishment','100','physical','The more the target has powered
up with stat changes, the greater
the move’s power.','Inflicts regular damage.  Power starts at 60 and is increased by 20 for every stage any of the target''s stats has been raised, capping at 200.  Accuracy and evasion modifiers do not increase this move''s power.',4,'NA',0,'dark','NA',5,0),
       (386,'last-resort','100','physical','This move can be used only after the user
has used all the other moves it knows
in the battle.','Inflicts regular damage.  This move can only be used if each of the user''s other moves has been used at least once since the user entered the field.  If this is the user''s only move, this move will fail.',4,'NA',0,'normal','140',5,0),
       (387,'worry-seed','100','status','A seed that causes worry is planted on
the target. It prevents sleep by making
the target’s Ability Insomnia.','Changes the target''s ability to insomnia.

If the target''s ability is truant or multitype, this move will fail.',4,'NA',0,'grass','NA',10,0),
       (388,'sucker-punch','100','physical','This move enables the user to attack
first. This move fails if the target is not
readying an attack.','Inflicts regular damage.  If the target has not selected a damaging move this turn, or if the target has already acted this turn, this move will fail.

This move is not affected by iron fist.',4,'NA',0,'dark','70',5,1),
       (389,'toxic-spikes','NA','status','The user lays a trap of poison spikes at the
opposing team’s feet. They poison
opposing Pokémon that switch into battle.','Scatters poisoned spikes around the opposing field, which poison opposing Pokémon that enter the field.  A second layer of these spikes may be laid down, in which case Pokémon will be badly poisoned instead.  Pokémon immune to either ground moves or being poisoned are immune to this effect.  Pokémon otherwise immune to ground moves are affected during gravity.

If a poison Pokémon not immune to ground moves enters a field covered with poisoned spikes, the spikes are removed.

rapid spin will remove this effect from its user''s side of the field.  defog will remove this effect from its target''s side of the field.

This move does not trigger synchronize, unless the Pokémon with synchronize was forced to enter the field by another effect such as roar.

Pokémon entering the field due to baton pass are not affected by this effect.',4,'NA',0,'poison','NA',20,0),
       (390,'heart-swap','NA','status','The user employs its psychic power to
switch stat changes with the target.','User swaps its stat modifiers with the target.',4,'NA',0,'psychic','NA',10,0),
       (391,'aqua-ring','NA','status','The user envelops itself in a veil made
of water. It regains some HP every turn.','Restores 1/16 of the user''s max HP at the end of each turn.  If the user leaves the field, this effect ends.

This effect is passed on by baton pass.',4,'NA',0,'water','NA',20,0),
       (392,'magnet-rise','NA','status','The user levitates using electrically
generated magnetism for five turns.','For five turns, the user is immune to ground moves.

If the user is under the effect of ingrain or has levitate, this move will fail.

This effect is temporarily disabled by and cannot be used during gravity.

This effect is passed on by baton pass.',4,'NA',0,'electric','NA',10,0),
       (393,'flare-blitz','100','physical','The user cloaks itself in fire and charges the target.
This also damages the user quite a lot.
This may leave the target with a burn.','Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.  Has a 10% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',4,'NA',0,'fire','120',15,0),
       (394,'force-palm','100','physical','The target is attacked with a shock wave.
This may also leave the target
with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',4,'NA',0,'fighting','60',10,0),
       (395,'aura-sphere','NA','special','The user lets loose a blast of aura power
from deep within its body at the target.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',4,'NA',0,'fighting','80',20,0),
       (396,'rock-polish','NA','status','The user polishes its body to reduce drag.
This can sharply raise the Speed stat.','Raises the user''s Speed by two stages.',4,'tm69',0,'rock','NA',20,0),
       (397,'poison-jab','100','physical','The target is stabbed with a tentacle or
arm steeped in poison. This may also
poison the target.','Inflicts regular damage.  Has a 30% chance to poison the target.',4,'tm84',0,'poison','80',20,0),
       (398,'dark-pulse','100','special','The user releases a horrible aura imbued
with dark thoughts.
This may also make the target flinch.','Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,'tm79',0,'dark','80',15,0),
       (399,'night-slash','100','physical','The user slashes the target
the instant an opportunity arises.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'NA',1,'dark','70',15,0),
       (400,'aqua-tail','90','physical','The user attacks by swinging its tail as if
it were a vicious wave in a raging storm.','Inflicts regular damage.',4,'NA',0,'water','90',10,0),
       (401,'seed-bomb','100','physical','The user slams a barrage of hard-shelled
seeds down on the target from above.','Inflicts regular damage.',4,'NA',0,'grass','80',15,0),
       (402,'air-slash','95','special','The user attacks with a blade of air that
slices even the sky. This may also make the
target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',4,'NA',0,'flying','75',15,0),
       (403,'x-scissor','100','physical','The user slashes at the target by
crossing its scythes or claws as if
they were a pair of scissors.','Inflicts regular damage.',4,'tm81',0,'bug','80',15,0),
       (404,'bug-buzz','100','special','The user vibrates its wings to generate a
damaging sound wave. This may also lower
the target’s Sp. Def stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,'NA',0,'bug','90',10,0),
       (405,'dragon-pulse','100','special','The target is attacked with a shock wave
generated by the user’s gaping mouth.','Inflicts regular damage.',4,'tm59',0,'dragon','85',10,0),
       (406,'dragon-rush','75','physical','The user tackles the target while
exhibiting overwhelming menace.
This may also make the target flinch.','Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,'NA',0,'dragon','100',10,0),
       (407,'power-gem','100','special','The user attacks with a ray of light that
sparkles as if it were made of gemstones.','Inflicts regular damage.',4,'NA',0,'rock','80',20,0),
       (408,'drain-punch','100','physical','An energy-draining punch. The user’s
HP is restored by half the damage taken
by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',4,'tm60',0,'fighting','75',10,0),
       (409,'vacuum-wave','100','special','The user whirls its fists to send a wave
of pure vacuum at the target.
This move always goes first.','Inflicts regular damage.',4,'NA',0,'fighting','40',30,1),
       (410,'focus-blast','70','special','The user heightens its mental focus and
unleashes its power.
This may also lower the target’s Sp. Def.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,'tm52',0,'fighting','120',5,0),
       (411,'energy-ball','100','special','The user draws power from nature and
fires it at the target.
This may also lower the target’s Sp. Def.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,'tm53',0,'grass','90',10,0),
       (412,'brave-bird','100','physical','The user tucks in its wings and charges
from a low altitude.
This also damages the user quite a lot.','Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',4,'NA',0,'flying','120',15,0),
       (413,'earth-power','100','special','The user makes the ground under
the target erupt with power.
This may also lower the target’s Sp. Def.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,'NA',0,'ground','90',10,0),
       (414,'switcheroo','100','status','The user trades held items with the target
faster than the eye can follow.','User and target permanently swap held items.  Works even if one of the Pokémon isn''t holding anything.  If either Pokémon is holding mail, this move will fail.

If either Pokémon has multitype or sticky hold, this move will fail.

If this move results in a Pokémon obtaining choice band, choice scarf, or choice specs, and that Pokémon was the latter of the pair to move this turn, then the move it used this turn becomes its chosen forced move.  This applies even if both Pokémon had a choice item before this move was used.  If the first of the two Pokémon gains a choice item, it may select whatever choice move it wishes next turn.

Neither the user nor the target can recover its item with recycle.

This move cannot be selected by assist or metronome.',4,'NA',0,'dark','NA',10,0),
       (415,'giga-impact','90','physical','The user charges at the target using
every bit of its power.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,'tm68',0,'normal','150',5,0),
       (416,'nasty-plot','NA','status','The user stimulates its brain by thinking
bad thoughts.
This sharply raises the user’s Sp. Atk.','Raises the user''s Special Attack by two stages.',4,'NA',0,'dark','NA',20,0),
       (417,'bullet-punch','100','physical','The user strikes the target
with tough punches as fast as bullets.
This move always goes first.','Inflicts regular damage.',4,'NA',0,'steel','40',30,1),
       (418,'avalanche','100','physical','An attack move that inflicts double the
damage if the user has been hurt by the
target in the same turn.','Inflicts regular damage.  If the target damaged the user this turn and was the last to do so, this move has double power.

pain split does not count as damaging the user.',4,'tm72',0,'ice','60',10,-4),
       (419,'ice-shard','100','physical','The user flash-freezes chunks of
ice and hurls them at the target.
This move always goes first.','Inflicts regular damage.',4,'NA',0,'ice','40',30,1),
       (420,'shadow-claw','100','physical','The user slashes with a sharp claw made
from shadows.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'tm65',1,'ghost','70',15,0),
       (421,'thunder-fang','95','physical','The user bites with electrified fangs.
This may also make the target flinch or
leave it with paralysis.','Inflicts regular damage.  Has a 10% chance to paralyze the target and a separate 10% chance to make the target flinch.',4,'NA',0,'electric','65',15,0),
       (422,'ice-fang','95','physical','The user bites with cold-infused fangs.
This may also make the target flinch or
leave it frozen.','Inflicts regular damage.  Has a 10% chance to freeze the target and a separate 10% chance to make the target flinch.',4,'NA',0,'ice','65',15,0),
       (423,'fire-fang','95','physical','The user bites with flame-cloaked fangs.
This may also make the target flinch or leave
it with a burn.','Inflicts regular damage.  Has a 10% chance to burn the target and a separate 10% chance to make the target flinch.',4,'NA',0,'fire','65',15,0),
       (424,'shadow-sneak','100','physical','The user extends its shadow and attacks
the target from behind.
This move always goes first.','Inflicts regular damage.',4,'NA',0,'ghost','40',30,1),
       (425,'mud-bomb','85','special','The user launches a hard-packed
mud ball to attack.
This may also lower the target’s accuracy.','Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',4,'NA',0,'ground','65',10,0),
       (426,'psycho-cut','100','physical','The user tears at the target with blades
formed by psychic power.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'NA',1,'psychic','70',20,0),
       (427,'zen-headbutt','90','physical','The user focuses its willpower to its head
and attacks the target.
This may also make the target flinch.','Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,'NA',0,'psychic','80',15,0),
       (428,'mirror-shot','85','special','The user lets loose a flash of energy at
the target from its polished body.
This may also lower the target’s accuracy.','Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',4,'NA',0,'steel','65',10,0),
       (429,'flash-cannon','100','special','The user gathers all its light energy and
releases it at once. This may also lower the
target’s Sp. Def stat.','Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,'tm91',0,'steel','80',10,0),
       (430,'rock-climb','85','physical','The user attacks the target by smashing
into it with incredible force.
This may also confuse the target.','Inflicts regular damage.  Has a 20% chance to confuse the target.',4,'hm08',0,'normal','90',20,0),
       (431,'defog','NA','status','A strong wind blows away the target’s
barriers such as Reflect or Light Screen.
This also lowers the target’s evasiveness.','Lowers the target''s evasion by one stage.  Clears away fog.  Removes the effects of mist, light screen, reflect, safeguard, spikes, stealth rock, and toxic spikes from the target''s side of the field.

If the target is protected by mist, it will prevent the evasion change, then be removed by this move.',4,'hm05',0,'flying','NA',15,0),
       (432,'trick-room','NA','status','The user creates a bizarre area in which
slower Pokémon get to move first for
five turns.','For five turns (including this one), slower Pokémon will act before faster Pokémon.  Move priority is not affected.  Using this move when its effect is already active will end the effect.

Pokémon holding full incense, lagging tail, or quick claw and Pokémon with stall ignore this effect.',4,'tm92',0,'psychic','NA',5,-7),
       (433,'draco-meteor','90','special','Comets are summoned down from the sky
onto the target. The attack’s recoil
harshly lowers the user’s Sp. Atk stat.','Inflicts regular damage, then lowers the user''s Special Attack by two stages.',4,'NA',0,'dragon','130',5,0),
       (434,'discharge','100','special','The user strikes everything around it
by letting loose a flare of electricity.
This may also cause paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.',4,'NA',0,'electric','80',15,0),
       (435,'lava-plume','100','special','The user torches everything around it
with an inferno of scarlet flames.
This may also leave those hit with a burn.','Inflicts regular damage.  Has a 30% chance to burn the target.',4,'NA',0,'fire','80',15,0),
       (436,'leaf-storm','90','special','The user whips up a storm of leaves around
the target. The attack’s recoil harshly
lowers the user’s Sp. Atk stat.','Inflicts regular damage, then lowers the user''s Special Attack by two stages.',4,'NA',0,'grass','130',5,0),
       (437,'power-whip','85','physical','The user violently whirls its vines or
tentacles to harshly lash the target.','Inflicts regular damage.',4,'NA',0,'grass','120',10,0),
       (438,'rock-wrecker','90','physical','The user launches a huge boulder at the
target to attack.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,'NA',0,'rock','150',5,0),
       (439,'cross-poison','100','physical','A slashing attack with a poisonous blade
that may also poison the target.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to poison the target.',4,'NA',1,'poison','70',20,0),
       (440,'gunk-shot','80','physical','The user shoots filthy garbage
at the target to attack.
This may also poison the target.','Inflicts regular damage.  Has a 30% chance to poison the target.',4,'NA',0,'poison','120',5,0),
       (441,'iron-head','100','physical','The user slams the target
with its steel-hard head.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',4,'NA',0,'steel','80',15,0),
       (442,'magnet-bomb','NA','physical','The user launches steel bombs that
stick to the target.
This attack never misses.','Inflicts regular damage.  Ignores accuracy and evasion modifiers.',4,'NA',0,'steel','60',20,0),
       (443,'stone-edge','80','physical','The user stabs the target with
sharpened stones from below.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'tm71',1,'rock','100',5,0),
       (444,'captivate','100','status','If any opposing Pokémon is the opposite
gender of the user, it is charmed, which
harshly lowers its Sp. Atk stat.','Lowers the target''s Special Attack by two stages.  If the user and target are the same gender, or either is genderless, this move will fail.',4,'tm78',0,'normal','NA',20,0),
       (445,'stealth-rock','NA','status','The user lays a trap of levitating stones
around the opposing team. The trap hurts
opposing Pokémon that switch into battle.','Spreads sharp rocks around the opposing field, damaging any Pokémon that enters the field for 1/8 its max HP.  This damage is affected by the entering Pokémon''s susceptibility to rock moves.

rapid spin removes this effect from its user''s side of the field.',4,'tm76',0,'rock','NA',20,0),
       (446,'grass-knot','100','special','The user snares the target with grass and
trips it. The heavier the target,
the greater the move’s power.','Inflicts regular damage.  Power increases with the target''s weight in kilograms, to a maximum of 120.

Target''s weight | Power
--------------- | ----:
Up to 10kg      |    20
Up to 25kg      |    40
Up to 50kg      |    60
Up to 100kg     |    80
Up to 200kg     |   100
Above 200kg     |   120',4,'tm86',0,'grass','NA',20,0),
       (447,'chatter','100','special','The user attacks the target with
sound waves of deafening chatter.
This confuses the target.','Inflicts regular damage.  Has either a 1%, 11%, or 31% chance to confuse the target, based on the volume of the recording made for this move, louder recordings increase the chance of confusion.  If the user is not a chatot, this move will not cause confusion.

This move cannot be copied by mimic, mirror move, or sketch, nor selected by assist, metronome, or sleep talk.',4,'NA',0,'flying','65',20,0),
       (448,'judgment','100','special','The user releases countless shots of
light at the target. This move’s type varies
depending on the kind of Plate the user is holding.','Inflicts regular damage.  If the user is holding a plate or a drive, this move''s type is the type corresponding to that item.

Note: This effect is technically shared by both techno blast and judgment, however, Techno Blast is only affected by drives, and Judgment is only affected by plates.',4,'NA',0,'normal','100',10,0),
       (449,'bug-bite','100','physical','The user bites the target. If the target
is holding a Berry, the user eats it and
gains its effect.','Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.',4,'NA',0,'bug','60',20,0),
       (450,'charge-beam','90','special','The user attacks with an electric
charge. The user may use any remaining
electricity to raise its Sp. Atk stat.','Inflicts regular damage.  Has a 70% chance to raise the user''s Special Attack by one stage.',4,'tm57',0,'electric','50',10,0),
       (451,'wood-hammer','100','physical','The user slams its rugged body into the
target to attack. This also damages
the user quite a lot.','Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',4,'NA',0,'grass','120',15,0),
       (452,'aqua-jet','100','physical','The user lunges at the target at a speed
that makes it almost invisible.
This move always goes first.','Inflicts regular damage.',4,'NA',0,'water','40',20,1),
       (453,'attack-order','100','physical','The user calls out its underlings to
pummel the target.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'NA',1,'bug','90',15,0),
       (454,'defend-order','NA','status','The user calls out its underlings to
shield its body, raising its Defense
and Sp. Def stats.','Raises the user''s Defense and Special Defense by one stage.',4,'NA',0,'bug','NA',10,0),
       (455,'heal-order','NA','status','The user calls out its underlings to
heal it. The user regains up to half of its
max HP.','Heals the user for half its max HP.',4,'NA',0,'bug','NA',10,0),
       (456,'head-smash','80','physical','The user attacks the target with a
hazardous, full-power headbutt.
This also damages the user terribly.','Inflicts regular damage.  User takes 1/2 the damage it inflicts in recoil.',4,'NA',0,'rock','150',5,0),
       (457,'double-hit','90','physical','The user slams the target with a long tail,
vines, or a tentacle.
The target is hit twice in a row.','Inflicts regular damage.  Hits twice in one turn.',4,'NA',0,'normal','35',10,0),
       (458,'roar-of-time','90','special','The user blasts the target with power
that distorts even time.
The user can’t move on the next turn.','Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,'NA',0,'dragon','150',5,0),
       (459,'spacial-rend','95','special','The user tears the target along with the
space around it.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,'NA',1,'dragon','100',5,0),
       (460,'lunar-dance','NA','status','The user faints. In return, the Pokémon
taking its place will have its status and
HP fully restored.','User faints.  Its replacement''s HP and PP are fully restored, and any major status effect is removed.',4,'NA',0,'psychic','NA',10,0),
       (461,'crush-grip','100','physical','The target is crushed with great force.
The more HP the target has left,
the greater this move’s power.','Inflicts regular damage.  Power directly relates to the target''s relative remaining HP, given by `1 + 120 * current HP / max HP`, to a maximum of 121.',4,'NA',0,'normal','NA',5,0),
       (462,'magma-storm','75','special','The target becomes trapped
within a maelstrom of fire that rages
for four to five turns.','Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',4,'NA',0,'fire','100',5,0),
       (463,'dark-void','50','status','Opposing Pokémon are dragged into
a world of total darkness that makes
them sleep.','Puts the target to sleep.',4,'NA',0,'dark','NA',10,0),
       (464,'seed-flare','85','special','The user emits a shock wave from
its body to attack its target. This may
also harshly lower the target’s Sp. Def.','Inflicts regular damage.  Has a 40% chance to lower the target''s Special Defense by two stages.',4,'NA',0,'grass','120',5,0),
       (465,'ominous-wind','100','special','The user blasts the target with a gust of
repulsive wind. This may also raise all the
user’s stats at once.','Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',4,'NA',0,'ghost','60',5,0),
       (466,'shadow-force','100','physical','The user disappears, then strikes the
target on the next turn.
This move hits even if the target protects itself.','Inflicts regular damage.  User vanishes for one turn, becoming immune to attack, and hits on the second turn.

This move ignores the effects of detect and protect.

This move cannot be selected by sleep talk.',4,'NA',0,'ghost','120',5,0),
       (467,'hone-claws','NA','status','The user sharpens its claws to
boost its Attack stat and accuracy.','Raises the user''s Attack and accuracy by one stage.',5,'tm01',0,'dark','NA',15,0),
       (468,'wide-guard','NA','status','The user and its allies are protected from
wide-ranging attacks for one turn.','Moves with multiple targets will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will fail.

This move cannot be selected by assist or metronome.',5,'NA',0,'rock','NA',10,3),
       (469,'guard-split','NA','status','The user employs its psychic power to
average its Defense and Sp. Def stats
with those of the target.','Averages the user''s unmodified Defense with the target''s unmodified Defense, the value becomes the unmodified Defense for both Pokémon. Unmodified Special Defense is averaged the same way.',5,'NA',0,'psychic','NA',10,0),
       (470,'power-split','NA','status','The user employs its psychic power to
average its Attack and Sp. Atk stats
with those of the target.','Averages the user''s unmodified Attack with the target''s unmodified Attack, the value becomes the unmodified Attack for both Pokémon. Unmodified Special Attack is averaged the same way.

This effect applies before any other persistent changes to unmodified Attack or Special Attack, such as flower gift during sunny day.',5,'NA',0,'psychic','NA',10,0),
       (471,'wonder-room','NA','status','The user creates a bizarre area in which
Pokémon’s Defense and Sp. Def
stats are swapped for five turns.','For five turns (including this one), every Pokémon''s Defense and Special Defense are swapped.',5,'NA',0,'psychic','NA',10,0),
       (472,'psyshock','100','special','The user materializes an odd
psychic wave to attack the target.
This attack does physical damage.','Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,'tm03',0,'psychic','80',10,0),
       (473,'venoshock','100','special','The user drenches the target in a special
poisonous liquid. This move’s power is doubled
if the target is poisoned.','Inflicts regular damage.  If the target is poisoned, this move has double power.',5,'tm09',0,'poison','65',10,0),
       (474,'autotomize','NA','status','The user sheds part of its body
to make itself lighter and sharply
raise its Speed stat.','Raises the user''s Speed by two stages.  Halves the user''s weight, this effect does not stack.',5,'NA',0,'steel','NA',15,0),
       (475,'rage-powder','NA','status','The user scatters a cloud of irritating
powder to draw attention to itself.
Opponents aim only at the user.','Until the end of this turn, any moves that opposing Pokémon target solely at the user''s ally will instead target the user.  If both Pokémon on the same side of the field use this move on the same turn, the Pokémon that uses it last will become the target.

This effect takes priority over lightning rod and storm drain.

If the user''s ally switches out, opposing Pokémon may still hit it with pursuit.

This move cannot be selected by assist or metronome.',5,'NA',0,'bug','NA',20,2),
       (476,'telekinesis','NA','status','The user makes the target float with its
psychic power. The target is easier to
hit for three turns.','For three turns (including this one), moves used against the target have 100% accuracy, but the target is immune to ground damage.  Accuracy of one-hit KO moves is exempt from this effect.

This effect is removed by gravity.  If Gravity is already in effect, this move will fail.',5,'tm19',0,'psychic','NA',15,0),
       (477,'magic-room','NA','status','The user creates a bizarre area
in which Pokémon’s held items
lose their effects for five turns.','For five turns (including this one), passive effects of held items are ignored, and Pokémon will not use their held items.',5,'NA',0,'psychic','NA',10,0),
       (478,'smack-down','100','physical','The user throws a stone or similar projectile
to attack an opponent. A flying Pokémon
will fall to the ground when it’s hit.','Inflicts regular damage.  Removes the target''s immunity to ground-type damage.  This effect removes any existing Ground immunity due to levitate, magnet rise, or telekinesis, and causes the target''s flying type to be ignored when it takes Ground damage.

If the target isn''t immune to Ground damage, this move will fail.

This move can hit Pokémon under the effect of bounce, fly, or sky drop, and ends the effect of Bounce or Fly.',5,'tm23',0,'rock','50',15,0),
       (479,'storm-throw','100','physical','The user strikes the target with a fierce
blow. This attack always results in a
critical hit.','Inflicts regular damage.  Always scores a critical hit.',5,'NA',6,'fighting','60',10,0),
       (480,'flame-burst','100','special','The user attacks the target with a
bursting flame. The bursting flame damages
Pokémon next to the target as well.','Inflicts regular damage.  If this move successfully hits the target, any Pokémon adjacent to the target are damaged for 1/16 their max HP.',5,'NA',0,'fire','70',15,0),
       (481,'sludge-wave','100','special','The user strikes everything around it
by swamping the area with a giant sludge wave.
This may also poison those hit.','Inflicts regular damage.  Has a 10% chance to poison the target.',5,'tm34',0,'poison','95',10,0),
       (482,'quiver-dance','NA','status','The user lightly performs a beautiful,
mystic dance. This boosts the user’s
Sp. Atk, Sp. Def, and Speed stats.','Raises the user''s Special Attack, Special Defense, and Speed by one stage each.',5,'NA',0,'bug','NA',20,0),
       (483,'heavy-slam','100','physical','The user slams into the target with its
heavy body. The more the user outweighs
the target, the greater the move’s power.','Inflicts regular damage.  The greater the user''s weight compared to the target''s, the higher power this move has, to a maximum of 120.

User''s weight                    | Power
-------------------------------- | ----:
Up to 2× the target''s weight     |    40
Up to 3× the target''s weight     |    60
Up to 4× the target''s weight     |    80
Up to 5× the target''s weight     |   100
More than 5× the target''s weight |   120',5,'NA',0,'steel','NA',10,0),
       (484,'synchronoise','100','special','Using an odd shock wave, the user
inflicts damage on any Pokémon of the same
type in the area around it.','Inflicts regular damage.  Only Pokémon that share a type with the user will take damage from this move.',5,'NA',0,'psychic','120',10,0),
       (485,'electro-ball','100','special','The user hurls an electric orb
at the target. The faster the user is
than the target, the greater the move’s power.','Inflicts regular damage.  The greater the user''s Speed compared to the target''s, the higher power this move has, to a maximum of 150.

User''s Speed                     | Power
-------------------------------- | ----:
Up to 2× the target''s Speed      |    60
Up to 3× the target''s Speed      |    80
Up to 4× the target''s Speed      |   120
More than 4× the target''s Speed  |   150',5,'NA',0,'electric','NA',10,0),
       (486,'soak','100','status','The user shoots a torrent of water
at the target and changes
the target’s type to Water.','Changes the target to pure water-type until it leaves the field.  If the target has multitype, this move will fail.',5,'NA',0,'water','NA',20,0),
       (487,'flame-charge','100','physical','Cloaking itself in flame, the user attacks.
Then, building up more power,
the user raises its Speed stat.','Inflicts regular damage.  Raises the user''s Speed by one stage.',5,'tm43',0,'fire','50',20,0),
       (488,'coil','NA','status','The user coils up and concentrates.
This raises its Attack and Defense stats
as well as its accuracy.','Raises the user''s Attack, Defense, and accuracy by one stage each.',5,'NA',0,'poison','NA',20,0),
       (489,'low-sweep','100','physical','The user makes a swift attack on the target’s legs,
which lowers the target’s Speed stat.','Lowers the target''s Speed by one stage.',5,'tm47',0,'fighting','65',20,0),
       (490,'acid-spray','100','special','The user spits fluid that works to melt
the target. This harshly lowers
the target’s Sp. Def stat.','Inflicts regular damage.  Lowers the target''s Special Defense by two stages.',5,'NA',0,'poison','40',20,0),
       (491,'foul-play','100','physical','The user turns the target’s power
against it. The higher the target’s Attack stat,
the greater the move’s power.','Inflicts regular damage.  Damage is calculated using the target''s attacking stat rather than the user''s.',5,'NA',0,'dark','95',15,0),
       (492,'simple-beam','100','status','The user’s mysterious psychic wave
changes the target’s Ability to Simple.','Changes the target''s ability to simple.',5,'NA',0,'normal','NA',15,0),
       (493,'entrainment','100','status','The user dances with an odd rhythm that
compels the target to mimic it, making the
target’s Ability the same as the user’s.','Changes the target''s ability to match the user''s.  This effect ends when the target leaves battle.',5,'NA',0,'normal','NA',15,0),
       (494,'after-you','NA','status','The user helps the target and makes it
use its move right after the user.','The target will act next this turn, regardless of Speed or move priority.
If the target has already acted this turn, this move will fail.',5,'NA',0,'normal','NA',15,0),
       (495,'round','100','special','The user attacks the target with a song.
Others can join in the Round and make
the attack do greater damage.','Inflicts regular damage.  If round has already been used this turn, this move''s power is doubled.  After this move is used, any other Pokémon using it this turn will immediately do so (in the order they would otherwise act), regardless of Speed or priority.  Pokémon using other moves will then continue to act as usual.',5,'tm48',0,'normal','60',15,0),
       (496,'echoed-voice','100','special','The user attacks the target with an
echoing voice. If this move is used
every turn, it does greater damage.','Inflicts regular damage.  If any friendly Pokémon used this move earlier this turn or on the previous turn, that use''s power is added to this move''s power, to a maximum of 200.',5,'tm49',0,'normal','40',15,0),
       (497,'chip-away','100','physical','Looking for an opening, the user strikes
consistently. The target’s stat changes
don’t affect this attack’s damage.','Inflicts regular damage.  Damage calculation ignores the target''s stat modifiers, including evasion.',5,'NA',0,'normal','70',20,0),
       (498,'clear-smog','NA','special','The user attacks by throwing a clump of
special mud. All stat changes are
returned to normal.','Inflicts regular damage.  All of the target''s stat modifiers are reset to zero.',5,'NA',0,'poison','50',15,0),
       (499,'stored-power','100','special','The user attacks the target with stored
power. The more the user’s stats are
raised, the greater the move’s power.','Inflicts regular damage.  Power is increased by 100% its original value for every stage any of the user''s stats have been raised.  Accuracy, evasion, and lowered stats do not affect this move''s power.  For a Pokémon with all five stats modified to +6, this move''s power is 31×.',5,'NA',0,'psychic','20',10,0),
       (500,'quick-guard','NA','status','The user protects itself and its allies
from priority moves.','Moves with priority greater than 0 will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will fail.

This move cannot be selected by assist or metronome.',5,'NA',0,'fighting','NA',15,3),
       (501,'ally-switch','NA','status','The user teleports using a strange
power and switches places with one of
its allies.','User switches position on the field with the friendly Pokémon opposite it.  If the user is in the middle position in a triple battle, or there are no other friendly Pokémon, this move will fail.',5,'tm51',0,'psychic','NA',15,2),
       (502,'scald','100','special','The user shoots boiling hot water at
its target. This may also leave the target
with a burn.','Inflicts regular damage.  Has a 30% chance to burn the target.',5,'tm55',0,'water','80',15,0),
       (503,'shell-smash','NA','status','The user breaks its shell, which lowers
Defense and Sp. Def stats but sharply
raises its Attack, Sp. Atk, and Speed stats.','Raises the user''s Attack, Special Attack, and Speed by two stages each.  Lowers the user''s Defense and Special Defense by one stage each.',5,'NA',0,'normal','NA',15,0),
       (504,'heal-pulse','NA','status','The user emits a healing pulse which
restores the target’s HP by up to
half of its max HP.','Heals the target for half its max HP.',5,'NA',0,'psychic','NA',10,0),
       (505,'hex','100','special','This relentless attack does massive
damage to a target affected
by status conditions.','Inflicts regular damage.  If the target has a major status ailment, this move has double power.',5,'NA',0,'ghost','65',10,0),
       (506,'sky-drop','100','physical','The user takes the target into the sky,
then drops it during the next turn.
The target cannot attack while in the sky.','Inflicts regular damage.  User carries the target high into the air for one turn, during which no moves will hit either Pokémon and neither can act.  On the following turn, the user drops the target, inflicting damage and ending the effect.

If the target is flying-type, this move will function as normal but inflict no damage.

gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind can hit both the user and the target during this effect.  gust and twister will additionally have double power.

The damage from hail and sandstorm still applies during this effect.

Either Pokémon may be hit during this effect if also under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.

*Bug*: If gravity is used during a double or triple battle while this move is in effect, this move is not correctly canceled on the target, and it remains high in the air indefinitely.  As this move prevents the target from acting, the only way to subsequently remove it from the field is to faint it.',5,'tm58',0,'flying','60',10,0),
       (507,'shift-gear','NA','status','The user rotates its gears, raising its
Attack and sharply raising its Speed.','Raises the user''s Attack by one stage and its Speed by two stages.',5,'NA',0,'steel','NA',10,0),
       (508,'circle-throw','90','physical','The target is thrown, and a different
Pokémon is dragged out. In the wild,
this ends a battle against a single Pokémon.','Inflicts regular damage, then switches the target out for another of its trainer''s Pokémon, selected at random.

If the target is under the effect of ingrain or suction cups, or it has a substitute, or its Trainer has no more usable Pokémon, it will not be switched out.  If the target is a wild Pokémon, the battle ends instead.',5,'NA',0,'fighting','60',10,-6),
       (509,'incinerate','100','special','The user attacks opposing Pokémon with fire.
If a Pokémon is holding a certain item, such as a
Berry, the item becomes burned up and unusable.','Inflicts regular damage.  If the target is holding a berry, it''s destroyed and cannot be used in response to this move.',5,'tm59',0,'fire','60',15,0),
       (510,'quash','100','status','The user suppresses the target and
makes its move go last.','Forces the target to act last this turn, regardless of Speed or move priority.  If the target has already acted this turn, this move will fail.',5,'tm60',0,'dark','NA',15,0),
       (511,'acrobatics','100','physical','The user nimbly strikes the target.
If the user is not holding an item,
this attack inflicts massive damage.','Inflicts regular damage.  If the user has no held item, this move has double power.',5,'tm62',0,'flying','55',15,0),
       (512,'reflect-type','NA','status','The user reflects the target’s type,
making it the same type as the target.','User''s type changes to match the target''s.',5,'NA',0,'normal','NA',15,0),
       (513,'retaliate','100','physical','The user gets revenge for a fainted ally.
If an ally fainted in the previous turn,
this move becomes more powerful.','Inflicts regular damage.  If a friendly Pokémon fainted on the previous turn, this move has double power.',5,'tm67',0,'normal','70',5,0),
       (514,'final-gambit','100','special','The user risks everything to attack its
target. The user faints but does damage
equal to its HP.','Inflicts damage equal to the user''s remaining HP.  User faints.',5,'NA',0,'fighting','NA',5,0),
       (515,'bestow','NA','status','The user passes its held item to the
target when the target isn’t holding
an item.','Transfers the user''s held item to the target.  If the user has no held item, or the target already has a held item, this move will fail.',5,'NA',0,'normal','NA',15,0),
       (516,'inferno','50','special','The user attacks by engulfing the target
in an intense fire. This leaves the target
with a burn.','Inflicts regular damage.  Has a 100% chance to burn the target.',5,'NA',0,'fire','100',5,0),
       (517,'water-pledge','100','special','A column of water strikes the target. When
combined with its fire equivalent, the
damage increases and a rainbow appears.','Inflicts regular damage.  If a friendly Pokémon used grass pledge earlier this turn, all opposing Pokémon have halved Speed for four turns (including this one).',5,'NA',0,'water','80',10,0),
       (518,'fire-pledge','100','special','A column of fire hits the target. When used with
its grass equivalent, its damage increases and
a vast sea of fire appears.','Inflicts regular damage.  If a friendly Pokémon used water pledge earlier this turn, moves used by any friendly Pokémon have doubled effect chance for four turns (including this one).',5,'NA',0,'fire','80',10,0),
       (519,'grass-pledge','100','special','A column of grass hits the target. When used with
its water equivalent, its damage increases and
a vast swamp appears.','Inflicts regular damage.  If a friendly Pokémon used fire pledge earlier this turn, all opposing Pokémon will take 1/8 their max HP in damage at the end of every turn for four turns (including this one).',5,'NA',0,'grass','80',10,0),
       (520,'volt-switch','100','special','After making its attack, the user
rushes back to switch places with
a party Pokémon in waiting.','Inflicts regular damage, then the user immediately switches out, and the trainer selects a replacement Pokémon from the party.  If the target faints from this attack, the user''s trainer selects the new Pokémon to send out first.  If the user is the last Pokémon in its party that can battle, it will not switch out.

The user may be hit by pursuit when it switches out, if it has been targeted and pursuit has not yet been used.

This move may be used even if the user is under the effect of ingrain.  ingrain''s effect will end.',5,'tm72',0,'electric','70',20,0),
       (521,'struggle-bug','100','special','While resisting, the user attacks the
opposing Pokémon. This lowers the
Sp. Atk stat of those hit.','Inflicts regular damage.  Has a 100% chance to lower the target''s Special Attack by one stage.',5,'tm76',0,'bug','50',20,0),
       (522,'bulldoze','100','physical','The user strikes everything around it
by stomping down on the ground.
This lowers the Speed stat of those hit.','Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',5,'tm78',0,'ground','60',20,0),
       (523,'frost-breath','90','special','The user blows its cold breath on the
target. This attack always results in
a critical hit.','Inflicts regular damage.  Always scores a critical hit.',5,'tm79',6,'ice','60',10,0),
       (524,'dragon-tail','90','physical','The target is knocked away, and a different
Pokémon is dragged out. In the wild,
this ends a battle against a single Pokémon.','Inflicts regular damage, then switches the target out for another of its trainer''s Pokémon, selected at random.

If the target is under the effect of ingrain or suction cups, or it has a substitute, or its Trainer has no more usable Pokémon, it will not be switched out.  If the target is a wild Pokémon, the battle ends instead.',5,'tm82',0,'dragon','60',10,-6),
       (525,'work-up','NA','status','The user is roused, and its Attack
and Sp. Atk stats increase.','Raises the user''s Attack and Special Attack by one stage each.',5,'tm83',0,'normal','NA',30,0),
       (526,'electroweb','95','special','The user attacks and captures opposing
Pokémon using an electric net.
This lowers their Speed stat.','Lowers the target''s Speed by one stage.',5,'NA',0,'electric','55',15,0),
       (527,'wild-charge','100','physical','The user shrouds itself in electricity
and smashes into its target.
This also damages the user a little.','Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',5,'tm93',0,'electric','90',15,0),
       (528,'drill-run','95','physical','The user crashes into its target while
rotating its body like a drill.
Critical hits land more easily.','Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',5,'NA',1,'ground','80',10,0),
       (529,'dual-chop','90','physical','The user attacks its target by hitting
it with brutal strikes.
The target is hit twice in a row.','Inflicts regular damage.  Hits twice in one turn.',5,'NA',0,'dragon','40',15,0),
       (530,'heart-stamp','100','physical','The user unleashes a vicious blow after
its cute act makes the target less wary.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',5,'NA',0,'psychic','60',25,0),
       (531,'horn-leech','100','physical','The user drains the target’s energy with
its horns. The user’s HP is restored
by half the damage taken by the target.','Inflicts regular damage.  Drains half the damage inflicted to heal the user.',5,'NA',0,'grass','75',10,0),
       (532,'sacred-sword','100','physical','The user attacks by slicing with a long
horn. The target’s stat changes
don’t affect this attack’s damage.','Inflicts regular damage.  Damage calculation ignores the target''s stat modifiers, including evasion.',5,'NA',0,'fighting','90',15,0),
       (533,'razor-shell','95','physical','The user cuts its target with sharp
shells. This may also lower
the target’s Defense stat.','Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',5,'NA',0,'water','75',10,0),
       (534,'heat-crash','100','physical','The user slams its target with its flame-
covered body. The more the user outweighs
the target, the greater the move’s power.','Inflicts regular damage.  The greater the user''s weight compared to the target''s, the higher power this move has, to a maximum of 120.

User''s weight                    | Power
-------------------------------- | ----:
Up to 2× the target''s weight     |    40
Up to 3× the target''s weight     |    60
Up to 4× the target''s weight     |    80
Up to 5× the target''s weight     |   100
More than 5× the target''s weight |   120',5,'NA',0,'fire','NA',10,0),
       (535,'leaf-tornado','90','special','The user attacks its target by
encircling it in sharp leaves. This attack
may also lower the target’s accuracy.','Inflicts regular damage.  Has a 50% chance to lower the target''s accuracy by one stage.',5,'NA',0,'grass','65',10,0),
       (536,'steamroller','100','physical','The user crushes its targets by rolling
over them with its rolled-up body.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.

Power is doubled against Pokémon that have used minimize since entering the field.',5,'NA',0,'bug','65',20,0),
       (537,'cotton-guard','NA','status','The user protects itself by wrapping
its body in soft cotton, which drastically
raises the user’s Defense stat.','Raises the user''s Defense by three stages.',5,'NA',0,'grass','NA',10,0),
       (538,'night-daze','95','special','The user lets loose a pitch-black shock
wave at its target. This may also lower the
target’s accuracy.','Inflicts regular damage.  Has a 40% chance to lower the target''s accuracy by one stage.',5,'NA',0,'dark','85',10,0),
       (539,'psystrike','100','special','The user materializes an odd
psychic wave to attack the target.
This attack does physical damage.','Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,'NA',0,'psychic','100',10,0),
       (540,'tail-slap','85','physical','The user attacks by striking the target
with its hard tail. It hits the target two
to five times in a row.','Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',5,'NA',0,'normal','25',10,0),
       (541,'hurricane','70','special','The user attacks by wrapping its opponent
in a fierce wind that flies up into the sky.
This may also confuse the target.','Inflicts regular damage.  Has a 30% chance to confuse the target.

This move can hit Pokémon under the effect of bounce, fly, or sky drop.

During rain dance, this move has 100% accuracy.  During sunny day, this move has 50% accuracy.',5,'NA',0,'flying','110',10,0),
       (542,'head-charge','100','physical','The user charges its head into its
target, using its powerful guard hair.
This also damages the user a little.','Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',5,'NA',0,'normal','120',15,0),
       (543,'gear-grind','85','physical','The user attacks by throwing
steel gears at its target twice.','Inflicts regular damage.  Hits twice in one turn.',5,'NA',0,'steel','50',15,0),
       (544,'searing-shot','100','special','The user torches everything around it
with an inferno of scarlet flames.
This may also leave those hit with a burn.','Inflicts regular damage.  Has a 30% chance to burn the target.',5,'NA',0,'fire','100',5,0),
       (545,'techno-blast','100','special','The user fires a beam of light at
its target. The move’s type changes
depending on the Drive the user holds.','Inflicts regular damage.  If the user is holding a plate or a drive, this move''s type is the type corresponding to that item.

Note: This effect is technically shared by both techno blast and judgment, however, Techno Blast is only affected by drives, and Judgment is only affected by plates.',5,'NA',0,'normal','120',5,0),
       (546,'relic-song','100','special','The user sings an ancient song and attacks
by appealing to the hearts of the listening
opposing Pokémon. This may also induce sleep.','Inflicts regular damage.  Has a 10% chance to put the target to sleep.
If the user is a meloetta, it will toggle between Aria and Pirouette Forme.',5,'NA',0,'normal','75',10,0),
       (547,'secret-sword','100','special','The user cuts with its long horn. The odd
power contained in the horn does physical
damage to the target.','Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,'NA',0,'fighting','85',10,0),
       (548,'glaciate','95','special','The user attacks by blowing freezing
cold air at opposing Pokémon.
This lowers their Speed stat.','Inflicts regular damage.  Lowers the target''s Speed by one stage.',5,'NA',0,'ice','65',10,0),
       (549,'bolt-strike','85','physical','The user surrounds itself with a great amount
of electricity and charges its target.
This may also leave the target with paralysis.','Inflicts regular damage.  Has a 20% chance to paralyze the target.',5,'NA',0,'electric','130',5,0),
       (550,'blue-flare','85','special','The user attacks by engulfing the target
in an intense, yet beautiful, blue flame.
This may also leave the target with a burn.','Inflicts regular damage.  Has a 20% chance to burn the target.',5,'NA',0,'fire','130',5,0),
       (551,'fiery-dance','100','special','Cloaked in flames, the user dances
and flaps its wings. This may also
raise the user’s Sp. Atk stat.','Inflicts regular damage.  Has a 50% chance to raise the user''s Special Attack by one stage.',5,'NA',0,'fire','80',10,0),
       (552,'freeze-shock','90','physical','On the second turn, the user hits the
target with electrically charged ice.
This may also leave the target with paralysis.','Inflicts regular damage.  Has a 30% chance to paralyze the target.  User charges for one turn before attacking.',5,'NA',0,'ice','140',5,0),
       (553,'ice-burn','90','special','On the second turn, an ultracold,
freezing wind surrounds the target.
This may leave the target with a burn.','Inflicts regular damage.  Has a 30% chance to burn the target.  User charges for one turn before attacking.',5,'NA',0,'ice','140',5,0),
       (554,'snarl','95','special','The user yells as if it’s ranting about
something, which lowers the Sp. Atk stat
of opposing Pokémon.','Inflicts regular damage.  Has a 100% chance to lower the target''s Special Attack by one stage.',5,'tm95',0,'dark','55',15,0),
       (555,'icicle-crash','90','physical','The user attacks by harshly dropping
large icicles onto the target.
This may also make the target flinch.','Inflicts regular damage.  Has a 30% chance to make the target flinch.',5,'NA',0,'ice','85',10,0),
       (556,'v-create','95','physical','With a hot flame on its forehead, the user
hurls itself at its target. This lowers the
user’s Defense, Sp. Def, and Speed stats.','Inflicts regular damage.  Lowers the user''s Defense, Special Defense, and Speed by one stage each.',5,'NA',0,'fire','180',5,0),
       (557,'fusion-flare','100','special','The user brings down a giant flame.
This move is more powerful when
influenced by an enormous thunderbolt.','Inflicts regular damage.  If a friendly Pokémon used fusion bolt earlier this turn, this move has double power.',5,'NA',0,'fire','100',5,0),
       (558,'fusion-bolt','100','physical','The user throws down a giant thunderbolt.
This move is more powerful when
influenced by an enormous flame.','Inflicts regular damage.  If a friendly Pokémon used fusion flare earlier this turn, this move has double power.',5,'NA',0,'electric','100',5,0);
