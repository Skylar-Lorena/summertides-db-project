PRAGMA foreign_keys = ON;
CREATE INDEX idx_artist
 ON performances(artist_id);
CREATE INDEX idx_stage
 ON performances(stage_id); 
CREATE INDEX idx_ticket
ON Attendees_Tickets(ticket_type);
CREATE INDEX idx_stage_sponsor
ON Stage_Sponsors(stage_id);
CREATE INDEX idx_sponsor
ON Stage_Sponsors(sponsor_id);  
CREATE INDEX idx_vendor
ON Vendors(vendor_name);
