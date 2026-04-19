-- ============================================================
-- NBA Sample Data -- Adapté pour Oracle XE 21c
-- Saison 2023-24
-- ============================================================

-- ============================================================
-- TEAMS
-- ============================================================
INSERT INTO teams VALUES (1,  'Lakers',   'Los Angeles',   'West', 'Pacific',   1947, 17);
INSERT INTO teams VALUES (2,  'Celtics',  'Boston',        'East', 'Atlantic',  1946, 17);
INSERT INTO teams VALUES (3,  'Warriors', 'Golden State',  'West', 'Pacific',   1946,  7);
INSERT INTO teams VALUES (4,  'Heat',     'Miami',         'East', 'Southeast', 1988,  3);
INSERT INTO teams VALUES (5,  'Mavericks','Dallas',        'West', 'Southwest', 1980,  1);
INSERT INTO teams VALUES (6,  'Bucks',    'Milwaukee',     'East', 'Central',   1968,  2);
INSERT INTO teams VALUES (7,  'Nuggets',  'Denver',        'West', 'Northwest', 1976,  1);
INSERT INTO teams VALUES (8,  'Suns',     'Phoenix',       'West', 'Pacific',   1968,  0);
INSERT INTO teams VALUES (9,  'Sixers',   'Philadelphia',  'East', 'Atlantic',  1946,  3);
INSERT INTO teams VALUES (10, 'Thunder',  'Oklahoma City', 'West', 'Northwest', 2008,  0);
COMMIT;

