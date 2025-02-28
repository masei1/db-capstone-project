DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DELETE FROM Orders
    WHERE OrderID = order_id;

    SELECT CONCAT('Order with OrderID ', order_id, ' has been canceled.') AS Result;
END //
DELIMITER ;

-- // usage
CALL CancelOrder(1);
