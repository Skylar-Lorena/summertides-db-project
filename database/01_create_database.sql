-- Drop the database if it already exists to allow a clean reset
DROP DATABASE IF EXISTS summertides_db;

-- Create the fresh database
CREATE DATABASE summertides_db;

-- Connect to the newly created database
-- (Note: Use \c for PostgreSQL. If your team uses MySQL, change this line to: USE summertides_db;)
\c summertides_db;