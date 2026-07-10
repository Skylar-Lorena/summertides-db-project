-- 1. Display attendees together with their ticket information.
SELECT
    a.first_name,
    a.last_name,
    a.email,
    t.ticket_type,
    t.price,
    t.purchase_date
FROM attendees AS a

INNER JOIN tickets AS t
    ON a.attendee_id = t.attendee_id
ORDER BY a.last_name, a.first_name;

-- 2. Show artists and the stages where they perform.
SELECT
    ar.artist_name,
    ar.genre,
    st.stage_name
FROM performances AS p
INNER JOIN artists AS ar
    ON p.artist_id = ar.artist_id
INNER JOIN stages AS st
    ON p.stage_id = st.stage_id
ORDER BY ar.artist_name, st.stage_name;

-- 3. Display every performance together with the artist name and stage name.
SELECT
    p.performance_id,
    ar.artist_name,
    st.stage_name,
    p.performance_date,
    p.start_time,
    p.end_time,
    p.festival_day
FROM performances AS p
INNER JOIN artists AS ar
    ON p.artist_id = ar.artist_id
INNER JOIN stages AS st
    ON p.stage_id = st.stage_id
ORDER BY p.performance_date, p.start_time;

-- 4. List every vendor together with the attendees who purchased from them.
SELECT
    v.vendor_name,
    a.first_name,
    a.last_name,
    a.email,
    s.sale_date,
    s.amount
FROM vendors AS v
LEFT JOIN sales AS s
    ON v.vendor_id = s.vendor_id
LEFT JOIN attendees AS a
    ON s.attendee_id = a.attendee_id
ORDER BY v.vendor_name, a.last_name;
