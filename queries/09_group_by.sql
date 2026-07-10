USE summertides;

-- attendees that are registered
SELECT COUNT(*) AS total_attendees
FROM attendees;

-- Average ticket price
SELECT AVG(price) AS average_ticket_price
FROM tickets;
