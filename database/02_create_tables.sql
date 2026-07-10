PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS attendees (
    attendee_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    city TEXT NOT NULL,
    age INTEGER NOT NULL CHECK (age >= 0),
    registration_date TEXT NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS tickets (
    ticket_id INTEGER PRIMARY KEY,
    attendee_id INTEGER NOT NULL,
    ticket_type TEXT NOT NULL CHECK (ticket_type IN ('General', 'VIP', 'Weekend Pass')),
    price REAL NOT NULL CHECK (price >= 0),
    purchase_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    ticket_code TEXT NOT NULL UNIQUE,
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS artists (
    artist_id INTEGER PRIMARY KEY,
    artist_name TEXT NOT NULL,
    genre TEXT NOT NULL,
    country TEXT NOT NULL,
    is_local INTEGER NOT NULL DEFAULT 1 CHECK (is_local IN (0, 1))
);

CREATE TABLE IF NOT EXISTS stages (
    stage_id INTEGER PRIMARY KEY,
    stage_name TEXT NOT NULL UNIQUE,
    location TEXT NOT NULL,
    capacity INTEGER NOT NULL CHECK (capacity > 0)
);

CREATE TABLE IF NOT EXISTS performances (
    performance_id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    performance_date TEXT NOT NULL,
    start_time TEXT NOT NULL,
    end_time TEXT NOT NULL,
    festival_day TEXT NOT NULL CHECK (festival_day IN ('Day 1', 'Day 2', 'Day 3')),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id) ON DELETE CASCADE,
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS vendors (
    vendor_id INTEGER PRIMARY KEY,
    vendor_name TEXT NOT NULL,
    category TEXT NOT NULL,
    rating REAL NOT NULL CHECK (rating BETWEEN 0 AND 5),
    contact_email TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS sales (
    sale_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    attendee_id INTEGER NOT NULL,
    sale_date TEXT NOT NULL DEFAULT CURRENT_DATE,
    amount REAL NOT NULL CHECK (amount >= 0),
    item_sold TEXT NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE,
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS sponsors (
    sponsor_id INTEGER PRIMARY KEY,
    sponsor_name TEXT NOT NULL UNIQUE,
    industry TEXT NOT NULL,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0)
);

CREATE TABLE IF NOT EXISTS stage_sponsors (
    stage_sponsor_id INTEGER PRIMARY KEY,
    stage_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    sponsorship_amount REAL NOT NULL CHECK (sponsorship_amount >= 0),
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE,
    FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsor_id) ON DELETE CASCADE,
    UNIQUE (stage_id, sponsor_id)
);