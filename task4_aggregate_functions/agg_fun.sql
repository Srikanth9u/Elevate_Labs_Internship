use w3schools;


-- count() function
-- to find the total n'of people from each country
select country,count(*) tPeople from customers group by country order by tpeople desc; 
select customerID,count(orderID) from orders group by customerId;

-- find no of orders in each month of year to tract monthly sales
select year(OrderDate) AS order_year, month(OrderDate) AS order_month, COUNT(*) AS total_orders
FROM Orders
group by year(OrderDate), month(OrderDate)
order by order_year desc, order_month desc;

-- find months where orders placed over 20
select year(orderdate) as order_year, month(orderdate) as order_month, count(orderid) as total_orders from orders
group by year(orderdate), month(orderdate) having total_orders > 20 order by order_year, order_month;


-- finding customers who placed more than 5
select customers.customername, count(orders.orderid) as order_count from customers
join orders on customers.customerid = orders.customerid group by customers.customername
having order_count > 5 order by order_count desc;

-- find customers who bought atleat 3 categories types
select customers.customername,count(distinct categories.categoryid) as unique_categories from customers
join orders on customers.customerid = orders.customerid join order_details on orders.orderid = order_details.orderid
join products on order_details.productid = products.productid join categories on products.categoryid = categories.categoryid
group by customers.customername having unique_categories >= 3 order by unique_categories desc;

-- avg() function 
-- to find the avg price of each products
select ProductName,avg(price) as avgPrice from products group by ProductName order by avgPrice desc;

select suppliers.suppliername, round(avg(products.price), 2) as avg_price from suppliers
join products on suppliers.supplierid = products.supplierid group by suppliers.suppliername
having avg_price > 30 order by avg_price desc;


-- min() function
-- to find min price for each product
select ProductName,round(min(price),0) as minPrice from products group by ProductName;

-- to find first orderdate by customer using min and joins
select c.customerName,o.CustomerID,min(o.orderDate) as firstOrderDate from orders o inner join customers c on o.CustomerID=c.CustomerID group by o.CustomerID,c.customerName order by firstOrderdate;

-- max() function using to find orderDate where customers ordered last time
select c.customerName,o.CustomerID,max(o.orderDate) as recentOrderDate from orders o inner join customers c on o.CustomerID=c.CustomerID group by o.CustomerID,c.customerName order by recentOrderDate desc;

-- sum() function
-- to find total sales per each category
select c.categoryName,round(sum(p.price*o.quantity),2) as Total_Sales from categories c inner join products p on c.categoryID=p.categoryID 
inner join order_Details o on o.productID=p.productID group by c.categoryName having total_sales>5000 order by Total_sales desc;

-- to find top5 customers based on purchase amount they spend
select c.customerName,round(sum(p.price*od.quantity),2) as purchase_amount from customers c inner join orders o on c.customerID=o.customerID
inner join order_details od on od.orderID = o.orderID 
inner join products p on od.productID=p.productID group by c.customerName having purchase_amount>15000 order by purchase_amount desc limit 5;

-- find best selling products on each category
-- used windfunctions rowNumber
-- assign ranks 1 to the top products and return only that top product from each category
select categoryname, productname, total_qty
from (
    select 
        c.categoryname,
        p.productname,
        sum(od.quantity) as total_qty,
        row_number() over (partition by c.categoryname order by sum(od.quantity) desc) as rn
    from order_details od
    join products p on od.productid = p.productid
    join categories c on p.categoryid = c.categoryid
    group by c.categoryname, p.productname
) ranked
where rn = 1;

-- find categories with total revenue above 10000 and avearage price below 25
select categories.categoryname, round(sum(order_details.quantity * products.price), 2) as total_revenue,round(avg(products.price), 2) as avg_price 
from order_details join products on order_details.productid = products.productid join categories on products.categoryid = categories.categoryid
group by categories.categoryname having total_revenue > 10000 and avg_price < 25 order by total_revenue desc;

-- finding customers never placed any orders
select CustomerName from Customers where CustomerID NOT IN 
(select distinct CustomerID from Orders);

-- group_concat() concatenates values from multiple rows into a single string 

select Country, group_concat(CustomerName SEPARATOR ', ') as customers
from Customers
group by Country;

-- count(),sum(),avg(),min(),max(),variance,stddev()
select 
    count(*) as total_orders,
    sum(quantity * price) as total_sales,
    avg(quantity * price) as avg_sales,
    min(price) as min_price,
    max(price) as max_price,
    variance(quantity) as qty_variance,
    stddev(quantity) as qty_stddev
from order_details
join products on order_details.productid = products.productid;




