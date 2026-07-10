-- 1. STAGES TABLE 
CREATE TABLE stages (
    stage_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    stage_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT
);

-- 2. ARTISTS TABLE
CREATE TABLE artists (
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100),
    genre VARCHAR(50),
    country VARCHAR(100)
);

-- 3. PERFORMANCES TABLE
CREATE TABLE performances (
    performance_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_id INT,
    stage_id INT,
    performance_date DATE,
    start_time TIME,
    end_time TIME,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id)
);

-- 4. ATTENDEES TABLE
CREATE TABLE attendees (
    attendee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- 5. TICKETS TABLE
CREATE TABLE tickets (
    ticket_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    attendee_id INT,
    ticket_tier VARCHAR(50),
    price DECIMAL(10,2),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

-- 6. VENDORS TABLE
CREATE TABLE vendors (
    vendor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100),
    business_type VARCHAR(50),
    stall_number VARCHAR(10)
);
