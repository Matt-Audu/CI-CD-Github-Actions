-- script_dreamvacations.sql

-- Connect to the default 'postgres' database
\c postgres

-- Check if 'dreamvacations' database exists and create it if it doesn't
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'dreamvacations') THEN
        PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE dreamvacations');
    END IF;
END $$;

-- Connect to 'dreamvacations' database
\c dreamvacations

-- Create 'destinations' table
CREATE TABLE destinations (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    country VARCHAR(255) NOT NULL,
    capital VARCHAR(255) NOT NULL,
    population BIGINT,
    region VARCHAR(255)
);

-- Insert sample data into 'destinations' table
INSERT INTO destinations (country, capital, population, region) VALUES 
('Nigeria', 'Abuja', 200000000, 'Africa'), 
('Canada', 'Ottawa', 38000000, 'North America'), 
('Japan', 'Tokyo', 126000000, 'Asia');

