use northwind;

-- same number of coloumns
-- the columns similar data types
-- 
select City from Customers
union
select city from Suppliers
order by City;

select Orders.OrderId,Customers.CompanyName,Orders.OrderDate,orders.CustomerID,Customers.CustomerId
from Orders
inner join  customers on Customers.CustomerId=orders.CustomerID;

select Orders.OrderId,Customers.CompanyName,Orders.OrderDate,orders.CustomerID,Customers.CustomerId
from Orders
left join  customers on Customers.CustomerId=orders.CustomerID;

select Orders.OrderID,Employees.LastName,Orders.EmployeeID,Employees.EmployeeID,Employees.FirstName
from Orders
right join  Employees on orders.EmployeeID=Employees.EmployeeID;

select Orders.OrderID,Customers.CompanyName
from Customers
cross join  Orders
 where Customers.CustomerID=orders.CustomerID;
 
 
--  select A.CompanyName as C1,
--  B.CompanyName as C2,A.City
--  from Customer A, Customer B
--  where A.CustomerID=B.CustomerID
--  and A.City=B.City;
 
 
 select * from categories;
 select * from products; 
 
 select ProductName,CategoryName
 from  Products
cross join categories
 where products.CategoryID=categories.CategoryID
 order by CategoryName;
 
 
select ProductName,CategoryName,Discontinued
from  Products
cross join categories
where products.CategoryID=categories.CategoryID and Discontinued=1
order by CategoryName;

select* from orders;
select * from `order details`;

select UnitPrice,UnitPrice * Quantity - Discount as sales_price from `order details`;

select * from `sales by category`;

create view view_detais as
select ContactName,City from customers; 

select * from `view_detais`;

create view  p1  as
select ProductName,CategoryName
 from  Products
cross join categories
 where products.CategoryID=categories.CategoryID
 order by CategoryName;

select * from p1;

-- Indexing concept
select CustomerID,ContactName from Customers where City='London';

explain select CustomerID,ContactName from Customers where City='London';

create index CityIndex on Customers(City);

show indexes from Customers;

-- ALter view

create view kb as 
select CustomerID,CompanyName,Country
From customers;

select * from kb;

alter view bk as 
select CustomerID,CompanyName,Country
From customers;





