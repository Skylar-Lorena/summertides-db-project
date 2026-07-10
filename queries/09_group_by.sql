-- Number of performances by stage
SELECT
    stage_id,
    COUNT(*) AS total_performances
FROM Performances
GROUP BY stage_id;

-- Number of artists by country
SELECT
    country,
    COUNT(*) AS total_artists
FROM Artists
GROUP BY country;