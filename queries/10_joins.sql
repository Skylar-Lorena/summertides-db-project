-- Lesson 10: Join multiple tables to answer business questions.

-- 1. Display attendees together with their ticket information.
SELECT a.first_name, a.last_name, t.ticket_type, t.price, t.ticket_code
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id;

-- 2. Show artists and the stages where they perform.
SELECT ar.artist_name, st.stage_name, p.performance_date
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id;

-- 3. Display every performance together with the artist name and stage name.
SELECT p.performance_id, ar.artist_name, st.stage_name, p.performance_date, p.start_time, p.end_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id
ORDER BY p.performance_date, p.start_time;

-- 4. List every vendor together with the attendees who purchased from them.
SELECT v.vendor_name, a.first_name, a.last_name, s.item_sold, s.amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.vendor_id
JOIN attendees a ON s.attendee_id = a.attendee_id;

-- 5. Display sponsors alongside the stages they sponsor.
SELECT sp.sponsor_name, st.stage_name, ss.sponsorship_amount
FROM stage_sponsors ss
JOIN sponsors sp ON ss.sponsor_id = sp.sponsor_id
JOIN stages st ON ss.stage_id = st.stage_id;

-- 6. Show artists who do not yet have a scheduled performance.
SELECT ar.artist_name
FROM artists ar
LEFT JOIN performances p ON ar.artist_id = p.artist_id
WHERE p.performance_id IS NULL;

-- 7. Retrieve all performances for a selected festival day.
SELECT ar.artist_name, st.stage_name, p.performance_date, p.start_time, p.end_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id
WHERE p.festival_day = 'Day 2'
ORDER BY p.start_time;