
-- Create a reusable view for VIP attendees.
CREATE VIEW IF NOT EXISTS vip_attendees AS
SELECT a.attendee_id, a.full_name, a.email, a.city, t.ticket_code, t.ticket_type, t.price
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
WHERE t.ticket_type = 'VIP';

-- Query the VIP view to verify it works.
SELECT * FROM vip_attendees ORDER BY full_name;

-- Create a reusable view for the artist schedule.
CREATE VIEW IF NOT EXISTS artist_schedule AS
SELECT ar.artist_name, st.stage_name, p.performance_date, p.start_time, p.end_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id;

-- Query the artist schedule view.
SELECT * FROM artist_schedule ORDER BY performance_date, start_time;

-- Create a reusable view for vendor sales summaries.
CREATE VIEW IF NOT EXISTS vendor_sales_summary AS
SELECT v.vendor_name,
       COUNT(s.sale_id) AS number_of_transactions,
       SUM(s.amount) AS total_sales,
       ROUND(AVG(s.amount), 2) AS average_sale_value
FROM vendors v
LEFT JOIN sales s ON v.vendor_id = s.vendor_id
GROUP BY v.vendor_id, v.vendor_name;

-- Query the vendor sales summary view.
SELECT * FROM vendor_sales_summary ORDER BY total_sales DESC;

-- Create a reusable view for attendee ticket summaries.
CREATE VIEW IF NOT EXISTS attendee_ticket_summary AS
SELECT a.attendee_id,
       a.full_name,
       a.city,
       t.ticket_code,
       t.ticket_type,
       t.price
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id;

-- Query the attendee ticket summary view.
SELECT * FROM attendee_ticket_summary ORDER BY full_name, ticket_code;
