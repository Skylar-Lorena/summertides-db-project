-- Create the festival tables for artists, stages, sponsors, performances, attendees, vendors, and sales.
CREATE TABLE IF NOT EXISTS Artists (
  artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_name TEXT NOT NULL UNIQUE,
  genre TEXT NOT NULL,
  origin_country TEXT NOT NULL,
  primary_contact_email TEXT NOT NULL UNIQUE,
  performance_style TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Stages (
  stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
  stage_name TEXT NOT NULL UNIQUE,
  capacity INTEGER NOT NULL CHECK(capacity > 0),
  location TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Sponsors (
  sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  sponsor_name TEXT NOT NULL UNIQUE,
  sponsorship_level TEXT NOT NULL CHECK(sponsorship_level IN ('Platinum','Gold','Silver','Bronze')),
  contribution_amount REAL NOT NULL CHECK(contribution_amount >= 0),
  contact_email TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS StageSponsors (
  stage_sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  stage_id INTEGER NOT NULL,
  sponsor_id INTEGER NOT NULL,
  sponsorship_share INTEGER NOT NULL DEFAULT 100 CHECK(sponsorship_share BETWEEN 10 AND 100),
  FOREIGN KEY(stage_id) REFERENCES Stages(stage_id) ON DELETE CASCADE,
  FOREIGN KEY(sponsor_id) REFERENCES Sponsors(sponsor_id) ON DELETE CASCADE,
  UNIQUE(stage_id, sponsor_id)
);

CREATE TABLE IF NOT EXISTS Performances (
  performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_id INTEGER NOT NULL,
  stage_id INTEGER NOT NULL,
  performance_day TEXT NOT NULL CHECK(performance_day IN ('Friday','Saturday','Sunday')),
  start_time TEXT NOT NULL,
  end_time TEXT NOT NULL,
  is_headliner INTEGER NOT NULL DEFAULT 0 CHECK(is_headliner IN (0,1)),
  ticket_price REAL NOT NULL CHECK(ticket_price >= 0),
  FOREIGN KEY(artist_id) REFERENCES Artists(artist_id),
  FOREIGN KEY(stage_id) REFERENCES Stages(stage_id),
  UNIQUE(stage_id, performance_day, start_time)
);

CREATE TABLE IF NOT EXISTS Attendees (
  attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  phone TEXT NOT NULL UNIQUE,
  ticket_type TEXT NOT NULL CHECK(ticket_type IN ('General','VIP','Backstage','Student')),
  purchase_date TEXT NOT NULL DEFAULT (date('now')),
  ticket_price REAL NOT NULL CHECK(ticket_price >= 0),
  checked_in INTEGER NOT NULL DEFAULT 0 CHECK(checked_in IN (0,1))
);

CREATE TABLE IF NOT EXISTS Vendors (
  vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_name TEXT NOT NULL UNIQUE,
  category TEXT NOT NULL CHECK(category IN ('Food','Drink','Merch','Art')),
  booth_number TEXT NOT NULL UNIQUE,
  contact_person TEXT NOT NULL,
  booth_rent REAL NOT NULL CHECK(booth_rent >= 0)
);

CREATE TABLE IF NOT EXISTS VendorSales (
  sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_id INTEGER NOT NULL,
  sale_date TEXT NOT NULL,
  item_sold TEXT NOT NULL,
  quantity INTEGER NOT NULL CHECK(quantity > 0),
  sale_amount REAL NOT NULL CHECK(sale_amount >= 0),
  FOREIGN KEY(vendor_id) REFERENCES Vendors(vendor_id),
  UNIQUE(vendor_id, sale_date, item_sold)
);
