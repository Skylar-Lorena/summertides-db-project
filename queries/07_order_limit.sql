USE summertides;

-- Display attendees alphabetically.
SELECT first_name, last_name
FROM attendees
ORDER BY last_name ASC, first_name ASC;

-- Show artists ordered by genre.
SELECT artist_name, genre
FROM artists
ORDER BY genre ASC;

SELECT vendor_name, rating
FROM vendors
ORDER BY rating DESC;
