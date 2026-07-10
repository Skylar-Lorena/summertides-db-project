


-- Categorize customers based on ticket type.
SELECT
    attendee_id,
    ticket_type,
    CASE
        WHEN ticket_type = 'VIP' THEN 'Premium'
        WHEN ticket_type = 'student' THEN 'Student'
        ELSE 'Regular'
    END AS customer_type
FROM tickets;


-- Categorize vendors based on vendor type.
SELECT
    vendor_name,
    vendor_type,
    CASE
        WHEN vendor_type = 'Food' THEN 'Food Vendor'
        WHEN vendor_type = 'Drinks' THEN 'Drink Vendor'
        ELSE 'Other Vendor'
    END AS vendor_category
FROM vendors;


-- Categorize artists based on their genre.
SELECT
    name,
    genre,
    CASE
        WHEN genre IN ('EDM', 'Electronic') THEN 'Electronic Music'
        WHEN genre IN ('Rock', 'Pop') THEN 'Modern Music'
        ELSE 'Other Genre'
    END AS music_category
FROM artists;