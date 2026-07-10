# 🌊 SummerTides Festival Data Dictionary

This document serves as the single source of truth for the relational database schema powering the SummerTides Beach Festival system.

---

## 1. Table: `stages`
Stores information about the physical performance structures and locations across the beach festival grounds.

| Column Name | Data Type | Constraints | Description & Business Rules |
| :--- | :--- | :--- | :--- |
| `stage_id` | `INT` | `PRIMARY KEY`, `AUTO_INCREMENT` | Unique identifier for each stage. |
| `stage_name` | `VARCHAR(100)` | `NOT NULL` | The marketing name of the stage (e.g., 'Main Wave', `Eco-Groove`). |
| `location` | `VARCHAR(150)` | `NOT NULL` | Specific layout location on the beach. |
| `capacity` | `INT` | `CHECK (capacity > 0)` | Maximum audience size allowed by beach safety codes. |

---

## 2. Table: `artists`
Tracks the performing live musicians, bands, and DJs booked for the multi-day festival event.

| Column Name | Data Type | Constraints | Description & Business Rules |
| :--- | :--- | :--- | :--- |
| `artist_id` | `INT` | `PRIMARY KEY`, `AUTO_INCREMENT` | Unique identifier for each musical act. |
| `artist_name` | `VARCHAR(150)` | `NOT NULL` | Public stage name or moniker of the performer. |
| `genre` | `VARCHAR(50)` | - | Musical genre (e.g., Afrobeats, Amapiano, Reggae, EDM). |
| `contact_email`| `VARCHAR(100)` | - | Management or administrative liaison email. |

---

## 3. Table: `attendees`
Maintains records of registered festival-goers and their profiles.

| Column Name | Data Type | Constraints | Description & Business Rules |
| :--- | :--- | :--- | :--- |
| `attendee_id` | `INT` | `PRIMARY KEY`, `AUTO_INCREMENT` | Unique identifier for each ticket holder. |
| `first_name` | `VARCHAR(50)` | `NOT NULL` | Legal given name. |
| `last_name` | `VARCHAR(50)` | `NOT NULL` | Legal family name. |
| `email` | `VARCHAR(100)` | `UNIQUE`, `NOT NULL` | Used for sending digital passes; duplicates are blocked. |
| `ticket_type` | `VARCHAR(20)` | `CHECK` | Must belong to: `'VIP'`, `'Regular'`, or `'Student'`. |

---

## 4. Table: `performances`
A transactional schedule mapping which artists are playing at which stages and when.

| Column Name | Data Type | Constraints | Description & Business Rules |
| :--- | :--- | :--- | :--- |
| `performance_id`| `INT` | `PRIMARY KEY`, `AUTO_INCREMENT` | Unique ID for an individual scheduled set. |
| `artist_id` | `INT` | `FOREIGN KEY` | References `artists.artist_id`. Cannot be null. |
| `stage_id` | `INT` | `FOREIGN KEY` | References `stages.stage_id`. Cannot be null. |
| `performance_date`| `DATE` | `NOT NULL` | The day of the festival (Day 1, 2, or 3). |
| `start_time` | `TIME` | `NOT NULL` | The exact timestamp when the performance begins. |