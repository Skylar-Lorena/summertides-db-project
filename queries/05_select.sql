-- =====================================================================
-- File: 05_select.sql
-- Topic: Basic SELECT statements
-- Author: Wayne Kiptoo (Query Specialist)
-- =====================================================================

-- 1. Display all attendees.
SELECT *
FROM attendees;


-- 2. Display all artists.
SELECT *
FROM artists;


-- 3. Display attendee names and email addresses.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    email
FROM attendees;


-- 4. Display unique cities where attendees come from.
SELECT DISTINCT city
FROM attendees;


-- 5. Display attendee details with friendly column names.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    email AS contact_email,
    city AS home_city
FROM attendees;


-- 6. Retrieve all ticket types available.
SELECT DISTINCT ticket_type
FROM tickets;


-- 7. Display all vendors.
SELECT *
FROM vendors;


-- 8. Display all stages.
SELECT *
FROM stages;