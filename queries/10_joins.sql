-- Exercise 1: Count the number of registered attendees.
SELECT COUNT(*) AS total_attendees FROM attendees;

-- Exercise 2: Calculate the average ticket price.
SELECT ROUND(AVG(price), 2) AS average_ticket_price FROM tickets;

-- Exercise 3: Find the highest and lowest ticket price.
SELECT MIN(price) AS lowest_ticket_price, MAX(price) AS highest_ticket_price FROM tickets;

-- Exercise 4: Count attendees by city.
SELECT city, COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC, city;

-