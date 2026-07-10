-- SummerTides Festival Database

USE summertides;

-- Clear existing data 
DELETE FROM stage_sponsors;
DELETE FROM sales;
DELETE FROM sponsors;
DELETE FROM vendors;
DELETE FROM tickets;
DELETE FROM performances;
DELETE FROM stages;
DELETE FROM artists;
DELETE FROM attendees;


-- ATTENDEES

INSERT INTO attendees (attendee_id, first_name, last_name, email, phone, age, city, registration_date) VALUES
(1, 'Caren', 'Chemjor', 'caren.chemjor@student.moringaschool.com', '0753464097', 27, 'Nyeri', '2026-03-03'),
(2, 'Nabil', 'Hassan', 'nabil.hassan@student.moringaschool.com', '0781924865', 24, 'Thika', '2026-03-17'),
(3, 'Frank', 'Kinyua', 'frank.kinyua@student.moringaschool.com', NULL, 31, 'Nairobi', '2026-03-03'),
(4, 'Brian', 'Kipchirchir', 'brian.kipchirchir2@student.moringaschool.com', '0768202938', 44, 'Mombasa', '2026-04-03'),
(5, 'Joel', 'Kirapash', 'joel.kirapash@student.moringaschool.com', '0783960310', 45, 'Nairobi', '2026-03-08'),
(6, 'Angela', 'Koroso', 'angela.koroso1@student.moringaschool.com', '0794641177', 55, 'Nairobi', '2026-03-19'),
(7, 'Timothy', 'Miriti', 'timothy.miriti@student.moringaschool.com', '0788590039', 43, 'Nairobi', '2026-04-02'),
(8, 'Deogracious', 'Moriasi', 'deogracious.moriasi@student.moringaschool.com', NULL, 53, 'Kisumu', '2026-05-14'),
(9, 'Ariel', 'Muhuri', 'ariel.muhuri@student.moringaschool.com', '0729361589', 52, 'Nairobi', '2026-03-19'),
(10, 'Brigid', 'Mukami', 'brigid.mukami@student.moringaschool.com', '0751403729', 53, 'Kisumu', '2026-03-19'),
(11, 'Brian', 'Mwangi', 'brian.mwangi11@student.moringaschool.com', '0786665755', 30, 'Thika', '2026-03-18'),
(12, 'Victor', 'Mwangi', 'victor.mwangi6@student.moringaschool.com', NULL, 22, 'Nairobi', '2026-03-20'),
(13, 'Winnie', 'Mwaura', 'winnie.mwaura@student.moringaschool.com', '0737643310', 49, 'Nyeri', '2026-05-15'),
(14, 'Peter', 'Nduru', 'peter.nduru@student.moringaschool.com', '0788592782', 47, 'Thika', '2026-05-08'),
(15, 'Edwin', 'Ngengi', 'edwin.ngengi@student.moringaschool.com', '0734127884', 33, 'Nairobi', '2026-03-19'),
(16, 'Damaris', 'Osiago', 'damaris.osiago@student.moringaschool.com', '0750298754', 51, 'Naivasha', '2026-05-24'),
(17, 'Calvin', 'Wainaina', 'calvin.wainaina@student.moringaschool.com', NULL, 46, 'Eldoret', '2026-03-04'),
(18, 'Morgan', 'Ombati', 'morgan.ombati@student.moringaschool.com', '0778710461', 44, 'Nairobi', '2026-04-25'),
(19, 'Gad', 'Ontune', 'gad.ontune@student.moringaschool.com', '0755909953', 27, 'Naivasha', '2026-06-02'),
(20, 'Sidney', 'Nyambok', 'sidney.nyambok@student.moringaschool.com', '0799686414', 22, 'Thika', '2026-05-23');


-- ARTISTS

