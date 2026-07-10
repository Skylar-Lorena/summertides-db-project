//Display attendees together with their ticket information
SELECT attendees.attendee_id, attendees.name, tickets.ticket_id, tickets.ticket_price
FROM attendees
JOIN tickets ON attendees.attendee_id = tickets.attendee_id
ORDER BY attendees.last_name;

//Show artist and stages where they perform
SELECT artists.artist_id, artists.name AS artist_name, stages.stage_id, stages.name AS stage
FROM artists
JOIN performances ON artists.artist_id = perfomances.artist_id
JOIN stages ON perfomances.stage_id = stages.stage_id
ORDER BY artists.name;

//Display every performance together with artist name and stage name
SELECT performances.perfomance_id, artists.name AS artist_name, stages.name AS stage_name, performances.performance_time
FROM performances
JOIN artists ON performances.artist_id = artists.artist_id
JOIN stages ON performances.stage_id = stages.stage_id
ORDER BY perfomances.perfomance_time;

//List every vendor together with attendees who purchased from them
SELECT vendors.vendor_id, vendors.name AS vendor_name, attendees.attendee_id, attendees.name AS attendee_name
FROM vendors
JOIN sales ON vendors.vendor_id = sales.vendor_id
JOIN attendees ON sales.attendee_id = attendees.attendee_id
ORDER BY vendors.name, attendees.name;

//Display sponsors alongside the stages they sponsor
SELECT sponsors.sponsor_id, sponsors.name AS sponsor_name, stages.stage_id, stages.name AS stage_name
FROM sponsors
JOIN stage_sponsorships ON sponsors.sponsor_id = stage_sponsorships.sponsor_id
JOIN stages ON stage_sponsorships.stage_id = stages.stage_id
ORDER BY sponsors.name, stages.name;

//Show artist who yet do not have any performance scheduled(if applicable)
SELECT artists.artist_id, artists.name AS artist_name
FROM artists 
LEFT JOIN perfomances ON artists.artist_id = performances.artist_id
WHERE performances.perfomance_id IS NULL;

//Retrieve all perfomances for a selected festival day
SELECT perfomances.perfomance_id, artists.name AS artist_name, stages.name AS stage_name, perfomances.performance_time
FROM perfomances
JOIN artists ON perfomances.artist_id = artists.artist_id
JOIN stages ON perfomances.stage_id = stages.stage_id
WHERE perfomances.festival_day = '2024-07-15'
ORDER BY perfomances.performance_time;