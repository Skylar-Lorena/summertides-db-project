
USE summertides;


-- Drop tables in reverse dependency order.

DROP TABLE IF EXISTS stage_sponsors;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS sponsors;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS stages;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS attendees;

-- 1. attendies
--
CREATE TABLE attendees (
    attendee_id       INT AUTO_INCREMENT PRIMARY KEY,
    first_name        VARCHAR(50)  NOT NULL,
    last_name         VARCHAR(50)  NOT NULL,
    email             VARCHAR(100) NOT NULL UNIQUE,
    phone             VARCHAR(20),                     -- nullable: some attendees skip this field
    age               INT          NOT NULL CHECK (age >= 0 AND age <= 120),
    city              VARCHAR(50)  NOT NULL,
    registration_date DATE         NOT NULL DEFAULT (CURRENT_DATE)
);

-- 2. artists
CREATE TABLE artists (
    artist_id   INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL,
    genre       VARCHAR(50)  NOT NULL,
    country     VARCHAR(50)  NOT NULL
);

-- 3. stages
CREATE TABLE stages (
    stage_id   INT AUTO_INCREMENT PRIMARY KEY,
    stage_name VARCHAR(100) NOT NULL UNIQUE,
    capacity   INT          NOT NULL CHECK (capacity > 0)
);

-- 4. performances
CREATE TABLE performances (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_id      INT  NOT NULL,
    stage_id       INT  NOT NULL,
    festival_day   DATE NOT NULL,
    start_time     TIME NOT NULL,
    end_time       TIME NOT NULL,
    CONSTRAINT fk_perf_artist FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_perf_stage  FOREIGN KEY (stage_id)  REFERENCES stages(stage_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_perf_times CHECK (end_time > start_time)
);

-- 5. tickets
CREATE TABLE tickets (
    ticket_id     INT AUTO_INCREMENT PRIMARY KEY,
    attendee_id   INT           NOT NULL,
    ticket_type   VARCHAR(20)   NOT NULL CHECK (ticket_type IN ('Regular','VIP','Backstage')),
    price         DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    purchase_date DATE          NOT NULL,
    festival_day  DATE          NOT NULL,
    CONSTRAINT fk_ticket_attendee FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
        ON DELETE CASCADE
);

-- 6. vendors

CREATE TABLE vendors (
    vendor_id   INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100)  NOT NULL,
    category    VARCHAR(50)   NOT NULL,
    rating      DECIMAL(2,1)  NOT NULL DEFAULT 3.0 CHECK (rating >= 0 AND rating <= 5)
);

-- 7. sales

CREATE TABLE sales (
    sale_id     INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id   INT           NOT NULL,
    attendee_id INT           NOT NULL,
    sale_amount DECIMAL(10,2) NOT NULL CHECK (sale_amount > 0),
    sale_date   DATE          NOT NULL,
    CONSTRAINT fk_sale_vendor   FOREIGN KEY (vendor_id)   REFERENCES vendors(vendor_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_sale_attendee FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
        ON DELETE CASCADE
);

-- 8. sponsors

CREATE TABLE sponsors (
    sponsor_id           INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name         VARCHAR(100)   NOT NULL UNIQUE,
    contribution_amount  DECIMAL(12,2)  NOT NULL CHECK (contribution_amount >= 0)
);

-- 9. stage_sponsors

CREATE TABLE stage_sponsors (
    stage_id   INT NOT NULL,
    sponsor_id INT NOT NULL,
    PRIMARY KEY (stage_id, sponsor_id),
    CONSTRAINT fk_ss_stage   FOREIGN KEY (stage_id)   REFERENCES stages(stage_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_ss_sponsor FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsor_id)
        ON DELETE CASCADE
);