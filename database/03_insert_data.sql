-- =====================================================================
-- File:    03_insert_data.sql
-- Topic:   Part 3 - Populate the Database
-- Owner:   Brigit Njoroge - Data Engineer (Student 3)
-- Purpose: Insert realistic, East African-themed mock data into every
--          table so that later queries, reports, joins and views have
--          data to work with: local food/drink vendors, coastal and
--          regional music artists, regional sponsors, and realistic
--          multi-tier ticket pricing (Regular / VIP / Group). Meets
--          the minimum row counts required: 20 attendees, 15 artists,
--          6 stages, 30 performances, 40 tickets, 10 vendors,
--          50 sales, 8 sponsors.
-- Depends: 01_create_database.sql and 02_create_tables.sql must
--          be run first.
--
-- Insertion order (strictly respects foreign key dependencies -
-- every "parent" table is populated before any "child" table that
-- references it):
--   1. stages, artists, attendees, vendors, sponsors  (no FK dependencies)
--   2. stage_sponsors   (needs stages + sponsors to already exist)
--   3. performances     (needs artists + stages to already exist)
--   4. tickets          (needs attendees to already exist)
--   5. sales            (needs vendors + attendees to already exist)
-- =====================================================================

USE summertides;

-- -----------------------------------------------------------------
-- Stages (6)
-- -----------------------------------------------------------------
INSERT INTO stages (stage_name, location, capacity) VALUES
    ('Main Stage', 'North Beach Front', 8000),
    ('Sunset Stage', 'West Dune Terrace', 4500),
    ('Beach Stage', 'South Shoreline', 5000),
    ('Forest Stage', 'Palm Grove', 2500),
    ('Acoustic Tent', 'Garden Courtyard', 1200),
    ('Electronic Dome', 'East Arena', 6000);

-- -----------------------------------------------------------------
-- Artists (15)
-- -----------------------------------------------------------------
INSERT INTO artists (artist_name, genre, country, booking_fee) VALUES
    ('Nyota Wave', 'Afrobeat', 'Kenya', 150000),
    ('Coastal Vibes', 'Reggae', 'Kenya', 120000),
    ('DJ Kaskazi', 'Amapiano', 'Kenya', 180000),
    ('Bongo Kings', 'Bongo Flava', 'Tanzania', 160000),
    ('The Gengetone Crew', 'Gengetone', 'Kenya', 100000),
    ('Sahara Beats', 'Afrobeat', 'Nigeria', 250000),
    ('Luna Sound', 'Pop', 'South Africa', 220000),
    ('DJ Amapiano King', 'Amapiano', 'South Africa', 300000),
    ('Savannah Strings', 'Acoustic', 'Kenya', 80000),
    ('The Rift Valley Band', 'Rock', 'Kenya', 140000),
    ('Electra Pulse', 'EDM', 'Netherlands', 350000),
    ('Kilifi Sunrise', 'Reggae', 'Kenya', 110000),
    ('Nairobi Noise', 'Hip Hop', 'Kenya', 130000),
    ('Zanzibar Groove', 'Taarab', 'Tanzania', 90000),
    ('Global Frequency', 'EDM', 'United Kingdom', 320000);

