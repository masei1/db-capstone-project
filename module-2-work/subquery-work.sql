SELECT m.MenuName
FROM Menus m
WHERE 2 < ANY (
    SELECT o.Quantity
    FROM Orders o
    WHERE o.MenuID = m.MenuID
);
