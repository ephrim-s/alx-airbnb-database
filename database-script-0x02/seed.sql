-- ✅ Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw_2', '0987654321', 'host'),
  ('00000000-0000-0000-0000-000000000003', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw_3', NULL, 'admin');

-- ✅ Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Seaside Villa', 'A beautiful villa by the sea', 'Cape Coast', 350.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'City Apartment', 'Modern apartment in the city center', 'Accra', 120.00);

-- ✅ Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2025-07-10', '2025-07-15', 1750.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '2025-08-01', '2025-08-03', 240.00, 'pending');

-- ✅ Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 1750.00, 'credit_card');

-- ✅ Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Amazing experience!'),
  ('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 4, 'Great location but a bit noisy.');

-- ✅ Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi Bob, is your apartment available in July?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes, it is available! Let me know your dates.');
