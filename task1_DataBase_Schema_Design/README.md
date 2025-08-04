<!-- Task 1: Database Setup and Schema Design -->

 <!-- Objective -->
To design and implement a well-structured relational database schema with appropriate table definitions, relationships, and realistic sample data, along with ER diagram visualization.

---

<!--  Folder Structure -->

/task1_DataBase_Schema_Design                                                                           
|- Schema.sql --          SQL script containing CREATE TABLE statements for all tables and inserting data (data from github)              
|- er_diagram.dbml --    DBML file for ER diagram (import to [dbdiagram.io] and export as png) 
|- er_diagram.png  --    Exported PNG image of the w3schools database Entity relationship diagram                  
|-README.md --This README provides an overview of the database schema design, including folder structure, table descriptions and relationships,   sample data details, and tools used for implementation and visualization.
---

 <!-- Tables Created -->

Tables and their description
 Table Name        Description                                                 

 Customers        Stores customer details                                
 Employees        Contains employee data                                  
 Shippers         Details of shipping providers                           
 Suppliers        Information about product suppliers                     
 Categories       Product categories and descriptions                     
 Products         Catalog of products, linked to categories & suppliers   
 Orders           Orders placed by customers, handled by employees        
 OrderDetails     Line items of each order, linked to products            

---

 <!-- Table Relationships -->
- Customers ↔ Orders
- Products → Categories (CategoryID) :Each Product belongs to 1 Category
- Products → Suppliers (SupplierID) :Each Product is supplied by 1 Supplier
- Orders → Customers (CustomerID) :1 Customer can place many Orders 
- Orders → Employees (EmployeeID) :Each Order is handled by 1 Employee  
- Orders → Shippers (ShipperID) :Each Order is shipped by 1 Shipper     
- OrderDetails → Orders (OrderID) :1 Order can have many Products 
- OrderDetails → Products (ProductID)


All foreign keys have been enforced using FOREIGN KEY constraints.

 <!-- Data -->

- Sample data was sourced from existing GitHub repositories.
- Data includes realistic names, addresses, cities, and values to closely mimic real-world scenarios.


 <!-- Tools Used -->

 Tool               Purpose                                     
 mySQL - To run and test database scripts            
 github for data loading
 dbdiagram.io -  Visualize the database schema as ER diagram 