-- ============================================================
-- PLAYERS
-- ============================================================
-- Lakers
INSERT INTO players VALUES (1,  'LeBron',   'James',              1,'SF',81,250,TO_DATE('1984-12-30','YYYY-MM-DD'),23,2003,47607360.00);
INSERT INTO players VALUES (2,  'Anthony',  'Davis',              1,'PF',82,253,TO_DATE('1993-03-11','YYYY-MM-DD'), 3,2012,40600080.00);
INSERT INTO players VALUES (3,  'Austin',   'Reaves',             1,'SG',77,206,TO_DATE('1998-05-29','YYYY-MM-DD'),15,2021,11000000.00);
-- Celtics
INSERT INTO players VALUES (4,  'Jayson',   'Tatum',              2,'SF',80,210,TO_DATE('1998-03-03','YYYY-MM-DD'), 0,2017,32600060.00);
INSERT INTO players VALUES (5,  'Jaylen',   'Brown',              2,'SG',78,223,TO_DATE('1996-10-24','YYYY-MM-DD'), 7,2016,31830357.00);
INSERT INTO players VALUES (6,  'Kristaps', 'Porzingis',          2,'C', 87,240,TO_DATE('1995-08-02','YYYY-MM-DD'), 8,2015,30100000.00);
-- Warriors
INSERT INTO players VALUES (7,  'Stephen',  'Curry',              3,'PG',74,185,TO_DATE('1988-03-14','YYYY-MM-DD'),30,2009,51915615.00);
INSERT INTO players VALUES (8,  'Klay',     'Thompson',           3,'SG',78,220,TO_DATE('1990-02-08','YYYY-MM-DD'),11,2011,43219440.00);
INSERT INTO players VALUES (9,  'Draymond', 'Green',              3,'PF',78,230,TO_DATE('1990-03-04','YYYY-MM-DD'),23,2012,27586224.00);
-- Heat
INSERT INTO players VALUES (10, 'Jimmy',    'Butler',             4,'SF',79,230,TO_DATE('1989-09-14','YYYY-MM-DD'),22,2011,48798677.00);
INSERT INTO players VALUES (11, 'Bam',      'Adebayo',            4,'C', 81,255,TO_DATE('1997-07-18','YYYY-MM-DD'),13,2017,34848340.00);
INSERT INTO players VALUES (12, 'Tyler',    'Herro',              4,'SG',77,195,TO_DATE('2000-01-20','YYYY-MM-DD'),14,2019,27000000.00);
-- Mavericks
INSERT INTO players VALUES (13, 'Luka',     'Doncic',             5,'PG',79,230,TO_DATE('1999-02-28','YYYY-MM-DD'),77,2018,40064220.00);
INSERT INTO players VALUES (14, 'Kyrie',    'Irving',             5,'PG',74,195,TO_DATE('1992-03-23','YYYY-MM-DD'),11,2011,40000000.00);
INSERT INTO players VALUES (15, 'Dereck',   'Lively',             5,'C', 84,230,TO_DATE('2004-02-27','YYYY-MM-DD'), 2,2023, 5126880.00);
-- Bucks
INSERT INTO players VALUES (16, 'Giannis',  'Antetokounmpo',      6,'PF',83,242,TO_DATE('1994-12-06','YYYY-MM-DD'),34,2013,48787676.00);
INSERT INTO players VALUES (17, 'Damian',   'Lillard',            6,'PG',74,195,TO_DATE('1990-07-15','YYYY-MM-DD'), 0,2012,48788888.00);
INSERT INTO players VALUES (18, 'Khris',    'Middleton',          6,'SF',79,222,TO_DATE('1991-08-12','YYYY-MM-DD'),22,2012,31666667.00);
-- Nuggets
INSERT INTO players VALUES (19, 'Nikola',   'Jokic',              7,'C', 83,284,TO_DATE('1995-02-19','YYYY-MM-DD'),15,2014,51415938.00);
INSERT INTO players VALUES (20, 'Jamal',    'Murray',             7,'PG',76,215,TO_DATE('1997-02-23','YYYY-MM-DD'),27,2016,36016200.00);
INSERT INTO players VALUES (21, 'Michael',  'Porter',             7,'SF',82,218,TO_DATE('1998-06-29','YYYY-MM-DD'), 1,2018,35859950.00);
-- Suns
INSERT INTO players VALUES (22, 'Kevin',    'Durant',             8,'SF',82,240,TO_DATE('1988-09-29','YYYY-MM-DD'),35,2007,47649433.00);
INSERT INTO players VALUES (23, 'Devin',    'Booker',             8,'SG',77,206,TO_DATE('1996-10-30','YYYY-MM-DD'), 1,2015,36016200.00);
INSERT INTO players VALUES (24, 'Bradley',  'Beal',               8,'SG',76,207,TO_DATE('1993-06-28','YYYY-MM-DD'), 3,2012,50203930.00);
-- Sixers
INSERT INTO players VALUES (25, 'Joel',     'Embiid',             9,'C', 84,280,TO_DATE('1994-03-16','YYYY-MM-DD'),21,2014,51281323.00);
INSERT INTO players VALUES (26, 'Tyrese',   'Maxey',              9,'PG',74,200,TO_DATE('2000-11-04','YYYY-MM-DD'), 0,2020, 4343160.00);
INSERT INTO players VALUES (27, 'Tobias',   'Harris',             9,'PF',80,226,TO_DATE('1992-07-15','YYYY-MM-DD'),12,2011,39270150.00);
-- Thunder
INSERT INTO players VALUES (28, 'Shai',     'Gilgeous-Alexander',10,'SG',78,195,TO_DATE('1998-07-12','YYYY-MM-DD'), 2,2018,35450080.00);
INSERT INTO players VALUES (29, 'Chet',     'Holmgren',          10,'C', 85,195,TO_DATE('2002-05-01','YYYY-MM-DD'), 7,2022,10050120.00);
INSERT INTO players VALUES (30, 'Jalen',    'Williams',          10,'SF',78,195,TO_DATE('2001-04-14','YYYY-MM-DD'), 8,2022, 4695000.00);
COMMIT;

