
-- Author:  Jairus - Database Architect
-- Purpose: "Create" the summertides SQLite database.
--- This script is idempotent: it can be run multiple times
--
--     sqlite3 summertides.db
-- SQLite doesn't enforce foreign keys by default -- this must
-- be turned on for every connection/session that touches the DB.
PRAGMA foreign_keys = ON;

-- Verify the database file is open and ready.
SELECT 'summertides database ready' AS status;