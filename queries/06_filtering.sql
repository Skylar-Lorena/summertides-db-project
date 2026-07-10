USE summertides;

-- Show attendees older than 25.
SELECT first_name, last_name, age
FROM attendees
WHERE age > 25;

-- Find attendees from Nairobi.
SELECT first_name, last_name, city
FROM attendees
WHERE city = 'Nairobi';

-- Display VIP tickets only.
SELECT *
FROM tickets
WHERE ticket_type = 'VIP';

SELECT *
FROM tickets
WHERE price > 5000;

SELECT vendor_name, category, rating
FROM vendors
WHERE rating > 4;