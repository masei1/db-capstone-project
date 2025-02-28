-- need customer first...
-- INSERT INTO Customers (CustomerID, FullName, Email, ContactNumber)
-- VALUES
--   (1, 'Alice A.', 'alice@example.com', '777-888-999'),
--   (2, 'Bob Bl.', 'bob@example.com', '777-999-888'),
--   (3, 'John J.', 'john@example.com', '888-777-999');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
VALUES
  (1, '2022-10-10', 5, 1),
  (2, '2022-11-12', 3, 3),
  (3, '2022-10-11', 2, 2),
  (4, '2022-10-13', 2, 1);

