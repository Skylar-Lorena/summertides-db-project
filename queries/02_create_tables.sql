-- 1. Create the Stages table first because performances and sponsors depend on it
CREATE TABLE stages (
    stage_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Automatically generates a unique ID number for each stage
    stage_name VARCHAR(100) NOT NULL,                      -- Stores the name of the stage (e.g., 'Main Beach Stage')
    capacity INT NOT NULL                                  -- Stores the maximum number of people the stage area can hold
);

-- 2. Create the Artists table to store performer details
CREATE TABLE artists (
    artist_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for every artist
    artist_name VARCHAR(100) NOT NULL,                     -- The stage name of the artist or DJ
    genre VARCHAR(50) NOT NULL                             -- The style of music they play (e.g., 'Afrobeats', 'Reggae')
);

-- 3. Create the Attendees table to track festival visitors
CREATE TABLE attendees (
    attendee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for every ticket buyer
    first_name VARCHAR(50) NOT NULL,                          -- Attendee's first name
    last_name VARCHAR(50) NOT NULL,                           -- Attendee's last name
    email VARCHAR(100) NOT NULL,                              -- Email address to contact the attendee
    ticket_type VARCHAR(20) NOT NULL                          -- Category of ticket purchased (VIP, Regular, Student)
);

-- 4. Create the Vendors table to track businesses selling at the beach
CREATE TABLE vendors (
    vendor_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for each vendor booth
    vendor_name VARCHAR(100) NOT NULL,                      -- Name of the business (e.g., 'Beachside BBQ')
    vendor_type VARCHAR(50) NOT NULL                        -- Category of vendor (e.g., 'Food', 'Art Merchandise')
);

-- 5. Create the Sponsors table to track corporate funding
CREATE TABLE sponsors (
    sponsor_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for each corporate sponsor
    sponsor_name VARCHAR(100) NOT NULL,                      -- Name of the sponsoring company
    contribution_amount NUMERIC(10, 2) NOT NULL              -- Financial amount contributed, allowing decimals for cents
);

-- 6. Create the Performances table (Links Artists and Stages together)
CREATE TABLE performances (
    performance_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for each scheduled show
    artist_id INT REFERENCES artists(artist_id),                 -- Connects this performance directly to a specific artist
    stage_id INT REFERENCES stages(stage_id),                    -- Connects this performance directly to a specific stage
    performance_date DATE NOT NULL,                              -- The specific day of the festival (Day 1, Day 2, or Day 3)
    start_time TIME NOT NULL,                                    -- The exact time the performance is scheduled to begin
    end_time TIME NOT NULL                                       -- The exact time the performance is scheduled to finish
);

-- 7. Create the Sales table to track vendor income
CREATE TABLE sales (
    sale_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- Unique identification number for every single transaction
    vendor_id INT REFERENCES vendors(vendor_id),          -- Connects the sale transaction directly to the selling vendor
    amount NUMERIC(10, 2) NOT NULL,                       -- The money amount generated from this specific sale
    sale_time TIMESTAMP NOT NULL                          -- The exact date and time when the purchase happened
);

-- 8. Create a linking table for Stage Sponsors (Since one sponsor can fund multiple stages)
CREATE TABLE stage_sponsors (
    stage_id INT REFERENCES stages(stage_id),       -- Links to the stage being funded
    sponsor_id INT REFERENCES sponsors(sponsor_id), -- Links to the corporate sponsor providing the funds
    PRIMARY KEY (stage_id, sponsor_id)              -- Combines both IDs to ensure a sponsor can't link to the same stage twice
);