-- -----------------------------------------------------------------
-- Attendees (20)
-- -----------------------------------------------------------------
INSERT INTO attendees (first_name, last_name, email, phone_number, age, city, country) VALUES
    ('Amina', 'Wanjiru', 'amina.wanjiru1@example.com', NULL, 25, 'Nairobi', 'Kenya'),
    ('Brian', 'Otieno', 'brian.otieno2@example.com', '0713356886', 35, 'Mombasa', 'Kenya'),
    ('Cynthia', 'Mwangi', 'cynthia.mwangi3@example.com', '0742868828', 32, 'Kisumu', 'Kenya'),
    ('David', 'Achieng', 'david.achieng4@example.com', '0728728463', 24, 'Nakuru', 'Kenya'),
    ('Esther', 'Kiptoo', 'esther.kiptoo5@example.com', '0783197857', 23, 'Eldoret', 'Kenya'),
    ('Felix', 'Njoroge', 'felix.njoroge6@example.com', '0789254563', 45, 'Malindi', 'Kenya'),
    ('Grace', 'Wafula', 'grace.wafula7@example.com', NULL, 20, 'Thika', 'Kenya'),
    ('Hassan', 'Kamau', 'hassan.kamau8@example.com', '0713999315', 23, 'Naivasha', 'Kenya'),
    ('Irene', 'Adhiambo', 'irene.adhiambo9@example.com', '0739345092', 32, 'Nairobi', 'Kenya'),
    ('James', 'Muthoni', 'james.muthoni10@example.com', '0777827638', 19, 'Mombasa', 'Kenya'),
    ('Kevin', 'Kilonzo', 'kevin.kilonzo11@example.com', '0785329037', 30, 'Nairobi', 'Kenya'),
    ('Linet', 'Chebet', 'linet.chebet12@example.com', '0797226012', 52, 'Mombasa', 'Kenya'),
    ('Moses', 'Odhiambo', 'moses.odhiambo13@example.com', NULL, 44, 'Kisumu', 'Kenya'),
    ('Nancy', 'Wekesa', 'nancy.wekesa14@example.com', '0739587039', 46, 'Nakuru', 'Kenya'),
    ('Omar', 'Karanja', 'omar.karanja15@example.com', '0789089901', 35, 'Eldoret', 'Kenya'),
    ('Purity', 'Nyambura', 'purity.nyambura16@example.com', '0710872248', 28, 'Malindi', 'Kenya'),
    ('Quincy', 'Barasa', 'quincy.barasa17@example.com', '0766722344', 39, 'Thika', 'Kenya'),
    ('Rita', 'Mutiso', 'rita.mutiso18@example.com', '0747295260', 27, 'Naivasha', 'Kenya'),
    ('Samuel', 'Njeri', 'samuel.njeri19@example.com', NULL, 31, 'Nairobi', 'Kenya'),
    ('Tabitha', 'Onyango', 'tabitha.onyango20@example.com', '0755176955', 24, 'Mombasa', 'Kenya');

-- -----------------------------------------------------------------
-- Vendors (10)
-- -----------------------------------------------------------------
INSERT INTO vendors (vendor_name, category, rating) VALUES
    ('Coastal Grill House', 'Food', 4.5),
    ('Tropical Juice Bar', 'Drinks', 4.2),
    ('SummerTides Merch Co.', 'Merchandise', 3.8),
    ('Nyama Choma Corner', 'Food', 4.7),
    ('Chilled Cocktails Ltd', 'Drinks', 4.0),
    ('Beach Art Collective', 'Art', 4.3),
    ('Street Snacks Kenya', 'Food', 3.5),
    ('Craft Beer Tent', 'Drinks', 4.6),
    ('Festival Fashion Hub', 'Merchandise', 3.9),
    ('Fresh Seafood Shack', 'Food', 4.1);

-- -----------------------------------------------------------------
-- Sponsors (8)
-- -----------------------------------------------------------------
INSERT INTO sponsors (sponsor_name, contribution_amount, contact_email) VALUES
    ('Safaricom PLC', 5000000, 'partnerships@safaricom.co.ke'),
    ('Tusker Beverages', 3500000, 'events@tusker.co.ke'),
    ('Java House Africa', 1500000, 'marketing@javahouse.co.ke'),
    ('Equity Bank', 4000000, 'sponsorships@equitybank.co.ke'),
    ('KQ Airways', 2500000, 'events@kenya-airways.com'),
    ('Coastal Telecom', 1200000, 'promo@coastaltelecom.co.ke'),
    ('SunGold Cosmetics', 900000, 'brand@sungold.co.ke'),
    ('Zuri Water', 750000, 'info@zuriwater.co.ke');

-- -----------------------------------------------------------------
-- Stage Sponsors (many-to-many links between stages and sponsors)
-- -----------------------------------------------------------------
INSERT INTO stage_sponsors (stage_id, sponsor_id) VALUES
    (1,1),
    (1,2),
    (2,3),
    (2,4),
    (3,5),
    (3,6),
    (4,7),
    (5,8),
    (6,2),
    (6,4);

