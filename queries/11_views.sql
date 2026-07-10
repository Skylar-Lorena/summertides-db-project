-- Create a reusable view for attendees who purchased VIP tickets.
DROP VIEW IF EXISTS vip_attendees;
CREATE VIEW vip_attendees AS

SELECT
    a.attendee_id,
    a.first_name,
    a.last_name,
    a.email,
    a.city,
    t.ticket_type,
    t.price,
    t.purchase_date
FROM attendees AS a
INNER JOIN tickets AS t
    ON a.attendee_id = t.attendee_id
WHERE t.ticket_type = 'VIP';

SELECT *
FROM vip_attendees
ORDER BY last_name, first_name;

