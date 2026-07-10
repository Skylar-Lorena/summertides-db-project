//vendors//

CREATE TABLE vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    vendor_type VARCHAR(50)
);

//sales//
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    sale_time DATETIME DEFAULT NOT NULL,


   CONSTRAINT chk_sale_quantity CHECK (quantity > 0),

   CONSTRAINT fk_sale_vendor 
   FOREIGN KEY (vendor_id)
   REFERENCES vendors(vendor_id)
);

//attendees//

CREATE TABLE attendees (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
);

//tickets//

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    attendee_id INT NOT NULL,
    ticket_type VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    purchase_date DATETIME DEFAULT NOT NULL,

   CONSTRAINT  chk_ticket-price CHECK (price >= 0),

   CONSTRAINT chk_ticket_type CHECK (
    ticket_type IN ('Regular', 'VIP', 'student'))

   CONSTRAINT fk_ticket_attendee 
   FOREIGN KEY (attendee_id)
   REFERENCES attendees(attendee_id)
    
);
   
//stages//

CREATE TABLE stages (
    stage_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50)  UNIQUE NOT NULL,
    location VARCHAR(100),
    capacity INT NOT NULL,

   CONSTRAINT chk_stage_capacity CHECK (capacity > 0)
);


//performances//
 CREATE TABLE performances (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    stage_id INT NOT NULL,
    start_time DATETIME DEFAULT NOT NULL,
    end_time DATETIME DEFAULT NOT NULL,


   CONSTRAINT fk_performance_artist 
   FOREIGN KEY (artist_id)
   REFERENCES artists(artist_id),

   CONSTRAINT fk_performance_stage 
   FOREIGN KEY (stage_id)
   REFERENCES stages(stage_id)

   CONSTRAINT chk_performance_time 
   CHECK (end_time > start_time)

//artists//
CREATE TABLE artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    contact_person VARCHAR(100),
    
);

//sponsors//

CREATE TABLE sponsors (
    sponsor_id INT AUTO_INCREMENT PRIMARY KEY,
    sponsor_name VARCHAR(100) NOT NULL,
    contribution_amount DECIMAL(12, 2),

    CONSTRAINT chk_contribution_amount 
    CHECK (contribution_amount >= 0)
);


//stage sponsorships//

CREATE TABLE stage_sponsorships (
    sponsershpi_id INT AUTO_INCREMENT PRIMARY KEY,
    stage_id INT NOT NULL,
    sponsor_id INT NOT NULL,
    funding_allocated DECIMAL(10, 2) NOT NULL,


   CONSTRAINT chk_funding 
   CHECK (funding_allocated >= 0),
   

   CONSTRAINT fk_sponsership_sponser
    FOREIGN KEY (sponsor_id)
    REFERENCES sponsors(sponsor_id)

    CONSTRAINT fk_sponsership_stage
    FOREIGN KEY (stage_id)
    REFERENCES stages(stage_id)


   
);





