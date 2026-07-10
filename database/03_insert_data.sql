INSERT INTO Attendees (first_name, last_name, email, phone_number) 
VALUES ('John', 'Kamau', 'john.kamau@gmail.com', '0721221181');
INSERT INTO Attendees (first_name, last_name, email, phone_number) 
VALUES ('Jane', 'Wanjiku', 'jane.wanjiku@gmail.com', '0721221182');
INSERT INTO Attendees (first_name, last_name, email, phone_number) 
VALUES ('Mary', 'Wambui', 'mary.wambui@gmail.com', '0721221183');

INSERT INTO Artists (artist_name, genre, country) 
VALUES ('Sauti Sol', 'Afro-pop', 'Kenya');
INSERT INTO Artists (artist_name, genre, country) 
VALUES ('Diamond Platnumz', 'Bongo Flava', 'Tanzania');
INSERT INTO Artists (artist_name, genre, country) 
VALUES ('Wizkid', 'Afrobeats', 'Nigeria');

INSERT INTO Stages (stage_name, capacity) 
VALUES ('Main Stage', 1000);
INSERT INTO Stages (stage_name, capacity) 
VALUES ('Secondary Stage', 3000);
INSERT INTO Stages (stage_name, capacity) 
VALUES ('Tertiary Stage', 4000);

INSERT INTO Performances (artist_id, stage_id, performance_date, performance_time) 
VALUES (1, 1, '2025-07-01', '18:00:00');
INSERT INTO Performances (artist_id, stage_id, performance_date, performance_time) 
VALUES (2, 2, '2025-07-01', '20:00:00');
INSERT INTO Performances (artist_id, stage_id, performance_date, performance_time) 
VALUES (3, 3, '2025-07-02', '19:00:00');

INSERT INTO Attendees_Tickets (attendee_id, performance_id, ticket_type, price) 
VALUES (1, 1, 'Regular', 5000.00);
INSERT INTO Attendees_Tickets (attendee_id, performance_id, ticket_type, price) 
VALUES (2, 2, 'VIP', 10000.00);
INSERT INTO Attendees_Tickets (attendee_id, performance_id, ticket_type, price) 
VALUES (3, 3, 'VVIP', 15000.00);

INSERT INTO Sponsors (sponsor_name, contribution_amount) 
VALUES ('Coca-Cola', 100000.00);
INSERT INTO Sponsors (sponsor_name, contribution_amount) 
VALUES ('Pepsi', 80000.00);
INSERT INTO Sponsors (sponsor_name, contribution_amount) 
VALUES ('MTN', 120000.00);

INSERT INTO Vendors (vendor_name, product_type, total_sales) 
VALUES ('Foodies Delight', 'Food', 50000.00);
INSERT INTO Vendors (vendor_name, product_type, total_sales) 
VALUES ('Drink Masters', 'Beverages', 40000.00);
INSERT INTO Vendors (vendor_name, product_type, total_sales) 
VALUES ('Merchandise Hub', 'Merchandise', 60000.00);

INSERT INTO Stage_Sponsors (stage_id, sponsor_id) 
VALUES (1, 1);
INSERT INTO Stage_Sponsors (stage_id, sponsor_id) 
VALUES (2, 2);
INSERT INTO Stage_Sponsors (stage_id, sponsor_id) 
VALUES (3, 3);
