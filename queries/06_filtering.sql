-- Display only VIP attendees
SELECT *
FROM attendees
WHERE ticket_type = 'VIP';

-- Display only food vendors
SELECT *
FROM vendors
WHERE vendor_type = 'Food';

-- Display artists who perform Afrobeats
SELECT *
FROM artists
WHERE genre = 'Afrobeats';

-- Display sponsors contributing more than 100000
SELECT *
FROM sponsors
WHERE contribution_amount > 100000;