-- ============================================================
-- GAMES
-- ============================================================
INSERT INTO games VALUES (1, TO_DATE('2023-10-24','YYYY-MM-DD'),1, 7,107,119,'2023-24',0);
INSERT INTO games VALUES (2, TO_DATE('2023-10-24','YYYY-MM-DD'),8, 3,108,104,'2023-24',0);
INSERT INTO games VALUES (3, TO_DATE('2023-10-25','YYYY-MM-DD'),2, 6,119,116,'2023-24',0);
INSERT INTO games VALUES (4, TO_DATE('2023-10-26','YYYY-MM-DD'),4, 9,103,102,'2023-24',0);
INSERT INTO games VALUES (5, TO_DATE('2023-10-27','YYYY-MM-DD'),5,10,126,120,'2023-24',0);
INSERT INTO games VALUES (6, TO_DATE('2023-10-28','YYYY-MM-DD'),3, 1,122,109,'2023-24',0);
INSERT INTO games VALUES (7, TO_DATE('2023-10-29','YYYY-MM-DD'),7, 8,115,110,'2023-24',0);
INSERT INTO games VALUES (8, TO_DATE('2023-10-30','YYYY-MM-DD'),9, 2,106,117,'2023-24',0);
INSERT INTO games VALUES (9, TO_DATE('2023-10-31','YYYY-MM-DD'),6, 4,131,124,'2023-24',0);
INSERT INTO games VALUES(10, TO_DATE('2023-11-01','YYYY-MM-DD'),10,5,117, 95,'2023-24',0);
COMMIT;

-- ============================================================
-- GAME_STATS
-- ============================================================
-- Game 1: Lakers vs Nuggets
INSERT INTO game_stats VALUES (1, 1, 1, 1,35,21, 8, 5,1,0,4, 8,17,2, 5, 3,4);
INSERT INTO game_stats VALUES (2, 1, 2, 1,32,17,11, 2,0,3,2, 6,13,0, 2, 5,6);
INSERT INTO game_stats VALUES (3, 1,19, 7,37,29,13,11,2,1,3,12,20,2, 5, 3,4);
INSERT INTO game_stats VALUES (4, 1,20, 7,34,22, 4, 7,1,0,2, 9,16,2, 6, 2,2);

-- Game 2: Suns vs Warriors
INSERT INTO game_stats VALUES (5, 2,22, 8,36,28, 7, 4,1,2,3,10,20,3, 7, 5,5);
INSERT INTO game_stats VALUES (6, 2,23, 8,35,25, 3, 6,2,0,2, 9,18,4, 8, 3,3);
INSERT INTO game_stats VALUES (7, 2, 7, 3,33,27, 4, 7,1,0,3, 9,20,6,13, 3,3);
INSERT INTO game_stats VALUES (8, 2, 8, 3,30,19, 3, 2,0,1,1, 7,14,3, 8, 2,2);

-- Game 3: Celtics vs Bucks
INSERT INTO game_stats VALUES ( 9,3, 4,2,36,32, 8,4,2,1,3,11,22,5,10,5,6);
INSERT INTO game_stats VALUES (10,3, 5,2,34,26, 7,3,1,0,2,10,18,3, 7,3,4);
INSERT INTO game_stats VALUES (11,3,16,6,35,34,12,6,1,2,4,13,24,2, 6,6,8);
INSERT INTO game_stats VALUES (12,3,17,6,33,28, 4,8,2,0,3,10,19,5,11,3,3);

-- Game 4: Heat vs Sixers
INSERT INTO game_stats VALUES (13,4,10,4,37,27, 6,5,3,1,2, 9,18,2,5,7,8);
INSERT INTO game_stats VALUES (14,4,11,4,33,18,13,4,2,2,1, 7,12,0,0,4,5);
INSERT INTO game_stats VALUES (15,4,25,9,34,31,14,3,0,3,4,11,20,1,3,8,10);
INSERT INTO game_stats VALUES (16,4,26,9,32,22, 3,6,2,0,2, 8,16,3,7,3, 4);

