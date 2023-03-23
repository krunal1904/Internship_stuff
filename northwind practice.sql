use northwind;

show tables;

select * from employees order by LastName desc;
select * from employees order by FirstName;

select distinct city from employees;

select country from customers;

select distinct country
from customers
order by country desc; 

select count(FIrstName) from employees;
-- select count(*) from employees;

select count( distinct city) from employees;

select sum(EmployeeID) from employees;
-- select sum(EmployeeID) as kb from employees; use of alias 

select min(EmployeeID) from employees;

select max(EmployeeID) from employees;

select avg(EmployeeID) from employees;

select * from Suppliers;

select Region from Suppliers
where Region is not null;

select count(Region) from Suppliers
where Region is not null;

select count(distinct Region) from Suppliers
where Region;

select Region from Suppliers
where Region is null;

select count(SupplierID) from Suppliers;


update Suppliers
set Region=''
where SupplierID=4;

select * from Suppliers;

update Suppliers
set Region=null
where SupplierID=4;

select * from Customers;

select CustomerID,Companyname,Country from Customers
where Country ='Germany' and Country='UK';

select CustomerID,Companyname,Country from Customers
where Country ='Germany' or Country='UK';

select CustomerID,Companyname,Country
from Customers
where Country IN ('Germany' ,'UK');   -- work as OR 

select CustomerID,Companyname,Country
from Customers
where Country not IN ('Germany' , 'UK');

select * from Customers
where ContactName like 'a%';   -- like use to check the patterns

select * from Customers
where ContactName like '%a';

select * from Customers
where ContactName like '%or%';

select * from Customers
where ContactName like '_r%';

select * from Customers
where ContactName like 'a%o';

select o.orderID,
c.customerID,
o.OrderDate,
concat(o.ShipCity ,' ', o.ShipCountry)  as ShipTo
from Customers as c,         -- Alias for Customers
	Orders as o					-- Alias for Orders
where c.CustomerID=o.CustomerID;    

select * from Orders
where OrderDate < '1996-07-05' or OrderDate > '1996-07-10'
Order by OrderDate;

select * from Orders
where OrderDate between '1996-07-05' and '1996-07-10'
Order by OrderDate;

/*select * from Orders
where OrderDate between '1996-JUL-05' and '1996-JUL-10'
Order by OrderDate; */

select * from Orders
where OrderDate between '19960705' and '19960710'
Order by OrderDate;

select count(CustomerID),country 
from Customers
group by Country;

select count(CustomerID),country 
from Customers
group by Country order by count(CustomerId);


select * from Customers;

select count(CustomerID),Country
from Customers
group by Country
order by count(CustomerID) desc;

select FirstName, sum(Salary) as "total work"
from employees
group by FirstName;

select count(CustomerID),Country
from Customers
group by Country
having count(CustomerID) > 5
order by count(CustomerID) desc;

select  ProductName 
from Products
where ProductID=any
	(select ProductID 
	from `Order Details`
	where Quantity=10);


select  ProductName 
from Products
where ProductID=any
	(select ProductID 
	from `Order Details`
	where Quantity > 99);

select  ProductName 
from Products
where ProductID= all  -- use of all
	(select ProductID 
	from `Order Details`
	where Quantity=10);
    






