-- -----------------------------------------------------------------
-- Performances (30) - artists scheduled across 6 stages over 3 days
-- FK note: artists and stages are already populated above, so every
-- artist_id / stage_id referenced here is guaranteed to exist.
-- -----------------------------------------------------------------
INSERT INTO performances (artist_id, stage_id, festival_day, start_time, end_time) VALUES
    (9, 5, 3, '12:00:00', '13:30:00'),
    (3, 3, 2, '12:00:00', '13:30:00'),
    (6, 1, 2, '12:00:00', '13:30:00'),
    (15, 6, 3, '12:00:00', '13:30:00'),
    (11, 5, 2, '12:00:00', '13:30:00'),
    (8, 6, 2, '12:00:00', '13:30:00'),
    (7, 4, 3, '12:00:00', '13:30:00'),
    (13, 2, 1, '12:00:00', '13:30:00'),
    (5, 2, 2, '12:00:00', '13:30:00'),
    (14, 1, 1, '12:00:00', '13:30:00'),
    (1, 5, 1, '12:00:00', '13:30:00'),
    (2, 4, 2, '12:00:00', '13:30:00'),
    (12, 3, 3, '12:00:00', '13:30:00'),
    (4, 2, 3, '12:00:00', '13:30:00'),
    (10, 6, 1, '12:00:00', '13:30:00'),
    (9, 4, 1, '12:00:00', '13:30:00'),
    (3, 1, 3, '12:00:00', '13:30:00'),
    (6, 3, 1, '12:00:00', '13:30:00'),
    (15, 5, 3, '19:00:00', '20:30:00'),
    (11, 3, 2, '19:00:00', '20:30:00'),
    (8, 1, 2, '19:00:00', '20:30:00'),
    (7, 6, 3, '19:00:00', '20:30:00'),
    (13, 5, 2, '19:00:00', '20:30:00'),
    (5, 6, 2, '19:00:00', '20:30:00'),
    (14, 4, 3, '19:00:00', '20:30:00'),
    (1, 2, 1, '19:00:00', '20:30:00'),
    (2, 2, 2, '19:00:00', '20:30:00'),
    (12, 1, 1, '19:00:00', '20:30:00'),
    (4, 5, 1, '19:00:00', '20:30:00'),
    (10, 4, 2, '19:00:00', '20:30:00');

-- -----------------------------------------------------------------
-- Tickets (40) - attendees purchase tickets for festival days
-- FK note: attendees are already populated above, so every
-- attendee_id referenced here is guaranteed to exist.
-- -----------------------------------------------------------------
INSERT INTO tickets (attendee_id, ticket_type, festival_day, price, purchase_date) VALUES
    (1, 'VIP', 2, 9332, '2026-06-12'),
    (2, 'Regular', 3, 3046, '2026-06-03'),
    (3, 'VIP', 1, 12375, '2026-06-08'),
    (4, 'Regular', 2, 3052, '2026-06-18'),
    (5, 'Regular', 2, 2614, '2026-06-08'),
    (6, 'Group', 2, 2621, '2026-06-09'),
    (7, 'Regular', 3, 3970, '2026-06-11'),
    (8, 'Regular', 2, 3310, '2026-06-15'),
    (9, 'Regular', 1, 3005, '2026-06-18'),
    (10, 'Regular', 3, 3697, '2026-06-14'),
    (11, 'Group', 2, 2541, '2026-06-08'),
    (12, 'Group', 1, 2843, '2026-06-16'),
    (13, 'Regular', 1, 2724, '2026-06-05'),
    (14, 'VIP', 3, 11458, '2026-06-20'),
    (15, 'Regular', 2, 3720, '2026-06-15'),
    (16, 'Regular', 3, 2523, '2026-06-04'),
    (17, 'VIP', 3, 14151, '2026-06-09'),
    (18, 'VIP', 2, 8913, '2026-06-10'),
    (19, 'Regular', 2, 2506, '2026-06-09'),
    (20, 'Group', 1, 2839, '2026-06-04'),
    (1, 'Group', 2, 2839, '2026-06-20'),
    (2, 'Regular', 2, 2830, '2026-06-18'),
    (3, 'Group', 3, 1801, '2026-06-20'),
    (4, 'Regular', 1, 2729, '2026-06-12'),
    (5, 'Group', 2, 2290, '2026-06-02'),
    (6, 'Regular', 3, 2661, '2026-06-03'),
    (7, 'VIP', 1, 14230, '2026-06-18'),
    (8, 'VIP', 1, 13404, '2026-06-16'),
    (9, 'Group', 1, 2342, '2026-06-17'),
    (10, 'Group', 2, 2233, '2026-06-18'),
    (11, 'VIP', 3, 9647, '2026-06-10'),
    (12, 'Regular', 3, 3830, '2026-06-12'),
    (13, 'Regular', 3, 3424, '2026-06-04'),
    (14, 'Regular', 1, 3192, '2026-06-01'),
    (15, 'VIP', 1, 12820, '2026-06-08'),
    (16, 'Regular', 3, 3792, '2026-06-02'),
    (17, 'Regular', 1, 3176, '2026-06-03'),
    (18, 'Regular', 2, 3870, '2026-06-16'),
    (19, 'Regular', 1, 3981, '2026-06-19'),
    (20, 'VIP', 1, 14427, '2026-06-16');

