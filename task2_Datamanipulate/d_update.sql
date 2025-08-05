use w3schools;
INSERT INTO Customers 
VALUES (92, 'Srikanth', 'Ande', 'Dornakal', 'Hyderabad', '500042', 'India');
-- inserting values
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Skyline Corp', 'Mary Jane', NULL, 'New York', NULL, 'USA');
-- update 
UPDATE Customers
SET Address = 'Kmm'
WHERE Address IS NULL;
SET SQL_SAFE_UPDATES = 0;
update customers
set city='Align'
where city='Elign';

update customers
join orders on customers.customerID=orders.customerID
set customers.city='Dornakal'
where orders.orderDate > '2022-01-01';

-- set postal code to 123456 who have placed more than 3 orders
update customers c join orders o on c.customerID=o.customerID
set c.postalcode=123456
where c.CustomerID in (
select o2.customerID from orders o2
group by o2.customerID 
having count(o2.orderID)>3);

-- discount plans based on the country
update customers
set ContactName= CASE
	when country = 'Germany' then 'GE-VIP'
    when country = 'USA' then 'US-VIP'
    ELSE contactName
END;
-- delete 
DELETE from customers 
where customerName='Skyline corp';

-- delete customers who have never placed an order
delete c from 
customers c left join orders o on c.customerID=o.customerID
where o.customerID is NUll;

-- using a subquery in delete statements 

DELETE FROM Customers
WHERE City NOT IN (
    SELECT city FROM (
        SELECT DISTINCT c.City
        FROM Customers c
        JOIN Orders o ON c.CustomerID = o.CustomerID
    ) AS subquery
);




select * from customers where Address = 'kmm';
select * from customers where country="uSA" limit 25;