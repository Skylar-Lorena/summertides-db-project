-- ==========================================
-- 02: CORE TABLE STRUCTURES
-- ==========================================

-- 1. STAGES TABLE (Independent base table)
CREATE TABLE stages (
    stage_id INT GENERATED ALWAYS AS IDENTITY,
    stage_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT,
    PRIMARY KEY (stage_id)
);

-- 2. ARTISTS TABLE (Independent base table)
CREATE TABLE artists (
    artist_id INT GENERATED ALWAYS AS IDENTITY,
    artist_name VARCHAR(100),
    genre VARCHAR(50),
    country VARCHAR(50),
    PRIMARY KEY (artist_id)
);

-- 3. PERFORMANCES TABLE (Links Artists and Stages)
CREATE TABLE performances (
    performance_id INT GENERATED ALWAYS AS IDENTITY,
    artist_id INT,
    stage_id INT,
    performance_date DATE,
    start_time TIME,
    PRIMARY KEY (performance_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (stage_id) REFERENCES stages(stage_id)
);

-- 4. ATTENDEES TABLE (Independent base table)
CREATE TABLE attendees (
    attendee_id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    PRIMARY KEY (attendee_id)
);

-- 5. TICKETS TABLE (Links to Attendees)
CREATE TABLE tickets (
    ticket_id INT GENERATED ALWAYS AS IDENTITY,
    attendee_id INT,
    ticket_tier VARCHAR(50), -- e.g., VIP, Regular, Early Bird
    price NUMERIC(10, 2),
    purchase_date DATE,
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

-- 6. VENDORS TABLE (Independent base table for festival businesses)
CREATE TABLE vendors (
    vendor_id INT GENERATED ALWAYS AS IDENTITY,
    vendor_name VARCHAR(100),
    business_type VARCHAR(50), -- e.g., Food, Drinks, Merchandise
    stall_number VARCHAR(10),
    PRIMARY KEY (vendor_id)
);