-- -----------------------------------------------------------------
-- Sales (50) - purchases attendees make from vendors
-- FK note: vendors and attendees are already populated above, so
-- every vendor_id / attendee_id referenced here is guaranteed to exist.
-- -----------------------------------------------------------------
INSERT INTO sales (vendor_id, attendee_id, sale_amount, sale_date) VALUES
    (7, 7, 701.81, '2026-06-14'),
    (6, 14, 2554.95, '2026-06-02'),
    (2, 2, 2505.33, '2026-06-11'),
    (2, 8, 1270.8, '2026-06-18'),
    (8, 5, 2618.01, '2026-06-09'),
    (8, 8, 5265.74, '2026-06-03'),
    (8, 18, 722.77, '2026-06-18'),
    (1, 3, 5569.25, '2026-06-08'),
    (3, 14, 2991.0, '2026-06-07'),
    (7, 2, 1113.13, '2026-06-01'),
    (7, 9, 5570.13, '2026-06-15'),
    (5, 14, 4225.06, '2026-06-18'),
    (8, 5, 1260.9, '2026-06-07'),
    (1, 19, 4454.06, '2026-06-02'),
    (6, 2, 443.33, '2026-06-16'),
    (9, 17, 1070.98, '2026-06-17'),
    (2, 6, 550.85, '2026-06-03'),
    (4, 13, 851.34, '2026-06-19'),
    (4, 19, 3627.94, '2026-06-20'),
    (2, 14, 3995.63, '2026-06-19'),
    (9, 11, 5618.03, '2026-06-07'),
    (6, 8, 1703.84, '2026-06-05'),
    (5, 15, 1999.64, '2026-06-03'),
    (1, 15, 3783.78, '2026-06-19'),
    (2, 3, 3295.16, '2026-06-17'),
    (5, 5, 5609.57, '2026-06-03'),
    (4, 12, 1817.18, '2026-06-15'),
    (9, 10, 3728.31, '2026-06-17'),
    (1, 18, 1901.37, '2026-06-04'),
    (3, 9, 825.26, '2026-06-04'),
    (9, 5, 1743.24, '2026-06-20'),
    (4, 11, 1341.04, '2026-06-09'),
    (9, 16, 1619.06, '2026-06-02'),
    (2, 14, 5001.69, '2026-06-02'),
    (1, 11, 4661.05, '2026-06-09'),
    (3, 15, 3377.33, '2026-06-14'),
    (9, 1, 804.46, '2026-06-05'),
    (9, 2, 5032.38, '2026-06-19'),
    (9, 5, 2664.25, '2026-06-02'),
    (5, 12, 5409.04, '2026-06-02'),
    (6, 7, 4140.09, '2026-06-04'),
    (6, 18, 5322.19, '2026-06-14'),
    (10, 5, 5565.72, '2026-06-08'),
    (3, 6, 5306.28, '2026-06-01'),
    (3, 11, 4726.96, '2026-06-14'),
    (4, 9, 1081.31, '2026-06-04'),
    (7, 2, 5172.77, '2026-06-08'),
    (4, 15, 2195.5, '2026-06-08'),
    (4, 1, 4011.19, '2026-06-13'),
    (6, 9, 5206.46, '2026-06-09');

-- Sanity check: row counts for every table.
SELECT 'attendees' AS table_name, COUNT(*) AS row_count FROM attendees
UNION ALL
SELECT 'artists' AS table_name, COUNT(*) AS row_count FROM artists
UNION ALL
SELECT 'stages' AS table_name, COUNT(*) AS row_count FROM stages
UNION ALL
SELECT 'performances' AS table_name, COUNT(*) AS row_count FROM performances
UNION ALL
SELECT 'tickets' AS table_name, COUNT(*) AS row_count FROM tickets
UNION ALL
SELECT 'vendors' AS table_name, COUNT(*) AS row_count FROM vendors
UNION ALL
SELECT 'sales' AS table_name, COUNT(*) AS row_count FROM sales
UNION ALL
SELECT 'sponsors' AS table_name, COUNT(*) AS row_count FROM sponsors
UNION ALL
SELECT 'stage_sponsors' AS table_name, COUNT(*) AS row_count FROM stage_sponsors;
