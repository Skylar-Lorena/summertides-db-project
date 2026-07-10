-- Finds the stage that hosted the most performances, including tied stages.
WITH stage_counts AS (
    SELECT s.stage_name, COUNT(p.performance_id) AS performance_count
    FROM stages AS s
    LEFT JOIN performances AS p ON p.stage_id = s.stage_id
    GROUP BY s.stage_id, s.stage_name
)
SELECT stage_name, performance_count
FROM stage_counts
WHERE performance_count = (SELECT MAX(performance_count) FROM stage_counts);

-- Ranks vendors by their total festival sales.
SELECT vendor_name,
       total_sales,
       RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM vw_vendor_sales_summary;

-- Finds attendees whose ticket purchase total is above the average purchase total.
SELECT first_name, last_name, ticket_name, purchase_total
FROM vw_attendee_tickets
WHERE purchase_total > (SELECT AVG(purchase_total) FROM vw_attendee_tickets)
ORDER BY purchase_total DESC;
