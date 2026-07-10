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

-- 5. Display sponsors alongside the stages they sponsor.
SELECT
    st.stage_name,
    sp.sponsor_name,
    ss.sponsorship_amount
FROM stage_sponsors AS ss
INNER JOIN stages AS st
    ON ss.stage_id = st.stage_id
INNER JOIN sponsors AS sp
    ON ss.sponsor_id = sp.sponsor_id
ORDER BY st.stage_name, sp.sponsor_name;

-- 6. Show artists who do not yet have a scheduled performance.
SELECT
    ar.artist_name,
    ar.genre,
    ar.country
FROM artists AS ar
LEFT JOIN performances AS p
    ON ar.artist_id = p.artist_id
WHERE p.performance_id IS NULL
ORDER BY ar.artist_name;

