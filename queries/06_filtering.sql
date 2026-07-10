
-- SummerTides Festival Database
-- Purpose: Answer business questions by filtering rows with WHERE,
--          AND, OR, NOT, BETWEEN, LIKE, IN, and IS NULL.

USE summertides;

-- 1. Show attendees older than 25.
SELECT first_name, last_name, age
FROM attendees
WHERE age > 25;

-- 2. Find attendees from Nairobi.
SELECT first_name, last_name, city
FROM attendees
WHERE city = 'Nairobi';

-- 3. Display VIP tickets only.
SELECT *
FROM tickets
WHERE ticket_type = 'VIP';

-- 4. Show tickets costing more than 5,000.
SELECT ticket_id, ticket_type, price
FROM tickets
WHERE price > 5000;

-- 5. Find artists from Kenya.
SELECT artist_name, genre, country
FROM artists
WHERE country = 'Kenya';

-- 6. Display vendors with ratings above 4.
SELECT vendor_name, category, rating
FROM vendors
WHERE rating > 4;

-- 7. Find attendees whose names start with "A".
SELECT first_name, last_name
FROM attendees
WHERE first_name LIKE 'A%';

-- 8. Display performances happening between 6:00 PM and 10:00 PM.
SELECT performance_id, artist_id, stage_id, festival_day, start_time, end_time
FROM performances
WHERE start_time BETWEEN '18:00:00' AND '22:00:00';

-- 9. Show tickets purchased on a specific date (example date used below).
SELECT ticket_id, attendee_id, ticket_type, purchase_date
FROM tickets
WHERE purchase_date = '2026-06-15';

-- 10. Find attendees whose phone numbers are missing.
SELECT first_name, last_name, phone
FROM attendees
WHERE phone IS NULL;

-- Bonus combinations using AND / OR / NOT / IN, kept here for completeness:

-- Attendees older than 25 AND based in Nairobi.
SELECT first_name, last_name, age, city
FROM attendees
WHERE age > 25 AND city = 'Nairobi';

-- Tickets that are VIP OR Backstage (the "premium" tiers).
SELECT ticket_id, ticket_type, price
FROM tickets
WHERE ticket_type = 'VIP' OR ticket_type = 'Backstage';

-- Attendees who are NOT from Nairobi.
SELECT first_name, last_name, city
FROM attendees
WHERE NOT city = 'Nairobi';

-- Artists from a shortlist of countries using IN.
SELECT artist_name, country
FROM artists
WHERE country IN ('Kenya', 'Uganda', 'Tanzania');
