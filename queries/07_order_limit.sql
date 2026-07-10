-- Exercise 1: Display attendees alphabetically.
SELECT * FROM attendees ORDER BY full_name ASC;

-- Exercise 2: Show artists ordered by genre.
SELECT * FROM artists ORDER BY genre ASC, artist_name ASC;

-- Exercise 3: List vendors from highest to lowest rating.
SELECT * FROM vendors ORDER BY rating DESC, vendor_name ASC;

-- Exercise 4: Display the five most expensive ticket purchases.
SELECT ticket_code, ticket_type, price FROM tickets ORDER BY price DESC LIMIT 5;

-- Exercise 5: Show the first ten attendees registered.
SELECT * FROM attendees ORDER BY registration_date ASC, attendee_id ASC LIMIT 10;

-- Exercise 6: Display the latest ticket purchases.
SELECT * FROM tickets ORDER BY purchase_date DESC, ticket_id DESC LIMIT 10;

-- Exercise 7: Retrieve only the top three highest-rated vendors.
SELECT * FROM vendors ORDER BY rating DESC LIMIT 3;
