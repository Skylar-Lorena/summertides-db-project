SELECT COUNT(*) AS total_attendees FROM attendees;

SELECT AVG(price) AS average_ticket_price FROM tickets;

SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM tickets;

SELECT city, COUNT(*) AS attendee_count FROM attendees GROUP BY city ORDER BY attendee_count DESC;

SELECT genre, COUNT(*) AS artist_count FROM artists GROUP BY genre ORDER BY artist_count DESC;