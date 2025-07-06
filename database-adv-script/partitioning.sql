-- Step 1: Rename original Booking table
ALTER TABLE Booking RENAME TO Booking_old;

-- Step 2: Create a new Booking table partitioned by RANGE on start_date
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions by year or month (example: quarterly partitions)
CREATE TABLE Booking_2024_q1 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE Booking_2024_q2 PARTITION OF Booking
    FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE Booking_2024_q3 PARTITION OF Booking
    FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE Booking_2024_q4 PARTITION OF Booking
    FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

-- Step 4: (Optional) Insert data back from old table
INSERT INTO Booking
SELECT * FROM Booking_old;
