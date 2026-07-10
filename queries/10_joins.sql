SELECT
    a.artist_name,
    s.stage_name,
    p.performance_date,
    p.start_time
FROM performances p
JOIN artists a
    ON p.artist_id = a.artist_id
JOIN stages s
    ON p.stage_id = s.stage_id;


    SELECT
    sp.sponsor_name,
    st.stage_name
FROM stage_sponsors ss
JOIN sponsors sp
    ON ss.sponsor_id = sp.sponsor_id
JOIN stages st
    ON ss.stage_id = st.stage_id;

    SELECT
    v.vendor_name,
    s.amount,
    s.sale_time
FROM sales s
JOIN vendors v
    ON s.vendor_id = v.vendor_id;