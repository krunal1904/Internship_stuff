use northwind;
set global log_bin_trust_function_creators=1;

delimiter $$
create function getCustomerCount(colname varchar(20)) returns int
begin
declare Customer_count int default 0;
select count(CustomerID) into Customer_count from Customers where city=colname;
return Customer_count;
end $$ 

select getCustomerCount('Berlin') as NumberOfCustomers,ContactName,City from Customers;


-- procedure

delimiter $$
create procedure getCustomers() 
begin
	select * from Customers where city='Berlin';
end $$
delimiter ;

call getCustomers();

drop procedure getCustomers;

delimiter $$
create procedure getCustomers(in var int) 
begin
	select * from Customers limit var;
end $$
delimiter ;

call getCustomers(3);
-- -------------------------------------------
delimiter $$
create procedure getCountCustomers(out totalcust int) 
begin
	select count(CustomerID) into totalcust from Customers;
end $$
delimiter ;

call getCountCustomers(@M);  -- @ for geting output
select @M;
drop procedure getCountCustomers;
-- ----------------------
delimiter $$
create procedure getCustomers(inout var varchar(20)) 
begin
begin
	select ContactName into var from Customers where CustomerId=var;
end $$
delimiter ;

set @M='ALFKI';
call getCustomers(@M);
select @M;

