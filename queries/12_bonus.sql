-- Bonus Exercise 1: Compare average spend by city.
SELECT a.city, COUNT(*) AS attendee_count, ROUND(AVG(t.price), 2) AS average_spend
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
GROUP BY a.city
ORDER BY attendee_count DESC;

-- Bonus Exercise 2: Review stage sponsorship support by stage.
SELECT st.stage_name, COUNT(p.performance_id) AS performance_count, SUM(ss.sponsorship_amount) AS sponsor_support
FROM stages st
LEFT JOIN performances p ON st.stage_id = p.stage_id
LEFT JOIN stage_sponsors ss ON st.stage_id = ss.stage_id
GROUP BY st.stage_id, st.stage_name
ORDER BY performance_count DESC;

-- Bonus Exercise 3: Count how many performances each artist has booked.
SELECT ar.artist_name, COUNT(p.performance_id) AS performances_booked
FROM artists ar
LEFT JOIN performances p ON ar.artist_id = p.artist_id
GROUP BY ar.artist_id, ar.artist_name
ORDER BY performances_booked DESC;

-- Bonus Exercise 4: Compare average ticket price by ticket type.
SELECT ticket_type, COUNT(*) AS ticket_count, ROUND(AVG(price), 2) AS average_price
FROM tickets
GROUP BY ticket_type
ORDER BY average_price DESC;
