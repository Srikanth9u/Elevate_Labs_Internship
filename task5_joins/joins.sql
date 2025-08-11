use w3schools;
-- inner join
-- find customers who actually placed an order
SELECT Customers.CustomerName, Orders.OrderID FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- find product name and its sold quantity
SELECT p.productname,sum(od.Quantity) as totalquantity,COUNT(*) as order_count from order_details od 
INNER JOIN  products p on od.productid=p.productid group by p.productname;  

-- find shiiping company who handled each order
select o.orderID,s.ShipperName,o.orderDate from orders o inner join shippers s on o.shipperID=s.ShipperID;

-- 2)left Join
-- find customers who event placed an order

SELECT Customers.CustomerName, Orders.OrderID,orders.OrderDate FROM Customers
left JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- find shiiping pzrtner that never handled an order
SELECT Shippers.ShipperName, Orders.OrderID
FROM Shippers LEFT JOIN Orders ON Shippers.ShipperID = Orders.ShipperID;

-- 	find customer name bought which products, but still see the products having zero sales
SELECT Products.ProductName, Orders.OrderID, Customers.CustomerName FROM Products
LEFT JOIN Order_Details od ON Products.ProductID = od.ProductID
LEFT JOIN Orders ON od.OrderID = Orders.OrderID
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID ORDER BY Products.ProductName;

-- right join

-- find shippers and orders they handled 

SELECT Shippers.ShipperName,Orders.OrderID FROM Orders RIGHT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
ORDER BY Shippers.ShipperName;

-- orders with product details
SELECT Products.ProductName,Orders.OrderID,Orders.OrderDate FROM Order_Details
RIGHT JOIN Products ON Order_Details.ProductID = Products.ProductID RIGHT JOIN Orders ON Order_Details.OrderID = Orders.OrderID ORDER BY Products.ProductName;

-- find each orders handled by shippers
SELECT Shippers.ShipperName,COUNT(Orders.OrderID) AS TotalOrders FROM Orders
RIGHT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID GROUP BY Shippers.ShipperName ORDER BY TotalOrders DESC;

-- full join
-- mysql doesnt have full so we use union to combine left andright joins

-- find all orders and all products containing them
select products.productname, orders.orderid from products
left join order_details on products.productid = order_details.productid left join orders on order_details.orderid = orders.orderid
union
select products.productname, orders.orderid from products
right join order_details on products.productid = order_details.productid right join orders on order_details.orderid = orders.orderid;

-- cross join
-- returns all posible joins
select products.productname, orders.orderid
from products
cross join orders;

-- self join
-- products from same categoty

select a.productname as product_a, b.productname as product_b, a.categoryid from products a
join products b on a.categoryid = b.categoryid and a.productid <> b.productid;

 