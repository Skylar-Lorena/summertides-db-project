-- ============================================
-- SummerTides Festival Database
-- File: 02_create_tables.sql
-- Author: Person 2 - SQL Developer
-- ============================================

USE summertides_festival;

-- 1. Festivals
CREATE TABLE festivals (
    festival_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- 2. Stages
CREATE TABLE stages (
    stage_id INT AUTO_INCREMENT PRIMARY KEY,
    festival_id INT NOT NULL,
    stage_name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    stage_type ENUM('indoor', 'outdoor') NOT NULL,

    FOREIGN KEY (festival_id)
        REFERENCES festivals(festival_id)
);

-- 3. Artists
CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    country_origin VARCHAR(50) NOT NULL
);

-- 4. Performances
CREATE TABLE performances (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    stage_id INT NOT NULL,
    performance_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (artist_id)
        REFERENCES artists(artist_id),

    FOREIGN KEY (stage_id)
        REFERENCES stages(stage_id)
);

-- 5. Attendees
CREATE TABLE attendees (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    country VARCHAR(50) NOT NULL
);

-- 6. Tickets
CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    performance_id INT NOT NULL,
    attendee_id INT NOT NULL,
    ticket_type ENUM('VIP','Regular','Early Bird') NOT NULL,
    purchase_date DATE NOT NULL,
    price_paid DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (performance_id)
        REFERENCES performances(performance_id),

    FOREIGN KEY (attendee_id)
        REFERENCES attendees(attendee_id)
);

-- 7. Vendors
CREATE TABLE vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    vendor_type ENUM('food','drink','merchandise') NOT NULL,
    contact_email VARCHAR(100)
);

-- 8. Vendor Sales
CREATE TABLE vendors_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT NOT NULL,
    stage_id INT NOT NULL,
    sale_date DATE NOT NULL,
    amount_sold DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (vendor_id)
        REFERENCES vendors(vendor_id),

    FOREIGN KEY (stage_id)
        REFERENCES stages(stage_id)
);

-- 9. Sponsors
CREATE TABLE sponsors (
    sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(100) NOT NULL,
    sponsorship_amount DECIMAL(12,2) NOT NULL,
    sponsorship_level ENUM('Platinum','Gold','Silver') NOT NULL
);

-- 10. Stage Sponsors
CREATE TABLE stage_sponsors (
    stage_sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    stage_id INT NOT NULL,
    sponsor_id INT NOT NULL,

    UNIQUE(stage_id, sponsor_id),

    FOREIGN KEY (stage_id)
        REFERENCES stages(stage_id),

    FOREIGN KEY (sponsor_id)
        REFERENCES sponsors(sponsor_id)
);