INSERT INTO artists (artist_id, artist_name, genre, country) VALUES
(1, 'Sauti Sol Revival', 'Afrobeat', 'Kenya'),
(2, 'Nyota Ndogo', 'Bongo Flava', 'Kenya'),
(3, 'Buruklyn Boyz', 'Gengetone', 'Kenya'),
(4, 'Mejja Wa Kanairo', 'Gengetone', 'Kenya'),
(5, 'Wakadinali Crew', 'Gengetone', 'Kenya'),
(6, 'Nyashinski Live', 'Hip Hop', 'Kenya'),
(7, 'Diamond Platnumz Jr', 'Bongo Flava', 'Tanzania'),
(8, 'Burna Boy Tribute', 'Afrobeat', 'Nigeria'),
(9, 'Eddy Kenzo Band', 'Afrobeat', 'Uganda'),
(10, 'Reggae Roots Collective', 'Reggae', 'Jamaica'),
(11, 'Coastal Jazz Ensemble', 'Jazz', 'Kenya'),
(12, 'DJ Pulse International', 'Electronic', 'United Kingdom'),
(13, 'Soul Sisters USA', 'RnB', 'United States'),
(14, 'Amapiano All Stars', 'Amapiano', 'South Africa'),
(15, 'Nairobi Rock Circuit', 'Rock', 'Kenya');


-- STAGES

INSERT INTO stages (stage_id, stage_name, capacity) VALUES
(1, 'Main Stage', 8000),
(2, 'Sunset Stage', 4000),
(3, 'Acoustic Tent', 1200),
(4, 'Electronic Dome', 3000),
(5, 'Reggae Corner', 1500),
(6, 'Comedy & Chill Lounge', 800);


-- PERFORMANCES

INSERT INTO performances (performance_id, artist_id, stage_id, festival_day, start_time, end_time) VALUES
(1, 1, 6, '2026-08-02', '13:30:00', '15:00:00'),
(2, 2, 2, '2026-08-02', '12:30:00', '13:30:00'),
(3, 3, 5, '2026-08-01', '16:15:00', '17:15:00'),
(4, 4, 3, '2026-08-01', '20:00:00', '21:15:00'),
(5, 5, 4, '2026-08-01', '13:30:00', '14:45:00'),
(6, 6, 2, '2026-08-01', '15:00:00', '15:45:00'),
(7, 7, 5, '2026-08-01', '14:45:00', '15:45:00'),
(8, 8, 3, '2026-08-03', '21:45:00', '22:45:00'),
(9, 9, 5, '2026-08-03', '15:30:00', '17:00:00'),
(10, 10, 6, '2026-08-03', '17:45:00', '19:15:00'),
(11, 11, 1, '2026-08-01', '15:00:00', '16:15:00'),
(12, 12, 1, '2026-08-03', '20:15:00', '21:15:00'),
(13, 13, 1, '2026-08-01', '12:15:00', '13:00:00'),
(14, 14, 1, '2026-08-02', '13:15:00', '14:30:00'),
(15, 15, 6, '2026-08-02', '15:15:00', '16:45:00'),
(16, 10, 2, '2026-08-02', '18:15:00', '19:00:00'),
(17, 8, 1, '2026-08-03', '18:30:00', '20:00:00'),
(18, 9, 4, '2026-08-02', '12:00:00', '12:45:00'),
(19, 5, 4, '2026-08-03', '17:00:00', '18:00:00'),
(20, 9, 2, '2026-08-01', '20:45:00', '21:45:00'),
(21, 14, 4, '2026-08-01', '16:45:00', '17:45:00'),
(22, 1, 1, '2026-08-02', '20:00:00', '20:45:00'),
(23, 11, 6, '2026-08-03', '12:00:00', '13:00:00'),
(24, 12, 2, '2026-08-02', '19:45:00', '20:45:00'),
(25, 2, 4, '2026-08-01', '14:45:00', '15:30:00'),
(26, 11, 4, '2026-08-02', '19:30:00', '21:00:00'),
(27, 15, 6, '2026-08-03', '20:45:00', '21:45:00'),
(28, 9, 2, '2026-08-02', '15:00:00', '15:45:00'),
(29, 13, 6, '2026-08-02', '12:00:00', '13:30:00'),
(30, 5, 5, '2026-08-03', '14:00:00', '14:45:00');

-- TICKETS

