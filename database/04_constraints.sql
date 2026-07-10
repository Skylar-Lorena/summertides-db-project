-- Author:  Jairus - Database Architect
-- Purpose: Add the constraints and indexes SQLite lets you
--          bolt on AFTER the tables already exist.
--
-- SQLite note: unlike Postgres/MySQL, SQLite's ALTER TABLE

PRAGMA foreign_keys = ON;

-- An artist cannot be double-booked at the same time on the same day.
CREATE UNIQUE INDEX idx_uq_artist_day_time
    ON performances(artist_id, festival_day, start_time);
