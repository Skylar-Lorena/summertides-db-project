-- Author:  Jairus - Database Architect
-- Purpose: Create every table in the SummerTides schema,
--          with primary keys, foreign keys, and constraints
--          that enforce the business rules from the brief.
--
-- ERD summary (full diagram: docs/ERD.png, columns: docs/data_dictionary.md)
--
--   attendees   1---M  tickets
--   attendees   1---M  sales
--   vendors     1---M  sales
--   artists     1---M  performances
--   stages      1---M  performances
--   stages      M---M  sponsors   (via stage_sponsors)
-- Drop tables in dependency order so this script can be
-- re-run safely without manual cleanup.
DROP TABLE IF EXISTS stage_sponsors;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS sponsors;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS stages;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS attendees;



-- ---------------------------------------------------
-- Attendees: people registered for the festival
-- ---------------------------------------------------
CREATE TABLE attendees (
    attendee_id       SERIAL PRIMARY KEY,
    first_name        VARCHAR(50)  NOT NULL,
    last_name         VARCHAR(50)  NOT NULL,
    email             VARCHAR(100) NOT NULL UNIQUE,
    phone             VARCHAR(20),
    age               INT          CHECK (age >= 0),
    city              VARCHAR(50)  NOT NULL,
    registration_date DATE         NOT NULL DEFAULT CURRENT_DATE
);

-- ---------------------------------------------------
-- Artists: performers booked for the festival
-- ---------------------------------------------------
CREATE TABLE artists (
    artist_id   SERIAL PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL,
    genre       VARCHAR(50)  NOT NULL,
    country     VARCHAR(50)  NOT NULL
);

-- ---------------------------------------------------
-- Stages: physical performance stages at the festival
-- ---------------------------------------------------
CREATE TABLE stages (
    stage_id   SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL UNIQUE,
    capacity   INT         NOT NULL CHECK (capacity > 0)
);

-- ---------------------------------------------------
-- Vendors: food, drink and merchandise vendors
-- ---------------------------------------------------
CREATE TABLE vendors (
    vendor_id   SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    category    VARCHAR(50)  NOT NULL,
    rating      DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5)
);

-- ---------------------------------------------------
-- Sponsors: companies funding the festival / stages
-- ---------------------------------------------------
CREATE TABLE sponsors (
    sponsor_id           SERIAL PRIMARY KEY,
    sponsor_name         VARCHAR(100)  NOT NULL UNIQUE,
    contribution_amount  DECIMAL(10,2) NOT NULL CHECK (contribution_amount >= 0)
);

-- ---------------------------------------------------
-- Tickets: tickets purchased by attendees
-- ---------------------------------------------------
CREATE TABLE tickets (
    ticket_id     SERIAL PRIMARY KEY,
    attendee_id   INT           NOT NULL REFERENCES attendees(attendee_id) ON DELETE CASCADE,
    ticket_type   VARCHAR(20)   NOT NULL CHECK (ticket_type IN ('Standard', 'VIP', 'Backstage')),
    price         DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    festival_day  INT           NOT NULL CHECK (festival_day IN (1, 2, 3)),
    purchase_date DATE          NOT NULL DEFAULT CURRENT_DATE
);

-- ---------------------------------------------------
-- Performances: which artist plays which stage & when
-- ---------------------------------------------------
CREATE TABLE performances (
    performance_id SERIAL PRIMARY KEY,
    artist_id      INT  NOT NULL REFERENCES artists(artist_id) ON DELETE CASCADE,
    stage_id       INT  NOT NULL REFERENCES stages(stage_id) ON DELETE CASCADE,
    festival_day   INT  NOT NULL CHECK (festival_day IN (1, 2, 3)),
    start_time     TIME NOT NULL,
    end_time       TIME NOT NULL,
    CHECK (end_time > start_time)
);

-- ---------------------------------------------------
-- Sales: purchases attendees make from vendors
-- ---------------------------------------------------
CREATE TABLE sales (
    sale_id     SERIAL PRIMARY KEY,
    vendor_id   INT           NOT NULL REFERENCES vendors(vendor_id) ON DELETE CASCADE,
    attendee_id INT           NOT NULL REFERENCES attendees(attendee_id) ON DELETE CASCADE,
    sale_amount DECIMAL(10,2) NOT NULL CHECK (sale_amount >= 0),
    sale_date   DATE          NOT NULL DEFAULT CURRENT_DATE
);
