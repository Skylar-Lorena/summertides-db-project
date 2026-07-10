<<<<<<< HEAD
-- =====================================================
-- 05_SELECT.SQL: QA TEST SUITE & DATA VERIFICATION
-- =====================================================

-- -----------------------------------------------------
-- PART 1: VERIFICATION TESTS (Must return data rows)
-- -----------------------------------------------------

-- Test 1: Verify Edwin's inserts successfully loaded into your tables
SELECT 'stages' AS table_check, COUNT(*) FROM stages
UNION ALL
SELECT 'artists', COUNT(*) FROM artists
UNION ALL
SELECT 'attendees', COUNT(*) FROM attendees;

-- Test 2: Verify relationships work perfectly (Join Stages, Artists, and Performances)
SELECT
    p.performance_id,
    a.artist_name,
    s.stage_name,
    p.performance_date
FROM performances p
JOIN artists a ON p.artist_id = a.artist_id
JOIN stages s ON p.stage_id = s.stage_id
LIMIT 5;


-- -----------------------------------------------------
-- PART 2: CONSTRAINT TESTS (Must THROW AN ERROR/FAIL)
-- -----------------------------------------------------
-- Purpose: Test if the rules in 04_constraints.sql are actually working.
-- If these queries FAIL when run, your database security passes!

-- Test 3: Capacity Constraint Check (Should fail because capacity > 0 rule)
-- INSERT INTO stages (stage_name, location, capacity) VALUES ('Error Stage', 'Zone X', -50);

-- Test 4: Duplicate Email Check (Should fail due to UNIQUE email rule)
-- INSERT INTO attendees (first_name, last_name, email, phone) VALUES ('John', 'Doe', 'duplicate@test.com', '123456');
=======
-- Display all stages
SELECT * FROM stages;

-- Display all artists
SELECT * FROM artists;

-- Display all attendees
SELECT * FROM attendees;

-- Display all vendors
SELECT * FROM vendors;

-- Display all sponsors
SELECT * FROM sponsors;

-- Display all performances
SELECT * FROM performances;

-- Display all sales
SELECT * FROM sales;
>>>>>>> deeb832b5f86237d2e1d3ed79d00d4d860d84549
