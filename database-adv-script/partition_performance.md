# Partitioning Performance Report

## 🧠 Objective
Partition the `Booking` table by `start_date` to improve query performance when filtering bookings by date range.

## 🛠️ Implementation
- Renamed the existing `Booking` table to `Booking_old`.
- Created a new `Booking` table partitioned by **RANGE(start_date)**.
- Created quarterly partitions for 2024: Q1 to Q4.
- Inserted existing data into the new partitioned structure.

## 📊 Performance Comparison

### Query Tested:
```sql
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-03-31';
