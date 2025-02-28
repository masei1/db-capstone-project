# Little Lemon Booking System

This project is a comprehensive booking system for Little Lemon, designed to manage customer bookings, orders, and related data. The system includes a MySQL database with a well-defined data model, stored procedures for managing bookings, a Python client to interact with the database, and Tableau dashboards for data analysis.

## Project Overview

- **Database:**
  - MySQL database with tables such as Customers, Bookings, Orders, Menu, MenuItems, etc.
  - An ER diagram demonstrating the relationships between tables.
  - SQL schema file for creating the database.
- **Stored Procedures:**
  - `GetMaxQuantity()`: Returns the maximum ordered quantity.
  - `AddBooking()`: Adds a new booking record.
  - `UpdateBooking()`: Updates the booking date of an existing booking.
  - `CancelBooking()`: Cancels (deletes) a booking record.
  - (Optional) `ManageBooking()`: Additional procedure to react to changes in booking data.
- **Python Client:**
  - Connects to the MySQL database.
  - Executes queries and calls stored procedures.
- **Tableau Analysis:**
  - Connects to the provided data (Excel file or database).
  - Includes dashboards and worksheets with key insights (e.g., sales analysis, profit calculation).

## Prerequisites

- MySQL Server with the Little Lemon database installed.
- MySQL Workbench (for managing the data model and SQL schema).
- Python 3 with `mysql-connector-python` installed.
- Tableau Desktop for data visualization and analysis.
