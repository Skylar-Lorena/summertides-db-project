# Summertides DB 

A PostgreSQL database modeling a Kenyan music festival — stages, artists, performances, attendees, tickets, and vendors — built as a Moringa School SQL project.

---

##  Requirements

- PostgreSQL 13 or higher
- `psql` command-line client (the script uses the `psql`-specific `\c` command to switch databases)

---

##  Installation

Run the files in number order — everything after `04` depends on the database, tables, and data already being set up by the files before it.

```bash
psql -U your_username -f queries/01_create_database.sql
psql -U your_username -f queries/02_create_tables.sql
psql -U your_username -f queries/03_insert_data.sql
psql -U your_username -f queries/04_constraints.sql
```

The scripts drop and recreate `summertides_db` from scratch every time they run, so it's always safe to start over for a clean slate.

---

## Schema Overview

### Core Tables

| Table | Description |
|---|---|
| `stages` | Festival venues — name, location, capacity |
| `artists` | Performing artists — name, genre, country |
| `performances` | Links an artist to a stage, date, and start time |
| `attendees` | Festival-goers — name, email, phone |
| `tickets` | Ticket purchases — linked to an attendee, with tier, price, and purchase date |
| `vendors` | Food/beverage/merch stalls — name, business type, stall number |

### Relationships

| Table | Foreign Keys |
|---|---|
| `performances` | `artist_id` → `artists`, `stage_id` → `stages` |
| `tickets` | `attendee_id` → `attendees` |
| `vendors` | *(none — currently standalone)* |

---

##  Queries Folder Structure

Once the database is built, `queries/` holds a numbered series of SQL files that practice different query types against it.

| File | What It Does |
|---|---|
| `01_create_database.sql` | Creates the database from scratch |
| `02_create_tables.sql` | Builds the tables — stages, artists, performances, attendees, tickets, vendors |
| `03_insert_data.sql` | Fills the tables with sample festival data |
| `04_constraints.sql` | Adds rules to keep the data clean, like no duplicate emails |
| `05_select.sql` | Basic queries that just pull data out of the tables |
| `06_filtering.sql` | Queries that narrow results down using conditions |
| `07_order_limit.sql` | Queries that sort results and limit how many show up |
| `08_case.sql` | Queries that label or categorize results based on conditions |
| `09_group_by.sql` | Queries that group and summarize data, like totals per stage |
| `10_joins.sql` | Queries that combine multiple tables together |
| `11_views.sql` | Saved, reusable versions of common queries |
| `12_bonus.sql` | Extra queries that go beyond the basics |

Files `05` through `12` can be run in any order once `01`–`04` are done, since they're just reading from the finished tables.

---

##  Seed Data Included

| Category | Count | Notes |
|---|---|---|
| Stages | 4 | Capacities range from 1,500 to 10,000 |
| Artists | 6 | Sauti Sol, Khaligraph Jones, Bensoul, Nadia Mukami, Buruklyn Boyz, Nikita Kering |
| Performances | 5 | All dated Dec 12–13, 2026 (Jamhuri Day weekend) — note Nadia Mukami has no scheduled performance |
| Attendees | 5 | Mix of Moringa School and personal emails |
| Tickets | 5 | Priced in KES, 2,000–10,000 |
| Vendors | 5 | Food, beverage, and merchandise stalls |

---

##  Business Rules — Verification Status

`04_constraints.sql` adds six `CHECK`/`UNIQUE` rules after the tables and data are loaded. **Only 3 of the 6 will run successfully** — the rest reference tables or columns that don't exist yet, and Postgres will error out on them rather than skip them silently.

| # | Rule | Status |
|---|---|---|
| 1 | Attendee emails must be unique |  Works |
| 2 | Ticket type restricted to VIP/Regular/Student |  Fails — targets `attendees.ticket_type`, which doesn't exist (tier info is in `tickets.ticket_tier`) |
| 3 | Stage capacity must be positive |  Works |
| 4 | Vendor sale amounts can't be negative |  Fails — no `sales` table exists |
| 5 | Sponsor contributions must be positive |  Fails — no `sponsors` table exists |
| 6 | Performance end time must be after start time | Fails — `performances` has no `end_time` column |

Run `04_constraints.sql` section by section rather than all at once if you want to catch exactly where it stops.

---

##   Examples

```bash
# Build the database in order
for f in queries/01_create_database.sql queries/02_create_tables.sql queries/03_insert_data.sql; do
  psql -U your_username -f "$f"
done

# Then try out one of the later query files
psql -U your_username -f queries/10_joins.sql
```

```sql
-- Viewing the festival schedule
SELECT a.artist_name, s.stage_name, p.performance_date, p.start_time
FROM performances p
JOIN artists a ON p.artist_id = a.artist_id
JOIN stages s ON p.stage_id = s.stage_id
ORDER BY p.performance_date, p.start_time;

-- Checking total ticket revenue
SELECT SUM(price) AS total_revenue FROM tickets;

-- Finding attendees without a ticket
SELECT a.first_name, a.last_name
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id
WHERE t.ticket_id IS NULL;
```

---

##  Notes & Known Gaps

- Vendors aren't linked to stages, performances, or a schedule yet.
- No `sponsors` table exists, despite Rule 5 assuming one.
- `ticket_tier` is free text (e.g. `"VIP Golden Circle"`) rather than a fixed set of values.
- Nothing currently prevents selling more tickets than a stage's capacity.
- Prices are stored as plain `NUMERIC` — Kenyan Shillings is implied by context, not enforced.
- If a query in `05`–`12` isn't returning what you expect, check `04_constraints.sql` first — it may not have applied all its rules. 