-- Game 5: Mavericks vs Thunder
INSERT INTO game_stats VALUES (17,5,13,5,38,36, 8,10,2,0,4,13,25,5,12,5,6);
INSERT INTO game_stats VALUES (18,5,14,5,35,28, 4, 6,1,0,3,10,21,4, 9,4,4);
INSERT INTO game_stats VALUES (19,5,28,10,36,31,6, 7,3,1,2,12,22,3, 7,4,5);
INSERT INTO game_stats VALUES (20,5,29,10,28,16,9, 2,1,4,1, 7,12,1, 3,1,2);

-- Game 6: Warriors vs Lakers
INSERT INTO game_stats VALUES (21,6, 7,3,35,31, 5,8,2,0,3,11,23,7,14,2,2);
INSERT INTO game_stats VALUES (22,6, 9,3,32,15,12,7,3,1,2, 6,10,1, 3,2,2);
INSERT INTO game_stats VALUES (23,6, 1,1,34,23, 7,6,1,1,4, 8,19,2, 6,5,7);
INSERT INTO game_stats VALUES (24,6, 2,1,31,19, 9,3,0,2,2, 7,14,1, 4,4,5);

-- Game 7: Nuggets vs Suns
INSERT INTO game_stats VALUES (25,7,19,7,36,33,15,9,2,1,3,13,22,2,5,5,6);
INSERT INTO game_stats VALUES (26,7,20,7,33,24, 4,5,1,0,2, 9,18,3,8,3,4);
INSERT INTO game_stats VALUES (27,7,22,8,35,26, 8,4,1,2,2, 9,19,3,7,5,6);
INSERT INTO game_stats VALUES (28,7,23,8,32,21, 3,5,2,0,3, 7,16,3,8,4,4);

-- Game 8: Sixers vs Celtics
INSERT INTO game_stats VALUES (29,8,25,9,33,28,11,4,0,2,3,10,19,1,3,7,9);
INSERT INTO game_stats VALUES (30,8,26,9,34,24, 4,7,2,0,2, 9,17,3,7,3,3);
INSERT INTO game_stats VALUES (31,8, 4,2,37,35, 9,5,1,1,2,13,24,6,12,3,4);
INSERT INTO game_stats VALUES (32,8, 5,2,35,27, 6,3,2,0,1,10,19,4, 9,3,3);

-- Game 9: Bucks vs Heat
INSERT INTO game_stats VALUES (33,9,16,6,36,38,13,7,2,3,3,14,26,3, 8,7,9);
INSERT INTO game_stats VALUES (34,9,17,6,34,32, 5,9,1,0,2,11,21,6,13,4,4);
INSERT INTO game_stats VALUES (35,9,10,4,38,29, 7,6,3,1,3,10,20,2, 6,7,9);
INSERT INTO game_stats VALUES (36,9,11,4,32,19,12,3,1,2,2, 8,13,0, 1,3,4);

-- Game 10: Thunder vs Mavericks
INSERT INTO game_stats VALUES (37,10,28,10,35,33, 7,8,3,1,2,12,21,4,9,5,6);
INSERT INTO game_stats VALUES (38,10,29,10,30,18,11,2,1,5,1, 8,13,1,3,1,2);
INSERT INTO game_stats VALUES (39,10,13, 5,36,24, 6,7,1,0,5, 8,22,3,11,5,6);
INSERT INTO game_stats VALUES (40,10,14, 5,33,18, 4,5,2,0,3, 6,17,2, 7,4,5);
COMMIT;

-- ============================================================
-- Vérification finale
-- ============================================================
SELECT 'teams'      AS table_name, COUNT(*) AS nb_lignes FROM teams      UNION ALL
SELECT 'players'    AS table_name, COUNT(*) AS nb_lignes FROM players     UNION ALL
SELECT 'games'      AS table_name, COUNT(*) AS nb_lignes FROM games       UNION ALL
SELECT 'game_stats' AS table_name, COUNT(*) AS nb_lignes FROM game_stats;
