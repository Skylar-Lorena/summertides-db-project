-- Lesson 7: Sort and limit results.

-- 1. Display attendees alphabetically.
SELECT first_name, last_name FROM attendees ORDER BY last_name ASC, first_name ASC;

-- 2. Show artists ordered by genre.
SELECT artist_name, genre FROM artists ORDER BY genre ASC;

-- 3. List vendors from highest to lowest rating.
SELECT vendor_name, rating FROM vendors ORDER BY rating DESC;

-- 4. Display the five most expensive ticket purchases.
SELECT ticket_id, attendee_id, price FROM tickets ORDER BY price DESC LIMIT 5;

-- 5. Show the first ten attendees registered.
SELECT attendee_id, first_name, last_name, registration_date FROM attendees ORDER BY registration_date ASC LIMIT 10;

-- 6. Display the latest ticket purchases.
SELECT ticket_id, attendee_id, purchase_date, price FROM tickets ORDER BY purchase_date DESC LIMIT 10;

-- 7. Retrieve only the top three highest-rated vendors.
SELECT vendor_name, rating FROM vendors ORDER BY rating DESC LIMIT 3;