INSERT INTO tickets (ticket_id, attendee_id, ticket_type, price, purchase_date, festival_day) VALUES
(1, 1, 'VIP', 9500.00, '2026-06-15', '2026-08-01'),
(2, 19, 'Regular', 2689.04, '2026-04-14', '2026-08-03'),
(3, 19, 'VIP', 7214.59, '2026-06-07', '2026-08-03'),
(4, 11, 'Regular', 2291.57, '2026-06-15', '2026-08-02'),
(5, 3, 'Regular', 2742.32, '2026-04-03', '2026-08-03'),
(6, 7, 'VIP', 5927.2, '2026-06-03', '2026-08-01'),
(7, 12, 'Regular', 2376.37, '2026-06-20', '2026-08-03'),
(8, 17, 'Regular', 3134.21, '2026-06-22', '2026-08-01'),
(9, 5, 'Regular', 3279.43, '2026-05-09', '2026-08-02'),
(10, 20, 'Regular', 2185.76, '2026-06-17', '2026-08-02'),
(11, 9, 'Backstage', 23461.04, '2026-04-21', '2026-08-02'),
(12, 9, 'Regular', 2167.11, '2026-05-21', '2026-08-02'),
(13, 6, 'VIP', 8861.76, '2026-07-18', '2026-08-01'),
(14, 4, 'Regular', 3266.21, '2026-05-18', '2026-08-01'),
(15, 12, 'VIP', 6036.66, '2026-05-02', '2026-08-02'),
(16, 12, 'Backstage', 22961.22, '2026-04-12', '2026-08-01'),
(17, 8, 'VIP', 7475.75, '2026-07-20', '2026-08-03'),
(18, 5, 'Backstage', 17367.37, '2026-05-26', '2026-08-01'),
(19, 14, 'Regular', 2973.13, '2026-06-26', '2026-08-02'),
(20, 8, 'Regular', 3074.75, '2026-04-13', '2026-08-01'),
(21, 16, 'Regular', 3133.17, '2026-07-12', '2026-08-02'),
(22, 8, 'Regular', 2820.07, '2026-07-11', '2026-08-02'),
(23, 3, 'Backstage', 17791.25, '2026-07-22', '2026-08-03'),
(24, 11, 'Backstage', 16153.42, '2026-06-06', '2026-08-03'),
(25, 9, 'Regular', 2693.14, '2026-06-24', '2026-08-02'),
(26, 14, 'VIP', 8579.96, '2026-07-19', '2026-08-01'),
(27, 9, 'Regular', 2372.12, '2026-05-12', '2026-08-02'),
(28, 3, 'Backstage', 24207.71, '2026-06-22', '2026-08-01'),
(29, 10, 'VIP', 9668.25, '2026-06-13', '2026-08-03'),
(30, 10, 'VIP', 6342.88, '2026-07-22', '2026-08-03'),
(31, 6, 'VIP', 7106.65, '2026-04-10', '2026-08-02'),
(32, 7, 'Regular', 2659.97, '2026-06-15', '2026-08-02'),
(33, 15, 'VIP', 8578.22, '2026-05-22', '2026-08-01'),
(34, 10, 'VIP', 9430.59, '2026-06-03', '2026-08-01'),
(35, 10, 'Regular', 1898.26, '2026-04-02', '2026-08-01'),
(36, 16, 'VIP', 10379.43, '2026-07-14', '2026-08-03'),
(37, 19, 'Regular', 2892.71, '2026-07-13', '2026-08-01'),
(38, 5, 'VIP', 5038.81, '2026-04-25', '2026-08-02'),
(39, 8, 'Regular', 3415.93, '2026-07-02', '2026-08-03'),
(40, 8, 'Backstage', 16213.59, '2026-05-26', '2026-08-02');

-- VENDORS

INSERT INTO vendors (vendor_id, vendor_name, category, rating) VALUES
(1, 'Mama Njeri''s Kitchen', 'Food', 4.8),
(2, 'Coastal Grillers', 'Food', 4.2),
(3, 'Chapati Corner', 'Food', 3.9),
(4, 'Fresh Squeeze Juice Bar', 'Drinks', 4.6),
(5, 'Tusker Tents', 'Drinks', 4.1),
(6, 'Iced Out Refreshments', 'Drinks', 3.5),
(7, 'SummerTides Merch Co.', 'Merchandise', 4.7),
(8, 'Festival Threads', 'Merchandise', 3.8),
(9, 'Snap & Print Photo Booth', 'Services', 4.4),
(10, 'Charge Point Kiosk', 'Services', 3.2);

