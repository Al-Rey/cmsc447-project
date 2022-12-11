CREATE TABLE IF NOT EXISTS natures(
    FIELD1         INTEGER  NOT NULL PRIMARY KEY ,
    nature_name    VARCHAR(7) NOT NULL,
    decreased_stat VARCHAR(15),
    increased_stat VARCHAR(15)
);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (0,'hardy',NULL,NULL);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (1,'bold','attack','defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (2,'modest','attack','special-attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (3,'calm','attack','special-defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (4,'timid','attack','speed');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (5,'lonely','defense','attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (6,'docile',NULL,NULL);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (7,'mild','defense','special-attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (8,'gentle','defense','special-defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (9,'hasty','defense','speed');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (10,'adamant','special-attack','attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (11,'impish','special-attack','defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (12,'bashful',NULL,NULL);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (13,'careful','special-attack','special-defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (14,'rash','special-defense','special-attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (15,'jolly','special-attack','speed');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (16,'naughty','special-defense','attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (17,'lax','special-defense','defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (18,'quirky',NULL,NULL);
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (19,'naive','special-defense','speed');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (20,'brave','speed','attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (21,'relaxed','speed','defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (22,'quiet','speed','special-attack');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (23,'sassy','speed','special-defense');
INSERT INTO natures(FIELD1,nature_name,decreased_stat,increased_stat) VALUES (24,'serious',NULL,NULL);
