-- Lesson 4: Add indexes and constraints for better data integrity.
CREATE UNIQUE INDEX IF NOT EXISTS idx_attendees_email ON attendees(email);
CREATE UNIQUE INDEX IF NOT EXISTS idx_tickets_code ON tickets(ticket_code);
CREATE UNIQUE INDEX IF NOT EXISTS idx_sponsors_name ON sponsors(sponsor_name);
CREATE UNIQUE INDEX IF NOT EXISTS idx_stage_sponsors_pair ON stage_sponsors(stage_id, sponsor_id);

CREATE INDEX IF NOT EXISTS idx_tickets_type ON tickets(ticket_type);
CREATE INDEX IF NOT EXISTS idx_sales_vendor ON sales(vendor_id);
CREATE INDEX IF NOT EXISTS idx_performances_day ON performances(festival_day);

SELECT 'Constraints and indexes added' AS status;