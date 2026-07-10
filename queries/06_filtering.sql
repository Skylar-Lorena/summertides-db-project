-- File: 06_filtering.sql
-- Topic: Filtering data using WHERE

-- Find all VIP tickets
SELECT *
FROM tickets
WHERE ticket_type = 'VIP';


-- Find artists from Kenya
SELECT *
FROM artists
WHERE country = 'Kenya';


-- Find vendors with a rating above 4
SELECT *
FROM vendors
WHERE rating > 4;


-- Find attendees from Nairobi
SELECT *
FROM attendees
WHERE city = 'Nairobi';


-- Find tickets costing more than 10000
SELECT *
FROM tickets
WHERE price > 10000;