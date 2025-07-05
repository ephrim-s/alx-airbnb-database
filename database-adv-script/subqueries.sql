-- 1. Non-Correlated Subquery: Properties where average rating > 4.0
SELECT 
    property_id,
    name,
    location
FROM 
    Property
WHERE 
    property_id IN (
        SELECT 
            property_id
        FROM 
            Review
        GROUP BY 
            property_id
        HAVING 
            AVG(rating) > 4.0
    );


-- 2. Correlated Subquery: Users who have made more than 3 bookings
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    User u
WHERE 
    (
        SELECT COUNT(*)
        FROM Booking b
        WHERE b.user_id = u.user_id
    ) > 3;
