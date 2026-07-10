CREATE VIEW attendee_ticket_summary AS
SELECT a.attendee_id, a.full_name, a.city, t.ticket_type, t.price
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id;
