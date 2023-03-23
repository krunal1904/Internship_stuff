-- TASK 2:
use practice_158332;

-- Retrieving records from table

show tables;

select name from client_master;
select name,city from client_master;

select *from product_master;

select * from client_master where city='Bombay';

select S_name from salesman_master where Sal_amt=3000;

select distinct city  from client_master;

select sell_price from product_master;
-- select sell_price from product_master order by sell_price;

select sell_price,cost_price from product_master;
-- select sell_price,cost_price from product_master order by sell_price,cost_price;

select product_no,description from product_master order by sell_price desc;

update client_master set city='Bombay' where client_no='C002';
update client_master set bal_due=1000 where client_no='C001';
update product_master set cost_price=950.00 where description='Floppies';
update salesman_master set city='Mumbai';
select *from client_master;
select *from product_master;
select *from salesman_master;

delete from salesman_master where Sal_amt=3500;
delete from product_master where qty_on_hand=100;
delete from client_master where State='Tamil nadu';

alter table client_master 
add telephone int(10);

desc product_master;

alter table product_master

modify sell_price decimal(10,2);
desc product_master;

alter table client_master
rename column telephone to contact;

alter table client_master
drop column contact;

create table employee(e_id int,name varchar(20),salary int,city varchar(15));

select *  from employee;

insert into employee values(1,'krunal',50000,'anand'),
(2,'sangita',30000,'anand'),
(3,'bhargav',20000,'ahmedabad'),
(4,'rohit',15000,'vadodara'),
(5,'gaurav',10000,'surat');

drop table employee;

alter table salesman_master 
rename to sman_mast;
select *  from sman_mast;


