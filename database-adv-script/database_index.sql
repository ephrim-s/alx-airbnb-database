-- Create index on email column in User table for faster lookups and authentication
CREATE INDEX idx_user_email ON User(email);

-- Create index on user_id in Booking table for efficient user-booking lookups
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on property_id in Booking table for property-booking joins
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Create index on location in Property table to speed up location-based searches
CREATE INDEX idx_property_location ON Property(location);

-- Create index on pricepernight in Property table to improve price range filtering
CREATE INDEX idx_property_price ON Property(pricepernight);
