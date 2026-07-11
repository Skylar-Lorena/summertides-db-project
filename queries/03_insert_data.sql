-- Lesson 3: Insert realistic sample data for the festival.
DELETE FROM stage_sponsors;
DELETE FROM sponsors;
DELETE FROM sales;
DELETE FROM vendors;
DELETE FROM performances;
DELETE FROM stages;
DELETE FROM artists;
DELETE FROM tickets;
DELETE FROM attendees;

INSERT INTO attendees (attendee_id, first_name, last_name, email, phone, city, age, registration_date) VALUES
(1, 'Amina', 'Njeri', 'amina.njeri@email.com', '+254701111111', 'Nairobi', 24, '2026-01-10'),
(2, 'Malik', 'Osei', 'malik.osei@email.com', '+254702222222', 'Mombasa', 31, '2026-01-11'),
(3, 'Sofia', 'Alvarez', 'sofia.alvarez@email.com', '+254703333333', 'Nakuru', 27, '2026-01-12'),
(4, 'Daniel', 'Mwangi', 'daniel.mwangi@email.com', '+254704444444', 'Nairobi', 35, '2026-01-13'),
(5, 'Nia', 'Okafor', 'nia.okafor@email.com', '+254705555555', 'Kisumu', 22, '2026-01-14'),
(6, 'Leila', 'Hassan', 'leila.hassan@email.com', '+254706666666', 'Eldoret', 29, '2026-01-15'),
(7, 'Kwame', 'Boateng', 'kwame.boateng@email.com', '+254707777777', 'Nairobi', 41, '2026-01-16'),
(8, 'Priya', 'Shah', 'priya.shah@email.com', '+254708888888', 'Mombasa', 19, '2026-01-17'),
(9, 'Mateo', 'Ruiz', 'mateo.ruiz@email.com', '+254709999999', 'Nakuru', 33, '2026-01-18'),
(10, 'Zuri', 'Muthoni', 'zuri.muthoni@email.com', '+254701234567', 'Kisumu', 26, '2026-01-19'),
(11, 'Omar', 'Diallo', 'omar.diallo@email.com', '+254702345678', 'Nairobi', 38, '2026-01-20'),
(12, 'Lina', 'Petrovic', 'lina.petrovic@email.com', '+254703456789', 'Eldoret', 23, '2026-01-21'),
(13, 'Ayo', 'Adebayo', 'ayo.adebayo@email.com', '+254704567890', 'Nakuru', 45, '2026-01-22'),
(14, 'Hana', 'Rahman', 'hana.rahman@email.com', '+254705678901', 'Mombasa', 28, '2026-01-23'),
(15, 'Theo', 'Mokoena', 'theo.mokoena@email.com', '+254706789012', 'Nairobi', 36, '2026-01-24'),
(16, 'Keisha', 'Ndirangu', 'keisha.ndirangu@email.com', '+254707890123', 'Kisumu', 21, '2026-01-25'),
(17, 'Kofi', 'Mensah', 'kofi.mensah@email.com', '+254708901234', 'Nakuru', 30, '2026-01-26'),
(18, 'Mei', 'Chen', 'mei.chen@email.com', '+254709012345', 'Eldoret', 25, '2026-01-27'),
(19, 'Rafael', 'Otieno', 'rafael.otieno@email.com', '+254701112233', 'Nairobi', 39, '2026-01-28'),
(20, 'Talia', 'Wairimu', 'talia.wairimu@email.com', '+254702223344', 'Mombasa', 18, '2026-01-29');

