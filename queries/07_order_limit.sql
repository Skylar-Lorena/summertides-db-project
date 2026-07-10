-- Display artists alphabetically
SELECT *
FROM artists
ORDER BY artist_name;

-- Display sponsors by highest contribution
SELECT *
FROM sponsors
ORDER BY contribution_amount DESC;

-- Display top 5 sponsors
SELECT *
FROM sponsors
ORDER BY contribution_amount DESC
LIMIT 5;

-- Display latest sales first
SELECT *
FROM sales
ORDER BY sale_time DESC;