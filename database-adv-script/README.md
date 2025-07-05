# SQL Join Queries – ALX Airbnb Database

This directory contains SQL scripts demonstrating the use of SQL joins on the Airbnb clone database schema. The queries show how to retrieve data using various types of joins.

## 🔄 Queries Included

1. **INNER JOIN**
   - Fetches bookings along with the user information for each booking.
   - Excludes bookings without associated users.

2. **LEFT JOIN**
   - Retrieves all properties along with any reviews they might have.
   - Properties with no reviews are still included.

3. **FULL OUTER JOIN**
   - Displays all users and all bookings.
   - Ensures users with no bookings and bookings not linked to any user are included.

## 📂 Files

- `joins_queries.sql` – Contains all three join queries.
