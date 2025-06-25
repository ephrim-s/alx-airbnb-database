# 🧩 Database Normalization Report (Up to 3NF)

This document explains the normalization process applied to the Airbnb-style database for the **DataScape: Mastering Database Design** project. The goal is to ensure data integrity, eliminate redundancy, and optimize the schema for performance and maintainability.

---

## ✅ First Normal Form (1NF)

### Rule:
- Each column must contain atomic (indivisible) values.
- Each record must be unique (no duplicate rows).
- No repeating groups or arrays.

### Application:
All tables meet 1NF:
- Each attribute stores atomic values (e.g., `first_name`, `email`, `role`).
- There are no multi-valued fields or nested structures.
- All tables have a defined primary key (`*_id` as UUID).

✅ **Schema satisfies 1NF**

---

## ✅ Second Normal Form (2NF)

### Rule:
- Must first meet 1NF.
- Every non-key attribute must be fully functionally dependent on the **entire** primary key (i.e., no partial dependencies).

### Application:
- All primary keys are **single-column UUIDs** (no composite keys), so no risk of partial dependencies.
- For example:
  - In the `Booking` table, attributes like `start_date`, `end_date`, and `status` depend entirely on the `booking_id` key.

✅ **Schema satisfies 2NF**

---

## ✅ Third Normal Form (3NF)

### Rule:
- Must first meet 2NF.
- No **transitive dependencies** (i.e., non-key attributes should not depend on other non-key attributes).

### Review and Justification:

| Table      | Potential Issue | Action Needed | Result |
|------------|------------------|----------------|--------|
| User       | None             | ✅ Already in 3NF | OK     |
| Property   | None             | ✅ Already in 3NF | OK     |
| Booking    | None             | ✅ Already in 3NF | OK     |
| Payment    | None             | ✅ Already in 3NF | OK     |
| Review     | None             | ✅ Already in 3NF | OK     |
| Message    | None             | ✅ Already in 3NF | OK     |

All non-key attributes in each table are **directly dependent** on the primary key. No transitive dependencies exist.

---

## 🏁 Conclusion

✅ The database schema has been reviewed and is **fully normalized up to Third Normal Form (3NF)**.  
This ensures:
- Minimal redundancy
- Logical data organization
- High data integrity
- Efficient querying and updates

This normalization process provides a robust foundation for building a scalable and maintainable database system for the Airbnb-like application.
