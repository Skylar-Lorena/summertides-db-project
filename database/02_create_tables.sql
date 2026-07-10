CREATE TABLE Attendees (
    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone_number TEXT,
    age INTEGER
);


CREATE TABLE Artists (
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_name TEXT NOT NULL,
    genre TEXT,
    country TEXT
);


CREATE TABLE Stages (
    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stage_name TEXT NOT NULL,
    capacity INTEGER NOT NULL
);


CREATE TABLE Performances (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    performance_date DATE NOT NULL,
    performance_time TIME NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (stage_id) REFERENCES Stages(stage_id)
);


CREATE TABLE Attendees_Tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    attendee_id INTEGER NOT NULL,
    performance_id INTEGER NOT NULL,
    ticket_type TEXT NOT NULL,
    price REAL NOT NULL,
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id),
    FOREIGN KEY (performance_id) REFERENCES Performances(performance_id)
);


CREATE TABLE Sponsors (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT NOT NULL,
    contribution_amount REAL NOT NULL
);


CREATE TABLE Vendors (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name TEXT NOT NULL,
    product_type TEXT NOT NULL,
    total_sales REAL NOT NULL,
    rating REAL
);


CREATE TABLE Stage_Sponsors (
    stage_id INTEGER NOT NULL,
    sponsor_id INTEGER NOT NULL,
    PRIMARY KEY(stage_id, sponsor_id),
    FOREIGN KEY(stage_id) REFERENCES Stages(stage_id),
    FOREIGN KEY(sponsor_id) REFERENCES Sponsors(sponsor_id)
);