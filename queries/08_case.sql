-- Categorize sponsors
SELECT
    sponsor_name,
    contribution_amount,
    CASE
        WHEN contribution_amount >= 1000000 THEN 'Platinum'
        WHEN contribution_amount >= 500000 THEN 'Gold'
        ELSE 'Silver'
    END AS sponsor_level
FROM sponsors;

-- Categorize stages by capacity
SELECT
    stage_name,
    capacity,
    CASE
        WHEN capacity >= 1000 THEN 'Large'
        ELSE 'Small'
    END AS stage_size
FROM stages;