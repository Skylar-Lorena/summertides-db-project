--Sponsor and the stages they sponsor
SELECT
    s.sponsor_name,
    st.stage_name
FROM Sponsors s
JOIN Stage_Sponsors ss ON s.sponsor_id = ss.sponsor_id
JOIN Stages st ON ss.stage_id = st.stage_id
ORDER BY s.sponsor_name, st.stage_name; 
-- vendor ranked by total sales
SELECT *    
FROM Vendors
ORDER BY total_sales DESC;
