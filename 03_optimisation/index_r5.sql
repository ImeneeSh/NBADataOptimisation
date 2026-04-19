-- ============================================================
-- INDEX POUR R5 : Joueur avec le plus de points sur la saison
-- ============================================================

-- Index composite sur game_id + player_id + points dans GAME_STATS
-- Couvre la jointure, le GROUP BY et le SUM(points) en un seul index
-- Oracle peut faire un INDEX FULL SCAN sans toucher la table
CREATE INDEX idx_gs_gameid_player_points ON game_stats(game_id, player_id, points);