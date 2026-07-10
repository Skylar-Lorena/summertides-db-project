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



