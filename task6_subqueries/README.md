# Task 6 – Subqueries and Nested Queries

## Objective
To enhance SQL skills by practicing **subqueries** and **nested queries** using the W3Schools sample database.  
The task involved applying subqueries in `SELECT`, `WHERE`, and `FROM` clauses to answer complex business questions.

---

## Tools Used
- **Database**: W3Schools Sample Database
- **Environment**: MySQL Workbench / DB Browser for SQLite
- **SQL Features Practiced**:
  - Scalar Subqueries
  - Correlated Subqueries
  - Nested Subqueries
  - EXISTS / NOT EXISTS
  - IN, ALL
  - Derived Tables

---

## 📚 Concepts Implemented
1. **Scalar Subqueries**  
   - Return a single value for comparison or display.  
   - Example: Highest product price, total orders per customer.

2. **Correlated Subqueries**  
   - Subqueries that reference columns from the outer query.  
   - Example: Orders with quantity above average for that product.

3. **Nested Subqueries**  
   - Multiple layers of queries to filter results step-by-step.  
   - Example: Customers who ordered a specific product.

4. **EXISTS / NOT EXISTS**  
   - Check if related records exist or not.  
   - Example: Customers with or without orders.

5. **IN / ALL**  
   - Compare a value against a set of values returned by a subquery.  
   - Example: Products cheaper than all products in a category.

6. **Derived Tables (Subquery in FROM)**  
   - Treat subquery results as a temporary table.  
   - Example: Average product price per category.

---

## Work Done
- Wrote **12 SQL queries** demonstrating:
  - Subqueries in `SELECT` to calculate totals and differences.
  - Subqueries in `WHERE` to filter based on computed values.
  - Subqueries in `FROM` for aggregated results.
  - Combining aggregate functions with subqueries.
  - Multi-level nested conditions using `IN` and `EXISTS`.

---

## Outcome
- Improved understanding of **how subqueries interact** with the main query.
- Learned **when to use correlated vs. non-correlated subqueries**.
- Practiced building **multi-step filtering logic** using nested queries.
- Strengthened ability to write **efficient SQL for real-world data analysis**.

---
