DELIMITER //
CREATE PROCEDURE UpdateBooking(
    IN p_bookingID INT,
    IN p_bookingDate DATETIME
)
BEGIN
    UPDATE Bookings
    SET BookingDate = p_bookingDate
    WHERE BookingID = p_bookingID;
END //
DELIMITER ;
