-- ============================================
-- SummerTides Festival Database
-- File: 04_constraints.sql
-- Author: Person 2 - SQL Developer
-- ============================================

USE summertides_festival;

-- Ensure performance times are logical
ALTER TABLE performances
ADD CONSTRAINT check_performance_times
CHECK (start_time < end_time);

-- Ensure festival dates are logical
ALTER TABLE festivals
ADD CONSTRAINT check_festival_dates
CHECK (start_date <= end_date);

-- Ensure positive ticket price
ALTER TABLE performances
ADD CONSTRAINT check_ticket_price
CHECK (ticket_price > 0);

-- Ensure positive ticket payment
ALTER TABLE tickets
ADD CONSTRAINT check_ticket_price_paid
CHECK (price_paid > 0);

-- Ensure positive vendor sales
ALTER TABLE vendors_sales
ADD CONSTRAINT check_sales_amount
CHECK (amount_sold > 0);

-- Ensure positive sponsorship amount
ALTER TABLE sponsors
ADD CONSTRAINT check_sponsor_amount
CHECK (sponsorship_amount > 0);

-- Ensure stage capacity is positive
ALTER TABLE stages
ADD CONSTRAINT check_stage_capacity
CHECK (capacity > 0);

-- Prevent duplicate artist names
ALTER TABLE artists
ADD CONSTRAINT unique_artist_name
UNIQUE (artist_name);

-- Prevent duplicate stage names within the same festival
ALTER TABLE stages
ADD CONSTRAINT unique_stage_per_festival
UNIQUE (festival_id, stage_name);

-- Prevent duplicate vendor names
ALTER TABLE vendors
ADD CONSTRAINT unique_vendor_name
UNIQUE (vendor_name);

-- Helpful indexes
CREATE INDEX idx_performance_artist
ON performances(artist_id);

CREATE INDEX idx_performance_stage
ON performances(stage_id);

CREATE INDEX idx_performance_date
ON performances(performance_date);

CREATE INDEX idx_tickets_performance
ON tickets(performance_id);

CREATE INDEX idx_tickets_attendee
ON tickets(attendee_id);

CREATE INDEX idx_sales_vendor
ON vendors_sales(vendor_id);

CREATE INDEX idx_sales_stage
ON vendors_sales(stage_id);
