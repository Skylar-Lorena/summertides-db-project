
-- Create the database only if it doesn't already exist
CREATE DATABASE IF NOT EXISTS summertides;

-- Switch into the summertides database so that every following script
-- runs against the correct schema.
USE summertides;

-- Verify that the database was created. 
SHOW DATABASES LIKE 'summertides';
-
