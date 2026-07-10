-- =====================================================================
-- File:    03_insert_data.sql
-- Topic:   Part 3 - Populate the Database (SQLITE COMPATIBLE)
-- Owner:   Brigit Njoroge - Data Engineer (Optimized for Schema)
-- =====================================================================

-- 1. Stages (6)

INSERT INTO stages (student_name, location, capacity) VALUES
    ('Main Stage', 'North Beach Front', 8000),
    ('Sunset Stage', 'West Dune Terrace', 4500),
    ('Beach Stage', 'South Shoreline', 5000),
    ('Forest Stage', 'Palm Grove', 2500),
    ('Acoustic Tent', 'Garden Courtyard', 1200),
    ('Electronic Dome', 'East Arena', 6000);

-- 2. Artists (15)

INSERT INTO artists (name, genre, contact_person) VALUES
    ('Nyota Wave', 'Afrobeat', 'Manager Kenya'),
    ('Coastal Vibes', 'Reggae', 'Manager Coast'),
    ('DJ Kaskazi', 'Amapiano', 'Booking Agent'),
    ('Bongo Kings', 'Bongo Flava', 'TZ Office'),
    ('The Gengetone Crew', 'Gengetone', 'Nairobi Crew'),
    ('Sahara Beats', 'Afrobeat', 'West Africa Rep'),
    ('Luna Sound', 'Pop', 'SA Music Group'),
    ('DJ Amapiano King', 'Amapiano', 'SA Booking'),
    ('Savannah Strings', 'Acoustic', 'Acoustic Plug'),
    ('The Rift Valley Band', 'Rock', 'Rift Management'),
    ('Electra Pulse', 'EDM', 'Euro Agency'),
    ('Kilifi Sunrise', 'Reggae', 'Kilifi Local'),
    ('Nairobi Noise', 'Hip Hop', '254 Label'),
    ('Zanzibar Groove', 'Taarab', 'Zanzibar Culture'),
    ('Global Frequency', 'EDM', 'UK Arts');

-- 3. Attendees (20)

INSERT INTO attendees (first_name, last_name, email, phone_number) VALUES
    ('Amina', 'Wanjiru', 'amina.wanjiru1@example.com', NULL),
    ('Brian', 'Otieno', 'brian.otieno2@example.com', '0713356886'),
    ('Cynthia', 'Mwangi', 'cynthia.mwangi3@example.com', '0742868828'),
    ('David', 'Achieng', 'david.achieng4@example.com', '0728728463'),
    ('Esther', 'Kiptoo', 'esther.kiptoo5@example.com', '0783197857'),
    ('Felix', 'Njoroge', 'felix.njoroge6@example.com', '0789254563'),
    ('Grace', 'Wafula', 'grace.wafula7@example.com', NULL),
    ('Hassan', 'Kamau', 'hassan.kamau8@example.com', '0713999315'),
    ('Irene', 'Adhiambo', 'irene.adhiambo9@example.com', '0739345092'),
    ('James', 'Muthoni', 'james.muthoni10@example.com', '0777827638'),
    ('Kevin', 'Kilonzo', 'kevin.kilonzo11@example.com', '0785329037'),
    ('Linet', 'Chebet', 'linet.chebet12@example.com', '0797226012'),
    ('Moses', 'Odhiambo', 'moses.odhiambo13@example.com', NULL),
    ('Nancy', 'Wekesa', 'nancy.wekesa14@example.com', '0739587039'),
    ('Omar', 'Karanja', 'omar.karanja15@example.com', '0789089901'),
    ('Purity', 'Nyambura', 'purity.nyambura16@example.com', '0710872248'),
    ('Quincy', 'Barasa', 'quincy.barasa17@example.com', '0766722344'),
    ('Rita', 'Mutiso', 'rita.mutiso18@example.com', '0747295260'),
    ('Samuel', 'Njeri', 'samuel.njeri19@example.com', NULL),
    ('Tabitha', 'Onyango', 'tabitha.onyango20@example.com', '0755176955');

-- 4. Vendors (10)

INSERT INTO vendors (vendor_name, vendor_type) VALUES
    ('Coastal Grill House', 'Food'),
    ('Tropical Juice Bar', 'Drinks'),
    ('SummerTides Merch Co.', 'Merchandise'),
    ('Nyama Choma Corner', 'Food'),
    ('Chilled Cocktails Ltd', 'Drinks'),
    ('Beach Art Collective', 'Art'),
    ('Street Snacks Kenya', 'Food'),
    ('Craft Beer Tent', 'Drinks'),
    ('Festival Fashion Hub', 'Merchandise'),
    ('Fresh Seafood Shack', 'Food');

-- 5. Sponsors (8)

