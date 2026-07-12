-- 1. Which artist performs the most?
SELECT
    ar.artist_name,
    COUNT(p.performance_id) AS performance_count
FROM artists ar
INNER JOIN performances p ON p.artist_id = ar.artist_id
GROUP BY ar.artist_id, ar.artist_name
ORDER BY performance_count DESC
LIMIT 1;

-- 2. Which stage hosts the highest number of performances?
SELECT
    s.stage_name,
    COUNT(p.performance_id) AS performance_count
FROM stages s
INNER JOIN performances p ON p.stage_id = s.stage_id
GROUP BY s.stage_id, s.stage_name
ORDER BY performance_count DESC
LIMIT 1;

-- 3. Which vendor generated the highest revenue?
SELECT
    v.vendor_name,
    SUM(s.sale_amount) AS total_revenue
FROM vendors v
INNER JOIN sales s ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_id, v.vendor_name
ORDER BY total_revenue DESC
LIMIT 1;

-- 4. Which attendee spent the most money (tickets + festival purchases)?
SELECT
    a.attendee_id,
    a.first_name,
    a.last_name,
    COALESCE(t.ticket_spend, 0) + COALESCE(s.sale_spend, 0) AS total_spend
FROM attendees a
LEFT JOIN (
    SELECT attendee_id, SUM(price) AS ticket_spend
    FROM tickets
    GROUP BY attendee_id
) t ON t.attendee_id = a.attendee_id
LEFT JOIN (
    SELECT attendee_id, SUM(sale_amount) AS sale_spend
    FROM sales
    GROUP BY attendee_id
) s ON s.attendee_id = a.attendee_id
ORDER BY total_spend DESC
LIMIT 1;

-- 5. Which city has the highest number of attendees?
SELECT
    city,
    COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC
LIMIT 1;

-- 6. Which festival day generated the highest ticket revenue?
SELECT
    festival_day,
    SUM(price) AS ticket_revenue
FROM tickets
GROUP BY festival_day
ORDER BY ticket_revenue DESC
LIMIT 1;

-- 7. Which sponsor contributed the most funding?
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors
ORDER BY contribution_amount DESC
LIMIT 1;

-- 8. What is the total expected ticket revenue?
SELECT
    SUM(price) AS total_expected_ticket_revenue
FROM tickets;

-- 9. Which ticket type was purchased the most?
SELECT
    ticket_type,
    COUNT(*) AS tickets_sold
FROM tickets
GROUP BY ticket_type
ORDER BY tickets_sold DESC
LIMIT 1;