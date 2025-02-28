DELIMITER //
CREATE PROCEDURE CheckBooking(
    IN p_bookingDate DATE,
    IN p_tableNumber INT
)
BEGIN
    DECLARE bookingCount INT;
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = p_bookingDate
      AND TableNumber = p_tableNumber;
    IF bookingCount > 0 THEN
        SELECT CONCAT('Table ', p_tableNumber, ' is already booked on ', p_bookingDate, '.') AS Message;
    ELSE
        SELECT CONCAT('Table ', p_tableNumber, ' is available on ', p_bookingDate, '.') AS Message;
    END IF;
END //
DELIMITER ;

-- // usage
CALL CheckBooking('2022-10-10', 5);