

USE summertides;

-- 1. Display all attendees.
SELECT *
FROM attendees;

-- 2. Display all artists.
SELECT *
FROM artists;

-- 3. Display only attendee names and email addresses.
SELECT first_name, last_name, email
FROM attendees;

-- 4. Display only unique cities where attendees come from.
SELECT DISTINCT city
FROM attendees;

-- 5. Rename columns using aliases (e.g. a friendlier report header).
SELECT
    first_name AS "First Name",
    last_name  AS "Last Name",
    city       AS "Home City",
    age        AS "Attendee Age"
FROM attendees;

-- 6. Retrieve all ticket types offered (no duplicates).
SELECT DISTINCT ticket_type
FROM tickets;

-- 7. Display all vendors.
SELECT *
FROM vendors;

-- 8. Display all stages.
SELECT *
FROM stages;
