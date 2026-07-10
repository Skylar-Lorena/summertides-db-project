-- 1. STAGES (Popular Kenyan Event Venues/Stages)
INSERT INTO stages (stage_name, location, capacity) VALUES
('Ngong Racecourse Main Stage', 'Ngong Road', 10000),
('The Dome', 'Carnival Grounds', 4000),
('Alchemist Acoustic Arena', 'Westlands', 1500),
('KICC Terraces', 'CBD', 8000);

-- 2. ARTISTS (Kenyan Stars)
INSERT INTO artists (artist_name, genre, country) VALUES
('Sauti Sol', 'Afro-Pop', 'Kenya'),
('Khaligraph Jones', 'Hip Hop', 'Kenya'),
('Bensoul', 'Afro-Indie', 'Kenya'),
('Nadia Mukami', 'Pop', 'Kenya'),
('Buruklyn Boyz', 'Drill', 'Kenya'),
('Nikita Kering', 'R&B', 'Kenya');

-- 3. PERFORMANCES
-- Connecting Artist IDs (1 to 6) to Stage IDs (1 to 4)
INSERT INTO performances (artist_id, stage_id, performance_date, start_time) VALUES
(1, 1, '2026-12-12', '21:00:00'), -- Sauti Sol @ Ngong Racecourse (Jamhuri Day!)
(2, 2, '2026-12-12', '23:00:00'), -- Khaligraph @ The Dome
(3, 3, '2026-12-13', '19:30:00'), -- Bensoul @ Alchemist
(5, 1, '2026-12-12', '18:00:00'), -- Buruklyn Boyz @ Ngong Racecourse
(6, 4, '2026-12-13', '17:00:00'); -- Nikita Kering @ KICC

-- 4. ATTENDEES (Moringa Students & Local Fans)
INSERT INTO attendees (first_name, last_name, email, phone) VALUES
('Kamau', 'Njoroge', 'kamau.njoroge@moringaschool.com', '0712345678'),
('Amina', 'Odiwuor', 'amina.o@moringastudent.com', '0722111222'),
('Mwangi', 'Maina', 'mwangi.m@gmail.com', '0733444555'),
('Faith', 'Chepngetich', 'faith.chep@outlook.com', '0701999888'),
('Brian', 'Onyango', 'brian.onyango@moringaschool.com', '0755666777');

-- 5. TICKETS (Prices in Kenyan Shillings - KES)
-- Connecting Attendee IDs (1 to 5)
INSERT INTO tickets (attendee_id, ticket_tier, price, purchase_date) VALUES
(1, 'VIP Golden Circle', 10000.00, '2026-11-01'),
(2, 'Regular Advance', 3000.00, '2026-11-15'),
(3, 'Regular Gate', 4500.00, '2026-12-12'),
(4, 'VIP Golden Circle', 10000.00, '2026-10-20'),
(5, 'Early Bird Regular', 2000.00, '2026-10-05');

-- 6. VENDORS (Classic Kenyan Event Vendors)
INSERT INTO vendors (vendor_name, business_type, stall_number) VALUES
('Choma Zone & Smokie Pasua', 'Food', 'A1'),
('Java House Mobile', 'Beverage', 'B3'),
('Maasai Market Crafts', 'Merchandise', 'C1'),
('Viazi Karai Kings', 'Food', 'A2'),
('Dawa Cocktail Bar', 'Beverage', 'B4');