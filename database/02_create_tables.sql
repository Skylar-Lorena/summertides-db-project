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

-- Attendees: people registered for the festival
