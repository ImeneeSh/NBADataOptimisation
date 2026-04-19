-- ============================================================
-- INDEX POUR R4 : Maximum de points dans un match
-- ============================================================

-- Index B-tree sur points dans GAME_STATS
-- Permet a Oracle de trouver le MAX(points) sans scanner toute la table
-- Oracle lit directement la feuille la plus a droite du B-tree (O log n)
CREATE INDEX idx_gs_points ON game_stats(points);