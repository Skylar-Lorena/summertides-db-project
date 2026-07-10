
-- =====================
-- ATTENDEES
-- =====================

INSERT INTO Attendees (first_name, last_name, email, phone_number, age) VALUES
('John', 'Kamau', 'john.kamau@gmail.com', '0721221181', 25),
('Jane', 'Wanjiku', 'jane.wanjiku@gmail.com', '0721221182', 30),
('Mary', 'Wambui', 'mary.wambui@gmail.com', '0721221183', 35),
('Peter', 'Otieno', 'peter.otieno@gmail.com', '0721221184', 40),
('Lucy', 'Achieng', 'lucy.achieng@gmail.com', '0721221185', 45),
('David', 'Omondi', 'david.omondi@gmail.com', '0721221186', 50),
('Grace', 'Njeri', 'grace.njeri@gmail.com', '0721221187', 55),
('Michael', 'Mwangi', 'michael.mwangi@gmail.com', '0721221188', 60),
('Faith', 'Akinyi', 'faith.akinyi@gmail.com', '0721221189', 25),
('James', 'Kiptoo', 'james.kiptoo@gmail.com', '0721221190', 30),
('Alice', 'Naliaka', 'alice.naliaka@gmail.com', '0721221191', 35),
('Robert', 'Ochieng', 'robert.ochieng@gmail.com', '0721221192', 40),
('Catherine', 'Awuor', 'catherine.awuor@gmail.com', '0721221193', 45),
('Daniel', 'Karanja', 'daniel.karanja@gmail.com', '0721221194', 50);


-- =====================
-- ARTISTS
-- =====================

INSERT INTO Artists (artist_name, genre, country) VALUES
('Sauti Sol', 'Afro-pop', 'Kenya'),
('Diamond Platnumz', 'Bongo Flava', 'Tanzania'),
('Wizkid', 'Afrobeats', 'Nigeria'),
('Tiwa Savage', 'Afrobeats', 'Nigeria'),
('Otile Brown', 'Bongo Flava', 'Kenya'),
('Nasty C', 'Hip Hop', 'South Africa'),
('Yemi Alade', 'Afropop', 'Nigeria'),
('Fally Ipupa', 'Rumba', 'DR Congo'),
('Shatta Wale', 'Dancehall', 'Ghana'),
('Burna Boy', 'Afrobeats', 'Nigeria'),
('Davido', 'Afrobeats', 'Nigeria'),
('Olamide', 'Hip Hop', 'Nigeria');


-- =====================
-- STAGES
-- =====================

INSERT INTO Stages (stage_name, capacity) VALUES
('Main Stage', 1000),
('Secondary Stage', 3000),
('Tertiary Stage', 4000),
('Regular Stage', 5000),
('VIP Stage', 5000),
('VVIP Stage', 6000);


-- =====================
-- PERFORMANCES
-- =====================

INSERT INTO Performances
(artist_id, stage_id, performance_date, performance_time)
VALUES
(1,1,'2025-07-01','08:00:00'),
(2,2,'2025-07-01','09:00:00'),
(3,3,'2025-07-02','10:00:00'),
(4,4,'2025-07-02','11:00:00'),
(5,5,'2025-07-03','12:30:00'),
(6,6,'2025-07-03','14:30:00'),
(7,1,'2025-07-04','16:00:00'),
(8,2,'2025-07-04','18:00:00'),
(9,3,'2025-07-05','20:00:00'),
(10,4,'2025-07-05','22:00:00'),
(11,5,'2025-07-06','23:00:00'),
(12,6,'2025-07-06','23:30:00');


-- =====================
-- TICKETS
-- =====================

INSERT INTO Attendees_Tickets
(attendee_id, performance_id, ticket_type, price)
VALUES
(1,1,'Regular',5000),
(2,2,'VIP',10000),
(3,3,'VVIP',15000),
(4,4,'Regular',5000),
(5,5,'VIP',10000),
(6,6,'VVIP',15000),
(7,7,'Regular',5000),
(8,8,'VIP',10000);


-- =====================
-- SPONSORS
-- =====================

INSERT INTO Sponsors
(sponsor_name, contribution_amount)
VALUES
('Coca-Cola',100000),
('Safaricom',150000),
('Airtel',50000),
('Samsung',200000),
('Pepsi',80000),
('MTN',120000);


-- =====================
-- VENDORS
-- =====================

INSERT INTO Vendors
(vendor_name, product_type, total_sales, rating)
VALUES
('Foodies Delight','Food',50000,4.5),
('Drink Masters','Beverages',40000,4.2),
('Snack Shack','Snacks',30000,4.0),
('Merchandise Hub','Merchandise',60000,4.5),
('Artisan Crafts','Crafts',20000,4.3),
('Tech Gadgets','Electronics',10000,4.1),
('Fashion Fiesta','Clothing',70000,4.4);


-- =====================
-- STAGE SPONSORS
-- =====================

INSERT INTO Stage_Sponsors (stage_id, sponsor_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(1,2),
(2,3),
(3,4),
(4,5);