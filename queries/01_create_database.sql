-- This script is the first step in the assessment workflow.
-- It prepares the database environment and confirms that the SummerTides project is ready for use.
-- Run this script with: sqlite3 summertides.db < queries/01_create_database.sql
PRAGMA foreign_keys = ON;
SELECT 'SummerTides database ready' AS status;
