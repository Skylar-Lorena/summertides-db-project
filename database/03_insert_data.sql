PRAGMA foreign_keys = ON;



-- =====================================================
-- INSERT ATTENDEES
-- =====================================================

INSERT INTO attendees
(first_name, last_name, email, phone, age, city)
VALUES

('Amina','Hassan','amina@gmail.com','0711000001',24,'Nairobi'),
('Brian','Otieno','brian@gmail.com','0711000002',30,'Mombasa'),
('Cynthia','Mwangi','cynthia@gmail.com','0711000003',27,'Nakuru'),
('David','Kamau','david@gmail.com','0711000004',35,'Nairobi'),
('Emily','Wanjiku','emily@gmail.com','0711000005',22,'Kisumu'),
('Faith','Njeri','faith@gmail.com','0711000006',29,'Nairobi'),
('George','Maina','george@gmail.com','0711000007',31,'Eldoret'),
('Hannah','Achieng','hannah@gmail.com','0711000008',26,'Kisumu'),
('Ian','Mutua','ian@gmail.com','0711000009',40,'Nairobi'),
('Jane','Atieno','jane@gmail.com','0711000010',23,'Mombasa'),
('Kevin','Ouma','kevin@gmail.com','0711000011',28,'Nairobi'),
('Lucy','Chebet','lucy@gmail.com','0711000012',34,'Eldoret'),
('Mark','Kiptoo','mark@gmail.com','0711000013',36,'Nakuru'),
('Nancy','Wambui','nancy@gmail.com','0711000014',25,'Nairobi'),
('Oscar','Karanja','oscar@gmail.com','0711000015',32,'Thika'),
('Patricia','Akinyi','patricia@gmail.com','0711000016',21,'Kisumu'),
('Queen','Namusoke','queen@gmail.com','0711000017',38,'Nairobi'),
('Robert','Muli','robert@gmail.com','0711000018',45,'Machakos'),
('Sarah','Wairimu','sarah@gmail.com','0711000019',27,'Nakuru'),
('Tom','Barasa','tom@gmail.com','0711000020',33,'Kakamega');



-- =====================================================
-- INSERT ARTISTS
-- =====================================================

INSERT INTO artists
(artist_name, genre, country)
VALUES

('Sauti Sol','Afro Pop','Kenya'),
('Bien','Afro Fusion','Kenya'),
('Nviiri The Storyteller','Alternative','Kenya'),
('Bensoul','Soul','Kenya'),
('Nyashinski','Hip Hop','Kenya'),
('Khaligraph Jones','Hip Hop','Kenya'),
('Diamond Platnumz','Bongo Flava','Tanzania'),
('Rayvanny','Bongo Flava','Tanzania'),
('Zuchu','Pop','Tanzania'),
('Wizkid','Afrobeats','Nigeria'),
('Burna Boy','Afrobeats','Nigeria'),
('Alicia Keys','Pop','USA'),
('DJ Joe','Electronic','Kenya'),
('DJ Adrian','Electronic','South Africa'),
('DJ Luna','Electronic','Uganda');



-- =====================================================
-- INSERT STAGES
-- =====================================================

INSERT INTO stages
(stage_name, location)
VALUES

('Main Beach Stage','Beach Front'),
('Ocean DJ Stage','North Beach'),
('Sunset Stage','West Area'),
('Art Stage','Exhibition Area'),
('Food Court Stage','Food Zone'),
('VIP Lounge Stage','VIP Section');



-- =====================================================
-- INSERT PERFORMANCES
-- =====================================================

INSERT INTO performances
(artist_id, stage_id, performance_date, start_time, end_time)
VALUES

(1,1,'2026-08-01','18:00','19:00'),
(2,1,'2026-08-01','19:00','20:00'),
(3,2,'2026-08-01','20:00','21:00'),
(4,3,'2026-08-01','17:00','18:00'),
(5,1,'2026-08-01','21:00','22:00'),

(6,2,'2026-08-02','18:00','19:00'),
(7,1,'2026-08-02','19:00','20:00'),
(8,3,'2026-08-02','20:00','21:00'),
(9,4,'2026-08-02','16:00','17:00'),
(10,1,'2026-08-02','21:00','22:00'),

(11,1,'2026-08-03','18:00','19:00'),
(12,6,'2026-08-03','19:00','20:00'),
(13,2,'2026-08-03','20:00','21:00'),
(14,3,'2026-08-03','17:00','18:00'),
(15,5,'2026-08-03','21:00','22:00'),

