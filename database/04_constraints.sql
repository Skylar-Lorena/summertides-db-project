
-- SummerTides Festival Database

USE summertides;

-- 1. No two performances can be booked on the same stage, on the same
--    day, at the exact same start time 
ALTER TABLE performances
    ADD CONSTRAINT uq_stage_day_time UNIQUE (stage_id, festival_day, start_time);


-- 2. VIP and Backstage tickets 

ALTER TABLE tickets
    ADD CONSTRAINT chk_premium_ticket_price CHECK (
        ticket_type = 'Regular'
        OR (ticket_type IN ('VIP', 'Backstage') AND price >= 3000)
    );

-
ALTER TABLE vendors
    ALTER COLUMN rating SET DEFAULT 3.0;

-
ALTER TABLE sponsors
    ADD CONSTRAINT chk_sponsor_minimum CHECK (contribution_amount >= 10000);


ALTER TABLE sales
    ADD CONSTRAINT chk_sale_reasonable_amount CHECK (sale_amount <= 50000);