SELECT
    attendee_id,
    ticket_type,
    CASE
        WHEN ticket_type = 'VIP' THEN 'Very Important Person'
        WHEN ticket_type = 'Regular' THEN 'Standard Entry'
        WHEN ticket_type = 'Student' THEN 'Discounted Entry'
        WHEN ticket_type = 'VVIP' THEN 'Very Very Important Person'
        ELSE 'Other'
    END AS ticket_description
FROM Attendees_Tickets;