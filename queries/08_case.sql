-- Lesson 8: Use CASE to create calculated categories.

-- 1. Categorise ticket prices as Budget, Standard, or VIP.
SELECT ticket_id, price,
       CASE
           WHEN price < 5000 THEN 'Budget'
           WHEN price < 10000 THEN 'Standard'
           ELSE 'VIP'
       END AS price_category
FROM tickets;

-- 2. Classify attendees as Youth, Adult, or Senior based on age.
SELECT attendee_id, first_name, age,
       CASE
           WHEN age < 25 THEN 'Youth'
           WHEN age < 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_group
FROM attendees;

-- 3. Categorise vendor ratings as Excellent, Good, or Needs Improvement.
SELECT vendor_name, rating,
       CASE
           WHEN rating >= 4.5 THEN 'Excellent'
           WHEN rating >= 4.0 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS rating_category
FROM vendors;

-- 4. Label artists as Local or International based on country.
SELECT artist_name, country,
       CASE
           WHEN country = 'Kenya' THEN 'Local'
           ELSE 'International'
       END AS artist_origin
FROM artists;