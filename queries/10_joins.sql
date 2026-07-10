-- Exercise 1: Count the number of registered attendees.
SELECT COUNT(*) AS total_attendees FROM attendees;

-- Exercise 2: Calculate the average ticket price.
SELECT ROUND(AVG(price), 2) AS average_ticket_price FROM tickets;

-- Exercise 3: Find the highest and lowest ticket price.
SELECT MIN(price) AS lowest_ticket_price, MAX(price) AS highest_ticket_price FROM tickets;

-- Exercise 4: Count attendees by city.
SELECT city, COUNT(*) AS attendee_count
FROM attendees
GROUP BY city
ORDER BY attendee_count DESC, city;

-- Exercise 5: Count artists by genre.
SELECT genre, COUNT(*) AS artist_count
FROM artists
GROUP BY genre
ORDER BY artist_count DESC;

-- Exercise 6: Show total sales for each vendor.
SELECT v.vendor_name, SUM(s.amount) AS total_sales_amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_name
ORDER BY total_sales_amount DESC;

-- Exercise 7: Count performances by festival day.
SELECT festival_day, COUNT(*) AS performance_count
FROM performances
GROUP BY festival_day
ORDER BY performance_count DESC;

-- Exercise 8: Display only vendors whose total sales exceed 20,000.
SELECT v.vendor_name, SUM(s.amount) AS total_sales_amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.vendor_id
GROUP BY v.vendor_name
HAVING SUM(s.amount) > 20000
ORDER BY total_sales_amount DESC;