INSERT INTO artists (artist_id, artist_name, genre, country, is_local) VALUES
(1, 'Amani Celeste', 'Afrobeat', 'Kenya', 1),
(2, 'Zulu Moon', 'Reggae', 'Kenya', 1),
(3, 'Soli Nandi', 'Hip Hop', 'Kenya', 1),
(4, 'Imani Kairo', 'House', 'Tanzania', 0),
(5, 'Juniper Vale', 'Pop', 'Uganda', 0),
(6, 'Nia & The Tides', 'Afro Fusion', 'Kenya', 1),
(7, 'Sefu Kinara', 'Jazz', 'Kenya', 1),
(8, 'Kairo Echo', 'Electronic', 'Uganda', 0),
(9, 'Tazama Drift', 'Afro Pop', 'Kenya', 1),
(10, 'Aria Sol', 'EDM', 'South Africa', 0),
(11, 'Oren Kifaru', 'Indie', 'Kenya', 1),
(12, 'Lianne Dube', 'Afrobeat', 'Nigeria', 0),
(13, 'Talib Marrow', 'Alternative', 'Kenya', 1),
(14, 'Nadiya Kova', 'Pop', 'Rwanda', 0),
(15, 'Sora Moyo', 'World', 'South Africa', 0);

INSERT INTO stages (stage_id, stage_name, location, capacity) VALUES
(1, 'Ocean Stage', 'North Beach', 5000),
(2, 'Sunset Arena', 'Central Lawn', 3500),
(3, 'Palm Pavilion', 'Palm Grove', 2500),
(4, 'Dune Deck', 'East Ridge', 1800),
(5, 'Lagoon Tent', 'Waterfront', 2200),
(6, 'Skyline Stage', 'Hilltop', 3000);

INSERT INTO performances (performance_id, artist_id, stage_id, performance_date, start_time, end_time, festival_day) VALUES
(1, 1, 1, '2026-07-10', '18:00', '19:30', 'Day 1'),
(2, 2, 2, '2026-07-10', '20:00', '21:00', 'Day 1'),
(3, 3, 3, '2026-07-10', '19:00', '20:00', 'Day 1'),
(4, 4, 4, '2026-07-10', '21:00', '22:30', 'Day 1'),
(5, 5, 5, '2026-07-10', '17:00', '18:00', 'Day 1'),
(6, 6, 6, '2026-07-10', '20:30', '22:00', 'Day 1'),
(7, 7, 1, '2026-07-11', '18:30', '19:30', 'Day 2'),
(8, 8, 2, '2026-07-11', '19:30', '20:30', 'Day 2'),
(9, 9, 3, '2026-07-11', '17:30', '18:30', 'Day 2'),
(10, 10, 4, '2026-07-11', '21:30', '23:00', 'Day 2'),
(11, 11, 5, '2026-07-11', '18:00', '19:00', 'Day 2'),
(12, 12, 6, '2026-07-11', '20:00', '21:30', 'Day 2'),
(13, 13, 1, '2026-07-12', '17:00', '18:00', 'Day 3'),
(14, 14, 2, '2026-07-12', '18:30', '19:30', 'Day 3'),
(15, 15, 3, '2026-07-12', '20:00', '21:00', 'Day 3'),
(16, 1, 4, '2026-07-12', '19:00', '20:30', 'Day 3');

INSERT INTO tickets (ticket_id, attendee_id, ticket_type, price, purchase_date, ticket_code) VALUES
(1, 1, 'General', 3000, '2026-01-15', 'TKT001'),
(2, 2, 'VIP', 8000, '2026-01-15', 'TKT002'),
(3, 3, 'Weekend Pass', 12000, '2026-01-16', 'TKT003'),
(4, 4, 'General', 3000, '2026-01-16', 'TKT004'),
(5, 5, 'VIP', 8000, '2026-01-17', 'TKT005'),
(6, 6, 'General', 3000, '2026-01-18', 'TKT006'),
(7, 7, 'Weekend Pass', 12000, '2026-01-18', 'TKT007'),
(8, 8, 'General', 3000, '2026-01-19', 'TKT008'),
(9, 9, 'VIP', 8000, '2026-01-20', 'TKT009'),
(10, 10, 'General', 3000, '2026-01-21', 'TKT010'),
(11, 11, 'Weekend Pass', 12000, '2026-01-21', 'TKT011'),
(12, 12, 'General', 3000, '2026-01-22', 'TKT012'),
(13, 13, 'VIP', 8000, '2026-01-22', 'TKT013'),
(14, 14, 'General', 3000, '2026-01-23', 'TKT014'),
(15, 15, 'Weekend Pass', 12000, '2026-01-24', 'TKT015'),
(16, 16, 'General', 3000, '2026-01-25', 'TKT016'),
(17, 17, 'VIP', 8000, '2026-01-25', 'TKT017'),
(18, 18, 'General', 3000, '2026-01-26', 'TKT018'),
(19, 19, 'Weekend Pass', 12000, '2026-01-27', 'TKT019'),
(20, 20, 'General', 3000, '2026-01-28', 'TKT020');

