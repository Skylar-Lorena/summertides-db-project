CREATE VIEW Festival_Schedule AS
SELECT
    a.artist_name,
    b.performance_date,
    b.performance_time,
    d.stage_name
FROM Artists a
JOIN Performances b
ON a.artist_id = b.artist_id
JOIN Stages d
ON b.stage_id = d.stage_id;