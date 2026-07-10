
-- Drop the database if it already exists to allow a clean reset
DROP DATABASE IF EXISTS summertides_db;

-- Create the fresh database
CREATE DATABASE summertides_db;

-- Connect to the newly created database
-- (Use \c for PostgreSQL, or change to "USE summertides_db;" if using MySQL)
\c summertides_db;