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
