-- =====================================================================
-- File:    queries/01_create_database.sql
-- Topic:   QA Testing - Environment Reset Script
-- =====================================================================

-- 1. Enable Foreign Key Enforcement for testing
PRAGMA foreign_keys = ON;

-- 2. Clean slate drop commands (ordered correctly to avoid foreign key conflicts)
DROP TABLE IF EXISTS stage_sponsorships;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS performances;
DROP TABLE IF EXISTS sponsors;
DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS stages;

SELECT 'QA NOTICE: Database environment reset successfully. Ready for table creation.' AS status;