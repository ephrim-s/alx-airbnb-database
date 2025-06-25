# 📘 Entity-Relationship Diagram (ERD) - Airbnb Database

This ERD describes the core entities and relationships for an Airbnb-like application. It outlines how users, properties, bookings, payments, messages, and reviews interact in a relational database.

---

## 🧱 Entities and Attributes

### 1. 🧑‍💼 User
- `user_id` (UUID, PK, Indexed)
- `first_name` (VARCHAR, NOT NULL)
- `last_name` (VARCHAR, NOT NULL)
- `email` (VARCHAR, UNIQUE, NOT NULL)
- `password_hash` (VARCHAR, NOT NULL)
- `phone_number` (VARCHAR, NULL)
- `role` (ENUM: guest, host, admin)
- `created_at` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

---

### 2. 🏡 Property
- `property_id` (UUID, PK, Indexed)
- `host_id` (UUID, FK → User.user_id)
- `name` (VARCHAR, NOT NULL)
- `description` (TEXT, NOT NULL)
- `location` (VARCHAR, NOT NULL)
- `pricepernight` (DECIMAL, NOT NULL)
- `created_at` (TIMESTAMP)
- `updated_at` (TIMESTAMP)

---

### 3. 📅 Booking
- `booking_id` (UUID, PK, Indexed)
- `property_id` (UUID, FK → Property.property_id)
- `user_id` (UUID, FK → User.user_id)
- `start_date` (DATE, NOT NULL)
- `end_date` (DATE, NOT NULL)
- `total_price` (DECIMAL, NOT NULL)
- `status` (ENUM: pending, confirmed, canceled)
- `created_at` (TIMESTAMP)

---

### 4. 💳 Payment
- `payment_id` (UUID, PK, Indexed)
- `booking_id` (UUID, FK → Booking.booking_id)
- `amount` (DECIMAL, NOT NULL)
- `payment_date` (TIMESTAMP)
- `payment_method` (ENUM: credit_card, paypal, stripe)

---

### 5. ⭐ Review
- `review_id` (UUID, PK, Indexed)
- `property_id` (UUID, FK → Property.property_id)
- `user_id` (UUID, FK → User.user_id)
- `rating` (INTEGER, CHECK: 1–5)
- `comment` (TEXT, NOT NULL)
- `created_at` (TIMESTAMP)

---

### 6. 💬 Message
- `message_id` (UUID, PK, Indexed)
- `sender_id` (UUID, FK → User.user_id)
- `recipient_id` (UUID, FK → User.user_id)
- `message_body` (TEXT, NOT NULL)
- `sent_at` (TIMESTAMP)

---

## 🔗 Relationships Overview

| Relationship                | Type         | Description                                     |
|----------------------------|--------------|-------------------------------------------------|
| User → Booking             | 1 : N        | A user (guest) can make many bookings           |
| User → Property            | 1 : N        | A host can own multiple properties              |
| Property → Booking         | 1 : N        | Each property can have many bookings            |
| Booking → Payment          | 1 : 1        | One payment per booking                         |
| User → Review              | 1 : N        | A user can write many reviews                   |
| Property → Review          | 1 : N        | A property can receive many reviews             |
| User → Message (sender)    | 1 : N        | A user can send many messages                   |
| User → Message (recipient) | 1 : N        | A user can receive many messages                |

---

## 🗂️ Constraints and Indexing Summary

- **Primary Keys:** All `*_id` fields are UUID and indexed.
- **Foreign Keys:** Enforced for data integrity (e.g., `host_id`, `property_id`, `user_id`, `booking_id`)
- **Unique Constraints:** `email` in the User table
- **Check Constraints:** `rating` must be between 1 and 5
- **Indexed Fields:** `email`, `property_id`, `booking_id`

---

## 🛠️ ER Diagram Tool

To visualize this ERD:
- Open [Draw.io](https://draw.io)
- Create entities as rectangles and relationships as arrows
- Optionally, use [this diagram template](https://draw.io) and export as PNG or SVG for your repo

---

> ✅ This markdown file documents the ERD structure for the **DataScape** Airbnb-style database project. Use it alongside SQL scripts and your ER diagram image for a complete submission.
