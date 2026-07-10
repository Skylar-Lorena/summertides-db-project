SELECT ar.artist_name, COUNT(p.performance_id) AS performance_count
FROM artists ar
LEFT JOIN performances p ON ar.artist_id = p.artist_id
GROUP BY ar.artist_name
ORDER BY performance_count DESC;