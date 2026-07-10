-- Number of artists per genre
SELECT
    genre,
    COUNT(*) AS total_artists
FROM artists
GROUP BY genre;

-- Number of attendees per ticket type
SELECT
    ticket_type,
    COUNT(*) AS total_attendees
FROM attendees
GROUP BY ticket_type;

-- Total sales per vendor
SELECT
    vendor_id,
    SUM(amount) AS total_sales
FROM sales
GROUP BY vendor_id;

-- Total sponsorship amount
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors;