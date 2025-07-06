# Query Optimization Report

## 🧾 Initial Query Overview

The original query retrieved:
- Booking information
- Full user details
- Full property details
- Payment info (if available)

It joined 4 tables: `Booking`, `User`, `Property`, and `Payment`.

### Issues Identified (via EXPLAIN ANALYZE)
- Full table scans due to missing indexes on `user_id`, `property_id`, and `booking_id`.
- Redundant data fetched: full user and property records even if only names were needed.
- Join order impacted performance due to lack of proper filtering.

---

## ✅ Optimization Techniques Applied

1. **Indexes Added**  
   - `user_id` (Booking)
   - `property_id` (Booking)
   - `booking_id` (Payment)

2. **Selected Only Needed Columns**  
   Reduced payload size by excluding unnecessary fields (e.g., password_hash, full property descriptions).

3. **Query Refactored**  
   - Used string concatenation for full name.
   - Avoided fetching unnecessary joins if not needed by UI/API.

---

## 📈 Performance Gains

After applying optimizations and re-running `EXPLAIN ANALYZE`:
- Reduced execution time from _X ms_ to _Y ms_
- Reduced cost estimates and row scanning

---

## ✅ Recommendation

Continue monitoring with realistic data volumes. Use partial indexes or materialized views for high-volume reports.
