
SELECT
    COUNT(*) AS total_attendees
FROM attendees;


-- Count tickets by ticket type.
SELECT
    ticket_type,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY ticket_type;


-- Calculate average ticket price by ticket type.
SELECT
    ticket_type,
    AVG(price) AS average_price
FROM tickets
GROUP BY ticket_type;


-- Count vendors by type.
SELECT
    vendor_type,
    COUNT(*) AS total_vendors
FROM vendors
GROUP BY vendor_type;


-- Show total sales amount by vendor.
SELECT
    vendor_id,
    SUM(amount) AS total_sales
FROM sales
GROUP BY vendor_id;


-- Show total quantity sold by vendor.
SELECT
    vendor_id,
    SUM(quantity) AS items_sold
FROM sales
GROUP BY vendor_id;


-- Show sponsors with contributions above 1 million.
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors
GROUP BY sponsor_name, contribution_amount
HAVING contribution_amount > 1000000;