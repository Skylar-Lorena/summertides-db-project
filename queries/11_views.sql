-- Create a reusable view for attendees who purchased VIP tickets.
DROP VIEW IF EXISTS vip_attendees;
CREATE VIEW vip_attendees AS

SELECT
    a.attendee_id,
    a.first_name,
    a.last_name,
    a.email,
    a.city,
    t.ticket_type,
    t.price,
    t.purchase_date
FROM attendees AS a
INNER JOIN tickets AS t
    ON a.attendee_id = t.attendee_id
WHERE t.ticket_type = 'VIP';

SELECT *
FROM vip_attendees
ORDER BY last_name, first_name;

-- Create a reusable view for the artist performance schedule.
DROP VIEW IF EXISTS artist_schedule;
CREATE VIEW artist_schedule AS
SELECT
    ar.artist_name,
    st.stage_name,
    p.performance_date,
    p.start_time,
    p.end_time
FROM performances AS p
INNER JOIN artists AS ar
    ON p.artist_id = ar.artist_id
INNER JOIN stages AS st
    ON p.stage_id = st.stage_id;

SELECT *
FROM artist_schedule
ORDER BY performance_date, start_time;

-- Create a reusable view for vendor sales performance.
DROP VIEW IF EXISTS vendor_sales_summary;
CREATE VIEW vendor_sales_summary AS
SELECT
    v.vendor_name,
    COUNT(s.sale_id) AS number_of_transactions,
    COALESCE(AVG(s.amount), 0) AS average_sale_value,
    COALESCE(SUM(s.amount), 0) AS total_sales
FROM vendors AS v
LEFT JOIN sales AS s
    ON v.vendor_id = s.vendor_id
GROUP BY v.vendor_id, v.vendor_name;

SELECT *
FROM vendor_sales_summary
ORDER BY total_sales DESC;
