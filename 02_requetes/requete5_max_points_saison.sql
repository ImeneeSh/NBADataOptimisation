-- Joueur ayant marqué le plus de points sur la saison 2023-24
SET AUTOTRACE ON;
SET TIMING ON;

SELECT
    p.first_name || ' ' || p.last_name AS joueur,
    g.season AS saison,
    SUM(gs.points) AS total_points
FROM game_stats gs
JOIN players p ON gs.player_id = p.player_id
JOIN games g ON gs.game_id = g.game_id
WHERE g.season = '2023-24'
GROUP BY p.first_name, p.last_name, g.season
HAVING SUM(gs.points) = (
    SELECT MAX(SUM(gs2.points))
    FROM game_stats gs2
    JOIN games g2 ON gs2.game_id = g2.game_id
    WHERE g2.season = '2023-24'
    GROUP BY gs2.player_id
)
ORDER BY total_points DESC;