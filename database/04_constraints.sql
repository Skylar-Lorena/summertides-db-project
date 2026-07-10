-- =====================================================================
-- File:    04_constraints.sql
-- Topic:   Constraints & Performance Indexes
-- Owner:   Brigit Njoroge - Data Engineer (Student 3)
-- Engine:  SQLite3
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. ENFORCE FOREIGN KEY INTEGRITY
-- Off by default in SQLite; must be set for every connection/session
-- before inserts, updates or deletes are trusted to respect FKs.
-- ---------------------------------------------------------------------
PRAGMA foreign_keys = ON;

-- ---------------------------------------------------------------------
-- 2. UNIQUE CONSTRAINT (SQLite-native technique)
-- SQLite enforces uniqueness on an existing table via a UNIQUE INDEX
-- rather than ALTER TABLE ... ADD CONSTRAINT. This blocks duplicate
-- sponsor contact emails going forward, same intent as the MySQL
-- version of this exercise.
-- ---------------------------------------------------------------------
CREATE UNIQUE INDEX IF NOT EXISTS uq_sponsor_email
    ON sponsors(contact_email);

-- ---------------------------------------------------------------------
-- 3. PERFORMANCE INDEXES - foreign key columns
-- Speeds up joins and lookups by foreign key (attendee_id, vendor_id,
-- artist_id, stage_id, sponsor_id) across the schema.
-- ---------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_sales_vendor          ON sales(vendor_id);
CREATE INDEX IF NOT EXISTS idx_sales_attendee         ON sales(attendee_id);
CREATE INDEX IF NOT EXISTS idx_tickets_attendee        ON tickets(attendee_id);
CREATE INDEX IF NOT EXISTS idx_performances_artist     ON performances(artist_id);
CREATE INDEX IF NOT EXISTS idx_performances_stage      ON performances(stage_id);
CREATE INDEX IF NOT EXISTS idx_sponsorships_stage      ON stage_sponsorships(stage_id);
CREATE INDEX IF NOT EXISTS idx_sponsorships_sponsor    ON stage_sponsorships(sponsor_id);

-- ---------------------------------------------------------------------
-- 4. PERFORMANCE INDEXES - datetime columns
-- Speeds up time-based filters used for scheduling and sales reports.
-- Note: the sales table's date column is named sale_date (not
-- sale_time) in this schema -- indexed accordingly.
-- ---------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_performances_time ON performances(start_time, end_time);
CREATE INDEX IF NOT EXISTS idx_sales_date        ON sales(sale_date);

-- Verify every index above was created successfully.
SELECT name, tbl_name
FROM sqlite_master
WHERE type = 'index' AND sql IS NOT NULL
ORDER BY tbl_name, name;

