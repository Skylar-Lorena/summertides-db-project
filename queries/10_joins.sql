-- 1. Display attendees together with their ticket information.
SELECT
    a.first_name,
    a.last_name,
    a.email,
    t.ticket_type,
    t.price,
    t.purchase_date
FROM attendees AS a
