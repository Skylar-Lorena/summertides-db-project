ALTER TABLE performances
ADD CONSTRAINT chk_performance_time CHECK (end_time > start_time);