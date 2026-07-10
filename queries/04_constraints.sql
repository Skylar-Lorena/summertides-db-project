-- =====================================================================
-- File:        04_constraints.sql
-- Project:     SummerTides Festival Database
-- Purpose:     Layer additional business-rule constraints on top of the
--              tables created in 02_create_tables.sql: NOT NULL,
--              UNIQUE, CHECK, and DEFAULT. Keeping these here (instead
--              of only in the CREATE TABLE statements) makes it easy to
--              see every business rule enforced by the database in one
--              place.
-- Requires:    01_create_database.sql, 02_create_tables.sql,
--              03_insert_data.sql must already have been run.
-- =====================================================================

USE summertides;

-- ---------------------------------------------------------------------
-- ATTENDEES
-- ---------------------------------------------------------------------
-- Every attendee must have a recorded age of 0 or more.
ALTER TABLE attendees
    ADD CONSTRAINT chk_attendee_age CHECK (age >= 0 AND age <= 120);

-- Default the registration date to "today" if not supplied.
ALTER TABLE attendees
    ALTER COLUMN registration_date SET DEFAULT (CURRENT_DATE);

-- Default the country to Kenya, since most attendees are local.
ALTER TABLE attendees
    ALTER COLUMN country SET DEFAULT 'Kenya';

-- ---------------------------------------------------------------------
-- TICKETS
-- ---------------------------------------------------------------------
-- Ticket price can never be negative.
ALTER TABLE tickets
    ADD CONSTRAINT chk_ticket_price CHECK (price >= 0);

-- Ticket type must be one of the three sold by the festival.
ALTER TABLE tickets
    ADD CONSTRAINT chk_ticket_type
        CHECK (ticket_type IN ('Standard', 'VIP', 'Backstage'));

-- Festival only runs on these three dates.
ALTER TABLE tickets
    ADD CONSTRAINT chk_ticket_festival_day
        CHECK (festival_day IN ('2026-08-14', '2026-08-15', '2026-08-16'));

-- ---------------------------------------------------------------------
-- STAGES
-- ---------------------------------------------------------------------
-- A stage must be able to hold at least one person.
ALTER TABLE stages
    ADD CONSTRAINT chk_stage_capacity CHECK (capacity > 0);

-- ---------------------------------------------------------------------
-- ARTISTS
-- ---------------------------------------------------------------------
-- Booking fee cannot be negative.
ALTER TABLE artists
    ADD CONSTRAINT chk_artist_fee CHECK (booking_fee >= 0);

-- ---------------------------------------------------------------------
-- PERFORMANCES
-- ---------------------------------------------------------------------
-- A performance must end after it starts.
ALTER TABLE performances
    ADD CONSTRAINT chk_performance_times CHECK (end_time > start_time);

-- Festival only runs on these three dates.
ALTER TABLE performances
    ADD CONSTRAINT chk_performance_festival_day
        CHECK (festival_day IN ('2026-08-14', '2026-08-15', '2026-08-16'));

-- No two performances can share the same stage at the same start time.
ALTER TABLE performances
    ADD CONSTRAINT uq_performance_stage_slot
        UNIQUE (stage_id, festival_day, start_time);

-- ---------------------------------------------------------------------
-- VENDORS
-- ---------------------------------------------------------------------
-- Ratings are on a 0.0 - 5.0 scale.
ALTER TABLE vendors
    ADD CONSTRAINT chk_vendor_rating CHECK (rating >= 0 AND rating <= 5);

-- ---------------------------------------------------------------------
-- SALES
-- ---------------------------------------------------------------------
-- A sale must be worth something.
ALTER TABLE sales
    ADD CONSTRAINT chk_sale_amount CHECK (sale_amount > 0);

-- ---------------------------------------------------------------------
-- SPONSORS
-- ---------------------------------------------------------------------
-- Contribution amount cannot be negative.
ALTER TABLE sponsors
    ADD CONSTRAINT chk_sponsor_amount CHECK (contribution_amount >= 0);

-- ---------------------------------------------------------------------
-- STAGE_SPONSORS
-- ---------------------------------------------------------------------
-- Sponsorship amount for a specific stage cannot be negative.
ALTER TABLE stage_sponsors
    ADD CONSTRAINT chk_stagesponsor_amount CHECK (sponsorship_amount >= 0);

-- ---------------------------------------------------------------------
-- Confirm the constraints were applied.
-- ---------------------------------------------------------------------
SELECT constraint_name, table_name, constraint_type
FROM information_schema.table_constraints
WHERE table_schema = 'summertides'
ORDER BY table_name, constraint_type;