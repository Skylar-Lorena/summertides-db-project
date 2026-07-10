SELECT ticket_type, price,
       CASE
           WHEN price < 5000 THEN 'Budget'
           WHEN price < 10000 THEN 'Standard'
           ELSE 'VIP'
       END AS price_category
FROM tickets;