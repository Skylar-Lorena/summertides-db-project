# SummerTides Festival Database — Presentation & Demo Notes

## 1. The Brief
Our team was hired as Database Engineers for SummerTides Festival. The
organisers needed one relational database to manage attendees, artists,
performances, stages, vendors, sponsors, and ticket sales — replacing a
patchwork of spreadsheets.

## 2. Our Approach
1. Interviewed the "business scenario" requirements and sketched an ERD
   before writing any SQL (see `docs/ERD.png`).
2. Modeled 9 tables covering every entity in the brief, including a
   junction table (`stage_sponsors`) to correctly represent the
   many-to-many relationship between stages and sponsors.
3. Enforced data integrity with primary keys, foreign keys, and
   `CHECK`/`UNIQUE`/`NOT NULL`/`DEFAULT` constraints — then layered on
   extra business-rule constraints (e.g. VIP tickets can't be underpriced,
   a stage can't double-book a time slot).
4. Populated the database with realistic, relationally-consistent sample
   data exceeding every minimum the brief required.
5. Wrote a full suite of queries — from basic `SELECT`s through joins,
   `CASE` categorisation, aggregate reporting, and reusable views.

## 3. Database at a Glance

| Table | Rows | Purpose |
|---|---|---|
| attendees | 20 | Registered festival-goers |
| artists | 15 | Booked performers |
| stages | 6 | Physical performance areas |
| performances | 30 | Artist ↔ stage schedule |
| tickets | 40 | Entry purchases |
| vendors | 10 | Food, drink, merch, services |
| sales | 50 | Vendor transactions |
| sponsors | 8 | Festival funders |
| stage_sponsors | 10 | Stage ↔ sponsor links |

## 4. Highlights to Demo

- **`06_filtering.sql`** — business questions like "attendees from Nairobi",
  "VIP tickets only", and "performances between 6–10 PM."
- **`09_group_by.sql`** — revenue and headcount reports organisers actually
  asked for: tickets sold per day, total sales per vendor.
- **`10_joins.sql`** — the artist-schedule and vendor-sales joins that tie
  the whole schema together.
- **`11_views.sql`** — three saved views organisers can query directly
  without re-writing SQL each time:
  - `vip_attendees` — VIP ticket holders
  - `artist_schedule` — full lineup with stage/time
  - `vendor_sales_summary` — revenue rollup per vendor
- **`12_bonus.sql`** — the advanced analytics: top artist, top vendor,
  biggest spender, and total expected ticket revenue.

## 5. Design Decisions Worth Explaining

- **Junction table for sponsors**: a stage can have multiple sponsors and a
  sponsor can back multiple stages, so `stage_sponsors` avoids duplicating
  sponsor data per stage.
- **Separate `festival_day` on both `tickets` and `performances`**: lets us
  report "which day sold the most tickets" independently of when the
  ticket was purchased (`purchase_date`).
- **Constraints beyond the basics** (`04_constraints.sql`): pricing floors
  for premium tickets, a sponsor minimum contribution, and a guard against
  an accidentally double-booked stage slot — all modeled as real festival
  policy, not just textbook constraints.

## 6. What We'd Add Next
- A `Refunds` table to track cancellations.
- A `Staff`/`Volunteers` table for operations reporting.
- Row-level security so vendors only see their own `vendor_sales_summary`
  row in a production deployment.