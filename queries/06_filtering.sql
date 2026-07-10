
-- Find all VIP tickets.
SELECT *
FROM tickets
WHERE ticket_type = 'VIP';

-- Find artists whose name starts with "D".
SELECT *
FROM artists
WHERE name LIKE 'D%';

-- Find vendors of type Food.
SELECT *
FROM vendors
WHERE vendor_type = 'Food';

-- Find attendees with a phone number.
SELECT *
FROM attendees
WHERE phone_number IS NOT NULL;

-- Find attendees without a phone number.
SELECT *
FROM attendees
WHERE phone_number IS NULL;

-- Find tickets costing more than 10000.
SELECT *
FROM tickets
WHERE price > 10000;

-- Find tickets that cost between 5000 and 10000.
SELECT *
FROM tickets
WHERE price BETWEEN 5000 AND 10000;

-- Find performances that start after 6:00 PM.
SELECT *
FROM performances
WHERE start_time > '18:00:00';

-- Find sponsors contributing more than 1000000.
SELECT *
FROM sponsors
WHERE contribution_amount > 1000000;

-- Find tickets that are either VIP or Regular.
SELECT *
FROM tickets
WHERE ticket_type IN ('VIP', 'Regular');