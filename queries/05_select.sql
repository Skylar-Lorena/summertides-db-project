-- Lesson 5: Basic SELECT queries.

-- 1. Display all attendees.
SELECT * FROM attendees;

-- 2. Display all artists.
SELECT * FROM artists;

-- 3. Display only attendee names and email addresses.
SELECT first_name, last_name, email FROM attendees;

-- 4. Display only unique cities where attendees come from.
SELECT DISTINCT city FROM attendees ORDER BY city;

-- 5. Rename columns using aliases.
SELECT first_name AS given_name, last_name AS family_name, email AS contact_email FROM attendees;

-- 6. Retrieve all ticket types.
SELECT ticket_type FROM tickets;

-- 7. Display all vendors.
SELECT * FROM vendors;

-- 8. Display all stages.
SELECT stage_id, stage_name, location FROM stages ORDER BY stage_name;