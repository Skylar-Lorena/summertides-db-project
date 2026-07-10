# Summertides DB 

A PostgreSQL database modeling a Kenyan music festival — stages, artists, performances, attendees, tickets, and vendors — built as a Moringa School SQL project.

---

##  Requirements

- PostgreSQL 13 or higher
- `psql` command-line client (the script uses the `psql`-specific `\c` command to switch databases)

---

##  Installation

```bash
# 1. Save the script (e.g. summertides.sql), then run it with psql
psql -U your_username -f summertides.sql
```

The script drops and recreates `summertides_db` from scratch every time it runs, so it's always safe to re-run for a clean slate.

---

##  Schema Overview

All tables live in `summertides_db` once the script has been run.

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

##  Examples

### Viewing the festival schedule

```sql
SELECT a.artist_name, s.stage_name, p.performance_date, p.start_time
FROM performances p
JOIN artists a ON p.artist_id = a.artist_id
JOIN stages s ON p.stage_id = s.stage_id
ORDER BY p.performance_date, p.start_time;
```

### Checking total ticket revenue

```sql
SELECT SUM(price) AS total_revenue FROM tickets;
```

### Finding attendees without a ticket

```sql
SELECT a.first_name, a.last_name
FROM attendees a
LEFT JOIN tickets t ON a.attendee_id = t.attendee_id
WHERE t.ticket_id IS NULL;
```

---

##  Seed Data Included

| Category | Count | Notes |
|---|---|---|
| Stages | 4 | Capacities range from 1,500 to 10,000 |
| Artists | 6 | Sauti Sol, Khaligraph Jones, Bensoul, Nadia Mukami, Buruklyn Boyz, Nikita Kering |
| Performances | 5 | All dated Dec 12–13, 2026 (Jamhuri Day weekend) — note that Nadia Mukami has no scheduled performance |
| Attendees | 5 | Mix of Moringa School and personal emails |
| Tickets | 5 | Priced in KES, 2,000–10,000 |
| Vendors | 5 | Food, beverage, and merchandise stalls |

---

## Business Rules — Verification Status

The script adds six `CHECK`/`UNIQUE` constraints after the tables and data are loaded. **Only 3 of the 6 will run successfully** — the rest reference tables or columns that don't exist yet, and Postgres will error out on them rather than skip them silently.

| # | Rule | Status |
|---|---|---|
| 1 | Attendee emails must be unique |  Works |
| 2 | Ticket type restricted to VIP/Regular/Student |  Fails — targets `attendees.ticket_type`, which doesn't exist (tier info is in `tickets.ticket_tier`) |
| 3 | Stage capacity must be positive | Works |
| 4 | Vendor sale amounts can't be negative |  Fails — no `sales` table exists |
| 5 | Sponsor contributions must be positive |  Fails — no `sponsors` table exists |
| 6 | Performance end time must be after start time | Fails — `performances` has no `end_time` column |

Run the script section by section rather than all at once if you want to catch exactly where it stops.

---

##  Notes & Known Gaps

- Vendors aren't linked to stages, performances, or a schedule yet.
- No `sponsors` table exists, despite Rule 5 assuming one.
- `ticket_tier` is free text (e.g. `"VIP Golden Circle"`) rather than a fixed set of values.
- Nothing currently prevents selling more tickets than a stage's capacity.
- Prices are stored as plain `NUMERIC` — Kenyan Shillings is implied by context, not enforced.