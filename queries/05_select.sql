
-- Display all attendees.
SELECT *
FROM attendees;

-- Display all artists.
SELECT *
FROM artists;

-- Show attendee names and email addresses.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    email
FROM attendees;

-- Display all unique ticket types.
SELECT DISTINCT ticket_type
FROM tickets;

-- Show attendee names with their phone numbers.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    phone_number
FROM attendees;

-- Display all sponsors.
SELECT *
FROM sponsors;

-- Display all vendors.
SELECT *
FROM vendors;

-- Display all stages.
SELECT
    stage_id,
    student_name,
    location,
    capacity
FROM stages;