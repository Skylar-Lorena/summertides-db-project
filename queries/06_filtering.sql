-- Exercise 1: Show attendees older than 25.
SELECT * FROM attendees WHERE age > 25 ORDER BY attendee_id;

-- Exercise 2: Find attendees from Nairobi or Mombasa.
SELECT * FROM attendees WHERE city IN ('Nairobi', 'Mombasa') ORDER BY full_name;

-- Exercise 3: Display VIP tickets only.
SELECT * FROM tickets WHERE ticket_type = 'VIP' ORDER BY ticket_id;

-- Exercise 4: Show tickets costing more than 5,000.
SELECT * FROM tickets WHERE price > 5000 ORDER BY price DESC;

-- Exercise 5: Find artists from Kenya.
SELECT * FROM artists WHERE country = 'Kenya' ORDER BY artist_name;

-- Exercise 6: Display vendors with ratings above 4.
SELECT * FROM vendors WHERE rating > 4 ORDER BY rating DESC;

-- Exercise 7: Find attendees whose names start with A.
SELECT * FROM attendees WHERE full_name LIKE 'A%' ORDER BY full_name;

-- Exercise 8: Display performances happening between 6:00 PM and 10:00 PM.
SELECT * FROM performances WHERE start_time BETWEEN '18:00' AND '22:00' ORDER BY performance_date, start_time;

-- Exercise 9: Show tickets purchased on a specific date.
SELECT * FROM tickets WHERE purchase_date = '2026-08-01' ORDER BY ticket_id;

-- Exercise 10: Find attendees whose phone numbers are missing.
SELECT * FROM attendees WHERE phone IS NULL ORDER BY full_name;