INSERT INTO vendors (vendor_id, vendor_name, category, rating, contact_email) VALUES
(1, 'Tropical Bites', 'Food', 4.8, 'sales@tropicalbites.com'),
(2, 'Sunset Merch', 'Merch', 4.2, 'hello@sunsetmerch.com'),
(3, 'Coastal Coffee', 'Beverage', 4.7, 'orders@coastalcoffee.com'),
(4, 'Dune Designs', 'Art', 4.5, 'contact@dunedesigns.com'),
(5, 'Wave Rentals', 'Lifestyle', 4.1, 'info@waverentals.com'),
(6, 'Palm Prints', 'Merch', 4.4, 'support@palmprints.com'),
(7, 'Breeze Grill', 'Food', 4.6, 'ops@breezebar.com'),
(8, 'Shoreline Juice', 'Beverage', 4.3, 'juice@shoreline.com'),
(9, 'Lagoon Creations', 'Art', 4.9, 'art@lagooncreations.com'),
(10, 'Nova Essentials', 'Lifestyle', 4.0, 'shop@novaessentials.com');

INSERT INTO sales (sale_id, vendor_id, attendee_id, sale_date, amount, item_sold) VALUES
(1, 1, 1, '2026-01-15', 1800, 'Grilled Fish Wrap'),
(2, 2, 2, '2026-01-15', 2500, 'Festival T-shirt'),
(3, 3, 3, '2026-01-16', 900, 'Iced Latte'),
(4, 4, 4, '2026-01-16', 3200, 'Hand-painted Poster'),
(5, 5, 5, '2026-01-17', 1500, 'Beach Chair Rental'),
(6, 6, 6, '2026-01-18', 2200, 'Festival Cap'),
(7, 7, 7, '2026-01-18', 1950, 'Burger Meal'),
(8, 8, 8, '2026-01-19', 800, 'Smoothie'),
(9, 9, 9, '2026-01-20', 3400, 'Ceramic Mug'),
(10, 10, 10, '2026-01-21', 1800, 'Sunscreen Pack');

INSERT INTO sponsors (sponsor_id, sponsor_name, industry, sponsorship_amount) VALUES
(1, 'BlueWave Energy', 'Energy', 1500000),
(2, 'Nairobi Airways', 'Travel', 1200000),
(3, 'Safiri Telecom', 'Telecom', 900000),
(4, 'Mango Bank', 'Finance', 1100000),
(5, 'Lush Drinks', 'Beverage', 700000),
(6, 'Sunset Media', 'Media', 850000),
(7, 'Green Harbor', 'Sustainability', 650000),
(8, 'Peak Mobile', 'Telecom', 780000);

INSERT INTO stage_sponsors (stage_sponsor_id, stage_id, sponsor_id, sponsorship_amount) VALUES
(1, 1, 1, 500000),
(2, 1, 2, 350000),
(3, 2, 3, 280000),
(4, 2, 4, 320000),
(5, 3, 5, 240000),
(6, 3, 6, 260000),
(7, 4, 7, 190000),
(8, 4, 8, 210000),
(9, 5, 1, 300000),
(10, 5, 6, 220000),
(11, 6, 2, 400000),
(12, 6, 4, 270000);