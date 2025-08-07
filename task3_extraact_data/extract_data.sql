use w3schools;

-- select allcolumns using *
select * from orders;

-- specify columns
select FirstName,lastname,birthdate from employees;

-- using where condition
-- to find productsID ordered more than 5 quantity
select productid,quantity from order_details where Quantity>=5;
select orderdate from orders;
-- using OR condition
-- to find customer id who had ordered either on
select orderID,CustomerID,orderDate from orders where orderDate = '1996-07-04' or '1997-02-12';
select EmployeeID, count(*) as total from orders group by EmployeeID limit 10;

-- using AND 
-- to find people germany and city AACHEn
select customername,city,country from customers where country='Germany' AND  city='AACHEN';

-- Like patterns
-- using wildcard '_' represents single character
select customername,city,country from customers where country like'G_rm_ny';

-- using % Wildcard
-- represents anynumber of characters

select customername,city,country from customers where city like '%U%' or country like '%u%';

-- find starting with and ends with

select firstname,birthdate from employees where firstName like 'r%';
select firstname,birthdate from employees where firstName like '%e';

-- combination of wild cards characters 

select firstname,birthdate from employees where firstName like 'a_d%';
select firstname,birthdate from employees where firstName like '%a_d%';
select firstname,birthdate from employees where firstName like 'ANDREW';

-- find customers whose name is exactly n letters
select * from customers where customername like '__________';
select * from customers where customername like 'Q_________';

select * from customers where city like 's%' or city like 'e%';


-- using BetWEEn condition
-- find suppliers between supplier id 1-10
select * from products where supplierID between 1 AND 10 order by supplierID;

-- orderBy 
-- ordering the emploee according to their date of birth
select * from employees order by BirthDate;
-- group by
 select country,count(*) as total from customers group by country order by country;
-- limit by
-- find oldest top 10 employees
select * from employees order by BirthDate limit 10;

-- offset
-- finding the only ids between 20 to 30
select * from customers order by customerName limit 10 offset 20;

-- combining all the conditions
-- find top 5 customers in Germany or France, aged between IDs 10 and 50, ordered by city
-- Show first 5 customers in Germany or France, aged between IDs 10 and 50, ordered by city
select CustomerName, City, Country from Customers where (Country = 'Germany' or Country = 'France') and CustomerID between 10 and 50 order by City limit 5;
