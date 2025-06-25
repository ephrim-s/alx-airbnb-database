# Airbnb Database Schema (SQL DDL)

This script (`schema.sql`) defines the relational database schema for the Airbnb-style system, including tables for users, properties, bookings, payments, reviews, and messages.

## Features

- Primary & Foreign Keys
- ENUMs for roles, status, and payment method
- Timestamps and default values
- Constraints for data integrity (e.g., unique emails, rating check)
- Indexes for optimized queries

## How to Run

```bash
psql -U your_user -d your_database -f schema.sql
