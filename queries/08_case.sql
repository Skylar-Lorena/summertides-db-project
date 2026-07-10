USE summertides;

-- Ticket prices as Budget, Standard, or VIP.
SELECT
    ticket_id,
    price,
    CASE
        WHEN price < 3000 THEN 'Budget'
        WHEN price BETWEEN 3000 AND 8000 THEN 'Standard'
        ELSE 'VIP'
    END AS price_category
FROM tickets;

-- Attendees as Youth, Adult, or Senior based on age.
SELECT
    first_name,
    last_name,
    age,
    CASE
        WHEN age < 25 THEN 'Youth'
        WHEN age BETWEEN 25 AND 45 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group
FROM attendees;
