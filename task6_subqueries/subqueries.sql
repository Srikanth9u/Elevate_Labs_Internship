use w3schools;

-- get each customers sub count

SELECT CustomerName,
(SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID)
 AS TotalOrders FROM Customers;
 
 -- product which has hiighrs price
 SELECT ProductName, Price FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);

-- customer who ordered chais
SELECT CustomerName FROM Customers WHERE CustomerID IN (
    SELECT CustomerID FROM Orders WHERE OrderID IN (
        SELECT OrderID FROM OrderDetails WHERE ProductID = (SELECT ProductID FROM Products WHERE ProductName = 'Chais')) );

-- Orders where quantity is above average for that product
SELECT OrderID, ProductID, Quantity FROM Order_Details od WHERE Quantity > (
SELECT AVG(Quantity) FROM Order_Details WHERE ProductID = od.ProductID );


-- customers who have placed orders
SELECT CustomerName FROM Customers c
WHERE EXISTS ( SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID );

-- Average product price by category
SELECT CategoryName, AVGPrice FROM (
SELECT CategoryID, AVG(Price) AS AVGPrice FROM Products GROUP BY CategoryID ) AS CategoryStats
JOIN Categories ON Categories.CategoryID = CategoryStats.CategoryID;

 
-- Supplier who supplies the most expensive product

SELECT SupplierName
FROM Suppliers
WHERE SupplierID = (
    SELECT SupplierID
    FROM Products
    WHERE Price = (SELECT MAX(Price) FROM Products)
);
-- Customers who ordered products from supplier "Exotic Liquids"
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE OrderID IN (
        SELECT OrderID FROM Order_Details WHERE ProductID IN
        (SELECT ProductID FROM Products WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Exotic Liquids'))));
 -- Scalar Subquery in SELECT for Difference Calculation
 SELECT ProductName, Price, 
Price - (SELECT ROUND(AVG(Price),2) FROM Products) AS PriceDifference
FROM Products;

-- total quantity ordered for each category
SELECT ProductName,
       (SELECT SUM(Quantity) 
        FROM Order_Details 
        WHERE Order_Details.ProductID = Products.ProductID) AS TotalQuantity
FROM Products;

-- customers who never placed any orders
SELECT CustomerName
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID );
    
-- Products cheaper than all products from CategoryID = 1
SELECT ProductName, Price FROM Products WHERE Price < ALL 
( SELECT Price FROM Products WHERE CategoryID = 1 );

