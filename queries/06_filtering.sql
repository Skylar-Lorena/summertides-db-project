--VIP ticket holders
SELECT *
FROM Attendees_Tickets
WHERE ticket_type = 'VIP';
--Artists from Kenya
SELECT *
FROM Artists
WHERE country = 'Kenya';
--Vendor with sales above 10000
SELECT *
FROM Vendors
WHERE total_sales > 10000;
