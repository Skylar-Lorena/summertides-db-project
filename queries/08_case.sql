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

SELECT
    first_name,
    last_name,
    age,
    CASE
        WHEN age < 25 THEN 'Youth'
        WHEN age BETWEEN 25 AND 40 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group
FROM attendees;

