USE summertides;

-- attendees that are registered
SELECT COUNT(*) AS total_attendees
FROM attendees;

-- Average ticket price
SELECT AVG(price) AS average_ticket_price
FROM tickets;

-- highest and lowest ticket price
SELECT
    MAX(price) AS highest_ticket_price,
    MIN(price) AS lowest_ticket_price
FROM tickets;

-- attendees come from each city
SELECT city, COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC;

-- artists in each genre
SELECT genre, COUNT(*) AS artist_count
FROM artists
GROUP BY genre
ORDER BY artist_count DESC;

-- total sales amount for each vendor
SELECT
    v.vendor_name,
    SUM(s.sale_amount) AS total_sales
FROM vendors v
JOIN sales s ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_id, v.vendor_name
ORDER BY total_sales DESC;
