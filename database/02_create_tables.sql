<<<<<<< HEAD
-- ==========================================
-- 02: CORE TABLE STRUCTURES
-- ==========================================

=======
-- 1. STAGES TABLE 
>>>>>>> ft-db-architect
CREATE TABLE stages (
    stage_id INT GENERATED ALWAYS AS IDENTITY,
    stage_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT,
    PRIMARY KEY (stage_id)
);

CREATE TABLE artists (
    artist_id INT GENERATED ALWAYS AS IDENTITY,
    artist_name VARCHAR(100),
    genre VARCHAR(50),
    country VARCHAR(50),
    PRIMARY KEY (artist_id)
);

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

CREATE TABLE attendees (
    attendee_id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    PRIMARY KEY (attendee_id)
);

CREATE TABLE tickets (
    ticket_id INT GENERATED ALWAYS AS IDENTITY,
    attendee_id INT,
    ticket_tier VARCHAR(50),
    price NUMERIC(10, 2),
    purchase_date DATE,
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

CREATE TABLE vendors (
    vendor_id INT GENERATED ALWAYS AS IDENTITY,
    vendor_name VARCHAR(100),
    business_type VARCHAR(50),
    stall_number VARCHAR(10),
    PRIMARY KEY (vendor_id)
);