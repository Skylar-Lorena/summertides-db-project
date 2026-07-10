-- Lesson 12: Bonus business questions.

-- 1. Which artist performs the most?
SELECT ar.artist_name, COUNT(*) AS performance_count
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
GROUP BY ar.artist_name
ORDER BY performance_count DESC
LIMIT 1;

-- 2. Which stage hosts the highest number of performances?
SELECT st.stage_name, COUNT(*) AS performance_count
FROM performances p
JOIN stages st ON p.stage_id = st.stage_id
GROUP BY st.stage_name
ORDER BY performance_count DESC
LIMIT 1;

-- 3. Which vendor generated the highest revenue?
SELECT v.vendor_name, SUM(s.amount) AS total_revenue
FROM sales s
JOIN vendors v ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_name
ORDER BY total_revenue DESC
LIMIT 1;

-- 4. Which attendee spent the most money?
SELECT a.first_name, a.last_name, SUM(s.amount) AS total_spent
FROM sales s
JOIN attendees a ON s.attendee_id = a.attendee_id
GROUP BY a.attendee_id, a.first_name, a.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- 5. Which city has the highest number of attendees?
SELECT city, COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC
LIMIT 1;

-- 6. Which festival day generated the highest ticket revenue?
SELECT p.festival_day, SUM(t.price) AS ticket_revenue
FROM performances p
JOIN tickets t ON 1 = 1
GROUP BY p.festival_day
ORDER BY ticket_revenue DESC
LIMIT 1;

-- 7. Which sponsor contributed the most funding?
SELECT sponsor_name, sponsorship_amount
FROM sponsors
ORDER BY sponsorship_amount DESC
LIMIT 1;

-- 8. What is the total expected ticket revenue?
SELECT SUM(price) AS total_expected_ticket_revenue FROM tickets;

-- 9. Which ticket type was purchased the most?
SELECT ticket_type, COUNT(*) AS purchase_count
FROM tickets
GROUP BY ticket_type
ORDER BY purchase_count DESC
LIMIT 1;