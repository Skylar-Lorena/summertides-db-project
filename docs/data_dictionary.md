# Data Dictionary: Summertides Database

This document details the database schema for the Summertides event management system.

---

## Tables and Columns

### 1. stages

Stores details about the event stages.

- **`stage_id`** (INTEGER, PK): Unique identifier for each stage (Auto-increment).
- **`student_name`** (VARCHAR(50)): Unique name of the stage. Cannot be null.
- **`location`** (VARCHAR(100)): Physical location of the stage.
- **`capacity`** (INT): Maximum audience capacity. Must be greater than 0.

### 2. artists

Stores information about the performing artists.

- **`artist_id`** (INTEGER, PK): Unique identifier for each artist (Auto-increment).
- **`name`** (VARCHAR(100)): Name of the artist or band. Cannot be null.
- **`genre`** (VARCHAR(50)): Music style or performance type.
- **`contact_person`** (VARCHAR(100)): Main contact name for the artist.

### 3. attendees

Stores information about people attending the event.

- **`attendee_id`** (INTEGER, PK): Unique identifier for each attendee (Auto-increment).
- **`first_name`** (VARCHAR(50)): Attendee's first name. Cannot be null.
- **`last_name`** (VARCHAR(50)): Attendee's last name. Cannot be null.
- **`email`** (VARCHAR(100)): Unique email address. Cannot be null.
- **`phone_number`** (VARCHAR(15)): Contact phone number.

### 4. vendors

Stores details about event vendors (food, merchandise, etc.).

- **`vendor_id`** (INTEGER, PK): Unique identifier for each vendor (Auto-increment).
- **`vendor_name`** (VARCHAR(100)): Business name. Cannot be null.
- **`vendor_type`** (VARCHAR(50)): Category of items sold.

### 5. sponsors

Stores financial sponsor information.

- **`sponsor_id`** (INTEGER, PK): Unique identifier for each sponsor (Auto-increment).
- **`sponsor_name`** (VARCHAR(100)): Corporate or individual name. Cannot be null.
- **`contribution_amount`** (DECIMAL(12,2)): Financial backing amount. Must be $\ge 0$.
- **`contact_email`** (Indexed): Unique contact email for the sponsor.

### 6. performances

Schedules when and where artists perform.

- **`performance_id`** (INTEGER, PK): Unique identifier for the performance.
- **`artist_id`** (INT, FK): Links to `artists.artist_id`.
- **`stage_id`** (INT, FK): Links to `stages.stage_id`.
- **`start_time`** (DATETIME): Performance start time.
- **`end_time`** (DATETIME): Performance end time. Must be later than start time.

### 7. tickets

Tracks ticket purchases.

- **`ticket_id`** (INTEGER, PK): Unique identifier for the ticket.
- **`attendee_id`** (INT, FK): Links to `attendees.attendee_id`.
- **`ticket_type`** (VARCHAR(20)): Must be 'Regular', 'VIP', or 'student'.
- **`price`** (DECIMAL(10,2)): Ticket cost. Must be $\ge 0$.
- **`purchase_date`** (DATETIME): Defaults to current system timestamp.

### 8. sales

Tracks commercial sales by event vendors.

- **`sale_id`** (INTEGER, PK): Unique identifier for each transaction.
- **`vendor_id`** (INT, FK): Links to `vendors.vendor_id`.
- **`amount`** (DECIMAL(10,2)): Money made in the sale.
- **`quantity`** (INT): Number of items sold. Must be greater than 0.
- **`sale_date`** / `sale_time` (DATETIME): Transaction timestamp.

### 9. stage_sponsorships

Maps sponsors to specific stages they fund.

- **`sponsorship_id`** (INTEGER, PK): Unique identifier for the funding instance.
- **`stage_id`** (INT, FK): Links to `stages.stage_id`.
- **`sponsor_id`** (INT, FK): Links to `sponsors.sponsor_id`.
- **`funding_allocated`** (DECIMAL(10,2)): Financial amount given. Must be $\ge 0$.
