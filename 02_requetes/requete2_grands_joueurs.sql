-- Joueurs de plus de 2m (>= 79 inches) ayant fait des interceptions
SET AUTOTRACE ON;
SET TIMING ON;

SELECT DISTINCT
    p.first_name || ' ' || p.last_name AS joueur,
    p.height_inches AS taille_pouces,
    ROUND(p.height_inches * 2.54, 1) AS taille_cm,
    COUNT(DISTINCT gs.game_id) AS nb_matchs_avec_interceptions
FROM players p
JOIN game_stats gs ON p.player_id = gs.player_id
WHERE p.height_inches >= 79
AND gs.steals > 0
GROUP BY p.first_name, p.last_name, p.height_inches
ORDER BY p.height_inches DESC;

