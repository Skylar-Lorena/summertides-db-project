# Slide 1: Title
# 🌊 SummerTides Beach Festival
## Relational Database System & System Architecture
---
**Presented by:** Database Engineering Team  
**Scope:** Scaling spreadsheet tracking into a production-grade SQL cluster.

---

# Slide 2: Problem Statement
## The Operational Challenge
* **Spreadsheet Isolation:** The organization managed schedules, vendors, and ticket packages across un-linked sheets.
* **Severe Vulnerabilities:** * Duplicate email addresses across separate passes.
  * Overlapping schedules allowed an artist to be booked at two places at once.
  * Financial calculations lacked constraints, creating accounting anomalies.

---

# Slide 3: Engineering Team & Roles
## Framework Operations
* **Database Architect:** Crafted relational schemas, normalizations, and ERD architectures.
* **SQL Developer / Data Engineer:** Generated data generation loops and structured tables.
* **QA Tester (Your Role!):** Built integrity suites, strict value verification queries, constraints verification, and structural validation testing.
* **Query Specialist:** Assembled deep joins, tracking analytics, and business reporting parameters.

---

# Slide 4: Technical Implementations
## System Safeguards Built
* **Referential Boundaries:** Multi-directional `FOREIGN KEY` links across stages, performances, and profiles with cascading deletions.
* **Value Safeguards:** `CHECK` constraints mapping valid email patterns, multi-tier classifications, and zero-floor boundary prices.
* **Analytical Views:** Pre-compiled database views for `view_festival_schedule` and revenue brackets for immediate operational visibility.

---

# Slide 5: QA Testing Benchmarks
## Operational Readiness Verified
* **Conflict Isolation Tests:** QA scripts correctly identify and block table violations.
* **Null Value Eradication:** Missing data fields are blocked at input via absolute constraint triggers.
* **Clean Deployments:** The whole environment initializes automatically in order without dependency bottlenecks.