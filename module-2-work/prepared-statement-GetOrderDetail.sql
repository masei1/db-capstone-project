SET @sql = 'SELECT OrderID, Quantity, Cost FROM Orders WHERE CustomerID = ?';
PREPARE GetOrderDetail FROM @sql;

-- // usage
SET @id = 1;
EXECUTE GetOrderDetail USING @id;
