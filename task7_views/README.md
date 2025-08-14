# Task 7 – Creating Views

## Objective
To understand how to create and use **views** in SQL for abstraction, reusability, and security.  
Views allow complex queries to be stored as virtual tables, making it easier to query and reuse them without rewriting the SQL each time.

---

## Tools Used
- **Database**: W3Schools Sample Database
- **Environment**: MySQL Workbench / DB Browser for SQLite
- **SQL Features Practiced**:
  - CREATE VIEW
  - Using views for data abstraction
  - Aggregating data inside views
  - Joining multiple tables in views
  - Querying views as virtual tables

---

## Concepts Implemented
1. **Simple Views** – Selecting specific columns or rows from a table.
2. **Views with Joins** – Combining data from multiple tables.
3. **Views with Aggregations** – Using `GROUP BY` inside views.
4. **Views with Subqueries** – Embedding complex filters in view definitions.
5. **Limiting Results in Views** – Using `ORDER BY` and `LIMIT`.
6. **Reusability of Views** – Running queries on views instead of writing complex queries repeatedly.

---

## Work Done
Created **10 views**:
1. `CustomerOrderCount` – Customers with total order counts.
2. `MostExpensiveProduct` – Highest priced product.
3. `OrdersWithDetails` – Orders with customer and employee names.
4. `CategoryAvgPrice` – Average price per category.
5. `ProductSupplierInfo` – Products with supplier details.
6. `OrderTotalAmount` – Orders with total purchase amount.
7. `CustomersWithoutOrders` – Customers who never placed orders.
8. `Top5ExpensiveProducts` – Top 5 highest priced products.
9. `EmployeeOrderCount` – Employees with their order counts.
10. `ShipperOrderCount` – Number of orders shipped by each shipper.

---

## Outcome
- Learned to **store complex SELECT queries** as views for easy reuse.
- Practiced **data abstraction** by hiding query complexity from end-users.
- Enhanced understanding of **aggregations, joins, and filtering** inside views.
- Built reusable views that can support **reporting and analytics**.

---
