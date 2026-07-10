 SummerTides Festival Database

Project Presentation

Team: [Add team member names + roles]
Course: Moringa School — Database Engineering
Repository: summertides-db-project


1. Project Overview

SummerTides Festival is a three-day beach festival in East Africa featuring live music, DJs, food vendors, art exhibitions, and multiple performance stages. The organizing committee previously managed everything through spreadsheets, resulting in:


Duplicate records
Missing ticket information
Scheduling conflicts
Poor, unreliable reporting


Our mission: design and build a relational database that powers the entire festival — from ticket sales to stage scheduling to sponsor tracking.


2. Problem Statement

The committee needed clear, reliable answers to questions like:


Which artist is performing where?
Which attendees bought VIP tickets?
Which stage hosted the most performances?
Which vendors generated the most sales?
Which sponsors funded each stage?


A relational database with proper constraints and reusable views solves the duplication, conflict, and reporting problems spreadsheets could not.


3. Entity-Relationship Diagram

Show Image

Core entities:


 Artists
 Stages
 Performances
 Attendees
 Tickets
 Vendors
 Sales
 Sponsors


(Add a short description of each entity and how it relates to the others — see docs/data_dictionary.md for full field-level definitions.)


4. Schema Design Decisions

Key choices made while designing database/02_create_tables.sql:


Primary/foreign keys: [explain your key strategy]
Normalization: tables normalized to [2NF/3NF] to eliminate redundant data
Constraints (database/04_constraints.sql):

Prevented double-booking of stages via [explain approach]
Enforced ticket type validity (e.g., VIP/Regular) via CHECK constraints
Enforced referential integrity across attendees → tickets → performances





(Fill in the specific constraints your team actually implemented.)


5. Sample Data

database/03_insert_data.sql populates the schema with realistic sample data:


 artists across [X] genres
 performances across 3 days and [X] stages
 attendees with a mix of VIP and Regular tickets
 vendors with varying sales volumes
 sponsors linked to specific stages



6. Business Queries

Located in queries/, these SQL scripts answer the committee's core questions:

FilePurpose05_select.sqlBasic data retrieval06_filtering.sqlFiltered results (e.g., VIP attendees only)07_order_limit.sqlTop-N reports (e.g., top vendors by sales)08_case.sqlConditional labeling (e.g., ticket tiers)09_group_by.sqlAggregated reports (e.g., performances per stage)10_joins.sqlMulti-table reports (e.g., artist + stage + time)11_views.sqlReusable views for repeat reporting12_bonus.sqlAdditional/advanced queries

Example: Which stage hosted the most performances?

sql-- from queries/09_group_by.sql
[paste your actual query + a sample output row or two here]

Example: Which vendors generated the most sales?

sql-- from queries/07_order_limit.sql
[paste your actual query + a sample output row or two here]

(Swap in 2–3 of your strongest queries with real output — this is usually the most compelling part of the demo.)


7. Reusable Views

queries/11_views.sql defines views so the committee can pull live reports without rewriting SQL each time, e.g.:


vw_vip_attendees — quick lookup of all VIP ticket holders
vw_stage_performance_counts — performance totals per stage
vw_vendor_sales_summary — running sales totals per vendor


(Replace with your actual view names.)


8. Challenges & Lessons Learned


[e.g., resolving scheduling conflicts required a composite constraint on stage + time]
[e.g., debugging duplicate email entries in attendee data]
[e.g., Git branching/merge conflicts across 4 team members working in parallel]



9. Team Contributions

MemberBranchResponsibility[Name]feature/schema-designDatabase Architect — ERD, tables, constraints[Name]feature/sample-dataData Engineer — realistic sample data[Name]feature/business-queriesQuery Developer — queries + views[Name]feature/qa-docsQA & Documentation — testing, docs, presentation


10. Conclusion

The SummerTides Festival database replaces error-prone spreadsheets with a reliable, query-ready relational system — giving the organizing committee accurate, on-demand answers about artists, tickets, vendors, and sponsors, with constraints in place to prevent the duplication and scheduling conflicts that caused problems in the past.