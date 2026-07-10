CREATE TABLE attendees (
    attendee_id       SERIAL PRIMARY KEY,
    first_name        VARCHAR(50) NOT NULL,
    last_name         VARCHAR(50) NOT NULL,
    email             VARCHAR(100) UNIQUE NOT NULL,
    phone_number      VARCHAR(15),
    age               INT CHECK (age >= 18 AND age <= 80),
    city              VARCHAR(50) NOT NULL,
    registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE artists (
    artist_id  SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    genre      VARCHAR(50) NOT NULL,
    country    VARCHAR(50) NOT NULL
);

CREATE TABLE stages (
    stage_id   SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL UNIQUE,
    capacity   INT NOT NULL CHECK (capacity > 100),
    location   VARCHAR(100) NOT NULL
);

CREATE TABLE vendors (
    vendor_id     SERIAL PRIMARY KEY,
    vendor_name   VARCHAR(100) NOT NULL,
    category      VARCHAR(50) NOT NULL,
    rating        INT CHECK (rating >= 1 AND rating <= 5),
    contact_email VARCHAR(100) UNIQUE NOT NULL
);


CREATE TABLE sponsors (
    sponsor_id    SERIAL PRIMARY KEY,
    sponsor_name  VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100) UNIQUE NOT NULL,
    company_name  VARCHAR(100),
    industry      VARCHAR(50)
);


CREATE TABLE tickets (
    ticket_id     SERIAL PRIMARY KEY,
    attendee_id   INT NOT NULL,
    ticket_type   VARCHAR(20) NOT NULL CHECK (ticket_type IN ('Early Bird', 'Regular', 'VIP')),
    price         DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    festival_day  DATE NOT NULL,
    purchase_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_tickets_attendee
        FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);


CREATE TABLE performances (
    performance_id   SERIAL PRIMARY KEY,
    artist_id        INT NOT NULL,
    stage_id         INT NOT NULL,
    performance_date DATE NOT NULL,
    start_time       TIMESTAMP NOT NULL,
    end_time         TIMESTAMP NOT NULL,
    CHECK (end_time > start_time),
    CONSTRAINT fk_performances_artist
        FOREIGN KEY (artist_id) REFERENCES artists(artist_id) ON DELETE CASCADE,
    CONSTRAINT fk_performances_stage
        FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE
);


CREATE TABLE sales (
    sale_id     SERIAL PRIMARY KEY,
    vendor_id   INT NOT NULL,
    attendee_id INT NOT NULL,
    sale_date   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount      DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    item        VARCHAR(100) NOT NULL,
    CONSTRAINT fk_sales_vendor
        FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE,
    CONSTRAINT fk_sales_attendee
        FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);


CREATE TABLE stage_sponsors (
    stage_id            INT NOT NULL,
    sponsor_id          INT NOT NULL,
    contribution_amount DECIMAL(10,2) NOT NULL CHECK (contribution_amount >= 0),
    PRIMARY KEY (stage_id, sponsor_id),
    CONSTRAINT fk_stage_sponsors_stage
        FOREIGN KEY (stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE,
    CONSTRAINT fk_stage_sponsors_sponsor
        FOREIGN KEY (sponsor_id) REFERENCES sponsors(sponsor_id) ON DELETE CASCADE
);


CREATE INDEX idx_tickets_attendee_id      ON tickets(attendee_id);
CREATE INDEX idx_performances_artist_id   ON performances(artist_id);
CREATE INDEX idx_performances_stage_id    ON performances(stage_id);
CREATE INDEX idx_sales_vendor_id          ON sales(vendor_id);
CREATE INDEX idx_sales_attendee_id        ON sales(attendee_id);