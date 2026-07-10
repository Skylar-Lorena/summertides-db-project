-- =====================================================
-- 11_VIEWS.SQL: CREATING REUSABLE VIRTUAL TABLES
-- =====================================================

-- 1. View: Master Festival Schedule
-- Combines performances, artists, and stages into a single readable timetable.
CREATE OR REPLACE VIEW view_festival_schedule AS
SELECT 
    p.performance_id,
    a.artist_name,
    s.stage_name,
    s.location AS stage_location,
    p.performance_date,
    p.start_time
FROM performances p
JOIN artists a ON p.artist_id = a.artist_id
JOIN stages s ON p.stage_id = s.stage_id;


-- 2. View: Attendee Ticket Summary
-- Simplifies checking who bought what ticket tier and how much they paid.
CREATE OR REPLACE VIEW view_attendee_tickets AS
SELECT 
    a.attendee_id,
    CONCAT(a.first_name, ' ', a.last_name) AS full_name,
    a.email,
    t.ticket_tier,
    t.price AS amount_paid
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id;


-- -----------------------------------------------------
-- HOW TO TEST YOUR VIEWS
-- -----------------------------------------------------
-- To see if your views work, you can query them just like a regular table!
-- SELECT * FROM view_festival_schedule ORDER BY start_time;
-- SELECT * FROM view_attendee_tickets WHERE ticket_tier = 'VIP';