-- Lesson 9: Aggregate functions and grouping.

-- 1. How many attendees are registered?
SELECT COUNT(*) AS total_attendees FROM attendees;

-- 2. What is the average ticket price?
SELECT AVG(price) AS average_ticket_price FROM tickets;

-- 3. What is the highest and lowest ticket price?
SELECT MAX(price) AS highest_ticket_price, MIN(price) AS lowest_ticket_price FROM tickets;

-- 4. How many attendees come from each city?
SELECT city, COUNT(*) AS attendee_count FROM attendees GROUP BY city ORDER BY attendee_count DESC;

-- 5. How many artists belong to each genre?
SELECT genre, COUNT(*) AS artist_count FROM artists GROUP BY genre ORDER BY artist_count DESC;

-- 6. What is the total sales amount for each vendor?
SELECT v.vendor_name, SUM(s.amount) AS total_sales FROM sales s JOIN vendors v ON s.vendor_id = v.vendor_id GROUP BY v.vendor_name ORDER BY total_sales DESC;

-- 7. Which festival day sold the most tickets?
SELECT ticket_type, COUNT(*) AS ticket_count FROM tickets GROUP BY ticket_type ORDER BY ticket_count DESC;

-- 8. Display only vendors whose total sales exceed a chosen amount.
SELECT v.vendor_name, SUM(s.amount) AS total_sales FROM sales s JOIN vendors v ON s.vendor_id = v.vendor_id GROUP BY v.vendor_name HAVING SUM(s.amount) > 10000 ORDER BY total_sales DESC;