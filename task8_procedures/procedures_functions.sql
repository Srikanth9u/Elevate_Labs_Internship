use w3schools;
-- stored procedures

--syntax
DELIMITER $$

CREATE PROCEDURE procedure_name (parameters)
BEGIN
    -- SQL statements
END$$

DELIMITER ;
call procedure_name(arg);
-- procedure to get customers from a specific country

DELIMITER $$
CREATE PROCEDURE GetCustomersByCountry(IN countryName VARCHAR(50))
BEGIN
    SELECT CustomerName, City, Country
    FROM Customers
    WHERE Country = countryName;
END$$

DELIMITER ;

CALL GetCustomersByCountry('Germany');

-- retuen customer reports without parameters

DELIMITER $$
create procedure GetCustomerReports()
BEGIN
	select * from customers;
END $$
DELIMITER ;

call GetCustomerReports();

-- procedures with OUT parametr

DELIMITER $$

create procedure GetCustomersCountByCountry(IN countryName varchar(50), OUT total INT)
BEGIN
	select count(*) as total 
    from customers
    where country=countryname;
END $$

DELIMITER ;
call GetCustomersCountByCountry('germany',@count);
select @count;

-- procedurs with INOUT parameters and modifies the value by taking input

DELIMITER $$
Create procedure increaseValue(INOUT num INT, IN increment INT)
BEGIN 
set num=num+increment;
END $$
DELIMITER ;

set @num=5;
call increaseValue(@num,10);
select @num;

-- procedure with conditional logic

DELIMITER $$

CREATE PROCEDURE CustomerCategory(IN customerID INT)
BEGIN
    DECLARE orderCount INT;

    SELECT COUNT(*) INTO orderCount
    FROM Orders
    WHERE CustomerID = customerID;

    IF orderCount > 10 THEN
        SELECT 'VIP' AS Category;
    ELSE
        SELECT 'Regular' AS Category;
    END IF;
END$$

DELIMITER ;

call CustomerCategory(76);

-- procedure with multiple statements
DELIMITER $$

CREATE PROCEDURE CustomerAndOrders(IN countryName VARCHAR(50))
BEGIN
    SELECT * FROM Customers WHERE Country = countryName;
    SELECT * FROM Orders WHERE CustomerID IN (
        SELECT CustomerID FROM Customers WHERE Country = countryName
    );
END$$

DELIMITER ;
call CustomerAndOrders('Germany');


-- functions
-- syntax

DELIMITER $$
CREATE FUNCTION function_name(parameters)
RETURNS datatype
DETERMINISTIC
BEGIN
    -- Declare variables
    -- SQL statements
    RETURN value;
END$$
DELIMITER ;


DELIMITER $$

CREATE FUNCTION function_name(parameters)
RETURNS datatype
DETERMINISTIC
BEGIN
    -- Declare variables
    -- SQL statements
    RETURN value;
END$$

DELIMITER ;
select function_name(arg);

-- function with no parameters

DELIMITER $$
create function getCompanyName()
RETURNS VARCHAR(50)
DETERMINISTIC 
BEGIN 
RETURN 'W3Schools Demo Company';
END$$

DELIMITER ;

select getCompanyName();

-- function with IN parameters

DELIMITER $$

CREATE FUNCTION GetOrderCountByCustomer(custID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE orderCount INT;

    SELECT COUNT(*) INTO orderCount
    FROM Orders
    WHERE CustomerID = custID;

    RETURN orderCount;
END$$

DELIMITER ;

SELECT CustomerName, GetOrderCountByCustomer(CustomerID) AS Orders
FROM Customers;

-- function with any conditional logic

DELIMITER $$

CREATE FUNCTION CustomerCategory(custID INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE totalOrders INT;

    SELECT COUNT(*) INTO totalOrders
    FROM Orders
    WHERE CustomerID = custID;

    IF totalOrders > 10 THEN
        RETURN 'VIP';
    ELSE
        RETURN 'Regular';
    END IF;
END$$

DELIMITER ;
SELECT CustomerName, CustomerCategory(CustomerID) AS Category
FROM Customers;
