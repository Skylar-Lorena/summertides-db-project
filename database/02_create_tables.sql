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
