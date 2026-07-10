# 📖 SummerTides Festival - Data Dictionary

This document provides a comprehensive technical overview of the SummerTides Festival database schema. It describes the structural design, data types, and integrity constraints enforced across all relational entities.

---

## 🛠️ Global Database Configurations

The system runs on the **SQLite3 Engine**. To protect relational integrity, the following system configurations must be executed at the beginning of every session:

```sql
PRAGMA foreign_keys = ON;
```
