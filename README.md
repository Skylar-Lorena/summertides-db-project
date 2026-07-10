🌊 SummerTides Festival Database Management System

An enterprise-grade relational database schema engineered in SQLite3 to power the backend operations, scheduling, ticket administration, sponsor allocations, and vendor sales points for the annual SummerTides Music Festival.

This project provides a robust, index-optimized database structure designed to handle high-throughput transactions, dynamic scheduling conflicts, and multi-entity financial audits.

📂 Project Directory Structure

Our repository is strictly organized to maintain clean separation of concerns between database creation, validation, performance tuning, and business intelligence queries.

SUMMERTIDES-DB-PROJECT/
├── database/
│ ├── 01_create_database.sql # Database initialization
│ ├── 02_create_tables.sql # Core table schemas & types (Wayne Kiptoo)
│ ├── 03_insert_data.sql # Mock datasets for simulation
│ └── 04_constraints.sql # Integrity limits & performance indexes (Brigit Njoroge)
├── docs/
│ ├── data_dictionary.md # Comprehensive entity-relationship breakdown
│ └── ERD.png # Entity-relationship visualization diagram
├── presentation/
│ └── summertides_presentation.html # Modern browser-based slide deck
├── queries/
│ ├── 01_create_database.sql
│ ├── 02_create_tables.sql
│ ├── 03_insert_data.sql
│ ├── 04_constraints.sql
│ ├── 05_select.sql
│ ├── 06_filtering.sql
│ ├── 07_order_limit.sql
│ ├── 08_case.sql
│ ├── 09_group_by.sql
│ ├── 10_joins.sql # Relational link querying (Tables connected)
│ ├── 11_views.sql # Abstract reporting layers
│ └── 12_bonus.sql # Aggregations, statistics & core insights
├── lesson.md # Educational takeaways and process reflections
└── README.md # Main documentation portal (this file)

🛠️ Relational Schema Design

The SummerTides database tracks nine core entities connected through explicit, cascade-safe relational keys:

               [ Sponsors ]             [ Attendees ]
                    │                         │
                    ▼                         ▼

[ Stages ] ◄── [ Stage Sponsorships ] [ Tickets ]
▲
│
[ Performances ] ◄── [ Artists ] [ Vendors ]
│
▼
[ Sales ]

Table Overview

stages: Festival venues with specific geographic locations and enforced positive capacity safety guidelines (CHECK (capacity > 0)).

artists: Performing individuals/groups along with designated booking and management contacts.

attendees: Guest profiles secured with unique email constraint checking.

vendors: Authorized commercial entities operating on festival grounds.

sponsors: Corporate partners contributing to overall festival funding.

performances: Schedules mapping artists to specific stages with chronologically validated boundaries (CHECK (end_time > start_time)).

tickets: Pass distributions validating purchase categories (Regular, VIP, student) and non-negative pricing matrices.

sales: Microtransaction points logging vendor receipts, strictly maintaining minimum inventory counts.

stage_sponsorships: Financial allocations mapping corporate backing directly to target performance venues.

🧪 Quality Assurance & Relational Analysis

During the compilation of our database documentation, our engineering team successfully analyzed, audited, and resolved architectural gaps:

Unique Key Management: Replaced standard custom constraints with native SQLite UNIQUE INDEX controls to enforce zero-duplicate registration criteria.

Integrity Guardrails: Discovered and synchronized minor structural differences in column names across the SQL files (sale_time vs sale_date and contact_email fields) to ensure continuous, error-free query compilation.

🚀 Installation & Execution Guide

Follow these steps to initialize, load, and query the database from your local terminal environment.

Prerequisites

Ensure you have the SQLite3 CLI client installed on your system:

# Ubuntu / Debian

sudo apt install sqlite3

# macOS (via Homebrew)

brew install sqlite

Step 1: Initialize Database & Core Tables

Compile the base tables and apply performance-enhancing relational constraints:

# Open SQLite and run creation scripts in sequence

sqlite3 summertides.db < database/01_create_database.sql
sqlite3 summertides.db < database/02_create_tables.sql
sqlite3 summertides.db < database/04_constraints.sql

Step 2: Seed Mock Data

Inject mock transactional data into the empty schemas:

sqlite3 summertides.db < database/03_insert_data.sql

Step 3: Run Analytic Queries

Execute the complex joins or business intelligence reporting scripts:

# Run join queries

sqlite3 -header -column summertides.db < queries/10_joins.sql

# Run aggregation metrics

sqlite3 -header -column summertides.db < queries/12_bonus.sql

📊 Sample Analytic Output (From Core Scripts)

Join Query: Interactive Schedule Verification

Connects schedules, artist profiles, and physical venues to output clean timeline rosters:

SELECT
stages.student_name AS stage_name,
artists.name AS artist_name,
performances.start_time,
performances.end_time
FROM performances
JOIN stages ON performances.stage_id = stages.stage_id
JOIN artists ON performances.artist_id = artists.artist_id;

Aggregate Query: Vendor Performance vs Average Ticket Yield

Filters commercial vendors whose total revenue metrics outpace the average transaction volume on-site:

SELECT
vendor_id,
SUM(amount) AS total_sales
FROM sales
GROUP BY vendor_id
HAVING total_sales > (SELECT AVG(amount) FROM sales);

👥 The Engineering & Documenting Team

Wayne Kiptoo — Lead Database Engineer (Core Schema Design & Table Engineering)

Brigit Njoroge — Performance Engineer (Relational Constraints, Performance Indexes & Optimization)

[Your Name] — Technical Writer & Documenter (Data Dictionary, Slide Presentations & System Architecture Manual)
