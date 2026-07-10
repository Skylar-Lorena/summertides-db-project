
-- Show tickets with attendee names.
SELECT
    first_name || ' ' || last_name AS attendee_name,
    ticket_type,
    price
FROM tickets
JOIN attendees
ON tickets.attendee_id = attendees.attendee_id;


-- Show performances with artist names.
SELECT
    artists.name AS artist_name,
    performances.start_time,
    performances.end_time
FROM performances
JOIN artists
ON performances.artist_id = artists.artist_id;


-- Show performances with stage details.
SELECT
    artists.name AS artist_name,
    stages.student_name AS stage_name,
    stages.location
FROM performances
JOIN artists
ON performances.artist_id = artists.artist_id
JOIN stages
ON performances.stage_id = stages.stage_id;


-- Show sales with vendor names.
SELECT
    vendors.vendor_name,
    sales.amount,
    sales.quantity
FROM sales
JOIN vendors
ON sales.vendor_id = vendors.vendor_id;


-- Show stages and their sponsors.
SELECT
    stages.student_name AS stage_name,
    sponsors.sponsor_name,
    stage_sponsorships.funding_allocated
FROM stage_sponsorships
JOIN stages
ON stage_sponsorships.stage_id = stages.stage_id
JOIN sponsors
ON stage_sponsorships.sponsor_id = sponsors.sponsor_id;