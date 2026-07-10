-- Insert realistic sample data for the SummerTides festival domain.
PRAGMA foreign_keys = ON;

INSERT INTO attendees (full_name, email, phone, age, city, registration_date) VALUES
('Amina Okafor', 'amina.okafor@example.com', '+254700100001', 29, 'Nairobi', '2026-07-01'),
('Brian Mwangi', 'brian.mwangi@example.com', '+254700100002', 34, 'Mombasa', '2026-07-02'),
('Cynthia Njeri', 'cynthia.njeri@example.com', '+254700100003', 24, 'Nairobi', '2026-07-03'),
('Daniel Kiptoo', 'daniel.kiptoo@example.com', '+254700100004', 41, 'Kisumu', '2026-07-04'),
('Esther Wambui', 'esther.wambui@example.com', '+254700100005', 26, 'Nakuru', '2026-07-05'),
('Farah Ali', 'farah.ali@example.com', '+254700100006', 31, 'Dar es Salaam', '2026-07-06'),
('George Otieno', 'george.otieno@example.com', '+254700100007', 22, 'Nairobi', '2026-07-07'),
('Hannah Ndegwa', 'hannah.ndegwa@example.com', '+254700100008', 37, 'Mombasa', '2026-07-08'),


INSERT INTO artists (artist_name, genre, country, is_local) VALUES
('Amani Jazz', 'Jazz', 'Kenya', 1),
('Bantu Echo', 'AfroPop', 'Kenya', 1),
('Cedar Sound', 'Reggae', 'Kenya', 1),
('Dune Collective', 'Electronic', 'South Africa', 0),
('Eliot Lane', 'Indie', 'Nigeria', 0),
('Faya Moyo', 'AfroFusion', 'Kenya', 1),
('Golden Tide', 'Pop', 'Uganda', 0),
('Hawa & Co.', 'AfroSoul', 'Kenya', 1),
('Island Vibes', 'Dancehall', 'Jamaica', 0),
('Jengo Beats', 'HipHop', 'Kenya', 1),
('Kite Strings', 'Acoustic', 'Tanzania', 0),
('Lagos Lights', 'Afrobeats', 'Nigeria', 0),
('Mara Pulse', 'World', 'Kenya', 1),
('Nairobi Nights', 'House', 'Kenya', 1),
('Ocean Drift', 'Alt Rock', 'USA', 0);

INSERT INTO stages (stage_name, location, capacity) VALUES
('Sunset Arena', 'North Beach', 4000),
('Tide Pavilion', 'Central Beach', 2500),
('Dune Deck', 'Palm Grove', 1800),
('Ocean Lounge', 'Boardwalk', 1200),
('Cove Stage', 'Cove Point', 1500),
('Lagoon Main', 'Lagoon Side', 3000);

INSERT INTO performances (artist_id, stage_id, performance_date, start_time, end_time, festival_day) VALUES
(1, 1, '2026-08-21', '18:00', '19:00', 'Day 1'),
(2, 2, '2026-08-21', '20:00', '21:00', 'Day 1'),
(3, 3, '2026-08-21', '19:30', '20:30', 'Day 1'),
(4, 4, '2026-08-21', '21:30', '22:30', 'Day 1'),
(5, 5, '2026-08-21', '22:00', '23:00', 'Day 1'),
(6, 6, '2026-08-22', '16:00', '17:00', 'Day 2'),
(7, 1, '2026-08-22', '17:30', '18:30', 'Day 2'),
(8, 2, '2026-08-22', '18:30', '19:30', 'Day 2'),


INSERT INTO tickets (ticket_code, attendee_id, ticket_type, price, purchase_date) VALUES
('TKT-001', 1, 'General', 2500, '2026-07-01'),
('TKT-002', 2, 'VIP', 6000, '2026-07-01'),
('TKT-003', 3, 'Weekend', 8500, '2026-07-03'),
('TKT-004', 4, 'General', 2500, '2026-07-04'),
('TKT-005', 5, 'Day Pass', 3500, '2026-07-05'),
('TKT-006', 6, 'VIP', 6000, '2026-07-06'),
('TKT-007', 7, 'General', 2500, '2026-07-07'),
('TKT-008', 8, 'Weekend', 8500, '2026-07-08'),
('TKT-009', 9, 'General', 2500, '2026-07-09'),
('TKT-010', 10, 'VIP', 6000, '2026-07-10'),
('TKT-011', 11, 'Day Pass', 3500, '2026-07-11'),
('TKT-012', 12, 'General', 2500, '2026-07-12'),
('TKT-013', 13, 'Weekend', 8500, '2026-07-13'),
('TKT-014', 14, 'General', 2500, '2026-07-14'),

('TKT-040', 20, 'General', 2500, '2026-08-09');

INSERT INTO vendors (vendor_name, category, rating, contact_person) VALUES
('Sunset Snacks', 'Food', 4.8, 'Mina Awuor'),
('Tide T-shirts', 'Merchandise', 4.4, 'Peter Karanja'),
('Cove Coffee', 'Beverage', 4.7, 'Lucy Naliaka'),
('Dune Drinks', 'Beverage', 4.2, 'Noah Wanjiku'),
('Palm Grill', 'Food', 4.9, 'Salim Ouma'),
('Ocean Prints', 'Merchandise', 4.1, 'Faith Mugo'),
('Lagoon Juice', 'Beverage', 4.5, 'James Ndungu'),
('Beach Books', 'Merchandise', 4.0, 'Rina Onkundi'),
('Harbor Bites', 'Food', 4.6, 'Victor Otieno'),
('Wave Gear', 'Merchandise', 4.3, 'Asha Muli');

INSERT INTO sales (ticket_id, vendor_id, sale_date, quantity, amount) VALUES
(1, 1, '2026-07-01', 1, 2500),
(2, 2, '2026-07-01', 1, 6000),
(3, 5, '2026-07-03', 1, 8500),
(4, 8, '2026-07-04', 1, 2500),
(5, 3, '2026-07-05', 1, 3500),
(6, 10, '2026-07-06', 1, 6000),
(7, 1, '2026-07-07', 1, 2500),
(8, 6, '2026-07-08', 1, 8500),
(9, 4, '2026-07-09', 1, 2500),
(10, 7, '2026-07-10', 1, 6000),
(11, 3, '2026-07-11', 1, 3500),
(12, 2, '2026-07-12', 1, 2500),
(13, 5, '2026-07-13', 1, 8500),
(14, 9, '2026-07-14', 1, 2500),
(15, 1, '2026-07-15', 1, 6000),
(16, 7, '2026-07-16', 1, 3500),


INSERT INTO sponsors (sponsor_name, industry, sponsorship_amount) VALUES
('BlueWave Energy', 'Energy', 2500000),
('Coastline Bank', 'Finance', 1800000),
('Safari Telecom', 'Telecom', 2200000),
('Mara Motors', 'Automotive', 1600000),
('Nile Water', 'Utilities', 1400000),
('Sands Media', 'Media', 1200000),
('High Tide Logistics', 'Logistics', 1900000),
('Sunrise Insurance', 'Insurance', 1500000);

INSERT INTO stage_sponsors (stage_id, sponsor_id, sponsorship_amount) VALUES
(1, 1, 800000),
(1, 2, 500000),
(2, 3, 700000),
(2, 4, 450000),
(3, 5, 600000),
(4, 6, 400000),
(5, 7, 550000),
(6, 8, 650000);

SELECT 'Sample data inserted successfully.' AS status;
