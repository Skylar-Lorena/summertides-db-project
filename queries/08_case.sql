-- File: 08_case.sql
-- Topic: CASE statements for data categorization


-- Categorize customers based on ticket type
SELECT
    attendee_id,
    ticket_type,
    CASE
        WHEN ticket_type = 'VIP' THEN 'Premium'
        WHEN ticket_type = 'Group' THEN 'Group Buyer'
        ELSE 'Regular'
    END AS customer_type
FROM tickets;


-- Categorize vendors based on their ratings
SELECT
    vendor_name,
    rating,
    CASE
        WHEN rating >= 4.5 THEN 'Excellent'
        WHEN rating >= 4 THEN 'Good'
        ELSE 'Average'
    END AS rating_category
FROM vendors;


-- Categorize artists based on booking fees
SELECT
    artist_name,
    booking_fee,
    CASE
        WHEN booking_fee >= 300000 THEN 'High Budget'
        WHEN booking_fee >= 150000 THEN 'Medium Budget'
        ELSE 'Low Budget'
    END AS artist_level
FROM artists;