INSERT INTO sponsors (sponsor_name, contribution_amount) VALUES
    ('Safaricom PLC', 5000000.00),
    ('Tusker Beverages', 3500000.00),
    ('Java House Africa', 1500000.00),
    ('Equity Bank', 4000000.00),
    ('KQ Airways', 2500000.00),
    ('Coastal Telecom', 1200000.00),
    ('SunGold Cosmetics', 900000.00),
    ('Zuri Water', 750000.00);

-- 6. Stage Sponsorships (10)

INSERT INTO stage_sponsorships (stage_id, sponsor_id, funding_allocated) VALUES
    (1, 1, 1500000.00),
    (1, 2, 1000000.00),
    (2, 3, 500000.00),
    (2, 4, 1200000.00),
    (3, 5, 800000.00),
    (3, 6, 400000.00),
    (4, 7, 300000.00),
    (5, 8, 250000.00),
    (6, 2, 900000.00),
    (6, 4, 1100000.00);

-- 7. Performances (30)

INSERT INTO performances (artist_id, stage_id, start_time, end_time) VALUES
    (9, 5, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (3, 3, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (6, 1, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (15, 6, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (11, 5, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (8, 6, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (7, 4, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (13, 2, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (5, 2, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (14, 1, '2026-08-01 12:00:00', '2026-08-01 13:30:00'),
    (1, 5, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (2, 4, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (12, 3, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (4, 2, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (10, 6, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (9, 4, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (3, 1, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (6, 3, '2026-08-02 12:00:00', '2026-08-02 13:30:00'),
    (15, 5, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (11, 3, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (8, 1, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (7, 6, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (13, 5, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (5, 6, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (14, 4, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (1, 2, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (2, 2, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (12, 1, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (4, 5, '2026-08-03 19:00:00', '2026-08-03 20:30:00'),
    (10, 4, '2026-08-03 19:00:00', '2026-08-03 20:30:00');

-- 8. Tickets (40)

INSERT INTO tickets (attendee_id, ticket_type, price, purchase_date) VALUES
    (1, 'VIP', 9332.00, '2026-06-12 10:00:00'),
    (2, 'Regular', 3046.00, '2026-06-03 11:15:00'),
    (3, 'VIP', 12375.00, '2026-06-08 14:20:00'),
    (4, 'Regular', 3052.00, '2026-06-18 09:05:00'),
    (5, 'Regular', 2614.00, '2026-06-08 16:40:00'),
    (6, 'student', 2621.00, '2026-06-09 12:00:00'),
    (7, 'Regular', 3970.00, '2026-06-11 13:10:00'),
    (8, 'Regular', 3310.00, '2026-06-15 17:55:00'),
    (9, 'Regular', 3005.00, '2026-06-18 08:30:00'),
    (10, 'Regular', 3697.00, '2026-06-14 19:22:00'),
    (11, 'student', 2541.00, '2026-06-08 10:45:00'),
    (12, 'student', 2843.00, '2026-06-16 11:30:00'),
    (13, 'Regular', 2724.00, '2026-06-05 15:12:00'),
    (14, 'VIP', 11458.00, '2026-06-20 22:01:00'),
    (15, 'Regular', 3720.00, '2026-06-15 14:00:00'),
    (16, 'Regular', 2523.00, '2026-06-04 09:18:00'),
    (17, 'VIP', 14151.00, '2026-06-09 11:50:00'),
    (18, 'VIP', 8913.00, '2026-06-10 13:40:00'),
    (19, 'Regular', 2506.00, '2026-06-09 16:14:00'),
    (20, 'student', 2839.00, '2026-06-04 10:02:00'),
    (1, 'student', 2839.00, '2026-06-20 12:24:00'),
    (2, 'Regular', 2830.00, '2026-06-18 14:35:00'),
    (3, 'student', 1801.00, '2026-06-20 16:50:00'),
    (4, 'Regular', 2729.00, '2026-06-12 11:05:00'),
    (5, 'student', 2290.00, '2026-06-02 09:40:00'),
    (6, 'Regular', 2661.00, '2026-06-03 13:20:00'),
    (7, 'VIP', 14230.00, '2026-06-18 15:44:00'),
    (8, 'VIP', 13404.00, '2026-06-16 17:12:00'),
    (9, 'student', 2342.00, '2026-06-17 11:30:00'),
    (10, 'student', 2233.00, '2026-06-18 10:15:00'),
    (11, 'VIP', 9647.00, '2026-06-10 14:28:00'),
    (12, 'Regular', 3830.00, '2026-06-12 16:40:00'),
    (13, 'Regular', 3424.00, '2026-06-04 09:55:00'),
    (14, 'Regular', 3192.00, '2026-06-01 08:12:00'),
    (15, 'VIP', 12820.00, '2026-06-08 13:45:00'),
    (16, 'Regular', 3792.00, '2026-06-02 11:20:00'),
    (17, 'Regular', 3176.00, '2026-06-03 15:30:00'),
    (18, 'Regular', 3870.00, '2026-06-16 16:10:00'),
    (19, 'Regular', 3981.00, '2026-06-19 12:05:00'),
    (20, 'VIP', 14427.00, '2026-06-16 10:14:00');

-- 9. Sales (50)

INSERT INTO sales (vendor_id, amount, quantity, sale_time) VALUES
    (7, 701.81, 2, '2026-08-01 12:14:00'),
    (6, 2554.95, 1, '2026-08-01 12:45:00'),
    (2, 2505.33, 3, '2026-08-01 13:10:00'),
    (2, 1270.80, 1, '2026-08-01 13:35:00'),
    (8, 2618.01, 2, '2026-08-01 14:02:00'),
    (8, 5265.74, 4, '2026-08-01 14:20:00'),
    (8, 722.77, 1, '2026-08-01 15:10:00'),
    (1, 5569.25, 5, '2026-08-01 15:40:00'),
    (3, 2991.00, 2, '2026-08-01 16:15:00'),
    (7, 1113.13, 1, '2026-08-01 16:30:00'),
    (7, 5570.13, 4, '2026-08-01 17:05:00'),
    (5, 4225.06, 3, '2026-08-01 17:50:00'),
    (8, 1260.90, 1, '2026-08-01 18:12:00'),
    (1, 4454.06, 3, '2026-08-01 18:40:00'),
    (6, 443.33, 1, '2026-08-01 19:10:00'),
    (9, 1070.98, 1, '2026-08-01 19:55:00'),
    (2, 550.85, 1, '2026-08-01 20:20:00'),
    (4, 851.34, 1, '2026-08-01 21:00:00'),
    (4, 3627.94, 2, '2026-08-01 21:30:00'),
    (2, 3995.63, 3, '2026-08-01 22:15:00'),
    (9, 5618.03, 4, '2026-08-02 12:10:00'),
    (6, 1703.84, 1, '2026-08-02 12:40:00'),
    (5, 1999.64, 2, '2026-08-02 13:15:00'),
    (1, 3783.78, 3, '2026-08-02 13:50:00'),
    (2, 3295.16, 2, '2026-08-02 14:22:00'),
    (5, 5609.57, 4, '2026-08-02 15:05:00'),
    (4, 1817.18, 1, '2026-08-02 15:40:00'),
    (9, 3728.31, 3, '2026-08-02 16:10:00'),
    (1, 1901.37, 1, '2026-08-02 16:55:00'),
    (3, 825.26, 1, '2026-08-02 17:20:00'),
    (9, 1743.24, 1, '2026-08-02 18:00:00'),
    (4, 1341.04, 1, '2026-08-02 18:45:00'),
    (9, 1619.06, 1, '2026-08-02 19:15:00'),
    (2, 5001.69, 4, '2026-08-02 20:02:00'),
    (1, 4661.05, 3, '2026-08-02 20:40:00'),
    (3, 3377.33, 2, '2026-08-02 21:10:00'),
    (9, 804.46, 1, '2026-08-02 21:50:00'),
    (9, 5032.38, 4, '2026-08-02 22:30:00'),
    (9, 2664.25, 2, '2026-08-03 12:15:00'),
    (5, 5409.04, 4, '2026-08-03 13:02:00'),
    (6, 4140.09, 3, '2026-08-03 13:40:00'),
    (6, 5322.19, 4, '2026-08-03 14:15:00'),
    (10, 5565.72, 5, '2026-08-03 15:00:00'),
    (3, 5306.28, 4, '2026-08-03 15:55:00'),
    (3, 4726.96, 3, '2026-08-03 16:30:00'),
    (4, 1081.31, 1, '2026-08-03 17:12:00'),
    (7, 5172.77, 4, '2026-08-03 18:05:00'),
    (4, 2195.50, 2, '2026-08-03 18:40:00'),
    (4, 4011.19, 3, '2026-08-03 19:25:00'),
    (6, 5206.46, 4, '2026-08-03 20:10:00');

-- 10. Verification Sanity Check Reports

SELECT 'attendees' AS table_name, COUNT() AS row_count FROM attendees
UNION ALL
SELECT 'artists' AS table_name, COUNT() AS row_count FROM artists
UNION ALL
SELECT 'stages' AS table_name, COUNT() AS row_count FROM stages
UNION ALL
SELECT 'performances' AS table_name, COUNT() AS row_count FROM performances
UNION ALL
SELECT 'tickets' AS table_name, COUNT() AS row_count FROM tickets
UNION ALL
SELECT 'vendors' AS table_name, COUNT() AS row_count FROM vendors
UNION ALL
SELECT 'sales' AS table_name, COUNT() AS row_count FROM sales
UNION ALL
SELECT 'sponsors' AS table_name, COUNT() AS row_count FROM sponsors
UNION ALL
SELECT 'stage_sponsorships' AS table_name, COUNT(*) AS row_count FROM stage_sponsorships;