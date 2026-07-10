-- Recreates a reusable full performance schedule view.
DROP VIEW IF EXISTS vw_performance_schedule;
CREATE VIEW vw_performance_schedule AS
SELECT p.performance_id, p.performance_date, p.start_time, p.end_time,
       a.artist_name, a.genre, s.stage_name, p.set_type
FROM performances AS p
JOIN artists AS a ON a.artist_id = p.artist_id
JOIN stages AS s ON s.stage_id = p.stage_id;

-- Recreates a reusable attendee ticket and revenue view.
DROP VIEW IF EXISTS vw_attendee_tickets;
CREATE VIEW vw_attendee_tickets AS
SELECT tp.purchase_id, a.first_name, a.last_name, a.email,
       tt.ticket_name, tp.quantity, tt.price,
       tp.quantity * tt.price AS purchase_total, tp.purchase_date
FROM ticket_purchases AS tp
JOIN attendees AS a ON a.attendee_id = tp.attendee_id
JOIN ticket_types AS tt ON tt.ticket_type_id = tp.ticket_type_id;

-- Recreates a reusable vendor revenue summary view.
DROP VIEW IF EXISTS vw_vendor_sales_summary;
CREATE VIEW vw_vendor_sales_summary AS
SELECT v.vendor_id, v.vendor_name, v.vendor_category,
       SUM(vs.sales_amount) AS total_sales,
       SUM(vs.transactions) AS total_transactions
FROM vendors AS v
JOIN vendor_sales AS vs ON vs.vendor_id = v.vendor_id
GROUP BY v.vendor_id, v.vendor_name, v.vendor_category;

-- Recreates a reusable stage sponsorship view.
DROP VIEW IF EXISTS vw_stage_sponsorship;
CREATE VIEW vw_stage_sponsorship AS
SELECT st.stage_name, sp.sponsor_name, sp.industry, ss.contribution_amount
FROM stage_sponsors AS ss
JOIN stages AS st ON st.stage_id = ss.stage_id
JOIN sponsors AS sp ON sp.sponsor_id = ss.sponsor_id;

-- Displays the reusable performance schedule view.
SELECT * FROM vw_performance_schedule ORDER BY performance_date, start_time;

-- Displays the reusable vendor sales summary view.
SELECT * FROM vw_vendor_sales_summary ORDER BY total_sales DESC;
