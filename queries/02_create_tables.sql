// STAGES //
CREATE TABLE stages (
    stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(100),
    capacity INT NOT NULL,
    CONSTRAINT chk_stage_capacity CHECK (capacity > 0)
);

// ARTISTS //
CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    contact_person VARCHAR(100) 
);

// ATTENDEES //
CREATE TABLE attendees (
    attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) 
);

// VENDORS //
CREATE TABLE vendors (
    vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_name VARCHAR(100) NOT NULL,
    vendor_type VARCHAR(50)
);

// SPONSORS //
CREATE TABLE sponsors (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name VARCHAR(100) NOT NULL,
    contribution_amount DECIMAL(12, 2),
    CONSTRAINT chk_contribution_amount CHECK (contribution_amount >= 0)
);

// PERFORMANCES //
CREATE TABLE performances (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_id INT NOT NULL,
    stage_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    CONSTRAINT fk_performance_artist FOREIGN KEY (artist_id) REFERENCES artists(artist_id), 
    CONSTRAINT fk_performance_stage FOREIGN KEY (stage_id) REFERENCES stages(stage_id), 
    CONSTRAINT chk_performance_time CHECK (end_time > start_time)
);

// TICKETS //
CREATE TABLE tickets (
    ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    attendee_id INT NOT NULL,
    ticket_type VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    purchase_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
    CONSTRAINT chk_ticket_price CHECK (price >= 0), 
    CONSTRAINT chk_ticket_type CHECK (ticket_type IN ('Regular', 'VIP', 'student')),
    CONSTRAINT fk_ticket_attendee FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

//  SALES //
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL, 
    sale_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT chk_sale_quantity CHECK (quantity > 0),
    CONSTRAINT fk_sale_vendor FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

// STAGE SPONSORSHIPS //
CREATE TABLE stage_sponsorships (
    sponsorship_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    stage_id INT NOT NULL,
    sponsor_id INT NOT NULL,
    funding_allocated DECIMAL(10, 2) NOT NULL,
    CONSTRAINT chk_funding CHECK (funding_allocated >= 0), 
    CONSTRAINT fk_sponsorship_sponsor FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsor_id), 
    CONSTRAINT fk_sponsorship_stage FOREIGN KEY (stage_id) REFERENCES stages(stage_id)
);






