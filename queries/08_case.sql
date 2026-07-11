
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

-- Exercise 3: Categorize vendor ratings as Excellent, Good, or Needs Improvement.
SELECT vendor_name, rating,
       CASE
           WHEN rating >= 4.5 THEN 'Excellent'
           WHEN rating >= 3.5 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS rating_category
FROM vendors
ORDER BY rating DESC;

-- Exercise 4: Label artists as Local or International based on country.
SELECT artist_name, country,
       CASE
           WHEN country = 'Kenya' THEN 'Local'
           ELSE 'International'
       END AS artist_origin
FROM artists
ORDER BY artist_name;
