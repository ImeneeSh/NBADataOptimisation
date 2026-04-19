-- ============================================================
-- INDEX POUR R3 : Rebonds equipe Golden State
-- ============================================================

-- Index B-tree sur city pour le filtre WHERE city = 'Golden State'
-- Evite un TABLE ACCESS FULL sur TEAMS
CREATE INDEX idx_teams_city ON teams(city);

-- Index B-tree sur season dans GAMES pour le filtre WHERE season = '2023-24'
-- Evite un TABLE ACCESS FULL sur GAMES
CREATE INDEX idx_games_season ON games(season);

-- Index composite sur player_id + game_id dans GAME_STATS
-- Accelere les deux jointures simultanement
CREATE INDEX idx_gs_player_game ON game_stats(player_id, game_id);