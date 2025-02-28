import mysql.connector as connector

# Task 1: Connect to the database and create a cursor
connection = connector.connect(
    user="capstone-user-connection",
    password="",
    database="LittleLemonDB"
)
cursor = connection.cursor()

# Task 2: Execute a query to show all tables in the database
show_tables_query = "SHOW tables"
cursor.execute(show_tables_query)
results = cursor.fetchall()
print("Tables in the database:")
print(results)

# Task 3: Query with JOIN
# This query returns the full name, contact number, and bill amount (TotalCost) 
# for every customer who spent more than $60.
join_query = """
SELECT c.FullName, c.ContactNumber, o.TotalCost
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE o.TotalCost > 60;
"""
cursor.execute(join_query)
results_join = cursor.fetchall()
print("\nCustomers with orders above $60:")
for row in results_join:
    print(row)

# Clean up
cursor.close()
connection.close()
