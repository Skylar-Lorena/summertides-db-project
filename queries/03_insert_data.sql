Summertides Festival (Kenya) - Extended Schema & Sample Data
-- =========================================================
 
ALTER TABLE attendees ADD COLUMN phone VARCHAR;
ALTER TABLE attendees ADD COLUMN age INTEGER;
ALTER TABLE attendees ADD COLUMN city VARCHAR;
ALTER TABLE tickets ADD COLUMN price DECIMAL;
ALTER TABLE tickets ADD COLUMN festival_day DATE;
ALTER TABLE performances ADD COLUMN festival_day DATE;
ALTER TABLE vendors ADD COLUMN rating DECIMAL;
 
-- ---------------------------------------------------
-- Attendees (20)
-- 3 attendees left with NULL phone on purpose, for the
-- "phone number missing" filtering exercise.
-- ---------------------------------------------------
INSERT INTO attendees (first_name, last_name, email, phone, age, city) VALUES
('Wanjiru', 'Kamau', 'wanjiru.kamau@gmail.com', '0722111222', 24, 'Nairobi'),
('Brian', 'Otieno', 'brian.otieno@gmail.com', '0733222333', 29, 'Kisumu'),
('Amina', 'Hassan', 'amina.hassan@gmail.com', NULL, 22, 'Mombasa'),
('Kevin', 'Mwangi', 'kevin.mwangi@gmail.com', '0711333444', 31, 'Nairobi'),
('Faith', 'Chebet', 'faith.chebet@gmail.com', '0700444555', 19, 'Eldoret'),
('David', 'Kiptoo', 'david.kiptoo@gmail.com', '0722555666', 35, 'Nakuru'),
('Grace', 'Wambui', 'grace.wambui@gmail.com', NULL, 27, 'Nairobi'),
('Peter', 'Njoroge', 'peter.njoroge@gmail.com', '0733666777', 41, 'Thika'),
('Mercy', 'Adhiambo', 'mercy.adhiambo@gmail.com', '0711777888', 23, 'Kisumu'),
('Samuel', 'Kimani', 'samuel.kimani@gmail.com', '0700888999', 26, 'Nairobi'),
('Linet', 'Achieng', 'linet.achieng@gmail.com', '0722999000', 30, 'Mombasa'),
('John', 'Mutua', 'john.mutua@gmail.com', NULL, 45, 'Machakos'),
('Esther', 'Nyambura', 'esther.nyambura@gmail.com', '0733000111', 21, 'Nairobi'),
('Collins', 'Odhiambo', 'collins.odhiambo@gmail.com', '0711222111', 33, 'Kisumu'),
('Ann', 'Wairimu', 'ann.wairimu@gmail.com', '0700333222', 28, 'Nakuru'),
('Moses', 'Barasa', 'moses.barasa@gmail.com', '0722444333', 37, 'Eldoret'),
('Sarah', 'Njeri', 'sarah.njeri@gmail.com', '0733555444', 24, 'Nairobi'),
('Dennis', 'Kiplagat', 'dennis.kiplagat@gmail.com', '0711666555', 29, 'Malindi'),
('Purity', 'Wangui', 'purity.wangui@gmail.com', '0700777666', 20, 'Nairobi'),
('Victor', 'Omondi', 'victor.omondi@gmail.com', '0722888777', 32, 'Mombasa');
 
 -- ---------------------------------------------------
-- Artists (15)
-- ---------------------------------------------------
INSERT INTO artists (name, genre, country) VALUES
('Sauti Sol', 'Afrobeats', 'Kenya'),
('Nyashinski', 'Hip Hop', 'Kenya'),
('Bien', 'RnB', 'Kenya'),
('Diamond Platnumz', 'Bongo Flava', 'Tanzania'),
('Burna Boy', 'Afrobeats', 'Nigeria'),
('Wizkid', 'Afrobeats', 'Nigeria'),
('Eddy Kenzo', 'Afrobeats', 'Uganda'),
('Sho Madjozi', 'Amapiano', 'South Africa'),
('Femi One', 'Gengetone', 'Kenya'),
('Khaligraph Jones', 'Hip Hop', 'Kenya'),
('Suzanna Owiyo', 'Benga', 'Kenya'),
('Protoje', 'Reggae', 'Jamaica'),
('Black Coffee', 'EDM', 'South Africa'),
('Vybz Kartel', 'Dancehall', 'Jamaica'),
('Ayra Starr', 'Afrobeats', 'Nigeria');
 
-- ---------------------------------------------------
-- Stages (6)
-- ---------------------------------------------------
INSERT INTO stages (name, capacity, location) VALUES
('Main Stage', 8000, 'Beachfront'),
('Sunset Stage', 4000, 'North Beach'),
('Beach Arena', 6000, 'South Beach'),
('Acoustic Tent', 1500, 'Garden Area'),
('Electronic Dome', 3000, 'East Field'),
('Cultural Stage', 2000, 'Village Square');
 
-- ---------------------------------------------------
-- Vendors (10) - rating added via patch above
-- ---------------------------------------------------
INSERT INTO vendors (name, category, location, rating) VALUES
('Coastal Grill', 'Food', 'Main Stage Row', 4.5),
('Mama Oliech Eats', 'Food', 'Main Stage Row', 4.8),
('Tropical Juice Bar', 'Beverages', 'Sunset Stage Row', 4.2),
('Craft Beer Co', 'Beverages', 'Beach Arena Row', 4.0),
('Kitenge Fashion', 'Merchandise', 'Village Square', 4.6),
('Beach Art Gallery', 'Art', 'Garden Area', 4.9),
('Nyama Choma Corner', 'Food', 'Beach Arena Row', 4.3),
('SummerTides Merch', 'Merchandise', 'Main Stage Row', 4.1),
('Chapati Junction', 'Food', 'Village Square', 3.8),
('Cold Coffee Cart', 'Beverages', 'East Field', 4.4);
 
-- ---------------------------------------------------
-- Sponsors (8)
-- ---------------------------------------------------
INSERT INTO sponsors (name, contribution_amount) VALUES
('Safaricom', 5000000.00),
('KCB Bank', 3000000.00),
('Tusker', 2500000.00),
('Coca-Cola', 2000000.00),
('Airtel Kenya', 1500000.00),
('Java House', 1000000.00),
('Absa Bank', 1800000.00),
('Betika', 1200000.00);