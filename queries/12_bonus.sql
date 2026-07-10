SELECT
    a.artist_name,
    COUNT(p.performance_id) AS performances
FROM artists a
LEFT JOIN performances p
    ON a.artist_id = p.artist_id
GROUP BY a.artist_name;

SELECT
    v.vendor_name,
    SUM(s.amount) AS total_sales
FROM vendors v
JOIN sales s
    ON v.vendor_id = s.vendor_id
GROUP BY v.vendor_name
ORDER BY total_sales DESC
LIMIT 1;

SELECT
    st.stage_name,
    COUNT(p.performance_id) AS total_performances
FROM stages st
JOIN performances p
    ON st.stage_id = p.stage_id
GROUP BY st.stage_name
ORDER BY total_performances DESC
LIMIT 1;