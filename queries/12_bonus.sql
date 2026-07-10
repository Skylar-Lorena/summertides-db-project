

-- Find the highest ticket price.
SELECT
    MAX(price) AS highest_ticket_price
FROM tickets;


-- Find the lowest ticket price.
SELECT
    MIN(price) AS lowest_ticket_price
FROM tickets;


-- Find total money collected from ticket sales.
SELECT
    SUM(price) AS total_ticket_revenue
FROM tickets;


-- Find the most expensive sponsor contribution.
SELECT
    sponsor_name,
    contribution_amount
FROM sponsors
ORDER BY contribution_amount DESC
LIMIT 1;


-- Find artists performing at each stage.
SELECT
    stages.student_name AS stage_name,
    artists.name AS artist_name
FROM performances
JOIN stages
ON performances.stage_id = stages.stage_id
JOIN artists
ON performances.artist_id = artists.artist_id;


-- Find vendors with total sales above average.
SELECT
    vendor_id,
    SUM(amount) AS total_sales
FROM sales
GROUP BY vendor_id
HAVING total_sales >
(
    SELECT AVG(amount)
    FROM sales
);