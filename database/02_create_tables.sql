CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    genre VARCHAR,
    country VARCHAR
);

CREATE TABLE attendees (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    attendee_id INT,
    event_id INT,
    purchase_date DATE,
    FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id)
);

CREATE TABLE vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    category VARCHAR,
    location VARCHAR
);

CREATE TABLE sponsors (
    sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    contribution_amount DECIMAL
);

CREATE TABLE perfomances(
    performance_id INT AUTO INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    stage_id INT NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY(artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY(stage_id) REFERENCES stages(stage_id)

);

CREATE TABLE  stages(
    stage_id INT AUTO INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL,
    capacity INT NOT NULL,
    location VARCHAR

);

CREATE TABLE sales(
    sale_id INT AUTO INCREMENT PRIMARY KEY,
    vendor_id INT NOT NULL,
    attendee_id INT NOT NULL,
    amount DECIMAL
    FOREIGN KEY(vendor_id) REFERENCES vendors(vendor_id)
    FOREIGN KEY(attendee_id) REFERENCES attendees(attendee_id)
    

);

CREATE TABLE stage_sponsors(
    stage_id INT AUTO INCREMENT PRIMARY KEY,
    sponosr_id INT NOT NULL
    FOREIGN KEY(stage_id) REFERENCES stages(stage_id)
    FOREIGN KEY(sponsor_id) REFERENCES sponsors(sponsor_id)

);