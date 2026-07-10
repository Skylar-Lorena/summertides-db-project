SELECT a.full_name, t.ticket_type, t.price
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id;

SELECT ar.artist_name, s.stage_name
FROM artists ar
JOIN performances p ON ar.artist_id = p.artist_id
JOIN stages s ON p.stage_id = s.stage_id;

SELECT p.performance_name, ar.artist_name, s.stage_name
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages s ON p.stage_id = s.stage_id;