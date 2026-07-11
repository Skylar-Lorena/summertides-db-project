-- Lesson 1: Create the SummerTides database.
-- SQLite creates the database file when the connection opens.
ATTACH DATABASE 'summertides.db' AS summertides;
SELECT 'Database connection ready' AS status;
