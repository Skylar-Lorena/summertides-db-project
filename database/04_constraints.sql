-- Author:  Jairus - Database Architect
-- Purpose: Add the constraints and indexes SQLite lets you
--          bolt on AFTER the tables already exist.
--
-- SQLite note: unlike Postgres/MySQL, SQLite's ALTER TABLE

PRAGMA foreign_keys = ON;

-- An artist cannot be double-booked at the same time on the same day.
CREATE UNIQUE INDEX idx_uq_artist_day_time
    ON performances(artist_id, festival_day, start_time);

-- A stage cannot host two performances at the same time on the same day.
CREATE UNIQUE INDEX idx_uq_stage_day_time
    ON performances(stage_id, festival_day, start_time);

-- Indexes on foreign key columns: these speed up the joins and
-- lookups used throughout the queries/ folder (e.g. tickets by
-- attendee, performances by artist/stage, sales by vendor/attendee).
CREATE INDEX idx_tickets_attendee       ON tickets(attendee_id);
CREATE INDEX idx_performances_artist    ON performances(artist_id);
CREATE INDEX idx_performances_stage     ON performances(stage_id);
CREATE INDEX idx_sales_vendor           ON sales(vendor_id);
CREATE INDEX idx_sales_attendee         ON sales(attendee_id);
CREATE INDEX idx_stage_sponsors_stage   ON stage_sponsors(stage_id);
CREATE INDEX idx_stage_sponsors_sponsor ON stage_sponsors(sponsor_id);
