# SummerTides Festival Database — Data Dictionary

This document describes every table and column in the `summertides` database.

---

## attendees
People who register for and attend the festival.

| Column | Type | Constraints | Description |
|---|---|---|---|
| attendee_id | INT | PK, AUTO_INCREMENT | Unique identifier for the attendee |
| first_name | VARCHAR(50) | NOT NULL | Attendee's first name |
| last_name | VARCHAR(50) | NOT NULL | Attendee's last name |
| email | VARCHAR(100) | NOT NULL, UNIQUE | Attendee's email address |
| phone | VARCHAR(20) | nullable | Attendee's phone number (some attendees skip this) |
| age | INT | NOT NULL, CHECK 0–120 | Attendee's age in years |
| city | VARCHAR(50) | NOT NULL | City the attendee travels from |
| registration_date | DATE | NOT NULL, DEFAULT CURRENT_DATE | Date the attendee registered |

## artists
Performers booked for the festival.

| Column | Type | Constraints | Description |
|---|---|---|---|
| artist_id | INT | PK, AUTO_INCREMENT | Unique identifier for the artist |
| artist_name | VARCHAR(100) | NOT NULL | Stage/band name |
| genre | VARCHAR(50) | NOT NULL | Musical genre |
| country | VARCHAR(50) | NOT NULL | Country of origin |

## stages
Physical stages set up across the festival grounds.

| Column | Type | Constraints | Description |
|---|---|---|---|
| stage_id | INT | PK, AUTO_INCREMENT | Unique identifier for the stage |
| stage_name | VARCHAR(100) | NOT NULL, UNIQUE | Name of the stage |
| capacity | INT | NOT NULL, CHECK > 0 | Maximum audience capacity |

## performances
Links an artist to a stage at a specific date and time.

| Column | Type | Constraints | Description |
|---|---|---|---|
| performance_id | INT | PK, AUTO_INCREMENT | Unique identifier for the performance |
| artist_id | INT | FK → artists | Performing artist |
| stage_id | INT | FK → stages | Stage hosting the performance |
| festival_day | DATE | NOT NULL | Calendar date of the performance |
| start_time | TIME | NOT NULL | Performance start time |
| end_time | TIME | NOT NULL, CHECK > start_time | Performance end time |

Additional rule (see `04_constraints.sql`): a stage cannot host two performances
starting at the exact same time on the same day (`uq_stage_day_time`).

## tickets
A ticket purchased by an attendee for a specific festival day.

| Column | Type | Constraints | Description |
|---|---|---|---|
| ticket_id | INT | PK, AUTO_INCREMENT | Unique identifier for the ticket |
| attendee_id | INT | FK → attendees | Purchasing attendee |
| ticket_type | VARCHAR(20) | NOT NULL, CHECK IN ('Regular','VIP','Backstage') | Ticket tier |
| price | DECIMAL(10,2) | NOT NULL, CHECK ≥ 0 | Price paid |
| purchase_date | DATE | NOT NULL | Date the ticket was bought |
| festival_day | DATE | NOT NULL | Festival day the ticket admits to |

Additional rule (see `04_constraints.sql`): VIP and Backstage tickets must be
priced at ≥ 3,000 (`chk_premium_ticket_price`).

## vendors
Food, drink, and merchandise vendors operating at the festival.

| Column | Type | Constraints | Description |
|---|---|---|---|
| vendor_id | INT | PK, AUTO_INCREMENT | Unique identifier for the vendor |
| vendor_name | VARCHAR(100) | NOT NULL | Business name |
| category | VARCHAR(50) | NOT NULL | Food / Drinks / Merchandise / Services |
| rating | DECIMAL(2,1) | NOT NULL, DEFAULT 3.0, CHECK 0–5 | Attendee-given rating |

## sales
A transaction between a vendor and an attendee.

| Column | Type | Constraints | Description |
|---|---|---|---|
| sale_id | INT | PK, AUTO_INCREMENT | Unique identifier for the sale |
| vendor_id | INT | FK → vendors | Selling vendor |
| attendee_id | INT | FK → attendees | Purchasing attendee |
| sale_amount | DECIMAL(10,2) | NOT NULL, CHECK > 0 | Amount of the transaction |
| sale_date | DATE | NOT NULL | Date of the transaction |

Additional rule (see `04_constraints.sql`): a single transaction cannot exceed
50,000 (`chk_sale_reasonable_amount`), guarding against data-entry errors.

## sponsors
Organisations that fund the festival or specific stages.

| Column | Type | Constraints | Description |
|---|---|---|---|
| sponsor_id | INT | PK, AUTO_INCREMENT | Unique identifier for the sponsor |
| sponsor_name | VARCHAR(100) | NOT NULL, UNIQUE | Sponsor's name |
| contribution_amount | DECIMAL(12,2) | NOT NULL, CHECK ≥ 0 | Amount contributed |

Additional rule (see `04_constraints.sql`): recorded sponsors must contribute
at least 10,000 (`chk_sponsor_minimum`).

## stage_sponsors
Junction table representing the many-to-many relationship between stages
and the sponsors that fund them.

| Column | Type | Constraints | Description |
|---|---|---|---|
| stage_id | INT | PK, FK → stages | Sponsored stage |
| sponsor_id | INT | PK, FK → sponsors | Sponsoring organisation |

---

## Entity Relationships Summary

- **attendees → tickets**: one attendee can purchase many tickets (1:N)
- **attendees → sales**: one attendee can make many purchases (1:N)
- **artists → performances**: one artist can have many performances (1:N)
- **stages → performances**: one stage can host many performances (1:N)
- **vendors → sales**: one vendor can record many sales (1:N)
- **stages ↔ sponsors**: many-to-many, resolved through `stage_sponsors`

See `ERD.png` in this folder for the visual diagram.