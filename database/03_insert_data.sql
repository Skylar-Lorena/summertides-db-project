-- Adds the festival edition.
INSERT INTO festivals (name, location, start_date, end_date) VALUES
('SummerTides Festival 2026', 'Diani Beach, Kwale, Kenya', '2026-12-18', '2026-12-20');


-- Adds the stages available during the festival.
INSERT INTO stages (festival_id, stage_name, capacity, stage_type) VALUES
(1, 'Ocean Main Stage', 8000, 'Live Music'),
(1, 'Sunset DJ Arena', 4500, 'DJ'),
(1, 'Coral Acoustic Stage', 1200, 'Acoustic'),
(1, 'Tide Art Pavilion', 700, 'Art');

INSERT INTO artists (artist_name, genre, country, contact_email) VALUES
('Sauti Sol', 'Afro-pop', 'Kenya', 'bookings@sautisol.example'),
('Nviiri the Storyteller', 'Afro-soul', 'Uganda', 'bookings@nviiri.example'),
('Bensoul', 'R&B', 'Kenya', 'management@bensoul.example'),
('DJ Pierra Makena', 'Afro-house', 'Kenya', 'bookings@pierrafm.example'),
('Nikita Kering', 'Afro-pop', 'Kenya', 'team@nikitakering.example'),
('Femi One', 'Hip-hop', 'Kenya', 'management@femione.example'),
('DJ Neptune', 'Afrobeats', 'Nigeria', 'bookings@djneptune.example'),
('Watendawili', 'Afro-fusion', 'Kenya', 'hello@watendawili.example');

-- Adds a conflict-free performance programme across all three days.
INSERT INTO performances (artist_id, stage_id, performance_date, start_time, end_time, set_type) VALUES
(1, 1, '2026-12-18', '20:30', '22:00', 'Headline'),
(2, 1, '2026-12-18', '18:45', '20:00', 'Live Set'),
(4, 2, '2026-12-18', '21:00', '23:00', 'DJ Set'),
(3, 3, '2026-12-18', '17:30', '18:30', 'Acoustic Set'),
(5, 1, '2026-12-19', '19:30', '20:45', 'Live Set'),
(6, 1, '2026-12-19', '21:15', '22:30', 'Headline'),
(7, 2, '2026-12-19', '20:00', '22:00', 'DJ Set'),
(8, 3, '2026-12-19', '16:30', '17:30', 'Acoustic Set'),
(3, 1, '2026-12-20', '18:30', '19:45', 'Live Set'),
(4, 2, '2026-12-20', '19:30', '21:30', 'DJ Set'),
(5, 3, '2026-12-20', '17:00', '18:00', 'Acoustic Set');

-- Adds festival attendees.
INSERT INTO attendees (first_name, last_name, email, phone, city) VALUES
('Amina', 'Hassan', 'amina.hassan@example.com', '+254700111222', 'Mombasa'),
('Brian', 'Otieno', 'brian.otieno@example.com', '+254711222333', 'Nairobi'),
('Chao', 'Mwakio', 'chao.mwakio@example.com', '+254722333444', 'Diani'),
('Diana', 'Wanjiru', 'diana.wanjiru@example.com', '+254733444555', 'Nairobi'),
('Eric', 'Kiptoo', 'eric.kiptoo@example.com', '+254744555666', 'Nakuru'),
('Faith', 'Nabwire', 'faith.nabwire@example.com', '+254755666777', 'Kampala'),
('George', 'Muli', 'george.muli@example.com', '+254766777888', 'Machakos'),
('Halima', 'Ali', 'halima.ali@example.com', '+254777888999', 'Mombasa');

-- Adds ticket categories and their prices.
INSERT INTO ticket_types (festival_id, ticket_name, price, access_description) VALUES
(1, 'General Admission', 4500.00, 'Entry to all general festival areas for one day.'),
(1, 'Weekend Pass', 11000.00, 'General entry for all three festival days.'),
(1, 'VIP', 18000.00, 'Three-day entry with VIP viewing deck and lounge access.'),
(1, 'Day VIP', 7500.00, 'One-day entry with VIP viewing deck access.');





