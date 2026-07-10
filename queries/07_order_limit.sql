-- File: 07_order_limit.sql
-- Topic: Sorting and limiting results

-- Display attendees alphabetically
SELECT
    first_name || ' ' || last_name AS attendee_name
FROM attendees
ORDER BY first_name ASC;


-- Show artists ordered by genre
SELECT
    artist_name,
    genre
FROM artists
ORDER BY genre ASC;


-- List vendors from highest to lowest rating
SELECT
    vendor_name,
    rating
FROM vendors
ORDER BY rating DESC;


-- Display the five most expensive ticket purchases
SELECT
    ticket_id,
    attendee_id,
    ticket_type,
    price
FROM tickets
ORDER BY price DESC
LIMIT 5;


-- Show the first ten attendees
SELECT
    first_name || ' ' || last_name AS attendee_name,
    city,
    country
FROM attendees
ORDER BY first_name ASC
LIMIT 10;


-- Display the latest ticket purchases
SELECT
    ticket_id,
    attendee_id,
    purchase_date
FROM tickets
ORDER BY purchase_date DESC
LIMIT 10;


-- Retrieve the top three highest-rated vendors
SELECT
    vendor_name,
    rating
FROM vendors
ORDER BY rating DESC
LIMIT 3;


-- Skip the top three vendors and show the next three
SELECT
    vendor_name,
    rating
FROM vendors
ORDER BY rating DESC
LIMIT 3 OFFSET 3;