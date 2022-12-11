CREATE TABLE IF NOT EXISTS moves(
    FIELD1        INTEGER  NOT NULL PRIMARY KEY ,
    move_name     VARCHAR(14) NOT NULL,
    accuracy      VARCHAR(3) NOT NULL,
    class         VARCHAR(8) NOT NULL,
    game_desc     VARCHAR(30),
    effect_chance VARCHAR(2554) NOT NULL,
    generation    INTEGER  NOT NULL,
    machines      BIT  NOT NULL,
    crit_rate     INTEGER  NOT NULL,
    move_type     VARCHAR(8) NOT NULL,
    power         VARCHAR(3) NOT NULL,
    pp            INTEGER  NOT NULL,
    priority      INTEGER  NOT NULL
);
INSERT INTO moves(FIELD1,move_name,accuracy,class,game_desc,effect_chance,generation,machines,crit_rate,move_type,power,pp,priority) 
VALUES (0,'pound','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','40',35,0),
       (1,'karate-chop','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,0,1,'fighting','50',25,0),
       (2,'double-slap','85','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','15',10,0),
       (3,'comet-punch','85','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','18',15,0),
       (4,'mega-punch','85','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','80',20,0),
       (5,'pay-day','100','physical',NULL,'Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.',1,0,0,'normal','40',20,0),
       (6,'fire-punch','100','physical',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.',1,0,0,'fire','75',15,0),
       (7,'ice-punch','100','physical',NULL,'Inflicts regular damage.  Has a 10% chance to freeze the target.',1,0,0,'ice','75',15,0),
       (8,'thunder-punch','100','physical',NULL,'Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,0,0,'electric','75',15,0),
       (9,'scratch','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','40',35,0),
       (10,'vice-grip','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','55',30,0),
       (11,'guillotine','30','physical',NULL,'Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,0,0,'normal','NA',5,0),
       (12,'razor-wind','100','special',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.',1,0,1,'normal','80',10,0),
       (13,'swords-dance','NA','status',NULL,'Raises the user''s Attack by two stages.',1,0,0,'normal','NA',20,0),
       (14,'cut','95','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','50',30,0),
       (15,'gust','100','special',NULL,'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.',1,0,0,'flying','40',35,0),
       (16,'wing-attack','100','physical',NULL,'Inflicts regular damage.',1,0,0,'flying','60',35,0),
       (17,'whirlwind','NA','status',NULL,'Switches the target out for another of its trainer''s Pokémon selected at random.  Wild battles end immediately.

Doesn''t affect Pokémon with suction cups or under the effect of ingrain.',1,0,0,'normal','NA',20,-6),
       (18,'fly','95','physical',NULL,'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.',1,0,0,'flying','90',15,0),
       (19,'bind','85','physical',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,0,0,'normal','15',20,0),
       (20,'slam','75','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','80',20,0),
       (21,'vine-whip','100','physical',NULL,'Inflicts regular damage.',1,0,0,'grass','45',25,0),
       (22,'stomp','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.

Power is doubled against Pokémon that have used minimize since entering the field.',1,0,0,'normal','65',20,0),
       (23,'double-kick','100','physical',NULL,'Inflicts regular damage.  Hits twice in one turn.',1,0,0,'fighting','30',30,0),
       (24,'mega-kick','75','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','120',5,0),
       (25,'jump-kick','95','physical',NULL,'Inflicts regular damage. If this move misses, is blocked by protect or detect, or has no effect, the user takes damage equal to half of its max HP rounded down.

This move cannot be used while gravity is in effect.',1,0,0,'fighting','100',10,0),
       (26,'rolling-kick','85','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,0,0,'fighting','60',15,0),
       (27,'sand-attack','100','status',NULL,'Lowers the target''s accuracy by one stage.',1,0,0,'ground','NA',15,0),
       (28,'headbutt','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,0,0,'normal','70',15,0),
       (29,'horn-attack','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','65',25,0),
       (30,'fury-attack','85','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','15',20,0),
       (31,'horn-drill','30','physical',NULL,'Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,0,0,'normal','NA',5,0),
       (32,'tackle','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','40',35,0),
       (33,'body-slam','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',1,0,0,'normal','85',15,0),
       (34,'wrap','90','physical',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,0,0,'normal','15',20,0),
       (35,'take-down','85','physical',NULL,'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',1,0,0,'normal','90',20,0),
       (36,'thrash','100','physical',NULL,'Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',1,0,0,'normal','120',10,0),
       (37,'double-edge','100','physical',NULL,'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',1,0,0,'normal','120',15,0),
       (38,'tail-whip','100','status',NULL,'Lowers the target''s Defense by one stage.',1,0,0,'normal','NA',30,0),
       (39,'poison-sting','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to poison the target.',1,0,0,'poison','15',35,0),
       (40,'twineedle','100','physical',NULL,'Inflicts regular damage.  Hits twice in the same turn.  Has a 20% chance to poison the target.',1,0,0,'bug','25',20,0),
       (41,'pin-missile','95','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'bug','25',20,0),
       (42,'leer','100','status',NULL,'Lowers the target''s Defense by one stage.',1,0,0,'normal','NA',30,0),
       (43,'bite','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,0,0,'dark','60',25,0),
       (44,'growl','100','status',NULL,'Lowers the target''s Attack by one stage.',1,0,0,'normal','NA',40,0),
       (45,'roar','NA','status',NULL,'Switches the target out for another of its trainer''s Pokémon selected at random.  Wild battles end immediately.

Doesn''t affect Pokémon with suction cups or under the effect of ingrain.',1,0,0,'normal','NA',20,-6),
       (46,'sing','55','status',NULL,'Puts the target to sleep.',1,0,0,'normal','NA',15,0),
       (47,'supersonic','55','status',NULL,'Confuses the target.',1,0,0,'normal','NA',20,0),
       (48,'sonic-boom','90','special',NULL,'Inflicts exactly 20 damage.',1,0,0,'normal','NA',20,0),
       (49,'disable','100','status',NULL,'Disables the target''s last used move, preventing its use for 4–7 turns, selected at random, or until the target leaves the field.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed,  if its last used move has 0 PP remaining, or if it already has a move disabled, this move will fail.',1,0,0,'normal','NA',20,0),
       (50,'acid','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',1,0,0,'poison','40',30,0),
       (51,'ember','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.',1,0,0,'fire','40',25,0),
       (52,'flamethrower','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.',1,0,0,'fire','90',15,0),
       (53,'mist','NA','status',NULL,'Pokémon on the user''s side of the field are immune to stat-lowering effects for five turns.

guard swap, heart swap, and power swap may still be used.

defog used by an opponent will end this effect.',1,0,0,'ice','NA',30,0),
       (54,'water-gun','100','special',NULL,'Inflicts regular damage.',1,0,0,'water','40',25,0),
       (55,'hydro-pump','80','special',NULL,'Inflicts regular damage.',1,0,0,'water','110',5,0),
       (56,'surf','100','special',NULL,'Inflicts regular damage.

If the target is in the first turn of dive, this move will hit with double power.',1,0,0,'water','90',15,0),
       (57,'ice-beam','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to freeze the target.',1,0,0,'ice','90',10,0),
       (58,'blizzard','70','special',NULL,'Inflicts regular damage.  Has a 10% chance to freeze the target.

During hail, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of protect and detect.',1,0,0,'ice','110',5,0),
       (59,'psybeam','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to confuse the target.',1,0,0,'psychic','65',20,0),
       (60,'bubble-beam','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,0,0,'water','65',20,0),
       (61,'aurora-beam','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Attack by one stage.',1,0,0,'ice','65',20,0),
       (62,'hyper-beam','90','special',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',1,0,0,'normal','150',5,0),
       (63,'peck','100','physical',NULL,'Inflicts regular damage.',1,0,0,'flying','35',35,0),
       (64,'drill-peck','100','physical',NULL,'Inflicts regular damage.',1,0,0,'flying','80',20,0),
       (65,'submission','80','physical',NULL,'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',1,0,0,'fighting','80',20,0),
       (66,'low-kick','100','physical',NULL,'Inflicts regular damage.  Power increases with the target''s weight in kilograms, to a maximum of 120.

Target''s weight | Power
--------------- | ----:
Up to 10kg      |    20
Up to 25kg      |    40
Up to 50kg      |    60
Up to 100kg     |    80
Up to 200kg     |   100
Above 200kg     |   120',1,0,0,'fighting','NA',20,0),
       (67,'counter','100','physical',NULL,'Targets the last opposing Pokémon to hit the user with a physical move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by mirror move, nor selected by assist or metronome.',1,0,0,'fighting','NA',20,-5),
       (68,'seismic-toss','100','physical',NULL,'Inflicts damage equal to the user''s level.  Type immunity applies, but other type effects are ignored.',1,0,0,'fighting','NA',20,0),
       (69,'strength','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','80',15,0),
       (70,'absorb','100','special',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,0,0,'grass','20',25,0),
       (71,'mega-drain','100','special',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,0,0,'grass','40',15,0),
       (72,'leech-seed','90','status',NULL,'Plants a seed on the target that drains 1/8 of its max HP at the end of every turn and heals the user for the amount taken.  Has no effect on grass Pokémon.  The seed remains until the target leaves the field.

The user takes damage instead of being healed if the target has liquid ooze.

rapid spin will remove this effect.

This effect is passed on by baton pass.',1,0,0,'grass','NA',10,0),
       (73,'growth','NA','status',NULL,'Raises the user''s Attack and Special Attack by one stage each.  During sunny day, raises both stats by two stages.',1,0,0,'normal','NA',20,0),
       (74,'razor-leaf','95','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,0,1,'grass','55',25,0),
       (75,'solar-beam','100','special',NULL,'Inflicts regular damage.  User charges for one turn before attacking.

During sunny day, the charge turn is skipped.

During hail, rain dance, or sandstorm, power is halved.

This move cannot be selected by sleep talk.',1,0,0,'grass','120',10,0),
       (76,'poison-powder','75','status',NULL,'Poisons the target.',1,0,0,'poison','NA',35,0),
       (77,'stun-spore','75','status',NULL,'Paralyzes the target.',1,0,0,'grass','NA',30,0),
       (78,'sleep-powder','75','status',NULL,'Puts the target to sleep.',1,0,0,'grass','NA',15,0),
       (79,'petal-dance','100','special',NULL,'Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',1,0,0,'grass','120',10,0),
       (80,'string-shot','95','status',NULL,'Lowers the target''s Speed by two stages.',1,0,0,'bug','NA',40,0),
       (81,'dragon-rage','100','special',NULL,'Inflicts exactly 40 damage.',1,0,0,'dragon','NA',10,0),
       (82,'fire-spin','85','special',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,0,0,'fire','35',15,0),
       (83,'thunder-shock','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,0,0,'electric','40',30,0),
       (84,'thunderbolt','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to paralyze the target.',1,0,0,'electric','90',15,0),
       (85,'thunder-wave','90','status',NULL,'Paralyzes the target.',1,0,0,'electric','NA',20,0),
       (86,'thunder','70','special',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.

During rain dance, this move has 100% accuracy.  It also has a (100 - accuracy)% chance to break through the protection of protect and detect.

During sunny day, this move has 50% accuracy.',1,0,0,'electric','110',10,0),
       (87,'rock-throw','90','physical',NULL,'Inflicts regular damage.',1,0,0,'rock','50',15,0),
       (88,'earthquake','100','physical',NULL,'Inflicts regular damage.

If the target is in the first turn of dig, this move will hit with double power.',1,0,0,'ground','100',10,0),
       (89,'fissure','30','physical',NULL,'Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',1,0,0,'ground','NA',5,0),
       (90,'dig','100','physical',NULL,'Inflicts regular damage.  User digs underground for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, earthquake, fissure, and magnitude still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be selected by sleep talk.',1,0,0,'ground','80',10,0),
       (91,'toxic','90','status',NULL,'Badly poisons the target.  Never misses when used by a poison-type Pokémon.',1,0,0,'poison','NA',10,0),
       (92,'confusion','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to confuse the target.',1,0,0,'psychic','50',25,0),
       (93,'psychic','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',1,0,0,'psychic','90',10,0),
       (94,'hypnosis','60','status',NULL,'Puts the target to sleep.',1,0,0,'psychic','NA',20,0),
       (95,'meditate','NA','status',NULL,'Raises the user''s Attack by one stage.',1,0,0,'psychic','NA',40,0),
       (96,'agility','NA','status',NULL,'Raises the user''s Speed by two stages.',1,0,0,'psychic','NA',30,0),
       (97,'quick-attack','100','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','40',30,1),
       (98,'rage','100','physical',NULL,'Inflicts regular damage.  Every time the user is hit after it uses this move but before its next action, its Attack raises by one stage.',1,0,0,'normal','20',20,0),
       (99,'teleport','NA','status',NULL,'Does nothing.  Wild battles end immediately.',1,0,0,'psychic','NA',20,-6),
       (100,'night-shade','100','special',NULL,'Inflicts damage equal to the user''s level.  Type immunity applies, but other type effects are ignored.',1,0,0,'ghost','NA',15,0),
       (101,'mimic','NA','status',NULL,'This move is replaced by the target''s last successfully used move, and its PP changes to 5.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, or if the user already knows the targeted move, this move will fail.  This effect vanishes when the user leaves the field.

If chatter, metronome, mimic, sketch, or struggle is selected, this move will fail.

This move cannot be copied by mirror move, nor selected by assist or metronome, nor forced by encore.',1,0,0,'normal','NA',10,0),
       (102,'screech','85','status',NULL,'Lowers the target''s Defense by two stages.',1,0,0,'normal','NA',40,0),
       (103,'double-team','NA','status',NULL,'Raises the user''s evasion by one stage.',1,0,0,'normal','NA',15,0),
       (104,'recover','NA','status',NULL,'Heals the user for half its max HP.',1,0,0,'normal','NA',10,0),
       (105,'harden','NA','status',NULL,'Raises the user''s Defense by one stage.',1,0,0,'normal','NA',30,0),
       (106,'minimize','NA','status',NULL,'Raises the user''s evasion by two stages.

stomp and steamroller have double power against Pokémon that have used this move since entering the field.',1,0,0,'normal','NA',10,0),
       (107,'smokescreen','100','status',NULL,'Lowers the target''s accuracy by one stage.',1,0,0,'normal','NA',20,0),
       (108,'confuse-ray','100','status',NULL,'Confuses the target.',1,0,0,'ghost','NA',10,0),
       (109,'withdraw','NA','status',NULL,'Raises the user''s Defense by one stage.',1,0,0,'water','NA',40,0),
       (110,'defense-curl','NA','status',NULL,'Raises user''s Defense by one stage.

After this move is used, the power of ice ball and rollout are doubled until the user leaves the field.',1,0,0,'normal','NA',40,0),
       (111,'barrier','NA','status',NULL,'Raises the user''s Defense by two stages.',1,0,0,'psychic','NA',20,0),
       (112,'light-screen','NA','status',NULL,'Erects a barrier around the user''s side of the field that reduces damage from special attacks by half for five turns.  In double battles, the reduction is 1/3.  Critical hits are not affected by the barrier.

If the user is holding light clay, the barrier lasts for eight turns.

brick break or defog used by an opponent will destroy the barrier.',1,0,0,'psychic','NA',30,0),
       (113,'haze','NA','status',NULL,'Removes stat, accuracy, and evasion modifiers from every Pokémon on the field.

This does not count as a stat reduction for the purposes of clear body or white smoke.',1,0,0,'ice','NA',30,0),
       (114,'reflect','NA','status',NULL,'Erects a barrier around the user''s side of the field that reduces damage from physical attacks by half for five turns.  In double battles, the reduction is 1/3.  Critical hits are not affected by the barrier.

If the user is holding light clay, the barrier lasts for eight turns.

brick break or defog used by an opponent will destroy the barrier.',1,0,0,'psychic','NA',20,0),
       (115,'focus-energy','NA','status',NULL,'User''s critical hit rate is two levels higher until it leaves the field.  If the user has already used focus energy since entering the field, this move will fail.

This effect is passed on by baton pass.',1,0,0,'normal','NA',30,0),
       (116,'bide','NA','physical',NULL,'User waits for two turns.  On the second turn, the user inflicts twice the damage it accumulated on the last Pokémon to hit it.  Damage inflicted is typeless.

This move cannot be selected by sleep talk.',1,0,0,'normal','NA',10,1),
       (117,'metronome','NA','status',NULL,'Selects any move at random and uses it.  Moves the user already knows are not eligible.  Assist, meta, protection, and reflection moves are also not eligible, specifically, assist, chatter, copycat, counter, covet, destiny bond, detect, endure, feint, focus punch, follow me, helping hand, me first, metronome, mimic, mirror coat, mirror move, protect, quick guard, sketch, sleep talk, snatch, struggle, switcheroo, thief, trick, and wide guard will not be selected by this move.

This move cannot be copied by mimic or mirror move, nor selected by assist, metronome, or sleep talk.',1,0,0,'normal','NA',10,0),
       (118,'mirror-move','NA','status',NULL,'Uses the last move targeted at the user by a Pokémon still on the field.  A move counts as targeting the user even if it hit multiple Pokémon, as long as the user was one of them, however, moves targeting the field itself do not count.  If the user has not been targeted by an appropriate move since entering the field, or if no Pokémon that targeted the user remains on the field, this move will fail.

Moves that failed, missed, had no effect, or were blocked are still copied.

Assist moves, time-delayed moves, “meta” moves that operate on other moves/Pokémon/abilities, and some other special moves cannot be copied and are ignored, if the last move to hit the user was such a move, the previous move will be used instead.  The full list of ignored moves is: acid armor, acupressure, after you, agility, ally switch, amnesia, aqua ring, aromatherapy, aromatic mist, assist, autotomize, barrier, baton pass, belch, belly drum, bide, bulk up, calm mind, camouflage, celebrate, charge, coil, conversion, conversion 2, copycat, cosmic power, cotton guard, counter, crafty shield, curse, defend order, defense curl, destiny bond, detect, doom desire, double team, dragon dance, electric terrain, endure, final gambit, flower shield, focus energy, focus punch, follow me, future sight, geomancy, grassy terrain, gravity, growth, grudge, guard split, hail, happy hour, harden, haze, heal bell, heal order, heal pulse, healing wish, helping hand, hold hands, hone claws, howl, imprison, ingrain, ion deluge, iron defense, kings shield, light screen, lucky chant, lunar dance, magic coat, magnet rise, magnetic flux, mat block, me first, meditate, metronome, milk drink, mimic, minimize, mirror coat, mirror move, mist, misty terrain, moonlight, morning sun, mud sport, nasty plot, nature power, perish song, power split, power trick, protect, psych up, quick guard, quiver dance, rage powder, rain dance, recover, recycle, reflect, reflect type, refresh, rest, rock polish, role play, roost, rototiller, safeguard, sandstorm, shadow blast, shadow bolt, shadow half, shadow rush, shadow shed, shadow sky, shadow storm, shadow wave, sharpen, shell smash, shift gear, sketch, slack off, sleep talk, snatch, soft boiled, spikes, spiky shield, spit up, splash, stealth rock, sticky web, stockpile, struggle, substitute, sunny day, swallow, swords dance, synthesis, tail glow, tailwind, teleport, toxic spikes, transform, water sport, wide guard, wish, withdraw and work up.

This move cannot be selected by assist, metronome, or sleep talk, nor forced by encore.',1,0,0,'flying','NA',20,0),
       (119,'self-destruct','100','physical',NULL,'User faints, even if the attack fails or misses.  Inflicts regular damage.',1,0,0,'normal','200',5,0),
       (120,'egg-bomb','75','physical',NULL,'Inflicts regular damage.',1,0,0,'normal','100',10,0),
       (121,'lick','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',1,0,0,'ghost','30',30,0),
       (122,'smog','70','special',NULL,'Inflicts regular damage.  Has a 40% chance to poison the target.',1,0,0,'poison','30',20,0),
       (123,'sludge','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to poison the target.',1,0,0,'poison','65',20,0),
       (124,'bone-club','85','physical',NULL,'Inflicts regular damage.  Has a 10% chance to make the target flinch.',1,0,0,'ground','65',20,0),
       (125,'fire-blast','85','special',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.',1,0,0,'fire','110',5,0),
       (126,'waterfall','100','physical',NULL,'Inflicts regular damage.  Has a 20% chance to make the target flinch.',1,0,0,'water','80',15,0),
       (127,'clamp','85','physical',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',1,0,0,'water','35',15,0),
       (128,'swift','NA','special',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',1,0,0,'normal','60',20,0),
       (129,'skull-bash','100','physical',NULL,'Inflicts regular damage.  Raises the user''s Defense by one stage.  User then charges for one turn before attacking.

This move cannot be selected by sleep talk.',1,0,0,'normal','130',10,0),
       (130,'spike-cannon','100','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','20',15,0),
       (131,'constrict','100','physical',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,0,0,'normal','10',35,0),
       (132,'amnesia','NA','status',NULL,'Raises the user''s Special Defense by two stages.',1,0,0,'psychic','NA',20,0),
       (133,'kinesis','80','status',NULL,'Lowers the target''s accuracy by one stage.',1,0,0,'psychic','NA',15,0),
       (134,'soft-boiled','NA','status',NULL,'Heals the user for half its max HP.',1,0,0,'normal','NA',10,0),
       (135,'high-jump-kick','90','physical',NULL,'Inflicts regular damage. If this move misses, is blocked by protect or detect, or has no effect, the user takes damage equal to half of its max HP rounded down.

This move cannot be used while gravity is in effect.',1,0,0,'fighting','130',10,0),
       (136,'glare','100','status',NULL,'Paralyzes the target.',1,0,0,'normal','NA',30,0),
       (137,'dream-eater','100','special',NULL,'Fails if not used on a sleeping Pokémon.  Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,0,0,'psychic','100',15,0),
       (138,'poison-gas','90','status',NULL,'Poisons the target.',1,0,0,'poison','NA',40,0),
       (139,'barrage','85','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','15',20,0),
       (140,'leech-life','100','physical',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',1,0,0,'bug','80',10,0),
       (141,'lovely-kiss','75','status',NULL,'Puts the target to sleep.',1,0,0,'normal','NA',10,0),
       (142,'sky-attack','90','physical',NULL,'Inflicts regular damage.  User charges for one turn before attacking.  Critical hit chance is one level higher than normal.  Has a 30% chance to make the target flinch.

This move cannot be selected by sleep talk.',1,0,1,'flying','140',5,0),
       (143,'transform','NA','status',NULL,'User copies the target''s species, weight, type, ability, calculated stats (except HP), and moves.  Copied moves will all have 5 PP remaining.  IVs are copied for the purposes of hidden power, but stats are not recalculated.

choice band, choice scarf, and choice specs stay in effect, and the user must select a new move.

This move cannot be copied by mirror move, nor forced by encore.',1,0,0,'normal','NA',10,0),
       (144,'bubble','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Speed by one stage.',1,0,0,'water','40',30,0),
       (145,'dizzy-punch','100','physical',NULL,'Inflicts regular damage.  Has a 20% chance to confuse the target.',1,0,0,'normal','70',10,0),
       (146,'spore','100','status',NULL,'Puts the target to sleep.',1,0,0,'grass','NA',15,0),
       (147,'flash','100','status',NULL,'Lowers the target''s accuracy by one stage.',1,0,0,'normal','NA',20,0),
       (148,'psywave','100','special',NULL,'Inflicts typeless damage between 50% and 150% of the user''s level, selected at random in increments of 10%.',1,0,0,'psychic','NA',15,0),
       (149,'splash','NA','status',NULL,'Does nothing.

This move cannot be used while gravity is in effect.',1,0,0,'normal','NA',40,0),
       (150,'acid-armor','NA','status',NULL,'Raises the user''s Defense by two stages.',1,0,0,'poison','NA',20,0),
       (151,'crabhammer','90','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,0,1,'water','100',10,0),
       (152,'explosion','100','physical',NULL,'User faints, even if the attack fails or misses.  Inflicts regular damage.',1,0,0,'normal','250',5,0),
       (153,'fury-swipes','80','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',1,0,0,'normal','18',15,0),
       (154,'bonemerang','90','physical',NULL,'Inflicts regular damage.  Hits twice in one turn.',1,0,0,'ground','50',10,0),
       (155,'rest','NA','status',NULL,'User falls to sleep and immediately regains all its HP.  If the user has another major status effect, sleep will replace it.  The user will always wake up after two turns, or one turn with early bird.

This move fails if the Pokémon cannot fall asleep due to uproar, insomnia, or vital spirit.  It also fails if the Pokémon is at full health or is already asleep.',1,0,0,'psychic','NA',10,0),
       (156,'rock-slide','90','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',1,0,0,'rock','75',10,0),
       (157,'hyper-fang','90','physical',NULL,'Inflicts regular damage.  Has a 10% chance to make the target flinch.',1,0,0,'normal','80',15,0),
       (158,'sharpen','NA','status',NULL,'Raises the user''s Attack by one stage.',1,0,0,'normal','NA',30,0),
       (159,'conversion','NA','status',NULL,'User''s type changes to the type of one of its moves, selected at random.  hidden power and weather ball are treated as normal.  Only moves with a different type are eligible, and curse is never eligible.  If the user has no suitable moves, this move will fail.',1,0,0,'normal','NA',30,0),
       (160,'tri-attack','100','special',NULL,'Inflicts regular damage.  Has a 20% chance to burn, freeze, or paralyze the target.  One of these effects is selected at random, they do not each have independent chances to occur.',1,0,0,'normal','80',10,0),
       (161,'super-fang','90','physical',NULL,'Inflicts typeless damage equal to half the target''s remaining HP.',1,0,0,'normal','NA',10,0),
       (162,'slash','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',1,0,1,'normal','70',20,0),
       (163,'substitute','NA','status',NULL,'Transfers 1/4 the user''s max HP into a doll that absorbs damage and causes most negative move effects to fail.  If the user leaves the field, the doll will vanish.  If the user cannot pay the HP cost, this move will fail.

The doll takes damage as normal, using the user''s stats and types, and will break when its HP reaches zero.  Self-inflicted damage from confusion or recoil is not absorbed.  Healing effects from opponents ignore the doll and heal the user as normal.  Moves that work based on the user''s HP still do so, the doll''s HP does not influence any move.

The doll will block major status effects, confusion, and flinching.  The effects of smelling salts and wake up slap do not trigger against a doll, even if the Pokémon behind the doll has the appropriate major status effect.  Multi-turn trapping moves like wrap will hit the doll for their regular damage, but the multi-turn trapping and damage effects will not activate.

Moves blocked or damage absorbed by the doll do not count as hitting the user or inflicting damage for any effects that respond to such, e.g., avalanche, counter, or a rowap berry.  magic coat still works as normal, even against moves the doll would block.  Opposing Pokémon that damage the doll with a leech move like absorb are healed as normal.

It will also block acupressure, block, the curse effect of curse, dream eater, embargo, flatter, gastro acid, grudge, heal block, leech seed, lock on, mean look, mimic, mind reader, nightmare, pain split, psycho shift, spider web, sketch, swagger, switcheroo, trick, worry seed, and yawn.  A Pokémon affected by yawn before summoning the doll will still fall to sleep.

The doll blocks intimidate, but all other abilities act as though the doll did not exist.  If the user has an ability that absorbs moves of a certain type for HP (such as volt absorb absorbing thunder wave), such moves will not be blocked.

life orb and berries that cause confusion still work as normal, but their respective HP loss and confusion are absorbed/blocked by the doll.

The user is still vulnerable to damage inflicted when entering or leaving the field, such as by pursuit or spikes, however, the doll will block the poison effect of toxic spikes.

The doll is passed on by baton pass.  It keeps its existing HP, but uses the replacement Pokémon''s stats and types for damage calculation.

All other effects work as normal.',1,0,0,'normal','NA',10,0),
       (164,'struggle','NA','physical',NULL,'Inflicts typeless regular damage.  User takes 1/4 its max HP in recoil.  Ignores accuracy and evasion modifiers.

This move is used automatically when a Pokémon cannot use any other move legally, e.g., due to having no PP remaining or being under the effect of both encore and torment at the same time.

This move''s recoil is not treated as recoil for the purposes of anything that affects recoil, such as the ability rock head.  It also is not prevented by magic guard.

This move cannot be copied by mimic, mirror move, or sketch, nor selected by assist or metronome, nor forced by encore.',1,0,0,'normal','50',1,0),
       (165,'sketch','NA','status',NULL,'Permanently replaces itself with the target''s last used move.  If that move is chatter or struggle, this move will fail.

This move cannot be copied by mimic or mirror move, nor selected by assist or metronome, nor forced by encore.',2,0,0,'normal','NA',1,0),
       (166,'triple-kick','90','physical',NULL,'Inflicts regular damage.  Hits three times in the same turn.  The second hit has double power, and the third hit has triple power.  Each hit has a separate accuracy check, and this move stops if a hit misses.

skill link does not apply.',2,0,0,'fighting','10',10,0),
       (167,'thief','100','physical',NULL,'Inflicts regular damage.  If the target is holding an item and the user is not, the user will permanently take the item.  Damage is still inflicted if an item cannot be taken.

Pokémon with sticky hold or multitype are immune to the item theft effect.

The target cannot recover its item with recycle.

This move cannot be selected by assist or metronome.',2,0,0,'dark','60',25,0),
       (168,'spider-web','NA','status',NULL,'The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',2,0,0,'bug','NA',10,0),
       (169,'mind-reader','NA','status',NULL,'If the user targets the same target again before the end of the next turn, the move it uses is guaranteed to hit.  This move itself also ignores accuracy and evasion modifiers.

One-hit KO moves are also guaranteed to hit, as long as the user is equal or higher level than the target.  This effect also allows the user to hit Pokémon that are off the field due to moves such as dig or fly.

If the target uses detect or protect while under the effect of this move, the user is not guaranteed to hit, but has a (100 - accuracy)% chance to break through the protection.

This effect is passed on by baton pass.',2,0,0,'normal','NA',5,0),
       (170,'nightmare','100','status',NULL,'Only works on sleeping Pokémon.  Gives the target a nightmare, damaging it for 1/4 its max HP every turn.  If the target wakes up or leaves the field, this effect ends.',2,0,0,'ghost','NA',15,0),
       (171,'flame-wheel','100','physical',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',2,0,0,'fire','60',25,0),
       (172,'snore','100','special',NULL,'Only usable if the user is sleeping.  Inflicts regular damage.  Has a 30% chance to make the target flinch.',2,0,0,'normal','50',15,0),
       (173,'curse','NA','status',NULL,'If the user is a ghost: user pays half its max HP to place a curse on the target, damaging it for 1/4 its max HP every turn.
Otherwise: Lowers the user''s Speed by one stage, and raises its Attack and Defense by one stage each.

The curse effect is passed on by baton pass.

This move cannot be copied by mirror move.',2,0,0,'ghost','NA',10,0),
       (174,'flail','100','physical',NULL,'Inflicts regular damage.  Power varies inversely with the user''s proportional remaining HP.

64 * current HP / max HP | Power
-----------------------: | ----:
 0– 1                    |  200
 2– 5                    |  150
 6–12                    |  100
13–21                    |   80
22–42                    |   40
43–64                    |   20',2,0,0,'normal','NA',15,0),
       (175,'conversion-2','NA','status',NULL,'Changes the user''s type to a type either resistant or immune to the last damaging move that hit it.  The new type is selected at random and cannot be a type the user already is.  If there is no eligible new type, this move will fail.',2,0,0,'normal','NA',30,0),
       (176,'aeroblast','95','special',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',2,0,1,'flying','100',5,0),
       (177,'cotton-spore','100','status',NULL,'Lowers the target''s Speed by two stages.',2,0,0,'grass','NA',40,0),
       (178,'reversal','100','physical',NULL,'Inflicts regular damage.  Power varies inversely with the user''s proportional remaining HP.

64 * current HP / max HP | Power
-----------------------: | ----:
 0– 1                    |  200
 2– 5                    |  150
 6–12                    |  100
13–21                    |   80
22–42                    |   40
43–64                    |   20',2,0,0,'fighting','NA',15,0),
       (179,'spite','100','status',NULL,'Lowers the PP of the target''s last used move by 4.  If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, or if its last used move has 0 PP remaining, this move will fail.',2,0,0,'ghost','NA',10,0),
       (180,'powder-snow','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to freeze the target.',2,0,0,'ice','40',25,0),
       (181,'protect','NA','status',NULL,'No moves will hit the user for the remainder of this turn.  If the user is last to act this turn, this move will fail.

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

This move cannot be selected by assist or metronome.',2,0,0,'normal','NA',10,4),
       (182,'mach-punch','100','physical',NULL,'Inflicts regular damage.',2,0,0,'fighting','40',30,1),
       (183,'scary-face','100','status',NULL,'Lowers the target''s Speed by two stages.',2,0,0,'normal','NA',10,0),
       (184,'feint-attack','NA','physical',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',2,0,0,'dark','60',20,0),
       (185,'sweet-kiss','75','status',NULL,'Confuses the target.',2,0,0,'fairy','NA',10,0),
       (186,'belly-drum','NA','status',NULL,'User pays half its max HP to raise its Attack to +6 stages.  If the user cannot pay the HP cost, this move will fail.',2,0,0,'normal','NA',10,0),
       (187,'sludge-bomb','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to poison the target.',2,0,0,'poison','90',10,0),
       (188,'mud-slap','100','special',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s accuracy by one stage.',2,0,0,'ground','20',10,0),
       (189,'octazooka','85','special',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s accuracy by one stage.',2,0,0,'water','65',10,0),
       (190,'spikes','NA','status',NULL,'Scatters spikes around the opposing field, which damage opposing Pokémon that enter the field for 1/8 of their max HP.  Pokémon immune to ground moves are immune to this damage, except during gravity.  Up to three layers of spikes may be laid down, adding 1/16 to the damage done: two layers of spikes damage for 3/16 max HP, and three layers damage for 1/4 max HP.

wonder guard does not block damage from this effect.

rapid spin removes this effect from its user''s side of the field.  defog removes this effect from its target''s side of the field.',2,0,0,'ground','NA',20,0),
       (191,'zap-cannon','50','special',NULL,'Inflicts regular damage.  Has a 100% chance to paralyze the target.',2,0,0,'electric','120',5,0),
       (192,'foresight','NA','status',NULL,'Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A ghost under this effect takes normal damage from normal and fighting moves.  This move itself ignores accuracy and evasion modifiers.',2,0,0,'normal','NA',40,0),
       (193,'destiny-bond','NA','status',NULL,'If the user faints before its next move, the Pokémon that fainted it will automatically faint.  End-of-turn damage is ignored.

This move cannot be selected by assist or metronome.',2,0,0,'ghost','NA',5,0),
       (194,'perish-song','NA','status',NULL,'Every Pokémon is given a counter that starts at 3 and decreases by 1 at the end of every turn, including this one.  When a Pokémon''s counter reaches zero, that Pokémon faints.  A Pokémon that leaves the field will lose its counter, its replacement does not inherit the effect, and other Pokémon''s counters remain.

This effect is passed on by baton pass.

This move cannot be copied by mirror move.',2,0,0,'normal','NA',5,0),
       (195,'icy-wind','95','special',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',2,0,0,'ice','55',15,0),
       (196,'detect','NA','status',NULL,'No moves will hit the user for the remainder of this turn.  If the user is last to act this turn, this move will fail.

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

This move cannot be selected by assist or metronome.',2,0,0,'fighting','NA',5,4),
       (197,'bone-rush','90','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',2,0,0,'ground','25',10,0),
       (198,'lock-on','NA','status',NULL,'If the user targets the same target again before the end of the next turn, the move it uses is guaranteed to hit.  This move itself also ignores accuracy and evasion modifiers.

One-hit KO moves are also guaranteed to hit, as long as the user is equal or higher level than the target.  This effect also allows the user to hit Pokémon that are off the field due to moves such as dig or fly.

If the target uses detect or protect while under the effect of this move, the user is not guaranteed to hit, but has a (100 - accuracy)% chance to break through the protection.

This effect is passed on by baton pass.',2,0,0,'normal','NA',5,0),
       (199,'outrage','100','physical',NULL,'Inflicts regular damage.  User is forced to attack with this move for 2–3 turns,selected at random.  After the last hit, the user becomes confused.

safeguard does not protect against the confusion from this move.',2,0,0,'dragon','120',10,0),
       (200,'sandstorm','NA','status',NULL,'Changes the weather to a sandstorm for five turns.  Pokémon that are not ground, rock, or steel take 1/16 their max HP at the end of every turn.  Every rock Pokémon''s original Special Defense is raised by 50% for the duration of this effect.

solar beam''s power is halved.

moonlight, morning sun, and synthesis only heal 1/4 the user''s max HP.',2,0,0,'rock','NA',10,0),
       (201,'giga-drain','100','special',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',2,0,0,'grass','75',10,0),
       (202,'endure','NA','status',NULL,'The user''s HP cannot be lowered below 1 by any means for the remainder of this turn.

If the user successfully used detect, endure, protect, quick guard, or wide guard on the last turn, this move has a 50% chance to fail.

This move cannot be selected by assist or metronome.',2,0,0,'normal','NA',10,4),
       (203,'charm','100','status',NULL,'Lowers the target''s Attack by two stages.',2,0,0,'fairy','NA',20,0),
       (204,'rollout','90','physical',NULL,'Inflicts regular damage.  User is forced to use this move for five turns.  Power doubles every time this move is used in succession to a maximum of 16x, and resets to normal after the lock-in ends.  If this move misses or becomes unusable, the lock-in ends.

If the user has used defense curl since entering the field, this move has double power.',2,0,0,'rock','30',20,0),
       (205,'false-swipe','100','physical',NULL,'Inflicts regular damage.  Will not reduce the target''s HP below 1.',2,0,0,'normal','40',40,0),
       (206,'swagger','85','status',NULL,'Raises the target''s Attack by two stages, then confuses it.  If the target''s Attack cannot be raised by two stages, the confusion is not applied.',2,0,0,'normal','NA',15,0),
       (207,'milk-drink','NA','status',NULL,'Heals the user for half its max HP.',2,0,0,'normal','NA',10,0),
       (208,'spark','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',2,0,0,'electric','65',20,0),
       (209,'fury-cutter','95','physical',NULL,'Inflicts regular damage.  Power doubles after every time this move is used, whether consecutively or not, maxing out at 16x.  If this move misses or the user leaves the field, power resets.',2,0,0,'bug','40',20,0),
       (210,'steel-wing','90','physical',NULL,'Inflicts regular damage. Has a 10% chance to raise the user''s Defense one stage.',2,0,0,'steel','70',25,0),
       (211,'mean-look','NA','status',NULL,'The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',2,0,0,'normal','NA',5,0),
       (212,'attract','100','status',NULL,'Causes the target to fall in love with the user, giving it a 50% chance to do nothing each turn.  If the user and target are the same gender, or either is genderless, this move will fail.  If either Pokémon leaves the field, this effect ends.',2,0,0,'normal','NA',15,0),
       (213,'sleep-talk','NA','status',NULL,'Only usable if the user is sleeping.  Randomly selects and uses one of the user''s other three moves.  Use of the selected move requires and costs 0 PP.

This move will not select assist, bide, bounce, chatter, copycat, dig, dive, fly, focus punch, me first, metronome, mirror move, shadow force, skull bash, sky attack, sky drop, sleep talk, solar beam, razor wind, or uproar.

If the selected move requires a recharge turn—i.e., one of blast burn, frenzy plant, giga impact, hydro cannon, hyper beam, roar of time, or rock wrecker—and the user is still sleeping next turn, then it''s forced to use this move again and pay another PP for the recharge turn.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',2,0,0,'normal','NA',10,0),
       (214,'heal-bell','NA','status',NULL,'Removes major status effects and confusion from every Pokémon in the user''s party.',2,0,0,'normal','NA',5,0),
       (215,'return','100','physical',NULL,'Inflicts regular damage.  Power increases with happiness, given by `happiness * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.',2,0,0,'normal','NA',20,0),
       (216,'present','90','physical',NULL,'Randomly uses one of the following effects.

Effect                                             | Chance
-------------------------------------------------- | -----:
Inflicts regular damage with 40 power  |    40%
Inflicts regular damage with 80 power  |    30%
Inflicts regular damage with 120 power |    10%
Heals the target for 1/4 its max HP    |    20%

On average, this move inflicts regular damage with 52 power and heals the target for 1/20 its max HP.',2,0,0,'normal','NA',15,0),
       (217,'frustration','100','physical',NULL,'Inflicts regular damage.  Power increases inversely with happiness, given by `(255 - happiness) * 2 / 5`, to a maximum of 102.  Power bottoms out at 1.',2,0,0,'normal','NA',20,0),
       (218,'safeguard','NA','status',NULL,'Protects Pokémon on the user''s side of the field from major status effects and confusion for five turns.  Does not cancel existing ailments.  This effect remains even if the user leaves the field.

If yawn is used while this move is in effect, it will immediately fail.

defog used by an opponent will end this effect.

This effect does not prevent the confusion caused by outrage, petal dance, or thrash.',2,0,0,'normal','NA',25,0),
       (219,'pain-split','NA','status',NULL,'Changes the user''s and target''s remaining HP to the average of their current remaining HP.  Ignores accuracy and evasion modifiers.  This effect does not count as inflicting damage for other moves and effects that respond to damage taken.

This effect fails against a substitute.',2,0,0,'normal','NA',20,0),
       (220,'sacred-fire','95','physical',NULL,'Inflicts regular damage.  Has a 50% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',2,0,0,'fire','100',5,0),
       (221,'magnitude','100','physical',NULL,'Inflicts regular damage.  Power is selected at random between 10 and 150, with an average of 71:

Magnitude | Power | Chance
--------: | ----: | -----:
        4 |    10 |     5%
        5 |    30 |    10%
        6 |    50 |    20%
        7 |    70 |    30%
        8 |    90 |    20%
        9 |   110 |    10%
       10 |   150 |     5%

This move has double power against Pokémon currently underground due to dig.',2,0,0,'ground','NA',30,0),
       (222,'dynamic-punch','50','physical',NULL,'Inflicts regular damage.  Has a 100% chance to confuse the target.',2,0,0,'fighting','100',5,0),
       (223,'megahorn','85','physical',NULL,'Inflicts regular damage.',2,0,0,'bug','120',10,0),
       (224,'dragon-breath','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',2,0,0,'dragon','60',20,0),
       (225,'baton-pass','NA','status',NULL,'User switches out, and the trainer selects a replacement Pokémon from the party.  Stat changes, confusion, and persistent move effects are passed along to the replacement Pokémon.

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

The replacement Pokémon does not trigger effects that respond to Pokémon switching in.',2,0,0,'normal','NA',40,0),
       (226,'encore','100','status',NULL,'The next 4–8 times (selected at random) the target attempts to move, it is forced to repeat its last used move.  If the selected move allows the trainer to select a target, an opponent will be selected at random each turn.  If the target is prevented from using the selected move by some other effect, struggle will be used instead.  This effect ends if the selected move runs out of PP.

If the target hasn''t used a move since entering the field, if it tried to use a move this turn and failed, if it does not know the selected move, or if the selected move has 0 PP remaining, this move will fail.  If the target''s last used move was encore, mimic, mirror move, sketch, struggle, or transform, this move will fail.',2,0,0,'normal','NA',5,0),
       (227,'pursuit','100','physical',NULL,'Inflicts regular damage.  If the target attempts to switch out this turn before the user acts, this move hits the target before it leaves and has double power.

This effect can still hit a Pokémon that switches out when it has a substitute up or when an ally has used follow me.',2,0,0,'dark','40',20,0),
       (228,'rapid-spin','100','physical',NULL,'Inflicts regular damage.  Removes leech seed from the user, frees the user from bind, clamp, fire spin, magma storm, sand tomb, whirlpool, and wrap, and clears spikes, stealth rock, and toxic spikes from the user''s side of the field.  If this move misses or has no effect, its effect doesn''t activate.',2,0,0,'normal','50',40,0),
       (229,'sweet-scent','100','status',NULL,'Lowers the target''s evasion by one stage.',2,0,0,'normal','NA',20,0),
       (230,'iron-tail','75','physical',NULL,'Inflicts regular damage.  Has a 30% chance to lower the target''s Defense by one stage.',2,0,0,'steel','100',15,0),
       (231,'metal-claw','95','physical',NULL,'Inflicts regular damage. Has a 10% chance to raise the user''s Attack one stage.',2,0,0,'steel','50',35,0),
       (232,'vital-throw','NA','physical',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',2,0,0,'fighting','70',10,-1),
       (233,'morning-sun','NA','status',NULL,'Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,0,0,'normal','NA',5,0),
       (234,'synthesis','NA','status',NULL,'Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,0,0,'grass','NA',5,0),
       (235,'moonlight','NA','status',NULL,'Heals the user for half its max HP.

During sunny day, the healing is increased to 2/3 max HP.

During hail, rain dance, or sandstorm, the healing is decreased to 1/4 max HP.',2,0,0,'fairy','NA',5,0),
       (236,'hidden-power','100','special',NULL,'Inflicts regular damage.  Power and type are determined by the user''s IVs.

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

This move thus cannot be normal.  Most other types have an equal 1/16 chance to be selected, given random IVs.  However, due to the flooring used here, bug, fighting, and grass appear 5/64 of the time, and dark only 1/64 of the time.',2,0,0,'normal','60',15,0),
       (237,'cross-chop','80','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',2,0,1,'fighting','100',5,0),
       (238,'twister','100','special',NULL,'Inflicts regular damage.  Has a 20% chance to make each target flinch.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.',2,0,0,'dragon','40',20,0),
       (239,'rain-dance','NA','status',NULL,'Changes the weather to rain for five turns, during which water moves inflict 50% extra damage, and fire moves inflict half damage.

If the user is holding damp rock, this effect lasts for eight turns.

thunder has 100% accuracy.  If the target has used detect or protect, thunder has a (100 - accuracy)% chance to break through the protection.

solar beam has half power.

moonlight, morning sun, and synthesis heal only 1/4 of the user''s max HP.

Pokémon with swift swim have doubled original Speed.

Pokémon with forecast become water.

Pokémon with dry skin heal 1/8 max HP, Pokémon with hydration are cured of major status effects, and Pokémon with rain dish heal 1/16 max HP at the end of each turn.',2,0,0,'water','NA',5,0),
       (240,'sunny-day','NA','status',NULL,'Changes the weather to sunshine for five turns, during which fire moves inflict 50% extra damage, and water moves inflict half damage.

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

Pokémon with solar power have their original Special Attack raised by 50% but lose 1/8 their max HP at the end of each turn.',2,0,0,'fire','NA',5,0),
       (241,'crunch','100','physical',NULL,'Inflicts regular damage.  Has a 20% chance to lower the target''s Defense by one stage.',2,0,0,'dark','80',15,0),
       (242,'mirror-coat','100','special',NULL,'Targets the last opposing Pokémon to hit the user with a special move this turn.  Inflicts twice the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.

This move cannot be copied by mirror move, nor selected by assist or metronome.',2,0,0,'psychic','NA',20,-5),
       (243,'psych-up','NA','status',NULL,'Discards the user''s stat changes and copies the target''s.

This move cannot be copied by mirror move.',2,0,0,'normal','NA',10,0),
       (244,'extreme-speed','100','physical',NULL,'Inflicts regular damage.',2,0,0,'normal','80',5,2),
       (245,'ancient-power','100','special',NULL,'Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',2,0,0,'rock','60',5,0),
       (246,'shadow-ball','100','special',NULL,'Inflicts regular damage.  Has a 20% chance to lower the target''s Special Defense by one stage.',2,0,0,'ghost','80',15,0),
       (247,'future-sight','100','special',NULL,'Inflicts typeless regular damage at the end of the third turn, starting with this one.  This move cannot score a critical hit.  If the target switches out, its replacement will be hit instead.  Damage is calculated at the time this move is used, stat changes and switching out during the delay won''t change the damage inflicted.  No move with this effect can be used against the same target again until after the end of the third turn.

This effect breaks through wonder guard.

If the target is protected by protect or detect on the turn this move is used, this move will fail.  However, the damage on the third turn will break through protection.

The damage is applied at the end of the turn, so it ignores endure and focus sash.

This move cannot be copied by mirror move.',2,0,0,'psychic','120',10,0),
       (248,'rock-smash','100','physical',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',2,0,0,'fighting','40',15,0),
       (249,'whirlpool','85','special',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

If the target is in the first turn of dive, this move will hit with double power.',2,0,0,'water','35',15,0),
       (250,'beat-up','100','physical',NULL,'Inflicts typeless regular damage.  Every Pokémon in the user''s party, excepting those that have fainted or have a major status effect, attacks the target.  Calculated stats are ignored, the base stats for the target and assorted attackers are used instead.  The random factor in the damage formula is not used.  dark Pokémon still get STAB.

This effect breaks through wonder guard.',2,0,0,'dark','NA',10,0),
       (251,'fake-out','100','physical',NULL,'Inflicts regular damage.  Causes the target to flinch.  Can only be used on the user''s first turn after entering the field.',3,0,0,'normal','40',10,3),
       (252,'uproar','100','special',NULL,'Inflicts regular damage.  User is forced to use this move for 2–5 turns, selected at random.  All Pokémon on the field wake up, and none can fall to sleep until the lock-in ends.

Pokémon cannot use rest during this effect.

This move cannot be selected by sleep talk.',3,0,0,'normal','90',10,0),
       (253,'stockpile','NA','status',NULL,'Raises the user''s Defense and Special Defense by one stage each.  Stores energy for use with spit up and swallow.  Up to three levels of energy can be stored, and all are lost if the user leaves the field.  Energy is still stored even if the stat boosts cannot be applied.

If the user uses baton pass, the stat boosts are passed as normal, but the stored energy is not.',3,0,0,'normal','NA',20,0),
       (254,'spit-up','100','special',NULL,'Inflicts regular damage.  Power is equal to 100 times the amount of energy stored by stockpile.  Ignores the random factor in the damage formula.  Stored energy is consumed, and the user''s Defense and Special Defense are reset to what they would be if stockpile had not been used.  If the user has no energy stored, this move will fail.

This move cannot be copied by mirror move.',3,0,0,'normal','NA',10,0),
       (255,'swallow','NA','status',NULL,'Heals the user depending on the amount of energy stored by stockpile: 1/4 its max HP after one use, 1/2 its max HP after two uses, or fully after three uses.  Stored energy is consumed, and the user''s Defense and Special Defense are reset to what they would be if stockpile had not been used.  If the user has no energy stored, this move will fail.',3,0,0,'normal','NA',10,0),
       (256,'heat-wave','90','special',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target.',3,0,0,'fire','95',10,0),
       (257,'hail','NA','status',NULL,'Changes the weather to hail for five turns, during which non-ice Pokémon are damaged for 1/16 their max HP at the end of every turn.

If the user is holding icy rock, this effect lasts for eight turns.

blizzard has 100% accuracy.  If the target has used detect or protect, blizzard has a (100 - accuracy)% chance to break through the protection.

moonlight, morning sun, and synthesis heal only 1/4 of the user''s max HP.

Pokémon with snow cloak are exempt from this effect''s damage.',3,0,0,'ice','NA',10,0),
       (258,'torment','100','status',NULL,'Prevents the target from attempting to use the same move twice in a row.  When the target leaves the field, this effect ends.

If the target is forced to attempt a repeated move due to choice band, choice scarf, choice specs, disable, encore, taunt, only having PP remaining for one move, or any other effect, the target will use struggle instead.  The target is then free to use the forced move next turn, as it didn''t use that move this turn.',3,0,0,'dark','NA',15,0),
       (259,'flatter','100','status',NULL,'Raises the target''s Special Attack by one stage, then confuses it.',3,0,0,'dark','NA',15,0),
       (260,'will-o-wisp','85','status',NULL,'Burns the target.',3,0,0,'fire','NA',15,0),
       (261,'memento','100','status',NULL,'Lowers the target''s Attack and Special Attack by two stages.  User faints.',3,0,0,'dark','NA',10,0),
       (262,'facade','100','physical',NULL,'Inflicts regular damage.  If the user is burned, paralyzed, or poisoned, this move has double power.',3,0,0,'normal','70',20,0),
       (263,'focus-punch','100','physical',NULL,'Inflicts regular damage.  If the user takes damage this turn before hitting, this move will fail.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',3,0,0,'fighting','150',20,-3),
       (264,'smelling-salts','100','physical',NULL,'Inflicts regular damage.  If the target is paralyzed, this move has double power, and the target is cured of its paralysis.',3,0,0,'normal','70',10,0),
       (265,'follow-me','NA','status',NULL,'Until the end of this turn, any moves that opposing Pokémon target solely at the user''s ally will instead target the user.  If both Pokémon on the same side of the field use this move on the same turn, the Pokémon that uses it last will become the target.

This effect takes priority over lightning rod and storm drain.

If the user''s ally switches out, opposing Pokémon may still hit it with pursuit.

This move cannot be selected by assist or metronome.',3,0,0,'normal','NA',20,2),
       (266,'nature-power','NA','status',NULL,'Uses another move chosen according to the terrain.

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

This move cannot be copied by mirror move.',3,0,0,'normal','NA',20,0),
       (267,'charge','NA','status',NULL,'Raises the user''s Special Defense by one stage.  If the user uses an electric move next turn, its power will be doubled.',3,0,0,'electric','NA',20,0),
       (268,'taunt','100','status',NULL,'Target is forced to only use damaging moves for the next 3–5 turns, selected at random.  Moves that select other moves not known in advance do not count as damaging.

assist, copycat, me first, metronome, mirror move, and sleep talk do not directly inflict damage and thus may not be used.

bide, counter, endeavor, metal burst, and mirror coat are allowed.',3,0,0,'dark','NA',20,0),
       (269,'helping-hand','NA','status',NULL,'Boosts the power of the target''s moves by 50% until the end of this turn.

This move cannot be copied by mirror move, nor selected by assist or metronome.',3,0,0,'normal','NA',20,5),
       (270,'trick','100','status',NULL,'User and target permanently swap held items.  Works even if one of the Pokémon isn''t holding anything.  If either Pokémon is holding mail, this move will fail.

If either Pokémon has multitype or sticky hold, this move will fail.

If this move results in a Pokémon obtaining choice band, choice scarf, or choice specs, and that Pokémon was the latter of the pair to move this turn, then the move it used this turn becomes its chosen forced move.  This applies even if both Pokémon had a choice item before this move was used.  If the first of the two Pokémon gains a choice item, it may select whatever choice move it wishes next turn.

Neither the user nor the target can recover its item with recycle.

This move cannot be selected by assist or metronome.',3,0,0,'psychic','NA',10,0),
       (271,'role-play','NA','status',NULL,'User''s ability is replaced with the target''s until the user leaves the field.  Ignores accuracy and evasion modifiers.

If the target has flower gift, forecast, illusion, imposter, multitype, stance change, trace, wonder guard, or zen mode, this move will fail.

This move cannot be copied by mirror move.',3,0,0,'psychic','NA',10,0),
       (272,'wish','NA','status',NULL,'At the end of the next turn, user will be healed for half its max HP.  If the user is switched out, its replacement will be healed instead for half of the user''s max HP.  If the user faints or is forcefully switched by roar or whirlwind, this effect will not activate.',3,0,0,'normal','NA',10,0),
       (273,'assist','NA','status',NULL,'Uses a move from another Pokémon in the user''s party, both selected at random.  Moves from fainted Pokémon can be used.  If there are no eligible Pokémon or moves, this move will fail.

This move will not select assist, chatter, circle throw, copycat, counter, covet, destiny bond, detect, dig, dive, dragon tail, endure, feint, fly focus punch, follow me, helping hand, me first, metronome, mimic, mirror coat, mirror move, phantom force protect, quick guard, roar shadow force, sketch, sleep talk, snatch, struggle, switcheroo, thief, trick, whirlwind, or wide guard.

This move cannot be copied by mirror move, nor selected by metronome or sleep talk.',3,0,0,'normal','NA',20,0),
       (274,'ingrain','NA','status',NULL,'Prevents the user from switching out.  User regains 1/16 of its max HP at the end of every turn.  If the user was immune to ground attacks, it will now take normal damage from them.

roar and whirlwind will not affect the user.  The user cannot use magnet rise.

The user may still use u turn to leave the field.

This effect can be passed with baton pass.',3,0,0,'grass','NA',20,0),
       (275,'superpower','100','physical',NULL,'Inflicts regular damage, then lowers the user''s Attack and Defense by one stage each.',3,0,0,'fighting','120',5,0),
       (276,'magic-coat','NA','status',NULL,'The first non-damaging move targeting the user this turn that inflicts major status effects, stat changes, or trapping effects will be reflected at its user.

defog, memento, and teeter dance are not reflected.

attract, flatter, gastro acid, leech seed, swagger, worry seed, and yawn are reflected.

This move cannot be copied by mirror move.',3,0,0,'psychic','NA',15,4),
       (277,'recycle','NA','status',NULL,'User recovers the last item consumed by the user or a Pokémon in its position on the field.  The item must be used again before it can be recovered by this move again.  If the user is holding an item, this move fails.

Items taken or given away by covet, knock off, switcheroo, thief, or trick may not be recovered.',3,0,0,'normal','NA',10,0),
       (278,'revenge','100','physical',NULL,'Inflicts regular damage.  If the target damaged the user this turn and was the last to do so, this move has double power.

pain split does not count as damaging the user.',3,0,0,'fighting','60',10,-4),
       (279,'brick-break','100','physical',NULL,'Destroys any light screen or reflect on the target''s side of the field, then inflicts regular damage.',3,0,0,'fighting','75',15,0),
       (280,'yawn','NA','status',NULL,'Puts the target to sleep at the end of the next turn.  Ignores accuracy and evasion modifiers.  If the target leaves the field, this effect is canceled.  If the target has a status effect when this move is used, this move will fail.

If the target is protected by safeguard when this move is used, this move will fail.

insomnia and vital spirit prevent the sleep if the target has either at the end of the next turn, but will not cause this move to fail on use.',3,0,0,'normal','NA',10,0),
       (281,'knock-off','100','physical',NULL,'Inflicts regular damage.  Target loses its held item.

Neither the user nor the target can recover its item with recycle.

If the target has multitype or sticky hold, it will take damage but not lose its item.',3,0,0,'dark','65',20,0),
       (282,'endeavor','100','physical',NULL,'Inflicts exactly enough damage to lower the target''s HP to equal the user''s.  If the target''s HP is not higher than the user''s, this move has no effect.  Type immunity applies, but other type effects are ignored.  This effect counts as damage for moves that respond to damage.',3,0,0,'normal','NA',5,0),
       (283,'eruption','100','special',NULL,'Inflicts regular damage.  Power increases with the user''s remaining HP and is given by `150 * HP / max HP`, to a maximum of 150 when the user has full HP.',3,0,0,'fire','150',5,0),
       (284,'skill-swap','NA','status',NULL,'User and target switch abilities.  Ignores accuracy and evasion modifiers.

If either Pokémon has multitype or wonder guard, this move will fail.',3,0,0,'psychic','NA',10,0),
       (285,'imprison','NA','status',NULL,'Prevents any Pokémon on the opposing side of the field from using any move the user knows until the user leaves the field.  This effect is live, if the user obtains new moves while on the field, these moves become restricted.  If no opposing Pokémon knows any of the user''s moves when this move is used, this move will fail.',3,0,0,'psychic','NA',10,0),
       (286,'refresh','NA','status',NULL,'Removes a burn, paralysis, or poison from the user.',3,0,0,'normal','NA',20,0),
       (287,'grudge','NA','status',NULL,'If the user faints before it next acts, the move that fainted it will have its PP dropped to 0.  End-of-turn damage does not trigger this effect.',3,0,0,'ghost','NA',5,0),
       (288,'snatch','NA','status',NULL,'The next time a Pokémon uses a beneficial move on itself or itself and its ally this turn, the user of this move will steal the move and use it itself.  Moves which may be stolen by this move are identified by the "snatchable" flag.

If two Pokémon use this move on the same turn, the faster Pokémon will steal the first beneficial move, and the slower Pokémon will then steal it again—thus, only the slowest Pokémon using this move ultimately gains a stolen move''s effect.

If the user steals psych up, it will target the Pokémon that used psych up.  If the user was the original target of psych up, and the Pokémon that originally used it''s affected by pressure, it will only lose 1 PP.

This move cannot be copied by mirror move, nor selected by assist or metronome.',3,0,0,'dark','NA',10,4),
       (289,'secret-power','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to inflict an effect chosen according to the terrain.

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
Waterfall      | Puts target to sleep',3,0,0,'normal','70',20,0),
       (290,'dive','100','physical',NULL,'Inflicts regular damage.  User dives underwater for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, surf, and whirlpool still hit the user normally, and their power is doubled if appropriate.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be selected by sleep talk.',3,0,0,'water','80',10,0),
       (291,'arm-thrust','100','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,0,0,'fighting','15',20,0),
       (292,'camouflage','NA','status',NULL,'User''s type changes according to the terrain.

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
Waterfall      | grass',3,0,0,'normal','NA',20,0),
       (293,'tail-glow','NA','status',NULL,'Raises the user''s Special Attack by three stages.',3,0,0,'bug','NA',20,0),
       (294,'luster-purge','100','special',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s Special Defense by one stage.',3,0,0,'psychic','70',5,0),
       (295,'mist-ball','100','special',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s Special Attack by one stage.',3,0,0,'psychic','70',5,0),
       (296,'feather-dance','100','status',NULL,'Lowers the target''s Attack by two stages.',3,0,0,'flying','NA',15,0),
       (297,'teeter-dance','100','status',NULL,'Confuses all targets.',3,0,0,'normal','NA',20,0),
       (298,'blaze-kick','90','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to burn the target.',3,0,1,'fire','85',10,0),
       (299,'mud-sport','NA','status',NULL,'electric moves inflict half damage, regardless of target.  If the user leaves the field, this effect ends.',3,0,0,'ground','NA',15,0),
       (300,'ice-ball','90','physical',NULL,'Inflicts regular damage.  User is forced to use this move for five turns.  Power doubles every time this move is used in succession to a maximum of 16x, and resets to normal after the lock-in ends.  If this move misses or becomes unusable, the lock-in ends.

If the user has used defense curl since entering the field, this move has double power.',3,0,0,'ice','30',20,0),
       (301,'needle-arm','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',3,0,0,'grass','60',15,0),
       (302,'slack-off','NA','status',NULL,'Heals the user for half its max HP.',3,0,0,'normal','NA',10,0),
       (303,'hyper-voice','100','special',NULL,'Inflicts regular damage.',3,0,0,'normal','90',10,0),
       (304,'poison-fang','100','physical',NULL,'Inflicts regular damage.  Has a 50% chance to badly poison the target.',3,0,0,'poison','50',15,0),
       (305,'crush-claw','95','physical',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',3,0,0,'normal','75',10,0),
       (306,'blast-burn','90','special',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,0,0,'fire','150',5,0),
       (307,'hydro-cannon','90','special',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,0,0,'water','150',5,0),
       (308,'meteor-mash','90','physical',NULL,'Inflicts regular damage. Has a 20% chance to raise the user''s Attack one stage.',3,0,0,'steel','90',10,0),
       (309,'astonish','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',3,0,0,'ghost','30',15,0),
       (310,'weather-ball','100','special',NULL,'Inflicts regular damage.  If a weather move is active, this move has double power, and its type becomes the type of the weather move.  shadow sky is typeless for the purposes of this move.',3,0,0,'normal','50',10,0),
       (311,'aromatherapy','NA','status',NULL,'Removes major status effects and confusion from every Pokémon in the user''s party.',3,0,0,'grass','NA',5,0),
       (312,'fake-tears','100','status',NULL,'Lowers the target''s Special Defense by two stages.',3,0,0,'dark','NA',20,0),
       (313,'air-cutter','95','special',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',3,0,1,'flying','60',25,0),
       (314,'overheat','90','special',NULL,'Inflicts regular damage, then lowers the user''s Special Attack by two stages.',3,0,0,'fire','130',5,0),
       (315,'odor-sleuth','NA','status',NULL,'Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A ghost under this effect takes normal damage from normal and fighting moves.  This move itself ignores accuracy and evasion modifiers.',3,0,0,'normal','NA',40,0),
       (316,'rock-tomb','95','physical',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',3,0,0,'rock','60',15,0),
       (317,'silver-wind','100','special',NULL,'Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',3,0,0,'bug','60',5,0),
       (318,'metal-sound','85','status',NULL,'Lowers the target''s Special Defense by two stages.',3,0,0,'steel','NA',40,0),
       (319,'grass-whistle','55','status',NULL,'Puts the target to sleep.',3,0,0,'grass','NA',15,0),
       (320,'tickle','100','status',NULL,'Lowers the target''s Attack and Defense by one stage.',3,0,0,'normal','NA',20,0),
       (321,'cosmic-power','NA','status',NULL,'Raises the user''s Defense and Special Defense by one stage.',3,0,0,'psychic','NA',20,0),
       (322,'water-spout','100','special',NULL,'Inflicts regular damage.  Power increases with the user''s remaining HP and is given by `150 * HP / max HP`, to a maximum of 150 when the user has full HP.',3,0,0,'water','150',5,0),
       (323,'signal-beam','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to confuse the target.',3,0,0,'bug','75',15,0),
       (324,'shadow-punch','NA','physical',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,0,0,'ghost','60',20,0),
       (325,'extrasensory','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to make the target flinch.',3,0,0,'psychic','80',20,0),
       (326,'sky-uppercut','90','physical',NULL,'Inflicts regular damage.

This move can hit Pokémon under the effect of bounce, fly, or sky drop.',3,0,0,'fighting','85',15,0),
       (327,'sand-tomb','85','physical',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',3,0,0,'ground','35',15,0),
       (328,'sheer-cold','30','special',NULL,'Inflicts damage equal to the target''s max HP.  Ignores accuracy and evasion modifiers.  This move''s accuracy is 30% plus 1% for each level the user is higher than the target.  If the user is a lower level than the target, this move will fail.

Because this move inflicts a specific and finite amount of damage, endure still prevents the target from fainting.

The effects of lock on, mind reader, and no guard still apply, as long as the user is equal or higher level than the target.  However, they will not give this move a chance to break through detect or protect.',3,0,0,'ice','NA',5,0),
       (329,'muddy-water','85','special',NULL,'Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',3,0,0,'water','90',10,0),
       (330,'bullet-seed','100','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,0,0,'grass','25',30,0),
       (331,'aerial-ace','NA','physical',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,0,0,'flying','60',20,0),
       (332,'icicle-spear','100','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,0,0,'ice','25',30,0),
       (333,'iron-defense','NA','status',NULL,'Raises the user''s Defense by two stages.',3,0,0,'steel','NA',15,0),
       (334,'block','NA','status',NULL,'The target cannot switch out normally.  Ignores accuracy and evasion modifiers.  This effect ends when the user leaves the field.

The target may still escape by using baton pass, u turn, or a shed shell.

Both the user and the target pass on this effect with baton pass.',3,0,0,'normal','NA',5,0),
       (335,'howl','NA','status',NULL,'Raises the user''s Attack by one stage.',3,0,0,'normal','NA',40,0),
       (336,'dragon-claw','100','physical',NULL,'Inflicts regular damage.',3,0,0,'dragon','80',15,0),
       (337,'frenzy-plant','90','special',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',3,0,0,'grass','150',5,0),
       (338,'bulk-up','NA','status',NULL,'Raises the user''s Attack and Defense by one stage each.',3,0,0,'fighting','NA',20,0),
       (339,'bounce','85','physical',NULL,'Inflicts regular damage.  User bounces high into the air for one turn, becoming immune to attack, and hits on the second turn.  Has a 30% chance to paralyze the target.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, and twister still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.',3,0,0,'flying','85',5,0),
       (340,'mud-shot','95','special',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',3,0,0,'ground','55',15,0),
       (341,'poison-tail','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to poison the target.',3,0,1,'poison','50',25,0),
       (342,'covet','100','physical',NULL,'Inflicts regular damage.  If the target is holding an item and the user is not, the user will permanently take the item.  Damage is still inflicted if an item cannot be taken.

Pokémon with sticky hold or multitype are immune to the item theft effect.

The target cannot recover its item with recycle.

This move cannot be selected by assist or metronome.',3,0,0,'normal','60',25,0),
       (343,'volt-tackle','100','physical',NULL,'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.  Has a 10% chance to paralyze the target.',3,0,0,'electric','120',15,0),
       (344,'magical-leaf','NA','special',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,0,0,'grass','60',20,0),
       (345,'water-sport','NA','status',NULL,'fire moves inflict half damage, regardless of target.  If the user leaves the field, this effect ends.',3,0,0,'water','NA',15,0),
       (346,'calm-mind','NA','status',NULL,'Raises the user''s Special Attack and Special Defense by one stage each.',3,0,0,'psychic','NA',20,0),
       (347,'leaf-blade','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',3,0,1,'grass','90',15,0),
       (348,'dragon-dance','NA','status',NULL,'Raises the user''s Attack and Speed by one stage each.',3,0,0,'dragon','NA',20,0),
       (349,'rock-blast','90','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',3,0,0,'rock','25',10,0),
       (350,'shock-wave','NA','special',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',3,0,0,'electric','60',20,0),
       (351,'water-pulse','100','special',NULL,'Inflicts regular damage.  Has a 20% chance to confuse the target.',3,0,0,'water','60',20,0),
       (352,'doom-desire','100','special',NULL,'Inflicts typeless regular damage at the end of the third turn, starting with this one.  This move cannot score a critical hit.  If the target switches out, its replacement will be hit instead.  Damage is calculated at the time this move is used, stat changes and switching out during the delay won''t change the damage inflicted.  No move with this effect can be used against the same target again until after the end of the third turn.

This effect breaks through wonder guard.

If the target is protected by protect or detect on the turn this move is used, this move will fail.  However, the damage on the third turn will break through protection.

The damage is applied at the end of the turn, so it ignores endure and focus sash.

This move cannot be copied by mirror move.',3,0,0,'steel','140',5,0),
       (353,'psycho-boost','90','special',NULL,'Inflicts regular damage, then lowers the user''s Special Attack by two stages.',3,0,0,'psychic','140',5,0),
       (354,'roost','NA','status',NULL,'Heals the user for half its max HP.  If the user is flying, its flying type is ignored until the end of this turn.',4,0,0,'flying','NA',10,0),
       (355,'gravity','NA','status',NULL,'For five turns (including this one), all immunities to ground moves are disabled.  For the duration of this effect, the evasion of every Pokémon on the field is lowered by two stages.  Cancels the effects of bounce, fly, and sky drop.

Specifically, flying Pokémon and those with levitate or that have used magnet rise are no longer immune to ground attacks, arena trap, spikes, or toxic spikes.

bounce, fly, sky drop, high jump kick, jump kick, and splash cannot be used while this move is in effect.

*Bug*: If this move is used during a double or triple battle while Pokémon are under the effect of sky drop, Sky Drop''s effect is not correctly canceled on its target, and it remains high in the air indefinitely.  As Sky Drop prevents the target from acting, the only way to subsequently remove it from the field is to faint it.',4,0,0,'psychic','NA',5,0),
       (356,'miracle-eye','NA','status',NULL,'Resets the target''s evasion to normal and prevents any further boosting until the target leaves the field.  A dark Pokémon under this effect takes normal damage from psychic moves.  This move itself ignores accuracy and evasion modifiers.',4,0,0,'psychic','NA',40,0),
       (357,'wake-up-slap','100','physical',NULL,'Inflicts regular damage.  If the target is sleeping, this move has double power, and the target wakes up.',4,0,0,'fighting','70',10,0),
       (358,'hammer-arm','90','physical',NULL,'Inflicts regular damage, then lowers the user''s Speed by one stage.',4,0,0,'fighting','100',10,0),
       (359,'gyro-ball','100','physical',NULL,'Inflicts regular damage.  Power increases with the target''s current Speed compared to the user, given by `1 + 25 * target Speed / user Speed`, capped at 150.',4,0,0,'steel','NA',5,0),
       (360,'healing-wish','NA','status',NULL,'User faints.  Its replacement''s HP is fully restored, and any major status effect is removed.  If the replacement Pokémon is immediately fainted by a switch-in effect, the next replacement is healed by this move instead.',4,0,0,'psychic','NA',10,0),
       (361,'brine','100','special',NULL,'Inflicts regular damage.  If the target has less than half its max HP remaining, this move has double power.',4,0,0,'water','65',10,0),
       (362,'natural-gift','100','physical',NULL,'Inflicts regular damage.  Power and type are determined by the user''s held berry.  The berry is consumed.  If the user is not holding a berry, this move will fail.',4,0,0,'normal','NA',15,0),
       (363,'feint','100','physical',NULL,'Inflicts regular damage.  Removes the effects of detect or protect from the target before hitting.

This move cannot be copied by mirror move, nor selected by assist or metronome.',4,0,0,'normal','30',10,2),
       (364,'pluck','100','physical',NULL,'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.',4,0,0,'flying','60',20,0),
       (365,'tailwind','NA','status',NULL,'For the next three turns, all Pokémon on the user''s side of the field have their original Speed doubled.  This effect remains if the user leaves the field.',4,0,0,'flying','NA',15,0),
       (366,'acupressure','NA','status',NULL,'Raises one of the target''s stats by two stages.  The raised stat is chosen at random from any stats that can be raised by two stages.  If no stat is eligible, this move will fail.

If the target has a substitute, this move will have no effect, even if the user is the target.

This move cannot be copied by mirror move.',4,0,0,'normal','NA',30,0),
       (367,'metal-burst','100','physical',NULL,'Targets the last opposing Pokémon to hit the user with a damaging move this turn.  Inflicts 1.5× the damage that move did to the user.  If there is no eligible target, this move will fail.  Type immunity applies, but other type effects are ignored.',4,0,0,'steel','NA',10,0),
       (368,'u-turn','100','physical',NULL,'Inflicts regular damage, then the user immediately switches out, and the trainer selects a replacement Pokémon from the party.  If the target faints from this attack, the user''s trainer selects the new Pokémon to send out first.  If the user is the last Pokémon in its party that can battle, it will not switch out.

The user may be hit by pursuit when it switches out, if it has been targeted and pursuit has not yet been used.

This move may be used even if the user is under the effect of ingrain.  ingrain''s effect will end.',4,0,0,'bug','70',20,0),
       (369,'close-combat','100','physical',NULL,'Inflicts regular damage, then lowers the user''s Defense and Special Defense by one stage each.',4,0,0,'fighting','120',5,0),
       (370,'payback','100','physical',NULL,'Inflicts regular damage.  If the target uses a move or switches out this turn before this move is used, this move has double power.',4,0,0,'dark','50',10,0),
       (371,'assurance','100','physical',NULL,'Inflicts regular damage.  If the target takes damage this turn for any reason before this move is used, this move has double power.',4,0,0,'dark','60',10,0),
       (372,'embargo','100','status',NULL,'Target cannot use its held item for five turns.  If the target leaves the field, this effect ends.

If a Pokémon under this effect uses bug bite or pluck on a Pokémon holding a berry, the berry is destroyed but not used.  If a Pokémon under this effect uses fling, it will fail.

This effect is passed by baton pass.',4,0,0,'dark','NA',15,0),
       (373,'fling','100','physical',NULL,'Inflicts regular damage.  Power and type are determined by the user''s held item.  The item is consumed.  If the user is not holding an item, or its item has no set type and power, this move will fail.

This move ignores sticky hold.

If the user is under the effect of embargo, this move will fail.',4,0,0,'dark','NA',10,0),
       (374,'psycho-shift','100','status',NULL,'If the user has a major status effect and the target does not, the user''s status is transferred to the target.',4,0,0,'psychic','NA',10,0),
       (375,'trump-card','NA','special',NULL,'Inflicts regular damage.  Power is determined by the PP remaining for this move, after its PP cost is deducted.  Ignores accuracy and evasion modifiers.

PP remaining | Power
------------ | ----:
4 or more    |    40
3            |    50
2            |    60
1            |    80
0            |   200

If this move is activated by another move, the activating move''s PP is used to calculate power.',4,0,0,'normal','NA',5,0),
       (376,'heal-block','100','status',NULL,'For the next five turns, the target may not use any moves that only restore HP, and move effects that heal the target are disabled.  Moves that steal HP may still be used, but will only inflict damage and not heal the target.',4,0,0,'psychic','NA',15,0),
       (377,'wring-out','100','special',NULL,'Inflicts regular damage.  Power directly relates to the target''s relative remaining HP, given by `1 + 120 * current HP / max HP`, to a maximum of 121.',4,0,0,'normal','NA',5,0),
       (378,'power-trick','NA','status',NULL,'The user''s original Attack and Defense are swapped.

This effect is passed on by baton pass.',4,0,0,'psychic','NA',10,0),
       (379,'gastro-acid','100','status',NULL,'The target''s ability is disabled as long as it remains on the field.

This effect is passed on by baton pass.',4,0,0,'poison','NA',10,0),
       (380,'lucky-chant','NA','status',NULL,'For five turns, opposing Pokémon cannot score critical hits.',4,0,0,'normal','NA',30,0),
       (381,'me-first','NA','status',NULL,'If the target has selected a damaging move this turn, the user will copy that move and use it against the target, with a 50% increase in power.

If the target moves before the user, this move will fail.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',4,0,0,'normal','NA',20,0),
       (382,'copycat','NA','status',NULL,'Uses the last move that was used successfully by any Pokémon, including the user.

This move cannot copy itself, nor roar nor whirlwind.

This move cannot be copied by mirror move, nor selected by assist, metronome, or sleep talk.',4,0,0,'normal','NA',20,0),
       (383,'power-swap','NA','status',NULL,'User swaps its Attack and Special Attack stat modifiers modifiers with the target.',4,0,0,'psychic','NA',10,0),
       (384,'guard-swap','NA','status',NULL,'User swaps its Defense and Special Defense modifiers with the target.',4,0,0,'psychic','NA',10,0),
       (385,'punishment','100','physical',NULL,'Inflicts regular damage.  Power starts at 60 and is increased by 20 for every stage any of the target''s stats has been raised, capping at 200.  Accuracy and evasion modifiers do not increase this move''s power.',4,0,0,'dark','NA',5,0),
       (386,'last-resort','100','physical',NULL,'Inflicts regular damage.  This move can only be used if each of the user''s other moves has been used at least once since the user entered the field.  If this is the user''s only move, this move will fail.',4,0,0,'normal','140',5,0),
       (387,'worry-seed','100','status',NULL,'Changes the target''s ability to insomnia.

If the target''s ability is truant or multitype, this move will fail.',4,0,0,'grass','NA',10,0),
       (388,'sucker-punch','100','physical',NULL,'Inflicts regular damage.  If the target has not selected a damaging move this turn, or if the target has already acted this turn, this move will fail.

This move is not affected by iron fist.',4,0,0,'dark','70',5,1),
       (389,'toxic-spikes','NA','status',NULL,'Scatters poisoned spikes around the opposing field, which poison opposing Pokémon that enter the field.  A second layer of these spikes may be laid down, in which case Pokémon will be badly poisoned instead.  Pokémon immune to either ground moves or being poisoned are immune to this effect.  Pokémon otherwise immune to ground moves are affected during gravity.

If a poison Pokémon not immune to ground moves enters a field covered with poisoned spikes, the spikes are removed.

rapid spin will remove this effect from its user''s side of the field.  defog will remove this effect from its target''s side of the field.

This move does not trigger synchronize, unless the Pokémon with synchronize was forced to enter the field by another effect such as roar.

Pokémon entering the field due to baton pass are not affected by this effect.',4,0,0,'poison','NA',20,0),
       (390,'heart-swap','NA','status',NULL,'User swaps its stat modifiers with the target.',4,0,0,'psychic','NA',10,0),
       (391,'aqua-ring','NA','status',NULL,'Restores 1/16 of the user''s max HP at the end of each turn.  If the user leaves the field, this effect ends.

This effect is passed on by baton pass.',4,0,0,'water','NA',20,0),
       (392,'magnet-rise','NA','status',NULL,'For five turns, the user is immune to ground moves.

If the user is under the effect of ingrain or has levitate, this move will fail.

This effect is temporarily disabled by and cannot be used during gravity.

This effect is passed on by baton pass.',4,0,0,'electric','NA',10,0),
       (393,'flare-blitz','100','physical',NULL,'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.  Has a 10% chance to burn the target.  Frozen Pokémon may use this move, in which case they will thaw.',4,0,0,'fire','120',15,0),
       (394,'force-palm','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',4,0,0,'fighting','60',10,0),
       (395,'aura-sphere','NA','special',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',4,0,0,'fighting','80',20,0),
       (396,'rock-polish','NA','status',NULL,'Raises the user''s Speed by two stages.',4,0,0,'rock','NA',20,0),
       (397,'poison-jab','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to poison the target.',4,0,0,'poison','80',20,0),
       (398,'dark-pulse','100','special',NULL,'Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,0,0,'dark','80',15,0),
       (399,'night-slash','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'dark','70',15,0),
       (400,'aqua-tail','90','physical',NULL,'Inflicts regular damage.',4,0,0,'water','90',10,0),
       (401,'seed-bomb','100','physical',NULL,'Inflicts regular damage.',4,0,0,'grass','80',15,0),
       (402,'air-slash','95','special',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',4,0,0,'flying','75',15,0),
       (403,'x-scissor','100','physical',NULL,'Inflicts regular damage.',4,0,0,'bug','80',15,0),
       (404,'bug-buzz','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,0,0,'bug','90',10,0),
       (405,'dragon-pulse','100','special',NULL,'Inflicts regular damage.',4,0,0,'dragon','85',10,0),
       (406,'dragon-rush','75','physical',NULL,'Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,0,0,'dragon','100',10,0),
       (407,'power-gem','100','special',NULL,'Inflicts regular damage.',4,0,0,'rock','80',20,0),
       (408,'drain-punch','100','physical',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',4,0,0,'fighting','75',10,0),
       (409,'vacuum-wave','100','special',NULL,'Inflicts regular damage.',4,0,0,'fighting','40',30,1),
       (410,'focus-blast','70','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,0,0,'fighting','120',5,0),
       (411,'energy-ball','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,0,0,'grass','90',10,0),
       (412,'brave-bird','100','physical',NULL,'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',4,0,0,'flying','120',15,0),
       (413,'earth-power','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,0,0,'ground','90',10,0),
       (414,'switcheroo','100','status',NULL,'User and target permanently swap held items.  Works even if one of the Pokémon isn''t holding anything.  If either Pokémon is holding mail, this move will fail.

If either Pokémon has multitype or sticky hold, this move will fail.

If this move results in a Pokémon obtaining choice band, choice scarf, or choice specs, and that Pokémon was the latter of the pair to move this turn, then the move it used this turn becomes its chosen forced move.  This applies even if both Pokémon had a choice item before this move was used.  If the first of the two Pokémon gains a choice item, it may select whatever choice move it wishes next turn.

Neither the user nor the target can recover its item with recycle.

This move cannot be selected by assist or metronome.',4,0,0,'dark','NA',10,0),
       (415,'giga-impact','90','physical',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,0,0,'normal','150',5,0),
       (416,'nasty-plot','NA','status',NULL,'Raises the user''s Special Attack by two stages.',4,0,0,'dark','NA',20,0),
       (417,'bullet-punch','100','physical',NULL,'Inflicts regular damage.',4,0,0,'steel','40',30,1),
       (418,'avalanche','100','physical',NULL,'Inflicts regular damage.  If the target damaged the user this turn and was the last to do so, this move has double power.

pain split does not count as damaging the user.',4,0,0,'ice','60',10,-4),
       (419,'ice-shard','100','physical',NULL,'Inflicts regular damage.',4,0,0,'ice','40',30,1),
       (420,'shadow-claw','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'ghost','70',15,0),
       (421,'thunder-fang','95','physical',NULL,'Inflicts regular damage.  Has a 10% chance to paralyze the target and a separate 10% chance to make the target flinch.',4,0,0,'electric','65',15,0),
       (422,'ice-fang','95','physical',NULL,'Inflicts regular damage.  Has a 10% chance to freeze the target and a separate 10% chance to make the target flinch.',4,0,0,'ice','65',15,0),
       (423,'fire-fang','95','physical',NULL,'Inflicts regular damage.  Has a 10% chance to burn the target and a separate 10% chance to make the target flinch.',4,0,0,'fire','65',15,0),
       (424,'shadow-sneak','100','physical',NULL,'Inflicts regular damage.',4,0,0,'ghost','40',30,1),
       (425,'mud-bomb','85','special',NULL,'Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',4,0,0,'ground','65',10,0),
       (426,'psycho-cut','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'psychic','70',20,0),
       (427,'zen-headbutt','90','physical',NULL,'Inflicts regular damage.  Has a 20% chance to make the target flinch.',4,0,0,'psychic','80',15,0),
       (428,'mirror-shot','85','special',NULL,'Inflicts regular damage.  Has a 30% chance to lower the target''s accuracy by one stage.',4,0,0,'steel','65',10,0),
       (429,'flash-cannon','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to lower the target''s Special Defense by one stage.',4,0,0,'steel','80',10,0),
       (430,'rock-climb','85','physical',NULL,'Inflicts regular damage.  Has a 20% chance to confuse the target.',4,0,0,'normal','90',20,0),
       (431,'defog','NA','status',NULL,'Lowers the target''s evasion by one stage.  Clears away fog.  Removes the effects of mist, light screen, reflect, safeguard, spikes, stealth rock, and toxic spikes from the target''s side of the field.

If the target is protected by mist, it will prevent the evasion change, then be removed by this move.',4,0,0,'flying','NA',15,0),
       (432,'trick-room','NA','status',NULL,'For five turns (including this one), slower Pokémon will act before faster Pokémon.  Move priority is not affected.  Using this move when its effect is already active will end the effect.

Pokémon holding full incense, lagging tail, or quick claw and Pokémon with stall ignore this effect.',4,0,0,'psychic','NA',5,-7),
       (433,'draco-meteor','90','special',NULL,'Inflicts regular damage, then lowers the user''s Special Attack by two stages.',4,0,0,'dragon','130',5,0),
       (434,'discharge','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.',4,0,0,'electric','80',15,0),
       (435,'lava-plume','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to burn the target.',4,0,0,'fire','80',15,0),
       (436,'leaf-storm','90','special',NULL,'Inflicts regular damage, then lowers the user''s Special Attack by two stages.',4,0,0,'grass','130',5,0),
       (437,'power-whip','85','physical',NULL,'Inflicts regular damage.',4,0,0,'grass','120',10,0),
       (438,'rock-wrecker','90','physical',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,0,0,'rock','150',5,0),
       (439,'cross-poison','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move. Has a 10% chance to poison the target.',4,0,1,'poison','70',20,0),
       (440,'gunk-shot','80','physical',NULL,'Inflicts regular damage.  Has a 30% chance to poison the target.',4,0,0,'poison','120',5,0),
       (441,'iron-head','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',4,0,0,'steel','80',15,0),
       (442,'magnet-bomb','NA','physical',NULL,'Inflicts regular damage.  Ignores accuracy and evasion modifiers.',4,0,0,'steel','60',20,0),
       (443,'stone-edge','80','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'rock','100',5,0),
       (444,'captivate','100','status',NULL,'Lowers the target''s Special Attack by two stages.  If the user and target are the same gender, or either is genderless, this move will fail.',4,0,0,'normal','NA',20,0),
       (445,'stealth-rock','NA','status',NULL,'Spreads sharp rocks around the opposing field, damaging any Pokémon that enters the field for 1/8 its max HP.  This damage is affected by the entering Pokémon''s susceptibility to rock moves.

rapid spin removes this effect from its user''s side of the field.',4,0,0,'rock','NA',20,0),
       (446,'grass-knot','100','special',NULL,'Inflicts regular damage.  Power increases with the target''s weight in kilograms, to a maximum of 120.

Target''s weight | Power
--------------- | ----:
Up to 10kg      |    20
Up to 25kg      |    40
Up to 50kg      |    60
Up to 100kg     |    80
Up to 200kg     |   100
Above 200kg     |   120',4,0,0,'grass','NA',20,0),
       (447,'chatter','100','special',NULL,'Inflicts regular damage.  Has either a 1%, 11%, or 31% chance to confuse the target, based on the volume of the recording made for this move, louder recordings increase the chance of confusion.  If the user is not a chatot, this move will not cause confusion.

This move cannot be copied by mimic, mirror move, or sketch, nor selected by assist, metronome, or sleep talk.',4,0,0,'flying','65',20,0),
       (448,'judgment','100','special',NULL,'Inflicts regular damage.  If the user is holding a plate or a drive, this move''s type is the type corresponding to that item.

Note: This effect is technically shared by both techno blast and judgment, however, Techno Blast is only affected by drives, and Judgment is only affected by plates.',4,0,0,'normal','100',10,0),
       (449,'bug-bite','100','physical',NULL,'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.',4,0,0,'bug','60',20,0),
       (450,'charge-beam','90','special',NULL,'Inflicts regular damage.  Has a 70% chance to raise the user''s Special Attack by one stage.',4,0,0,'electric','50',10,0),
       (451,'wood-hammer','100','physical',NULL,'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.',4,0,0,'grass','120',15,0),
       (452,'aqua-jet','100','physical',NULL,'Inflicts regular damage.',4,0,0,'water','40',20,1),
       (453,'attack-order','100','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'bug','90',15,0),
       (454,'defend-order','NA','status',NULL,'Raises the user''s Defense and Special Defense by one stage.',4,0,0,'bug','NA',10,0),
       (455,'heal-order','NA','status',NULL,'Heals the user for half its max HP.',4,0,0,'bug','NA',10,0),
       (456,'head-smash','80','physical',NULL,'Inflicts regular damage.  User takes 1/2 the damage it inflicts in recoil.',4,0,0,'rock','150',5,0),
       (457,'double-hit','90','physical',NULL,'Inflicts regular damage.  Hits twice in one turn.',4,0,0,'normal','35',10,0),
       (458,'roar-of-time','90','special',NULL,'Inflicts regular damage.  User loses its next turn to "recharge", and cannot attack or switch out during that turn.',4,0,0,'dragon','150',5,0),
       (459,'spacial-rend','95','special',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',4,0,1,'dragon','100',5,0),
       (460,'lunar-dance','NA','status',NULL,'User faints.  Its replacement''s HP and PP are fully restored, and any major status effect is removed.',4,0,0,'psychic','NA',10,0),
       (461,'crush-grip','100','physical',NULL,'Inflicts regular damage.  Power directly relates to the target''s relative remaining HP, given by `1 + 120 * current HP / max HP`, to a maximum of 121.',4,0,0,'normal','NA',5,0),
       (462,'magma-storm','75','special',NULL,'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.',4,0,0,'fire','100',5,0),
       (463,'dark-void','50','status',NULL,'Puts the target to sleep.',4,0,0,'dark','NA',10,0),
       (464,'seed-flare','85','special',NULL,'Inflicts regular damage.  Has a 40% chance to lower the target''s Special Defense by two stages.',4,0,0,'grass','120',5,0),
       (465,'ominous-wind','100','special',NULL,'Inflicts regular damage. Has a 10% chance to raise all of the user''s stats one stage.',4,0,0,'ghost','60',5,0),
       (466,'shadow-force','100','physical',NULL,'Inflicts regular damage.  User vanishes for one turn, becoming immune to attack, and hits on the second turn.

This move ignores the effects of detect and protect.

This move cannot be selected by sleep talk.',4,0,0,'ghost','120',5,0),
       (467,'hone-claws','NA','status',NULL,'Raises the user''s Attack and accuracy by one stage.',5,0,0,'dark','NA',15,0),
       (468,'wide-guard','NA','status',NULL,'Moves with multiple targets will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will fail.

This move cannot be selected by assist or metronome.',5,0,0,'rock','NA',10,3),
       (469,'guard-split','NA','status',NULL,'Averages the user''s unmodified Defense with the target''s unmodified Defense, the value becomes the unmodified Defense for both Pokémon. Unmodified Special Defense is averaged the same way.',5,0,0,'psychic','NA',10,0),
       (470,'power-split','NA','status',NULL,'Averages the user''s unmodified Attack with the target''s unmodified Attack, the value becomes the unmodified Attack for both Pokémon. Unmodified Special Attack is averaged the same way.

This effect applies before any other persistent changes to unmodified Attack or Special Attack, such as flower gift during sunny day.',5,0,0,'psychic','NA',10,0),
       (471,'wonder-room','NA','status',NULL,'For five turns (including this one), every Pokémon''s Defense and Special Defense are swapped.',5,0,0,'psychic','NA',10,0),
       (472,'psyshock','100','special',NULL,'Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,0,0,'psychic','80',10,0),
       (473,'venoshock','100','special',NULL,'Inflicts regular damage.  If the target is poisoned, this move has double power.',5,0,0,'poison','65',10,0),
       (474,'autotomize','NA','status',NULL,'Raises the user''s Speed by two stages.  Halves the user''s weight, this effect does not stack.',5,0,0,'steel','NA',15,0),
       (475,'rage-powder','NA','status',NULL,'Until the end of this turn, any moves that opposing Pokémon target solely at the user''s ally will instead target the user.  If both Pokémon on the same side of the field use this move on the same turn, the Pokémon that uses it last will become the target.

This effect takes priority over lightning rod and storm drain.

If the user''s ally switches out, opposing Pokémon may still hit it with pursuit.

This move cannot be selected by assist or metronome.',5,0,0,'bug','NA',20,2),
       (476,'telekinesis','NA','status',NULL,'For three turns (including this one), moves used against the target have 100% accuracy, but the target is immune to ground damage.  Accuracy of one-hit KO moves is exempt from this effect.

This effect is removed by gravity.  If Gravity is already in effect, this move will fail.',5,0,0,'psychic','NA',15,0),
       (477,'magic-room','NA','status',NULL,'For five turns (including this one), passive effects of held items are ignored, and Pokémon will not use their held items.',5,0,0,'psychic','NA',10,0),
       (478,'smack-down','100','physical',NULL,'Inflicts regular damage.  Removes the target''s immunity to ground-type damage.  This effect removes any existing Ground immunity due to levitate, magnet rise, or telekinesis, and causes the target''s flying type to be ignored when it takes Ground damage.

If the target isn''t immune to Ground damage, this move will fail.

This move can hit Pokémon under the effect of bounce, fly, or sky drop, and ends the effect of Bounce or Fly.',5,0,0,'rock','50',15,0),
       (479,'storm-throw','100','physical',NULL,'Inflicts regular damage.  Always scores a critical hit.',5,0,6,'fighting','60',10,0),
       (480,'flame-burst','100','special',NULL,'Inflicts regular damage.  If this move successfully hits the target, any Pokémon adjacent to the target are damaged for 1/16 their max HP.',5,0,0,'fire','70',15,0),
       (481,'sludge-wave','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to poison the target.',5,0,0,'poison','95',10,0),
       (482,'quiver-dance','NA','status',NULL,'Raises the user''s Special Attack, Special Defense, and Speed by one stage each.',5,0,0,'bug','NA',20,0),
       (483,'heavy-slam','100','physical',NULL,'Inflicts regular damage.  The greater the user''s weight compared to the target''s, the higher power this move has, to a maximum of 120.

User''s weight                    | Power
-------------------------------- | ----:
Up to 2× the target''s weight     |    40
Up to 3× the target''s weight     |    60
Up to 4× the target''s weight     |    80
Up to 5× the target''s weight     |   100
More than 5× the target''s weight |   120',5,0,0,'steel','NA',10,0),
       (484,'synchronoise','100','special',NULL,'Inflicts regular damage.  Only Pokémon that share a type with the user will take damage from this move.',5,0,0,'psychic','120',10,0),
       (485,'electro-ball','100','special',NULL,'Inflicts regular damage.  The greater the user''s Speed compared to the target''s, the higher power this move has, to a maximum of 150.

User''s Speed                     | Power
-------------------------------- | ----:
Up to 2× the target''s Speed      |    60
Up to 3× the target''s Speed      |    80
Up to 4× the target''s Speed      |   120
More than 4× the target''s Speed  |   150',5,0,0,'electric','NA',10,0),
       (486,'soak','100','status',NULL,'Changes the target to pure water-type until it leaves the field.  If the target has multitype, this move will fail.',5,0,0,'water','NA',20,0),
       (487,'flame-charge','100','physical',NULL,'Inflicts regular damage.  Raises the user''s Speed by one stage.',5,0,0,'fire','50',20,0),
       (488,'coil','NA','status',NULL,'Raises the user''s Attack, Defense, and accuracy by one stage each.',5,0,0,'poison','NA',20,0),
       (489,'low-sweep','100','physical',NULL,'Lowers the target''s Speed by one stage.',5,0,0,'fighting','65',20,0),
       (490,'acid-spray','100','special',NULL,'Inflicts regular damage.  Lowers the target''s Special Defense by two stages.',5,0,0,'poison','40',20,0),
       (491,'foul-play','100','physical',NULL,'Inflicts regular damage.  Damage is calculated using the target''s attacking stat rather than the user''s.',5,0,0,'dark','95',15,0),
       (492,'simple-beam','100','status',NULL,'Changes the target''s ability to simple.',5,0,0,'normal','NA',15,0),
       (493,'entrainment','100','status',NULL,'Changes the target''s ability to match the user''s.  This effect ends when the target leaves battle.',5,0,0,'normal','NA',15,0),
       (494,'after-you','NA','status',NULL,'The target will act next this turn, regardless of Speed or move priority.
If the target has already acted this turn, this move will fail.',5,0,0,'normal','NA',15,0),
       (495,'round','100','special',NULL,'Inflicts regular damage.  If round has already been used this turn, this move''s power is doubled.  After this move is used, any other Pokémon using it this turn will immediately do so (in the order they would otherwise act), regardless of Speed or priority.  Pokémon using other moves will then continue to act as usual.',5,0,0,'normal','60',15,0),
       (496,'echoed-voice','100','special',NULL,'Inflicts regular damage.  If any friendly Pokémon used this move earlier this turn or on the previous turn, that use''s power is added to this move''s power, to a maximum of 200.',5,0,0,'normal','40',15,0),
       (497,'chip-away','100','physical',NULL,'Inflicts regular damage.  Damage calculation ignores the target''s stat modifiers, including evasion.',5,0,0,'normal','70',20,0),
       (498,'clear-smog','NA','special',NULL,'Inflicts regular damage.  All of the target''s stat modifiers are reset to zero.',5,0,0,'poison','50',15,0),
       (499,'stored-power','100','special',NULL,'Inflicts regular damage.  Power is increased by 100% its original value for every stage any of the user''s stats have been raised.  Accuracy, evasion, and lowered stats do not affect this move''s power.  For a Pokémon with all five stats modified to +6, this move''s power is 31×.',5,0,0,'psychic','20',10,0),
       (500,'quick-guard','NA','status',NULL,'Moves with priority greater than 0 will not hit friendly Pokémon for the remainder of this turn.  If the user is last to act this turn, this move will fail.

This move cannot be selected by assist or metronome.',5,0,0,'fighting','NA',15,3),
       (501,'ally-switch','NA','status',NULL,'User switches position on the field with the friendly Pokémon opposite it.  If the user is in the middle position in a triple battle, or there are no other friendly Pokémon, this move will fail.',5,0,0,'psychic','NA',15,2),
       (502,'scald','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to burn the target.',5,0,0,'water','80',15,0),
       (503,'shell-smash','NA','status',NULL,'Raises the user''s Attack, Special Attack, and Speed by two stages each.  Lowers the user''s Defense and Special Defense by one stage each.',5,0,0,'normal','NA',15,0),
       (504,'heal-pulse','NA','status',NULL,'Heals the target for half its max HP.',5,0,0,'psychic','NA',10,0),
       (505,'hex','100','special',NULL,'Inflicts regular damage.  If the target has a major status ailment, this move has double power.',5,0,0,'ghost','65',10,0),
       (506,'sky-drop','100','physical',NULL,'Inflicts regular damage.  User carries the target high into the air for one turn, during which no moves will hit either Pokémon and neither can act.  On the following turn, the user drops the target, inflicting damage and ending the effect.

If the target is flying-type, this move will function as normal but inflict no damage.

gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind can hit both the user and the target during this effect.  gust and twister will additionally have double power.

The damage from hail and sandstorm still applies during this effect.

Either Pokémon may be hit during this effect if also under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.

*Bug*: If gravity is used during a double or triple battle while this move is in effect, this move is not correctly canceled on the target, and it remains high in the air indefinitely.  As this move prevents the target from acting, the only way to subsequently remove it from the field is to faint it.',5,0,0,'flying','60',10,0),
       (507,'shift-gear','NA','status',NULL,'Raises the user''s Attack by one stage and its Speed by two stages.',5,0,0,'steel','NA',10,0),
       (508,'circle-throw','90','physical',NULL,'Inflicts regular damage, then switches the target out for another of its trainer''s Pokémon, selected at random.

If the target is under the effect of ingrain or suction cups, or it has a substitute, or its Trainer has no more usable Pokémon, it will not be switched out.  If the target is a wild Pokémon, the battle ends instead.',5,0,0,'fighting','60',10,-6),
       (509,'incinerate','100','special',NULL,'Inflicts regular damage.  If the target is holding a berry, it''s destroyed and cannot be used in response to this move.',5,0,0,'fire','60',15,0),
       (510,'quash','100','status',NULL,'Forces the target to act last this turn, regardless of Speed or move priority.  If the target has already acted this turn, this move will fail.',5,0,0,'dark','NA',15,0),
       (511,'acrobatics','100','physical',NULL,'Inflicts regular damage.  If the user has no held item, this move has double power.',5,0,0,'flying','55',15,0),
       (512,'reflect-type','NA','status',NULL,'User''s type changes to match the target''s.',5,0,0,'normal','NA',15,0),
       (513,'retaliate','100','physical',NULL,'Inflicts regular damage.  If a friendly Pokémon fainted on the previous turn, this move has double power.',5,0,0,'normal','70',5,0),
       (514,'final-gambit','100','special',NULL,'Inflicts damage equal to the user''s remaining HP.  User faints.',5,0,0,'fighting','NA',5,0),
       (515,'bestow','NA','status',NULL,'Transfers the user''s held item to the target.  If the user has no held item, or the target already has a held item, this move will fail.',5,0,0,'normal','NA',15,0),
       (516,'inferno','50','special',NULL,'Inflicts regular damage.  Has a 100% chance to burn the target.',5,0,0,'fire','100',5,0),
       (517,'water-pledge','100','special',NULL,'Inflicts regular damage.  If a friendly Pokémon used grass pledge earlier this turn, all opposing Pokémon have halved Speed for four turns (including this one).',5,0,0,'water','80',10,0),
       (518,'fire-pledge','100','special',NULL,'Inflicts regular damage.  If a friendly Pokémon used water pledge earlier this turn, moves used by any friendly Pokémon have doubled effect chance for four turns (including this one).',5,0,0,'fire','80',10,0),
       (519,'grass-pledge','100','special',NULL,'Inflicts regular damage.  If a friendly Pokémon used fire pledge earlier this turn, all opposing Pokémon will take 1/8 their max HP in damage at the end of every turn for four turns (including this one).',5,0,0,'grass','80',10,0),
       (520,'volt-switch','100','special',NULL,'Inflicts regular damage, then the user immediately switches out, and the trainer selects a replacement Pokémon from the party.  If the target faints from this attack, the user''s trainer selects the new Pokémon to send out first.  If the user is the last Pokémon in its party that can battle, it will not switch out.

The user may be hit by pursuit when it switches out, if it has been targeted and pursuit has not yet been used.

This move may be used even if the user is under the effect of ingrain.  ingrain''s effect will end.',5,0,0,'electric','70',20,0),
       (521,'struggle-bug','100','special',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Special Attack by one stage.',5,0,0,'bug','50',20,0),
       (522,'bulldoze','100','physical',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Speed by one stage.',5,0,0,'ground','60',20,0),
       (523,'frost-breath','90','special',NULL,'Inflicts regular damage.  Always scores a critical hit.',5,0,6,'ice','60',10,0),
       (524,'dragon-tail','90','physical',NULL,'Inflicts regular damage, then switches the target out for another of its trainer''s Pokémon, selected at random.

If the target is under the effect of ingrain or suction cups, or it has a substitute, or its Trainer has no more usable Pokémon, it will not be switched out.  If the target is a wild Pokémon, the battle ends instead.',5,0,0,'dragon','60',10,-6),
       (525,'work-up','NA','status',NULL,'Raises the user''s Attack and Special Attack by one stage each.',5,0,0,'normal','NA',30,0),
       (526,'electroweb','95','special',NULL,'Lowers the target''s Speed by one stage.',5,0,0,'electric','55',15,0),
       (527,'wild-charge','100','physical',NULL,'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',5,0,0,'electric','90',15,0),
       (528,'drill-run','95','physical',NULL,'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.',5,0,1,'ground','80',10,0),
       (529,'dual-chop','90','physical',NULL,'Inflicts regular damage.  Hits twice in one turn.',5,0,0,'dragon','40',15,0),
       (530,'heart-stamp','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',5,0,0,'psychic','60',25,0),
       (531,'horn-leech','100','physical',NULL,'Inflicts regular damage.  Drains half the damage inflicted to heal the user.',5,0,0,'grass','75',10,0),
       (532,'sacred-sword','100','physical',NULL,'Inflicts regular damage.  Damage calculation ignores the target''s stat modifiers, including evasion.',5,0,0,'fighting','90',15,0),
       (533,'razor-shell','95','physical',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s Defense by one stage.',5,0,0,'water','75',10,0),
       (534,'heat-crash','100','physical',NULL,'Inflicts regular damage.  The greater the user''s weight compared to the target''s, the higher power this move has, to a maximum of 120.

User''s weight                    | Power
-------------------------------- | ----:
Up to 2× the target''s weight     |    40
Up to 3× the target''s weight     |    60
Up to 4× the target''s weight     |    80
Up to 5× the target''s weight     |   100
More than 5× the target''s weight |   120',5,0,0,'fire','NA',10,0),
       (535,'leaf-tornado','90','special',NULL,'Inflicts regular damage.  Has a 50% chance to lower the target''s accuracy by one stage.',5,0,0,'grass','65',10,0),
       (536,'steamroller','100','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.

Power is doubled against Pokémon that have used minimize since entering the field.',5,0,0,'bug','65',20,0),
       (537,'cotton-guard','NA','status',NULL,'Raises the user''s Defense by three stages.',5,0,0,'grass','NA',10,0),
       (538,'night-daze','95','special',NULL,'Inflicts regular damage.  Has a 40% chance to lower the target''s accuracy by one stage.',5,0,0,'dark','85',10,0),
       (539,'psystrike','100','special',NULL,'Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,0,0,'psychic','100',10,0),
       (540,'tail-slap','85','physical',NULL,'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.',5,0,0,'normal','25',10,0),
       (541,'hurricane','70','special',NULL,'Inflicts regular damage.  Has a 30% chance to confuse the target.

This move can hit Pokémon under the effect of bounce, fly, or sky drop.

During rain dance, this move has 100% accuracy.  During sunny day, this move has 50% accuracy.',5,0,0,'flying','110',10,0),
       (542,'head-charge','100','physical',NULL,'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.',5,0,0,'normal','120',15,0),
       (543,'gear-grind','85','physical',NULL,'Inflicts regular damage.  Hits twice in one turn.',5,0,0,'steel','50',15,0),
       (544,'searing-shot','100','special',NULL,'Inflicts regular damage.  Has a 30% chance to burn the target.',5,0,0,'fire','100',5,0),
       (545,'techno-blast','100','special',NULL,'Inflicts regular damage.  If the user is holding a plate or a drive, this move''s type is the type corresponding to that item.

Note: This effect is technically shared by both techno blast and judgment, however, Techno Blast is only affected by drives, and Judgment is only affected by plates.',5,0,0,'normal','120',5,0),
       (546,'relic-song','100','special',NULL,'Inflicts regular damage.  Has a 10% chance to put the target to sleep.
If the user is a meloetta, it will toggle between Aria and Pirouette Forme.',5,0,0,'normal','75',10,0),
       (547,'secret-sword','100','special',NULL,'Inflicts regular damage.  Damage calculation always uses the target''s Defense, regardless of this move''s damage class.',5,0,0,'fighting','85',10,0),
       (548,'glaciate','95','special',NULL,'Inflicts regular damage.  Lowers the target''s Speed by one stage.',5,0,0,'ice','65',10,0),
       (549,'bolt-strike','85','physical',NULL,'Inflicts regular damage.  Has a 20% chance to paralyze the target.',5,0,0,'electric','130',5,0),
       (550,'blue-flare','85','special',NULL,'Inflicts regular damage.  Has a 20% chance to burn the target.',5,0,0,'fire','130',5,0),
       (551,'fiery-dance','100','special',NULL,'Inflicts regular damage.  Has a 50% chance to raise the user''s Special Attack by one stage.',5,0,0,'fire','80',10,0),
       (552,'freeze-shock','90','physical',NULL,'Inflicts regular damage.  Has a 30% chance to paralyze the target.  User charges for one turn before attacking.',5,0,0,'ice','140',5,0),
       (553,'ice-burn','90','special',NULL,'Inflicts regular damage.  Has a 30% chance to burn the target.  User charges for one turn before attacking.',5,0,0,'ice','140',5,0),
       (554,'snarl','95','special',NULL,'Inflicts regular damage.  Has a 100% chance to lower the target''s Special Attack by one stage.',5,0,0,'dark','55',15,0),
       (555,'icicle-crash','90','physical',NULL,'Inflicts regular damage.  Has a 30% chance to make the target flinch.',5,0,0,'ice','85',10,0),
       (556,'v-create','95','physical',NULL,'Inflicts regular damage.  Lowers the user''s Defense, Special Defense, and Speed by one stage each.',5,0,0,'fire','180',5,0),
       (557,'fusion-flare','100','special',NULL,'Inflicts regular damage.  If a friendly Pokémon used fusion bolt earlier this turn, this move has double power.',5,0,0,'fire','100',5,0),
       (558,'fusion-bolt','100','physical',NULL,'Inflicts regular damage.  If a friendly Pokémon used fusion flare earlier this turn, this move has double power.',5,0,0,'electric','100',5,0);
