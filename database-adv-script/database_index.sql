-- Create index on email column in User table for faster login and lookups
CREATE INDEX idx_user_email ON User(email);

-- Create index on user_id in Booking table for efficient joins and filters
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on property_id in Booking table for property lookups
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create index on location in Property table for location-based search
CREATE INDEX idx_property_location ON Property(location);

-- Create index on pricepernight in Property table for filtering by price
CREATE INDEX idx_property_price ON Property(pricepernight);


-- Performance check before/after index (simulated here)
-- Query: Get bookings made by a specific user
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = '00000000-0000-0000-0000-000000000001';

-- Query: Search for properties in a specific location
EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'Accra';

-- Query: Get properties within a price range
EXPLAIN ANALYZE
SELECT * FROM Property WHERE pricepernight BETWEEN 50 AND 100;
