-- ============================================================
-- REQUÊTE 1 : Joueurs ayant réalisé un triple double
-- Saison 2023-24
-- Un triple double = au moins 3 catégories >= 10
-- dans un même match (points, rebonds, passes, contres, inters)
-- ============================================================

-- Activation du plan d'exécution
SET AUTOTRACE ON;
SET TIMING ON;
SET LINESIZE 200;
SET PAGESIZE 100;

-- ============================================================
-- REQUÊTE FINALE
-- ============================================================
SELECT
    p.first_name || ' ' || p.last_name  AS joueur,
    g.game_date                          AS date_match,
    g.season                             AS saison,
    gs.points                            AS pts,
    gs.rebounds                          AS reb,
    gs.assists                           AS ast,
    gs.steals                            AS stl,
    gs.blocks                            AS blk
FROM game_stats gs
JOIN players p ON gs.player_id = p.player_id
JOIN games   g ON gs.game_id   = g.game_id
WHERE g.season = '2023-24'
  AND (
        (CASE WHEN gs.points   >= 10 THEN 1 ELSE 0 END)
      + (CASE WHEN gs.rebounds >= 10 THEN 1 ELSE 0 END)
      + (CASE WHEN gs.assists  >= 10 THEN 1 ELSE 0 END)
      + (CASE WHEN gs.steals   >= 10 THEN 1 ELSE 0 END)
      + (CASE WHEN gs.blocks   >= 10 THEN 1 ELSE 0 END)
      ) >= 3
ORDER BY g.game_date, joueur;

-- ============================================================
-- RÉSULTAT OBTENU :
-- Nikola Jokic | 24/10/23 | 2023-24 | 29 pts | 13 reb | 11 ast
--
-- ANALYSE DU PLAN D'EXÉCUTION :
--
-- AVANT index :
--   TABLE ACCESS FULL sur GAME_STATS
--   consistent gets = 28 | temps = 1.105s
--   Problème : Oracle scanne toutes les lignes de game_stats
--   avant de filtrer par saison
--
-- APRÈS création des index :
--   IDX_GAMES_SEASON  → INDEX RANGE SCAN sur games(season)
--   IDX_GS_GAME_ID    → INDEX FULL SCAN sur game_stats
--   IDX_GS_PLAYER_ID  → jointure players optimisée
--   consistent gets = 6  | temps = 0.500s
--   Gain : -78% sur consistent gets, -55% sur le temps
--
-- INDEX CRÉÉS (voir 03_optimisation/index_r1.sql) :
--   CREATE INDEX idx_gs_game_id   ON game_stats(game_id);
--   CREATE INDEX idx_gs_player_id ON game_stats(player_id);
--   CREATE INDEX idx_games_season ON games(season);
-- ============================================================