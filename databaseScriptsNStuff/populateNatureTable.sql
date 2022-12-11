CREATE TABLE IF NOT EXISTS natures(
    FIELD1         INTEGER  NOT NULL PRIMARY KEY ,
    nature_name    VARCHAR(7) NOT NULL,
    decreased_stat VARCHAR(15),
    increased_stat VARCHAR(15)
);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) 
VALUES (0,'hardy',NULL,NULL),
       (1,'bold','attack','defense'),
       (2,'modest','attack','special-attack'),
       (3,'calm','attack','special-defense'),
       (4,'timid','attack','speed'),
       (5,'lonely','defense','attack'),
       (6,'docile',NULL,NULL),
       (7,'mild','defense','special-attack'),
       (8,'gentle','defense','special-defense'),
       (9,'hasty','defense','speed'),
       (10,'adamant','special-attack','attack'),
       (11,'impish','special-attack','defense'),
       (12,'bashful',NULL,NULL),
       (13,'careful','special-attack','special-defense'),
       (14,'rash','special-defense','special-attack'),
       (15,'jolly','special-attack','speed'),
       (16,'naughty','special-defense','attack'),
       (17,'lax','special-defense','defense'),
       (18,'quirky',NULL,NULL),
       (19,'naive','special-defense','speed'),
       (20,'brave','speed','attack'),
       (21,'relaxed','speed','defense'),
       (22,'quiet','speed','special-attack'),
       (23,'sassy','speed','special-defense'),
       (24,'serious',NULL,NULL);
