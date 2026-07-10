CREATE VIEW attendee_ticket_summary AS
SELECT a.attendee_id, a.full_name, a.city, t.ticket_type, t.price
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id;

CREATE VIEW vendor_sales_summary AS
SELECT v.vendor_name, SUM(s.amount) AS total_sales
FROM vendors v
LEFT JOIN sales s ON v.vendor_id = s.vendor_id
GROUP BY v.vendor_name;

SELECT * FROM attendee_ticket_summary LIMIT 10;

SELECT * FROM vendor_sales_summary ORDER BY total_sales DESC;
