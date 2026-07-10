
-- Exercise 1: Categorize ticket prices as Budget, Standard, or VIP.
SELECT ticket_code, price,
       CASE
           WHEN price < 3000 THEN 'Budget'
           WHEN price < 6000 THEN 'Standard'
           ELSE 'VIP'
       END AS price_category
FROM tickets
ORDER BY price;

-- Exercise 2: Classify attendees as Youth, Adult, or Senior based on age.
SELECT full_name, age,
       CASE
           WHEN age < 18 THEN 'Youth'
           WHEN age < 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_group
FROM attendees
ORDER BY age;
