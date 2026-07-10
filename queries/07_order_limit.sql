
SELECT
    first_name || ' ' || last_name AS attendee_name
FROM attendees
ORDER BY first_name, last_name;

-- Show artists ordered by genre.
SELECT
    name,
    genre
FROM artists
ORDER BY genre;

-- List vendors alphabetically.
SELECT
    vendor_name,
    vendor_type
FROM vendors
ORDER BY vendor_name;

-- Display the five most expensive tickets.
SELECT
    ticket_id,
    attendee_id,
    ticket_type,
    price
FROM tickets
ORDER BY price DESC
LIMIT 5;

-- Show the first ten attendees.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    email
FROM attendees
ORDER BY first_name
LIMIT 10;

-- Display the latest ticket purchases.
SELECT
    ticket_id,
    attendee_id,
    purchase_date
FROM tickets
ORDER BY purchase_date DESC
LIMIT 10;

-- Show the first three sponsors with the highest contributions.
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors
ORDER BY contribution_amount DESC
LIMIT 3;

-- Skip the top three sponsors and show the next three.
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors
ORDER BY contribution_amount DESC
LIMIT 3 OFFSET 3;