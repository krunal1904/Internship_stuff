use northwind;

select * from Customers where City in ('Berlin','London');

-- find order details of customer having numer ....
select * from Orders where CustomerID = 
 (select CustomerID from Customers where phone='030-0074321');
 
 -- find products of sea food category
 select * from Products where CategoryID = 
 (select CategoryID from Categories where CategoryName='SeaFood');

-- find list of product by pavlova,Ltd.
select * from Products where SupplierID = 
 (select SupplierID from Suppliers where CompanyName='Pavlova,Ltd.');

-- gives error
select * from Orders where CustomerID = 
 (select CustomerID from Customers where City='London');

-- solution
select * from Orders where CustomerID In 
 (select CustomerID from Customers where City='London');

 select * from Products where UnitPrice > any
 (select max(UnitPrice) as UnitPrice from  Products
 Group By CategoryId);
 
  select * from Products where UnitPrice < any
 (select max(UnitPrice) as UnitPrice from  Products
 Group By CategoryId);

select * from Products where UnitPrice > some
 (select max(UnitPrice)  from  Products
 Group By CategoryId);
 
 select * from Products where UnitPrice < some
 (select max(UnitPrice)  from  Products
 Group By CategoryId);
 
select * from customers where exists
(select count(*) from Orders where ShipCity='London'
Group By ShipCity
having count(*) > 30);

select * from customers where not exists
(select count(*) from Orders where ShipCity='London'
Group By ShipCity
having count(*) > 30);
 
 select CustomerID,Companyname,Country
from Customers
where not exists
 (select * from Orders where Customers.CustomerID = Orders.CustomerID);

-- corelated sub query
select * from Orders O where EmployeeID in
 (select employeeID from employees E where O.ShipCity = E.City);

-- nesting sub query
select * from Orders O where OrderID in
 (select OrderID from `order details` where 
 ProductID=(select ProductID from products where ProductName='chai'));

-- sub query during insert,update,delete
set foreign_key_checks=0;
delete from customers where City in 
(select ShipCity from orders where ShipCountry='France');

update products set Discontinued=0 where SupplierID = 
(select SupplierID from Suppliers where City='London');




























