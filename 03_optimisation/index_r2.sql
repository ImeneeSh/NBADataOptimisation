-- ============================================================
-- INDEX POUR R2 : Joueurs de plus de 2m avec interceptions
-- ============================================================

-- Index B-tree sur height_inches pour le filtre WHERE >= 79
-- Evite un TABLE ACCESS FULL sur PLAYERS
CREATE INDEX idx_players_height ON players(height_inches);

-- Index B-tree sur steals pour le filtre WHERE steals > 0
-- Evite un TABLE ACCESS FULL sur GAME_STATS
CREATE INDEX idx_gs_steals ON game_stats(steals);

-- Index B-tree sur player_id dans GAME_STATS pour la jointure
-- Accelere le JOIN entre PLAYERS et GAME_STATS
CREATE INDEX idx_gs_player_id ON game_stats(player_id);