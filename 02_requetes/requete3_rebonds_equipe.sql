-- Total des rebonds pour Golden State Warriors sur toute la saison
SET AUTOTRACE ON;
SET TIMING ON;

SELECT
    t.city || ' ' || t.team_name AS equipe,
    g.season AS saison,
    SUM(gs.rebounds) AS total_rebonds
FROM teams t
JOIN players p ON p.team_id = t.team_id
JOIN game_stats gs ON gs.player_id = p.player_id
JOIN games g ON gs.game_id = g.game_id
WHERE t.city = 'Golden State'
AND g.season = '2023-24'
GROUP BY t.city, t.team_name, g.season;