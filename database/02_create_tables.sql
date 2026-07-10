PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS stage_sponsors;
DROP TABLE IF EXISTS sponsors;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS stages;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS attendees;

CREATE TABLE attendees (
    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT UNIQUE,
    age INTEGER NOT NULL CHECK (age BETWEEN 0 AND 120),
    city TEXT NOT NULL,
    registration_date TEXT NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_code TEXT NOT NULL UNIQUE,
    attendee_id INTEGER NOT NULL REFERENCES attendees(attendee_id) ON DELETE CASCADE,
    ticket_type TEXT NOT NULL CHECK (ticket_type IN ('General', 'VIP', 'Weekend', 'Day Pass')),
    price REAL NOT NULL CHECK (price >= 0),
    purchase_date TEXT NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_name TEXT NOT NULL,
    genre TEXT NOT NULL,
    country TEXT NOT NULL,
    is_local INTEGER NOT NULL DEFAULT 1 CHECK (is_local IN (0, 1))
);

CREATE TABLE stages (
    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_name TEXT NOT NULL UNIQUE,
    location TEXT NOT NULL,
    capacity INTEGER NOT NULL CHECK (capacity > 0)
);

CREATE TABLE performances (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_id INTEGER NOT NULL REFERENCES artists(artist_id) ON DELETE CASCADE,
    stage_id INTEGER NOT NULL REFERENCES stages(stage_id) ON DELETE CASCADE,
    performance_date TEXT NOT NULL,
    start_time TEXT NOT NULL,
    end_time TEXT NOT NULL,
    festival_day TEXT NOT NULL CHECK (festival_day IN ('Day 1', 'Day 2', 'Day 3'))
);

CREATE TABLE vendors (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name TEXT NOT NULL,
    category TEXT NOT NULL,
    rating REAL NOT NULL CHECK (rating BETWEEN 0 AND 5),
    contact_person TEXT NOT NULL
);

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_id INTEGER NOT NULL REFERENCES tickets(ticket_id) ON DELETE CASCADE,
    vendor_id INTEGER NOT NULL REFERENCES vendors(vendor_id) ON DELETE CASCADE,
    sale_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    quantity INTEGER NOT NULL DEFAULT 1 CHECK (quantity > 0),
    amount REAL NOT NULL CHECK (amount >= 0)
);

CREATE TABLE sponsors (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT NOT NULL UNIQUE,
    industry TEXT NOT NULL,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0)
);

CREATE TABLE stage_sponsors (
    stage_sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_id INTEGER NOT NULL REFERENCES stages(stage_id) ON DELETE CASCADE,
    sponsor_id INTEGER NOT NULL REFERENCES sponsors(sponsor_id) ON DELETE CASCADE,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0),
    UNIQUE(stage_id, sponsor_id)
);

SELECT 'Tables created successfully.' AS status;
