# Objective: 
Retrieve and manipulate data using SELECT, WHERE, ORDER BY, GROUP BY, LIMIT, LIKE, and other SQL clauses using the W3Schools Sample Database.

# database context
The W3Schools sample database contains various relational tables such as:

Customers
Orders
Employees
Products
Order_Details
Suppliers

-- This task involved writing queries against these tables to explore data retrieval operations.

1. Data Retrieval Using SELECT:

    Used SELECT * to retrieve all columns from the customers,products,orders,orderdetails table for general data inspection.

    Selected specific columns such as FirstName, LastName, and BirthDate from the Employees table to limit output to relevant fields.

    **Purpose**: Understand table structure and retrieve only necessary data when needed.

2. Filtering Data with WHERE, AND, OR

    Applied WHERE clause to filter Order_Details where quantity is greater than or equal to 5.

    Used OR condition to extract orders placed on specific dates (e.g., '1996-07-04' OR '1997-02-12').

    Combined AND conditions to find customers located in 'Germany' and specifically in the city 'AACHEN'.

    **Purpose**: Learnt how to get specific rows using logical conditions.

3. Pattern Matching with LIKE
    Used _ (underscore) wildcard to find entries where characters are in fixed positions.

    Example: Country matching G_rm_ny identifies “Germany”.

    Used % wildcard to find flexible matches:

    Cities or countries containing the letter 'u' or 'U'.

    Names starting with or ending in a particular letter (e.g., R%, %e).

    Combined wildcards to filter complex patterns like names containing a_d.

    **Purpose**: To practice flexible string filtering and understand wildcard behavior.

4. Sorting with ORDER BY

    Sorted Employees by BirthDate to identify the oldest and youngest employees.

    Ordered Customers alphabetically by CustomerName and applied LIMIT and OFFSET for pagination-like behavior.

    **Purpose**: To understand how to control result order for better readability or further logic.

5. Limiting Output with LIMIT and OFFSET

    Used LIMIT to retrieve only the top 10 oldest employees.

    Applied OFFSET in combination with LIMIT to simulate page-wise browsing of customer records (e.g., rows 21–30).

    **Purpose**: To diplsy efficiently data preview and control over how much data is shown at once.

6. Aggregating with GROUP BY

    Counted how many customers exist in each Country by grouping Customers and using COUNT(*).

    Grouped orders by EmployeeID to see how many orders each employee handled (top 10).

    **Purpose**: To learn data summarization techniques for reporting or analytics.

7. Using BETWEEN for Range Queries

    Extracted products where SupplierID falls between 1 and 10 and sorted them by supplier ID.

    **Purpose**: to practice filtering values within numeric ranges.

8. Combining Conditions

    Created a combined query to retrieve the top 5 customers:

    From Germany or France

    Having CustomerID between 10 and 50

    Sorted by city name

    **Purpose**: Applied multiple SQL concepts in a single, realistic scenario.

✅ **Summary**
Feature	            Description
------------------------------------------------
SELECT	            Retrieve all or specific fields from a table
WHERE	            Filter records based on condition
AND / OR	        Combine multiple filter conditions
LIKE	            Match strings based on wildcards (_, %)
BETWEEN	            Filter numeric (or date) ranges
ORDER BY	        Sort results in ascending or descending order
LIMIT	            Restrict number of rows in the output
OFFSET	            Skip a specific number of rows before showing results
GROUP BY	        Aggregate data by a field (e.g., counting entries per group)

# 💡 Learning Outcome
This task helped me to explore real world SQL Scenarios like 

- Targeted data extraction

-Filtering based on patterns and logic

-Summarizing data for analytics

-Efficient data handling with ordering and limits