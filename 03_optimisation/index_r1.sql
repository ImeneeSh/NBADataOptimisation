-- ============================================================
-- INDEX POUR REQUÊTE 1 : Triple Double
-- ============================================================

-- Index 1 : Jointure game_stats → games (pour filtrer par saison tôt)
-- Permet à Oracle de partir de games (filtrer saison='2023-24')
-- puis de naviguer vers game_stats via l'index au lieu du full scan
CREATE INDEX idx_gs_game_id
    ON game_stats(game_id);

-- Index 2 : Jointure game_stats → players
CREATE INDEX idx_gs_player_id
    ON game_stats(player_id);

-- Index 3 : Filtre saison sur games (le plus important !)
-- Sans ça Oracle filtre season après coup
CREATE INDEX idx_games_season
    ON games(season);

-- Vérifier que les index sont bien créés
SELECT index_name, table_name, status
FROM user_indexes
WHERE table_name IN ('GAME_STATS', 'GAMES', 'PLAYERS')
ORDER BY table_name, index_name;