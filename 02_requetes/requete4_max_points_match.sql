-- Maximum de points marqués dans un seul match
SET AUTOTRACE ON;
SET TIMING ON;

SELECT
    p.first_name || ' ' || p.last_name AS joueur,
    g.game_date AS date_match,
    gs.points AS points_max
FROM game_stats gs
JOIN players p ON gs.player_id = p.player_id
JOIN games g ON gs.game_id = g.game_id
WHERE gs.points = (
    SELECT MAX(points)
    FROM game_stats
)
ORDER BY g.game_date;