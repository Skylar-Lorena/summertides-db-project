SELECT ar.artist_name, COUNT(p.performance_id) AS performance_count
FROM artists ar
LEFT JOIN performances p ON ar.artist_id = p.artist_id
GROUP BY ar.artist_name
ORDER BY performance_count DESC;

SELECT st.stage_name, COUNT(p.performance_id) AS performance_count
FROM stages st
LEFT JOIN performances p ON st.stage_id = p.stage_id
GROUP BY st.stage_name
ORDER BY performance_count DESC;

SELECT sponsor_name, sponsorship_amount
FROM sponsors
WHERE sponsorship_amount > 2500000
ORDER BY sponsorship_amount DESC;