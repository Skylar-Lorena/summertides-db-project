# Entity Relationship Diagram - SummerTides Festival Database

## Complete Database Schema (10 Tables)

### 1. FESTIVALS
- festival_id (PK) - Primary Key
- name - Festival name
- start_date - Start date
- end_date - End date
- location - Location

### 2. STAGES
- stage_id (PK) - Primary Key
- festival_id (FK) - Foreign Key to FESTIVALS
- stage_name - Stage name
- capacity - Maximum capacity
- stage_type - ENUM: 'indoor' or 'outdoor'

### 3. ARTISTS
- artist_id (PK) - Primary Key
- artist_name - Artist/band name
- genre - Music genre
- country_origin - Country of origin

### 4. PERFORMANCES
- performance_id (PK) - Primary Key
- artist_id (FK) - Foreign Key to ARTISTS
- stage_id (FK) - Foreign Key to STAGES
- performance_date - Date of performance
- start_time - Start time
- end_time - End time
- ticket_price - Base ticket price

### 5. ATTENDEES
- attendee_id (PK) - Primary Key
- first_name - First name
- last_name - Last name
- email - Email address
- phone - Phone number
- country - Country

### 6. TICKETS
- ticket_id (PK) - Primary Key
- performance_id (FK) - Foreign Key to PERFORMANCES
- attendee_id (FK) - Foreign Key to ATTENDEES
- ticket_type - ENUM: 'VIP', 'Regular', 'Early Bird'
- purchase_date - Date purchased
- price_paid - Amount paid

### 7. VENDORS
- vendor_id (PK) - Primary Key
- vendor_name - Vendor business name
- vendor_type - ENUM: 'food', 'drink', 'merchandise'
- contact_email - Contact email

### 8. VENDORS_SALES
- sale_id (PK) - Primary Key
- vendor_id (FK) - Foreign Key to VENDORS
- stage_id (FK) - Foreign Key to STAGES
- sale_date - Date of sale
- amount_sold - Sale amount

### 9. SPONSORS
- sponsor_id (PK) - Primary Key
- sponsor_name - Sponsor company name
- sponsorship_amount - Sponsorship amount
- sponsorship_level - ENUM: 'Platinum', 'Gold', 'Silver'

### 10. STAGE_SPONSORS (Bridge Table)
- stage_sponsor_id (PK) - Primary Key
- stage_id (FK) - Foreign Key to STAGES
- sponsor_id (FK) - Foreign Key to SPONSORS

---

## Key Relationships (1:M = One to Many)

1. **FESTIVALS → STAGES** (1:M)
   - One festival has many stages

2. **STAGES → PERFORMANCES** (1:M)
   - One stage hosts many performances

3. **ARTISTS → PERFORMANCES** (1:M)
   - One artist can perform multiple times

4. **PERFORMANCES → TICKETS** (1:M)
   - One performance has many ticket sales

5. **ATTENDEES → TICKETS** (1:M)
   - One attendee can buy multiple tickets

6. **VENDORS → VENDORS_SALES** (1:M)
   - One vendor has multiple sales records

7. **STAGES → VENDORS_SALES** (1:M)
   - One stage has multiple vendor sales

8. **SPONSORS → STAGE_SPONSORS** (1:M)
   - One sponsor can sponsor multiple stages

9. **STAGES → STAGE_SPONSORS** (1:M)
   - One stage can have multiple sponsors

---

## Summary

- 10 total tables
- All primary keys defined
- All foreign key relationships documented
- Data types specified
- Constraints identified
- Ready for SQL implementation by Person 2
