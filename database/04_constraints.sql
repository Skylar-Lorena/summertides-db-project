-- Rule 1: Ensure that every attendee has a completely unique email address in the database
ALTER TABLE attendees 
ADD CONSTRAINT unique_attendee_email UNIQUE (email);

-- Rule 2: Prevent human error by ensuring ticket types can only be VIP, Regular, or Student
ALTER TABLE attendees 
ADD CONSTRAINT check_valid_ticket_type 
CHECK (ticket_type IN ('VIP', 'Regular', 'Student'));

-- Rule 3: Ensure festival stages cannot have a capacity of zero or a negative number
ALTER TABLE stages 
ADD CONSTRAINT check_positive_stage_capacity 
CHECK (capacity > 0);

-- Rule 4: Ensure vendors cannot input a negative sales amount into the system
ALTER TABLE sales 
ADD CONSTRAINT check_positive_sale_amount 
CHECK (amount >= 0.00);

-- Rule 5: Ensure corporate financial contributions are always greater than zero
ALTER TABLE sponsors 
ADD CONSTRAINT check_positive_contribution 
CHECK (contribution_amount > 0.00);

-- Rule 6: Ensure a show's ending time is chronologically after its starting time
ALTER TABLE performances 
ADD CONSTRAINT check_valid_performance_duration 
CHECK (end_time > start_time);