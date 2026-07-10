-- Exercise 1: Display all attendees.
SELECT * FROM attendees ORDER BY attendee_id;

-- Exercise 2: Display all artists.
SELECT * FROM artists ORDER BY artist_id;

-- Exercise 3: Display attendee names and email addresses only.
SELECT full_name AS attendee_name, email FROM attendees ORDER BY attendee_id;

-- Exercise 4: Display unique attendee cities.
SELECT DISTINCT city FROM attendees ORDER BY city;

-- Exercise 5: Show ticket details with aliases for easier reporting.
SELECT ticket_code AS ticket_number, ticket_type AS ticket_category, price AS ticket_price
FROM tickets
ORDER BY ticket_id;

-- Exercise 6: Display all ticket types currently in the database.
SELECT DISTINCT ticket_type FROM tickets ORDER BY ticket_type;

-- Exercise 7: Display all vendors.
SELECT vendor_name, category, rating FROM vendors ORDER BY vendor_name;

-- Exercise 8: Display all stages.
SELECT stage_name, location, capacity FROM stages ORDER BY stage_id;
