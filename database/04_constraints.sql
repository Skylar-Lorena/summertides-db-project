PRAGMA foreign_keys = ON;

CREATE UNIQUE INDEX IF NOT EXISTS idx_attendees_email ON attendees(email);
CREATE UNIQUE INDEX IF NOT EXISTS idx_tickets_code ON tickets(ticket_code);
CREATE UNIQUE INDEX IF NOT EXISTS idx_sponsors_name ON sponsors(sponsor_name);
CREATE INDEX IF NOT EXISTS idx_performances_day ON performances(festival_day);

PRAGMA foreign_key_check;

SELECT 'Schema constraints validated.' AS status;
