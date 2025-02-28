DELIMITER //
CREATE PROCEDURE AddValidBooking(
    IN p_bookingDate DATE,
    IN p_tableNumber INT
)
BEGIN
    DECLARE bookingCount INT;
    START TRANSACTION;
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = p_bookingDate
      AND TableNumber = p_tableNumber;
    IF bookingCount > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Table', p_tableNumber, ' is already booked on ', p_bookingDate, ' - booking cancelled.') AS Message;
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (p_bookingDate, p_tableNumber);
        COMMIT;
        SELECT CONCAT('Booking confirmed for table ', p_tableNumber, ' on ', p_bookingDate, '.') AS Message;
    END IF;
END //
DELIMITER ;

-- // usage
CALL AddValidBooking('2022-10-10', 5);

