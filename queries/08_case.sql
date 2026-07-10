SELECT ticket_type, price,
       CASE
           WHEN price < 5000 THEN 'Budget'
           WHEN price < 10000 THEN 'Standard'
           ELSE 'VIP'
       END AS price_category
FROM tickets;

SELECT full_name, age,
       CASE
           WHEN age < 25 THEN 'Youth'
           WHEN age < 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_category
FROM attendees;