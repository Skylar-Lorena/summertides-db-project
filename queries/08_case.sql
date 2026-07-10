USE summertides;

SELECT
    ticket_id,
    ticket_type,
    price,
    CASE
        WHEN price < 4000 THEN 'Budget'
        WHEN price < 9000 THEN 'Standard'
        ELSE 'VIP'
    END AS price_category
FROM tickets;