USE w3schools;

-- Customer Orders Count
CREATE VIEW CustomerOrderCount AS
SELECT CustomerName, COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY CustomerName;

SELECT * FROM CustomerOrderCount;

-- Most Expensive Product
CREATE VIEW MostExpensiveProduct AS
SELECT ProductName, Price
FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);

SELECT * FROM MostExpensiveProduct;

-- Orders with Customer and Employee Names
CREATE VIEW OrdersWithDetails AS
SELECT Orders.OrderID, Customers.CustomerName, Employees.FirstName || ' ' || Employees.LastName AS EmployeeName, Orders.OrderDate
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;

SELECT * FROM OrdersWithDetails;

-- Category-wise Average Price
CREATE VIEW CategoryAvgPrice AS
SELECT Categories.CategoryName, ROUND(AVG(Products.Price),2) AS AvgPrice
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;

SELECT * FROM CategoryAvgPrice;

-- Products and Suppliers Info
CREATE VIEW ProductSupplierInfo AS
SELECT Products.ProductName, Products.Price, Suppliers.SupplierName, Suppliers.Country
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

SELECT * FROM ProductSupplierInfo;

-- Orders with Total Amount
CREATE VIEW OrderTotalAmount AS
SELECT Orders.OrderID, SUM(Order_Details.Quantity * Products.Price) AS TotalAmount
FROM Orders
JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
JOIN Products ON Order_Details.ProductID = Products.ProductID
GROUP BY Orders.OrderID;

SELECT * FROM OrderTotalAmount;

-- Customers Without Orders
CREATE VIEW CustomersWithoutOrders AS
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

SELECT * FROM CustomersWithoutOrders;

-- Top 5 Most Expensive Products
CREATE VIEW Top5ExpensiveProducts AS
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT * FROM Top5ExpensiveProducts;

-- Employee Order Count
CREATE VIEW EmployeeOrderCount AS
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, COUNT(Orders.OrderID) AS TotalOrders
FROM Employees
LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID, Employees.FirstName, Employees.LastName;

SELECT * FROM EmployeeOrderCount;

-Orders Shipped by Each Shipper
CREATE VIEW ShipperOrderCount AS
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS TotalOrders
FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Shippers.ShipperName;

SELECT * FROM ShipperOrderCount;
