# Airbnb Database Sample Data (SQL DML)

This file contains SQL `INSERT` statements to populate the Airbnb-style relational database with realistic sample data for testing and demonstration purposes.

## Sample Data Included

- 👤 Users: 3 users with roles guest, host, and admin
- 🏠 Properties: 2 properties listed by the host
- 📅 Bookings: 2 bookings by a guest (confirmed and pending)
- 💳 Payments: 1 successful payment
- ⭐ Reviews: 2 reviews left by the guest
- 💬 Messages: 2 messages exchanged between guest and host

## How to Run

```bash
psql -U your_user -d your_database -f seed.sql
