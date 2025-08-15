# Task 8: Stored Procedures & Functions — MySQL

## Objective
Objective of this task is to create **reusable SQL blocks** using **Stored Procedures** and **Functions** with parameters and conditional logic, practiced on the **W3Schools Sample Database** in MySQL Workbench.

---

## 🛠 Tools Used
- **MySQL Workbench**  
- **W3Schools Sample Database** (Customers, Orders, Products, etc.)

---

### Stored Procedures
- **Definition**: A stored block of SQL statements saved in the database, executed with `CALL`.
- **Parameter Types**:
  - **No Parameters** — run fixed queries.
  - **IN** — take input from user.
  - **OUT** — return a value via a variable.
  - **INOUT** — take a value, modify it, and return it.
- **Logic in Procedures**:
  - Conditional statements: `IF`, `CASE`.
  - Multiple statements in one procedure.
  - Cursors for row-by-row processing.
- **Advantages**:
  - Reusability
  - Better performance (precompiled)
  - Centralized business logic

---

### Functions
- **Definition**: A stored block of SQL that **must return** a single value and can be used inside queries.
- **Key Rules**:
  - Must have a `RETURNS` datatype.
  - Only `IN` parameters allowed.
  - Always use `RETURN` to output the result.
  - Use `DETERMINISTIC` when the same input always gives the same result.
- **Types Practiced**:
  - No Parameters
  - With Parameters
  - Conditional Logic (`IF`, `CASE`)
  - Mathematical Calculations
  - Wrapping built-in MySQL functions
- **Advantages**:
  - Can be embedded inside `SELECT`, `WHERE`, etc.
  - Promotes cleaner, modular SQL

---

## What I Learnt
By completing this task:
- I can **create, call, and use** MySQL stored procedures with different parameter types and logic.
- I can **write functions** that return values for use directly in SQL queries.
- I understand how to use **conditional logic** and **parameters** to make reusable, dynamic SQL blocks.

---
