# 🌊 SummerTides Festival Relational Database System

## Project Overview

The SummerTides Festival Database System is a production-ready relational database engineered to streamline the operations of a premier three-day music, arts, and cultural festival in East Africa.

Previously, festival organizers managed logistics, ticketing, artist schedules, and financial transactions using disconnected spreadsheets. This outdated approach led to critical operational challenges, including duplicate records, unverified ticket sales, scheduling conflicts, and inaccurate financial reporting.

This project completely replaces those legacy spreadsheets with a centralized, scalable SQL database. The new system automates data management, secures transactional integrity, and provides real-time business intelligence to festival coordinators.

---

## Core Features & Engineering Solutions

- **Automated Scheduling and Conflict Resolution:** Implements structural constraints that eliminate the risk of double-booking artists or over-allocating performance stages.
- **Scalable Core Architecture:** Connects complex operational dimensions—including multi-tier ticketing systems, vendor revenue tracking, stage sponsorships, and artist timetables—into a single, unified schema.
- **Business Intelligence (BI) Reporting:** Features pre-compiled SQL views and complex analytical queries that instantly generate administrative reports, including vendor performance metrics, VIP revenue yields, and stage capacity audits.
- **Localized Sample Data:** Features a robust data pipeline populated with realistic, regional records reflecting local artists, regional currency variables, and East African coastal festival dynamics.

---

## Project Architecture & Execution Sequence

To deploy the database infrastructure smoothly and prevent runtime, relational, or foreign-key assignment errors, you must execute the scripts in the exact sequence outlined below:

### Phase 1: Database Setup and Schema Initialization

1.  **`database/01_create_database.sql`**  
    Initializes the core database cluster and configures environmental parameters.
2.  **`database/02_create_tables.sql`**  
    Generates the structural table blueprints (including `Artists`, `Stages`, `Attendees`, `Tickets`, `Vendors`, and `Sponsors`) along with primary keys.
3.  **`database/03_insert_data.sql`**  
    Seeds the structural database tables with comprehensive, realistic, and localized mock data records.
4.  **`database/04_constraints.sql`**  
    Enforces referential integrity, foreign key relations, unique parameters, and operational validation bounds.

### Phase 2: Analytical Queries & Administrative Reporting

Execute the operations inside the `queries/` directory sequentially from **`05_select.sql` through `12_bonus.sql`**. These scripts pull critical administrative insights, ranging from basic data segmenting filters and multi-table joins to complex conditional logic mapping and revenue aggregations.

---

## 👥 Engineering Team & Roles

| Full Name | Project Role | Core Contributions & Responsibilities |

| **Faith Kiruku** | Database Architect | Orchestrated conceptual schema modeling and mapped out the official Entity-Relationship Diagram (ERD). |
| **Ilhan Mohamud** | SQL Developer | Implemented structural table frameworks, configured DDL scripts, and mapped data control keys. |
| **Brigit Njoroge** | Data Engineer | Programmed the data injection pipeline and generated realistic regional database mock records. |
| **Wayne Kiptoo** | Query Specialist | Authored advanced data retrieval scripts, tactical business analytics, and reusable organizational views. |
| **Gad Ontune** | QA Tester | Audited relational dependencies, verified script execution orders, and managed stress-testing operations. |
| **Abdinasir Osman** | Documentation Lead | Formatted the repository layout, authored technical data dictionaries, and developed the final project presentation. |

---

## 🚀 Deployment Instructions

1. Clone this repository to your local machine.
2. Open your preferred SQL database management interface or command-line terminal.
3. Execute the scripts in the exact numerical order listed in the execution sequence above to build a stable, conflict-free deployment.
