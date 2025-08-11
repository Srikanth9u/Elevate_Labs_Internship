# SQL Joins  – W3Schools Database

## Objective
The goal of this exercise was to learn and practice combining data from multiple tables in SQL using different types of joins. 

---

## 🛠 Tools Used
- **MySQL Workbench** (Connected to W3Schools sample DB)
- **W3Schools SQL Database Schema**
- **SQL Queries** using various join types


## Types Of Joins

### 1. INNER JOIN
- Returns records that have matching values in both tables.
- Used to find only related data (e.g., customers who placed an order, products with sales).

### 2. LEFT JOIN
- Returns all records from the left table and matched records from the right table.
- Shows unmatched rows as `NULL` for the right table.
- Useful for finding "missing" relationships (e.g., customers with no orders, products with zero sales).

### 3. RIGHT JOIN
- Returns all records from the right table and matched records from the left table.
- Similar to LEFT JOIN but reversed.
- Helpful to identify unmatched data from the right table (e.g., shippers with no handled orders).

### 4. FULL JOIN (Emulated using UNION in MySQL)
- Combines the results of LEFT JOIN and RIGHT JOIN.
- Shows all data from both tables, whether matched or not.
- Useful when you want complete coverage of both tables.

### 5. CROSS JOIN
- Returns all possible combinations of rows between the two tables (Cartesian product).
- Often used for generating combinations or pairing data.

### 6. SELF JOIN
- A table joined to itself.
- Useful for comparing rows within the same table (e.g., finding products in the same category).

---

## 📚 Key Learnings
- **Join Selection Matters** – The type of join changes how much and what type of data you retrieve.
- **NULL Handling** – Outer joins often introduce `NULL` values, which must be handled carefully.
- **Aggregations with Joins** – Combining joins with `GROUP BY`, `COUNT()`, and `SUM()` allows for insightful reporting.
- **FULL JOIN in MySQL** – Since MySQL does not have a direct FULL JOIN, it can be simulated using a combination of `LEFT JOIN` and `RIGHT JOIN` with `UNION`.
- **Query Optimization** – Choosing correct join order and conditions can improve performance.
- **Real-World Usage** – Joins are used for:
  - Combining sales data with customer details
  - Tracking shipments and logistics
  - Linking products to categories
  - Identifying missing or unmatched records

---

## ✅ Outcome
By completing this exercise, I gained:
- Confidence in using all major join types.
- Ability to write **multi-table joins** for different use cases.
- Understanding of how to **merge, filter, and aggregate** data across multiple tables.
- Practical skills for real-world SQL reporting and analytics.

---
