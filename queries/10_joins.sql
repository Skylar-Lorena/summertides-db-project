SELECT a.full_name, t.ticket_type, t.price
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id;