-- ============================================================
-- NBA Database Schema -- Adapté pour Oracle XE 21c
-- Projet Mini Projet OGA -- ING 3 -- 2025/2026
-- ============================================================

-- Suppression des tables dans le bon ordre (contraintes FK)
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE game_stats CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE games CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE players CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE teams CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

-- ============================================================
-- TABLE : teams
-- ============================================================
CREATE TABLE teams (
    team_id        NUMBER PRIMARY KEY,
    team_name      VARCHAR2(100) NOT NULL,
    city           VARCHAR2(100) NOT NULL,
    conference     VARCHAR2(10)  CHECK(conference IN ('East', 'West')),
    division       VARCHAR2(20),
    founded_year   NUMBER,
    championships  NUMBER DEFAULT 0
);

-- ============================================================
-- TABLE : players
-- ============================================================
CREATE TABLE players (
    player_id      NUMBER PRIMARY KEY,
    first_name     VARCHAR2(50) NOT NULL,
    last_name      VARCHAR2(50) NOT NULL,
    team_id        NUMBER,
    position       VARCHAR2(5)  CHECK(position IN ('PG', 'SG', 'SF', 'PF', 'C')),
    height_inches  NUMBER,
    weight_lbs     NUMBER,
    birth_date     DATE,
    jersey_number  NUMBER,
    draft_year     NUMBER,
    salary         NUMBER(12,2),
    CONSTRAINT fk_players_team FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- ============================================================
-- TABLE : games
-- ============================================================
CREATE TABLE games (
    game_id       NUMBER PRIMARY KEY,
    game_date     DATE NOT NULL,
    home_team_id  NUMBER NOT NULL,
    away_team_id  NUMBER NOT NULL,
    home_score    NUMBER,
    away_score    NUMBER,
    season        VARCHAR2(10),
    playoff_game  NUMBER(1) DEFAULT 0 CHECK(playoff_game IN (0,1)),
    CONSTRAINT fk_games_home FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    CONSTRAINT fk_games_away FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

-- ============================================================
-- TABLE : game_stats (statistiques par joueur par match)
-- ============================================================
CREATE TABLE game_stats (
    stat_id                   NUMBER PRIMARY KEY,
    game_id                   NUMBER NOT NULL,
    player_id                 NUMBER NOT NULL,
    team_id                   NUMBER NOT NULL,
    minutes_played            NUMBER,
    points                    NUMBER DEFAULT 0,
    rebounds                  NUMBER DEFAULT 0,
    assists                   NUMBER DEFAULT 0,
    steals                    NUMBER DEFAULT 0,
    blocks                    NUMBER DEFAULT 0,
    turnovers                 NUMBER DEFAULT 0,
    field_goals_made          NUMBER DEFAULT 0,
    field_goals_attempted     NUMBER DEFAULT 0,
    three_pointers_made       NUMBER DEFAULT 0,
    three_pointers_attempted  NUMBER DEFAULT 0,
    free_throws_made          NUMBER DEFAULT 0,
    free_throws_attempted     NUMBER DEFAULT 0,
    CONSTRAINT fk_gs_game   FOREIGN KEY (game_id)   REFERENCES games(game_id),
    CONSTRAINT fk_gs_player FOREIGN KEY (player_id) REFERENCES players(player_id),
    CONSTRAINT fk_gs_team   FOREIGN KEY (team_id)   REFERENCES teams(team_id)
);

-- ============================================================
-- Vérification
-- ============================================================
SELECT table_name FROM user_tables ORDER BY table_name;
