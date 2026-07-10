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
 