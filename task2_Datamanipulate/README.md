# Data Manipulation

# objective:
Objective of this was to gain practical knowledge on SQL Data manipulation Language(DML) commands like INSERT,UPDATE,DELETE:
->inseritng records into the Table, including handling NULL values and default values
->updating incomplete or inaccurate values with accurate values with help of appropriate conditions
->Deleting rows or records based on condition.

## operations performed

# INSERT
- insert values into the table using INSERT into ... 
- tested with 
# Select * from table_name; 
to ensure that data is inserted accurately

# UPDATE 

-Updated records where data was missing or required correction.
-Used IS NULL condition to locate and fix incomplete fields.
-Practiced conditional updates using CASE for multiple country-specific updates.
-Learned safe update practices and how to work around "Safe Update Mode" in MySQL using:
to activate safe mode:
 # SET SQL_SAFE_UPDATES = 1; 
 to deactivate sae mode 
 # SET SQL_SAFE_UPDATES = 0;

# DELETE 

-Deleted specific rows based on conditions using WHERE.
-Practiced advanced deletion problem statements:
-Deleting rows via JOIN (e.g., customers with no orders).
-Using subqueries to filter deletions (e.g., based on city not present in orders).

# Example scenario: Deleted customers who had not placed any orders to maintain data integrity.

# what i learnt:
-How to use NULL safely and effectively in real-world data operations.
-Importance of condition based UPDATE and DELETE to prevent accidental data loss.
-Working with subqueries and joins in DML statements.
-Managing SQL constraints such as safe update mode in MySQL.
-Reinforced the use of best practices like always specifying column names in INSERT