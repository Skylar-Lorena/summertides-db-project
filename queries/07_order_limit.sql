--Vendors ordered by total sales
SELECT *
FROM Vendors
ORDER BY total_sales DESC;
--Limit to top 2 vendors
SELECT *
FROM Vendors
ORDER BY total_sales DESC
LIMIT 2;