// How many attendees are registered?
SELECT COUNT(*) AS total_attendees
FROM attendees

//Average ticket price
SELECT AVG(ticket_price) AS average_ticket_price
FROM tickets

// Highest and lowest ticket prices
SELECT MAX(ticket_price) AS highest_ticket_price, MIN(ticket_price) AS lowest_ticket_price
FROM tickets

// Attendees from each city
SELECT City, COUNT(*) AS attendees_count
FROM attendees
GROUP BY City
ORDER BY attendees_count DESC

//How many artists belong to each genre?
SELECT genre, COUNT(*) AS artist_count
FROM artists
GROUP BY genre
ORDER BY artist_count DESC

//What is the total sales amount for each vendor?
SELECT vendor_id, SUM(sales_amount) AS total_sales
FROM vendors
JOIN sales ON vendors.vendor_id = sales.vendor_id
GROUP BY vendor_id
ORDER BY total_sales DESC

//Which festivals day sold most tickets?
SELCECT festival_day, SUM(tickets_sold) AS total_tickets_sold
FROM ticket_sales
GROUP BY festival_day
ORDER BY total_tickets_sold DESC

//Display only vendors whose total sales exceed 10000
SELECT vendor_id, SUM(sales_amount) AS total_sales
FROM vendors
JOIN sales ON vendors.vendor_id = sales.vendor_id
GROUP BY vendor_id
HAVING SUM(sales_amount) > 10000
ORDER BY total_sales DESC