-- SALES

INSERT INTO sales (sale_id, vendor_id, attendee_id, sale_amount, sale_date) VALUES
(1, 9, 18, 2740.22, '2026-08-02'),
(2, 10, 17, 2006.32, '2026-08-03'),
(3, 8, 6, 3384.9, '2026-08-02'),
(4, 8, 9, 3420.23, '2026-08-03'),
(5, 5, 17, 2258.0, '2026-08-01'),
(6, 5, 15, 487.05, '2026-08-02'),
(7, 4, 9, 1610.94, '2026-08-03'),
(8, 2, 5, 806.11, '2026-08-02'),
(9, 3, 7, 429.4, '2026-08-02'),
(10, 6, 18, 2176.77, '2026-08-01'),
(11, 4, 14, 1844.22, '2026-08-03'),
(12, 1, 19, 1804.66, '2026-08-01'),
(13, 6, 10, 3427.62, '2026-08-02'),
(14, 9, 18, 3629.43, '2026-08-01'),
(15, 8, 8, 1337.27, '2026-08-02'),
(16, 1, 13, 1612.16, '2026-08-03'),
(17, 7, 6, 3806.2, '2026-08-01'),
(18, 10, 18, 267.3, '2026-08-02'),
(19, 10, 19, 3034.05, '2026-08-01'),
(20, 7, 5, 3920.8, '2026-08-01'),
(21, 1, 9, 1799.1, '2026-08-01'),
(22, 8, 11, 1618.13, '2026-08-02'),
(23, 5, 14, 1247.38, '2026-08-01'),
(24, 8, 1, 3408.26, '2026-08-01'),
(25, 6, 8, 2978.13, '2026-08-03'),
(26, 1, 1, 4280.81, '2026-08-01'),
(27, 1, 20, 812.86, '2026-08-01'),
(28, 8, 4, 2603.27, '2026-08-01'),
(29, 8, 9, 3486.01, '2026-08-01'),
(30, 10, 20, 4342.25, '2026-08-03'),
(31, 2, 6, 4346.54, '2026-08-01'),
(32, 10, 1, 4190.66, '2026-08-03'),
(33, 7, 13, 4245.4, '2026-08-01'),
(34, 2, 19, 3154.17, '2026-08-03'),
(35, 4, 4, 3182.79, '2026-08-02'),
(36, 10, 4, 3613.59, '2026-08-03'),
(37, 1, 12, 2467.44, '2026-08-03'),
(38, 6, 3, 2350.93, '2026-08-02'),
(39, 1, 14, 3727.14, '2026-08-01'),
(40, 7, 12, 2914.8, '2026-08-02'),
(41, 3, 14, 916.2, '2026-08-03'),
(42, 5, 20, 3665.67, '2026-08-03'),
(43, 8, 15, 2044.75, '2026-08-03'),
(44, 10, 9, 1552.02, '2026-08-01'),
(45, 2, 9, 3985.1, '2026-08-01'),
(46, 8, 19, 2804.94, '2026-08-02'),
(47, 6, 1, 2300.23, '2026-08-02'),
(48, 3, 16, 1072.72, '2026-08-02'),
(49, 6, 9, 3979.39, '2026-08-03'),
(50, 5, 18, 194.16, '2026-08-01');

-- SPONSORS

INSERT INTO sponsors (sponsor_id, sponsor_name, contribution_amount) VALUES
(1, 'Safaricom PLC', 5000000),
(2, 'Tusker Lager', 3200000),
(3, 'Java House', 1500000),
(4, 'Kenya Airways', 4000000),
(5, 'Absa Bank Kenya', 2800000),
(6, 'Coca-Cola Kenya', 2200000),
(7, 'Jumia Kenya', 1200000),
(8, 'Nation Media Group', 900000);


-- STAGE_SPONSORS

INSERT INTO stage_sponsors (stage_id, sponsor_id) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 5),
(3, 3),
(4, 6),
(4, 1),
(5, 7),
(6, 8),
(3, 5);