SELECT COUNT(*) AS total_attendees FROM attendees;

SELECT AVG(price) AS average_ticket_price FROM tickets;

SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM tickets;

SELECT city, COUNT(*) AS attendee_count FROM attendees GROUP BY city ORDER BY attendee_count DESC;

SELECT genre, COUNT(*) AS artist_count FROM artists GROUP BY genre ORDER BY artist_count DESC;

SELECT vendor_id, SUM(amount) AS total_sales_amount FROM sales GROUP BY vendor_id ORDER BY total_sales_amount DESC;

SELECT festival_day, COUNT(*) AS performance_count FROM performances GROUP BY festival_day ORDER BY performance_count DESC;
