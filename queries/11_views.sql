
CREATE VIEW attendee_ticket_view AS
SELECT
    attendees.first_name || ' ' || attendees.last_name AS attendee_name,
    tickets.ticket_type,
    tickets.price,
    tickets.purchase_date
FROM attendees
JOIN tickets
ON attendees.attendee_id = tickets.attendee_id;


-- View showing artist performance schedule.
CREATE VIEW performance_schedule_view AS
SELECT
    artists.name AS artist_name,
    performances.start_time,
    performances.end_time
FROM performances
JOIN artists
ON performances.artist_id = artists.artist_id;


-- View showing vendor sales summary.
CREATE VIEW vendor_sales_view AS
SELECT
    vendors.vendor_name,
    SUM(sales.amount) AS total_sales,
    SUM(sales.quantity) AS total_items
FROM vendors
JOIN sales
ON vendors.vendor_id = sales.vendor_id
GROUP BY vendors.vendor_name;