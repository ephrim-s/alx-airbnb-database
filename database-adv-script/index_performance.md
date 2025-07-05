# Index Performance Optimization – ALX Airbnb Database

## 🧠 Objective
Enhance query performance by identifying and indexing frequently queried columns in the `User`, `Booking`, and `Property` tables.

---

## 🔍 High-Usage Columns Identified

| Table     | Column           | Reason for Indexing                                      |
|-----------|------------------|-----------------------------------------------------------|
| User      | email            | Frequently used in login queries and uniqueness checks.  |
| Booking   | user_id          | Often joined with User or filtered per user bookings.    |
| Booking   | property_id      | Used in joins and queries involving property bookings.   |
| Property  | location         | Used in search and filtering.                            |
| Property  | pricepernight    | Common in range-based queries.                           |

---

## 🏗️ Index Creation

All index creation queries are saved in [`database_index.sql`](./database_index.sql).

---

## 📈 Performance Evaluation

**Query: Find bookings for a specific user**
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'UUID-HERE';
