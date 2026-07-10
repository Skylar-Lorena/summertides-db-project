-- This script builds the festival database schema for the assessment.
-- It creates all required tables and links them with keys and constraints to model the domain accurately.
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS stage_sponsors;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS sponsors;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS stages;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS attendees;

CREATE TABLE attendees (
    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    city TEXT NOT NULL,
    age INTEGER NOT NULL CHECK (age >= 0),
    registration_date TEXT NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_type TEXT NOT NULL CHECK (ticket_type IN ('General', 'VIP', 'Weekend Pass', 'Student')),
    price REAL NOT NULL CHECK (price >= 0),
    purchase_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    attendee_id INTEGER NOT NULL,
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
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
    performance_name TEXT NOT NULL,
    festival_day TEXT NOT NULL CHECK (festival_day IN ('Day 1', 'Day 2', 'Day 3')),
    performance_time TEXT NOT NULL,
    artist_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id) ON DELETE CASCADE,
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE
);

CREATE TABLE vendors (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name TEXT NOT NULL,
    category TEXT NOT NULL,
    contact_email TEXT NOT NULL UNIQUE,
    rating REAL NOT NULL CHECK (rating BETWEEN 0 AND 5)
);

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sale_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    amount REAL NOT NULL CHECK (amount >= 0),
    vendor_id INTEGER NOT NULL,
    attendee_id INTEGER NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE,
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);

CREATE TABLE sponsors (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT NOT NULL,
    industry TEXT NOT NULL,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0)
);

CREATE TABLE stage_sponsors (
    stage_sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    UNIQUE (stage_id, sponsor_id),
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE,
    FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsor_id) ON DELETE CASCADE
);

SELECT 'Tables created successfully' AS status;