(1,2,'2026-08-02','14:00','15:00'),
(2,3,'2026-08-02','15:00','16:00'),
(3,4,'2026-08-03','14:00','15:00'),
(4,5,'2026-08-03','15:00','16:00'),
(5,6,'2026-08-03','16:00','17:00'),

(6,1,'2026-08-01','14:00','15:00'),
(7,2,'2026-08-01','15:00','16:00'),
(8,3,'2026-08-01','16:00','17:00'),
(9,4,'2026-08-02','12:00','13:00'),
(10,5,'2026-08-02','13:00','14:00'),

(11,6,'2026-08-02','14:00','15:00'),
(12,1,'2026-08-03','12:00','13:00'),
(13,2,'2026-08-03','13:00','14:00'),
(14,3,'2026-08-03','14:00','15:00'),
(15,4,'2026-08-03','15:00','16:00');



-- =====================================================
-- INSERT TICKETS
-- =====================================================

INSERT INTO tickets
(attendee_id,ticket_type,price)
VALUES

(1,'VIP',8000),
(2,'Regular',3000),
(3,'VIP',8000),
(4,'Regular',3000),
(5,'Student',1500),
(6,'VIP',8000),
(7,'Regular',3000),
(8,'Student',1500),
(9,'VIP',8000),
(10,'Regular',3000),
(11,'VIP',8000),
(12,'Regular',3000),
(13,'Student',1500),
(14,'VIP',8000),
(15,'Regular',3000),
(16,'Student',1500),
(17,'VIP',8000),
(18,'Regular',3000),
(19,'VIP',8000),
(1, 'Student', 1500),
(2, 'VIP', 8000),
(3, 'Regular', 3000),
(4, 'Student', 1500),
(5, 'VIP', 8000),

(6, 'Regular', 3000),
(7, 'VIP', 8000),
(8, 'Regular', 3000),
(9, 'Student', 1500),
(10, 'VIP', 8000),

(11, 'Regular', 3000),
(12, 'Student', 1500),
(13, 'VIP', 8000),
(14, 'Regular', 3000),
(15, 'Student', 1500),

(16, 'VIP', 8000),
(17, 'Regular', 3000),
(18, 'Student', 1500),
(19, 'VIP', 8000),
(20, 'Regular', 3000),
(20,'Regular',3000);



-- =====================================================
-- INSERT VENDORS
-- =====================================================

INSERT INTO vendors
(vendor_name,category,rating)
VALUES

('Beach Bites','Food',4.8),
('Ocean Drinks','Beverages',4.5),
('African Crafts','Art',4.7),
('Tropical Foods','Food',4.2),
('Sweet Treats','Desserts',4.0),
('Island Fashion','Clothing',4.6),
('Fresh Juice Hub','Beverages',4.9),
('Seafood Corner','Food',4.3),
('Art Paradise','Art',4.1),
('Coastal Coffee', 'Beverages', 4.6);



-- =====================================================
-- INSERT SALES
-- =====================================================

INSERT INTO sales
(vendor_id,attendee_id,amount)
VALUES

(1,1,1500),(2,2,1000),(3,3,2500),
(4,4,2000),(5,5,800),(6,6,3500),
(7,7,1200),(8,8,2200),(9,9,3000),
(10,10,1800),

(1,11,1600),(2,12,900),(3,13,2700),
(4,14,2100),(5,15,700),(6,16,3300),
(7,17,1300),(8,18,2400),(9,19,2800),
(10,20,1900),

(1,2,1500),(2,3,1200),(3,4,2600),
(4,5,2000),(5,6,900),(6,7,3500),
(7,8,1100),(8,9,2300),(9,10,3100),
(10,11,2000),

(1,12,1700),(2,13,1000),(3,14,2900),
(4,15,2200),(5,16,850),(6,17,3600),
(7,18,1400),(8,19,2500),
(9,20,3200),
(10,1,2100),
(11, 3, 1750),
(12, 5, 950),
(13, 7, 2850),
(14, 9, 1400),
(15, 11, 3200),

(11, 13, 1650),
(12, 15, 1200),
(13, 17, 2600),
(14, 19, 1500),
(15, 20, 3400);



-- =====================================================
-- INSERT SPONSORS
-- =====================================================

INSERT INTO sponsors
(sponsor_name, contribution)
VALUES

('Safaricom',5000000),
('Coca Cola',4000000),
('Airtel',3000000),
('Kenya Airways',2500000),
('Tusker',2000000),
('Equity Bank',3500000),
('Samsung',4500000),
('KCB Bank', 3200000),



-- =====================================================
-- INSERT STAGE SPONSORS
-- =====================================================

INSERT INTO stage_sponsors
(stage_id,sponsor_id)
VALUES

(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(1,7),
(2,8);