-- Lesson 6: Filter rows using WHERE and related clauses.

-- 1. Show attendees older than 25.
SELECT first_name, last_name, age FROM attendees WHERE age > 25;

-- 2. Find attendees from Nairobi.
SELECT first_name, last_name, city FROM attendees WHERE city = 'Nairobi';

-- 3. Display VIP tickets only.
SELECT ticket_id, attendee_id, ticket_type, price FROM tickets WHERE ticket_type = 'VIP';

-- 4. Show tickets costing more than 5,000.
SELECT * FROM tickets WHERE price > 5000;

-- 5. Find artists from Kenya.
SELECT artist_name, country FROM artists WHERE country = 'Kenya';

-- 6. Display vendors with ratings above 4.
SELECT vendor_name, rating FROM vendors WHERE rating > 4;

-- 7. Find attendees whose names start with A.
SELECT first_name, last_name FROM attendees WHERE first_name LIKE 'A%';

-- 8. Display performances happening between 6:00 PM and 10:00 PM.
SELECT performance_id, start_time, end_time FROM performances WHERE start_time BETWEEN '18:00' AND '22:00';

-- 9. Show tickets purchased on a specific date.
SELECT * FROM tickets WHERE purchase_date = '2026-01-20';

-- 10. Find attendees whose phone numbers are missing.
SELECT first_name, last_name, phone FROM attendees WHERE phone IS NULL;