-- This script prepares the SummerTides database environment for the project.
-- It enables foreign key enforcement and confirms that the database is ready for use.
-- Run this script with: sqlite3 summertides.db < database/01_create_database.sql
PRAGMA foreign_keys = ON;
SELECT 'SummerTides database ready' AS status;
