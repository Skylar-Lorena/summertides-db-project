-- Answers which artist is performing where and when.
SELECT p.performance_date,
       p.start_time,
       p.end_time,
       a.artist_name,
       s.stage_name,
       p.set_type
FROM performances AS p
JOIN artists AS a ON a.artist_id = p.artist_id
JOIN stages AS s ON s.stage_id = p.stage_id
ORDER BY p.performance_date, p.start_time;

-- Answers which attendees bought VIP tickets.
SELECT a.first_name, a.last_name, a.email, tt.ticket_name, tp.quantity
FROM ticket_purchases AS tp
JOIN attendees AS a ON a.attendee_id = tp.attendee_id
JOIN ticket_types AS tt ON tt.ticket_type_id = tp.ticket_type_id
WHERE tt.ticket_name LIKE '%VIP%'
ORDER BY a.last_name, a.first_name;

-- Answers which sponsors funded each stage and how much they contributed.
SELECT st.stage_name, sp.sponsor_name, ss.contribution_amount
FROM stage_sponsors AS ss
JOIN stages AS st ON st.stage_id = ss.stage_id
JOIN sponsors AS sp ON sp.sponsor_id = ss.sponsor_id
ORDER BY st.stage_name, ss.contribution_amount DESC;
