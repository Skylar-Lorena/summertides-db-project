-- Author:  Jairus - Database Architect
-- Purpose: Layer on additional constraints and indexes
--          once the schema (02) and sample data (03) are
--          in place. Core NOT NULL / UNIQUE / CHECK /
--          FK constraints already live in 02_create_tables.sql;
--          these are the extra business rules and performance
--          helpers that build on top of that base schema.


-- An artist cannot be double-booked at the same time on the same day.
ALTER TABLE performances
    ADD CONSTRAINT uq_artist_day_time UNIQUE (artist_id, festival_day, start_time);

-- A stage cannot host two performances at the same time on the same day.
ALTER TABLE performances
    ADD CONSTRAINT uq_stage_day_time UNIQUE (stage_id, festival_day, start_time);
