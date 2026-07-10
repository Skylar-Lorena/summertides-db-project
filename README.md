# 🌊 SummerTides Festival Database

## Overview

This project is a SQLite-based relational database for the SummerTides Festival. It models the core business data needed to manage attendees, ticket sales, performances, vendors, sponsors, and stage sponsorships.

The project is designed as a sprint-style SQL assignment and includes:

- database creation scripts
- table definitions and relationships
- sample data insertion
- constraint validation
- SQL practice exercises
- reusable views
- supporting documentation

## Project Goals

By completing this project, the team will demonstrate the ability to:

- design a relational database schema
- create tables with primary and foreign keys
- enforce business rules with constraints
- load realistic sample data
- write SQL queries for reporting and analysis
- create views for reusable reporting

## Database Scope

The database covers the following entities:

- attendees and ticket purchases
- artists and scheduled performances
- festival stages and stage sponsorships
- vendors and sales records
- sponsors and supporting partnerships

## Repository Structure

- [database](database) — SQL files for creating the database, tables, data, and constraints
- [queries](queries) — SQL exercises for SELECT, filtering, sorting, CASE, grouping, joins, views, and bonus queries
- [docs](docs) — documentation such as the data dictionary and workflow guide
- [presentation](presentation) — presentation notes for the project

## Prerequisites

Make sure SQLite is installed on your machine.

Check it with:

```bash
sqlite3 --version
```

## Setup and Run Instructions

From the project root, run the SQL files in this order:

1. [database/01_create_database.sql](database/01_create_database.sql)
2. [database/02_create_tables.sql](database/02_create_tables.sql)
3. [database/03_insert_data.sql](database/03_insert_data.sql)
4. [database/04_constraints.sql](database/04_constraints.sql)
5. Continue with the query files in [queries](queries) from 05_select.sql onward

Example:

```bash
rm -f /tmp/summertides.db
sqlite3 /tmp/summertides.db < database/01_create_database.sql
sqlite3 /tmp/summertides.db < database/02_create_tables.sql
sqlite3 /tmp/summertides.db < database/03_insert_data.sql
sqlite3 /tmp/summertides.db < database/04_constraints.sql
```

## Suggested Workflow

1. Create the database and schema
2. Insert sample data
3. Validate constraints
4. Complete the SQL exercises in order
5. Test the views and bonus queries

## Team Roles

- Student 1 — Database Architect: designs the schema and table relationships
- Student 2 — SQL Developer: writes the core query exercises
- Student 3 — Data Engineer: loads realistic sample data
- Student 4 — Query Specialist: works on advanced reporting and bonus queries
- Student 5 — QA Tester: validates scripts and checks for errors
- Student 6 — Documentation Lead: maintains the README and project documentation

## Notes

This project is intended to be a practical hands-on exercise in SQL and database design. Clean SQL, clear comments, and correct relationships are important throughout the workflow.
