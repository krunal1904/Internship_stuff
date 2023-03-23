-- TASK 1:
-- 1) Create database as per given syntax “Practice_GID”. -----
CREATE DATABASE practice_158332;

use practice_158332;
-- 2). Create table client_master. --------------------
create TABLE client_master( 
	Client_no VARCHAR(6),
    Name VARCHAR(20),
    City VARCHAR(15),
    Pincode int(8),
    State VARCHAR(8),
    Bal_due decimal(10,2)
);
-- 3). Create table product_master.----
create table  Product_master(
	Product_no Varchar(6),
	Description Varchar(15),
	P_percent decimal(4,2),
	U_measure Varchar(10),
	Qty_on_hand int(8),
	Reorder_lvl int(8),
	Sell_price decimal(8,2),
	Cost_price decimal(8,2)
);
-- 4) Create table salesman_master.------------
create table Salesman_master(
	S_no Varchar(6),
	S_name Varchar(20),
	City Varchar(20),
	Pincode int(8),
	State Varchar(20),
	Sal_amt decimal(8,2),
	Tgt_to_get decimal(6,2),
	Ytd_sales decimal(6,2),
	remarks Varchar(12)
);
-- --5) Describe structure for salesman_master table.----
describe Salesman_master;

-- --6) Describe structure for client_master table.----
describe client_master;

-- --7) Describe structure for product_master table.----
describe product_master;
-- alter table client_master
-- modify State VARCHAR(15);

-- 8). Insert records in client_master table. ------------------
insert into client_master(Client_no,Name,City,Pincode,State,Bal_due) 
values('C001',"Ivan","Bombay",400054,"Maharashtra",15000),
('C002',"Vandana","Madras",780001,"Tamil Nadu",0),
('C003',"Pramada","Bombay",400057,"Maharashtra",5000),
('C004','Basu','Bombay',400056,"Maharashtra",0),
('C005',"Ravi","Delhi",100001,"Gujarat",2000),
("C006","Rukmani","Bombay",400050,"Maharashtra",0);
select * from client_master;

-- 9). Insert records in product_master table. ------------------
insert into product_master(Product_No,Description,P_percent,U_Measure,Qty_on_hand,Reorder_lvl,sell_price,Cost_price) 
values('P001','Floppies',5,'Piece',100,20,525,500),
('P002','Monitor',6,'Piece',10,3,12000,11280),
('P003','Mouse',5,'Piece',20,5,1050,1000),
('P004','Floppies',5,'Piece',100,20,525,500),
('P005','Keyboards',2,'Piece',10,3,3150,3050),
('P006','Cd,Drive',2.5,'Piece',10,3,5250,5100),
('P007','1.44 Drive',4,'Piece',10,3,8400,8000);
select * from product_master;

-- 10). Insert records in salesman_master table. ------------------
insert into Salesman_master values
('S001','Kiran','Bombay',400002,'Maharashtar',3000,100,50,'Excellent'),
('S002','Manish','Bombay',400001,'Maharashta',3000,200,100,'Good'),
('S003','Ravi','Bombay',400032,'Maharashta',3000,200,100,'Average'),
('S004','Ashish','Bombay',400044,'Maharashta',3500,200,150,'Good');
select * from Salesman_master;

-- 11). Retrieve all records for client_master table.----
select * from client_master;

-- 12). Retrieve product_no, sell_price and cost_price for product_master table.-----
select product_no,sell_price,cost_price from  product_master;

-- 13). Retrieve s_no,s_name, remarks and sal_amt for salesman_master table.-------
select s_no,s_name,remarks,sal_amt from salesman_master;

-- 14). Display all tables for your database-------
show tables;


-- ---------------------------------TASK 2: ------------------------------------------------
use practice_158332;

show tables;
-- ---------------1)--------------------
select name from client_master;

-- ---------------2)--------------------
select name,city from client_master;

-- ---------------3)--------------------
select *from product_master;

-- ---------------4)--------------------
select * from client_master where city='Bombay';

-- ---------------5)--------------------
select S_name from salesman_master where Sal_amt=3000;

-- ---------------6)--------------------
select distinct city  from client_master;

-- ---------------7)--------------------
select sell_price from product_master;
-- select sell_price from product_master order by sell_price;

-- ---------------8)--------------------
select sell_price,cost_price from product_master;
-- select sell_price,cost_price from product_master order by sell_price,cost_price;

-- ---------------9)--------------------
select product_no,description from product_master order by sell_price desc;

-- ---------------10)--------------------
update client_master set city='Bombay' where client_no='C002';

-- ---------------11)--------------------
update client_master set bal_due=1000 where client_no='C001';

-- ---------------12)--------------------
update product_master set cost_price=950.00 where description='Floppies';

-- ---------------13)--------------------
update salesman_master set city='Mumbai';

select *from client_master;
select *from product_master;
select *from salesman_master;
-- ---------------14)--------------------
delete from salesman_master where Sal_amt=3500;

-- ---------------15)--------------------
delete from product_master where qty_on_hand=100;

-- ---------------16)--------------------
delete from client_master where State='Tamil nadu';

-- ---------------17)--------------------
alter table client_master 
add telephone int(10);

desc product_master;
-- ---------------18)--------------------
alter table product_master
modify sell_price decimal(10,2);
desc product_master;

-- ---------------19)--------------------
alter table client_master
rename column telephone to contact;

-- ---------------20)--------------------
alter table client_master
drop column contact;

-- ---------------21)--------------------
create table employee(e_id int,name varchar(20),salary int,city varchar(15));

select *  from employee;

insert into employee values(1,'krunal',50000,'anand'),
(2,'sangita',30000,'anand'),
(3,'bhargav',20000,'ahmedabad'),
(4,'rohit',15000,'vadodara'),
(5,'gaurav',10000,'surat');

-- ---------------22)--------------------
drop table employee;

-- ---------------23)--------------------
alter table salesman_master 
rename to sman_mast;
select *  from sman_mast;

-- ----------------------------TASK 3:-----------------------------------------
use practice_158332;

create table sales_order(
Order_no Varchar(6),
Order_date Date,
Client_no Varchar(6),
S_no Varchar (6),
Dely_type Char (1),
Billed_yn Char(1),
Dely_date Date,
Order_status Varchar(10));

select * from sales_order;
insert into sales_order values
('O1901','2015/06/12','C001','S001','F','N','2015/06/20','InProcess'),
('O1902','2015/01/25','C002','S002','P','N','2015/06/27','Cancelled'),
('O4665','2015/02/18','C003','S003','F','Y','2015/02/20','Fulfilled'),
('O1903','2015/04/03','C001','S001','F','Y','2015/04/07','Fulfilled'),
('O4666','2015/05/20','C004','S002','P','N','2015/05/22','Cancelled'),
('O1908','2015/05/24','C005','S003','F','N','2015/05/26','InProcess');

-- ---------------1)--------------------
select * from client_master where name like '_a%';

-- ---------------2)--------------------
select * from client_master where length(name)=4 and name like '_a__%';

-- ---------------3)--------------------
select city from client_master where city like '%a_';

-- ---------------4)--------------------
select name,bal_due from client_master where bal_due >= 10000;
select * from client_master;

-- ---------------5)--------------------
select * from sales_order where month(Order_date)=1;

-- ---------------6)--------------------
select * from sales_order where Client_no='C003' or Client_no='C001';

-- ---------------7)--------------------
select * from product_master where  sell_price > 2000  and  sell_price <= 5000;

-- ---------------8)--------------------
select description,sell_price, sell_price * 0.15 as new_price 
FROM product_master
WHERE sell_price > 1500;

-- ---------------9)--------------------
select name,city, State 
FROM client_master
WHERE State not in ('Maharashtra');

-- ---------------10)--------------------
select count(Order_no) from sales_order;

-- ---------------11)--------------------
select avg(sell_price) as avrege from product_master;

-- ---------------12)--------------------
select min(sell_price) as min_price,max(sell_price) as max_price from product_master;

-- ---------------13)--------------------
select count(*) as count
 from product_master
 where sell_price>=1500;
/*select count(description),description
 from product_master
 where sell_price>=1500
 group by description;*/
 
-- ---------------14)--------------------
select * from product_master where qty_on_hand < reorder_lvl;

-- ---------------15)--------------------
create table cmaster select * from  client_master where 1=0;
select * from cmaster;

-- ---------------16)--------------------
insert into cmaster (select * from client_master where city='Bombay');

-- ---------------17)--------------------
create table sales
SELECT order_no,client_no
FROM sales_order
where 1=0;
select * from sales;

-- ---------------18)--------------------
insert into sales (select order_no,client_no from sales_order); 

-- ---------------19)--------------------
select Order_no,dayname(Order_date) from sales_order;

-- ---------------20)--------------------
select monthname(Order_date),Order_date from sales_order where Order_status='Fulfilled';

-- ---------------21)--------------------
select Order_no,Dely_date-Order_date as days_elapsed from sales_order;
-- SELECT DATEDIFF(delivery_date, order_date) AS days_elapsed
-- FROM sales_order;

-- ---------------22)--------------------
select curdate() + 15;

-- ---------------23)--------------------
SELECT DATE(DATE_ADD(CURDATE(), INTERVAL 15 DAY));
select curdate() as cur_date ,curtime() as cur_time;

-- ---------------24)--------------------
select curtime() as sys_time;

-- --------------------TASK 4----------------------------------
use practice_158332;

-- ---------------1)--------------------
-- Create Above tables with given constraints and insert data in it.
alter table Client_master 
   modify Client_no varchar(6) PRIMARY KEY CHECK (Client_no LIKE 'C%'),
   modify Name varchar(15) NOT NULL,
   modify  City varchar(15),
   modify Pincode numeric(8),
   modify  State varchar(15),
   modify  Bal_due numeric(10,2);
   
select * from client_master;

describe client_master;
-- ------------------------------------------------------------------
select * from product_master;
alter table Product_master
     modify Product_no varchar(6) PRIMARY KEY CHECK (Product_no LIKE 'P%'),
    modify  Description varchar(15) NOT NULL,
    modify  P_percent numeric(4,2) NOT NULL,
    modify  U_measure varchar(10) NOT NULL,
    modify  Qty_on_hand numeric(8) NOT NULL,
    modify  Reorder_lvl numeric(8) NOT NULL,
     modify Sell_price numeric(8,2) NOT NULL CHECK (Sell_price > 0),
     modify Cost_price numeric(8,2) NOT NULL CHECK (Cost_price > 0);
-- ------------------------------------------------------------------
select * from Salesman_master;
create table Salesman_master( 
   S_no varchar(6) PRIMARY KEY CHECK (S_no LIKE 'S%'),
   S_name varchar(15) NOT NULL,
   City varchar(10),
   Pincode numeric(8),
   State varchar(12),
  Sal_amt numeric(8,2) NOT NULL CHECK (Sal_amt > 0),
   Tgt_to_get numeric(6,2) NOT NULL CHECK (Tgt_to_get > 0),
   Ytd_sales numeric(6,2) NOT NULL,
  Remarks varchar(20));
-- ------------------------------------------------------------------
select * from sales_order;
create table Sales_order(
    Order_no varchar(6) PRIMARY KEY CHECK (Order_no LIKE 'O%'),
    Order_date date,
    Client_no varchar(6),
    S_no varchar(6),
    Dely_type char(1) DEFAULT 'F',
    Billed_yn char(1),
    Dely_date date,
    Order_status  enum('inprocess', 'fulfilled', 'backorder', 'cancelled'),
    foreign key (Client_no) references Client_master(Client_no),
    foreign key (S_no) references Salesman_master(S_no)
);
-- ------------------------------------------------------------------
select* from sales_order_details;
create table Sales_order_details(
    Order_no varchar(6),
    Product_no varchar(6),
    Qty_ordered numeric(8),
    Qty_disp numeric(8),
    Product_rate numeric(10,2),
    foreign key (Order_no) REFERENCES Sales_order(Order_no),
    foreign key (Product_no) REFERENCES Product_master(Product_no));
-- ----------------------------------------------------------------------
INSERT INTO Product_master VALUES 
('P001', 'Floppies', 5, 'Piece', 100, 20, 525.00, 500.00),
('P004', 'Floppies', 5, 'Piece', 100, 20, 525.00, 500.00);

INSERT INTO Salesman_master VALUES 
  ('S001', 'Kiran', 'Bombay', 400002, 'Maharashtrar', 3000, 100, 50, 'Excellent'),
  ('S002', 'Manish', 'Bombay', 400001, 'Maharashta', 3000, 200, 100, 'Good'),
  ('S003', 'Ravi', 'Bombay', 400032, 'Maharashta', 3000, 200, 100, 'Average'),
  ('S004', 'Ashish', 'Bombay', 400044, 'Maharashta', 3500, 200, 150, 'Good');
set foreign_key_checks=0;
INSERT INTO Sales_order VALUES 
  ('O1901', '2006-01-12', 'C001', 'S001', 'F', 'N', '2006-01-20', 'inprocess'),
  ('O1902', '2006-01-25', 'C002', 'S002', 'P', 'N', '2006-01-27', 'cancelled'),
  ('O4665', '2006-02-18', 'C003', 'S003', 'F', 'Y', '2006-02-20', 'fulfilled'),
  ('O1903', '2006-04-03', 'C001', 'S001', 'F', 'Y', '2006-04-07', 'fulfilled'),
  ('O4666', '2006-05-20', 'C004', 'S002', 'P', 'N', '2006-05-22', 'cancelled'),
  ('O1908', '2006-05-24', 'C005', 'S003', 'F', 'N', '2006-05-26', 'inprocess');
  
INSERT INTO Sales_order_details VALUES 
('O1901', 'P001', 4, 4, 525),
('O1901', 'P002', 2, 1, 8400),
('O1901', 'P003', 2, 1, 5250),
('O1902', 'P001', 10, 0, 525),
('O4665', 'P002', 3, 3, 3150),
('O4665', 'P004', 3, 1, 5250),
('O4665', 'P005', 10, 10, 525),
('O4665', 'P003', 4, 4, 1050),
('O1903', 'P006', 2, 2, 1050),
('O1903', 'P004', 1, 1, 12000),
('O1908', 'P005', 1, 0, 8400),
('O1908', 'P007', 10, 0, 1050);

-- ---------------------------------TASK 5 ---------------------------------------
use practice_158332;

select* from product_master;
select* from sales_order;
-- 1)--------------------------------------------------
select Product_no,Description from product_master where Product_no in (select Product_no from sales_order_details where Qty_disp=0);

-- 2)--------------------------------------------------
select Name,city,Pincode from client_master where client_no in(select client_no from sales where Order_no='O1901');

-- 3)---------------------------------------------------
select Client_no,Name from Client_master where Client_no in
 (select Client_no from sales_order where Order_status = 'fulfilled' and Order_no in 
 (select Order_no from sales_order_details where Product_no in 
 (select Product_no from product_master where Description='Mouse')));

 -- 4)--------------------------------------------------------
select p.description,sum(Qty_disp) as total_quntity from product_master as p,sales_order_details as s where p.Product_no = s.Product_no group by p.Product_no; 

-- 5)-----------------------------------------------------------
select p.description,sum(Qty_disp*Product_rate) as Value from product_master as p,sales_order_details as s where p.Product_no = s.Product_no group by p.Product_no,p.description;

-- 6)-----------------------------------------------------------
select Order_no,count(Order_no) as total_order from sales_order where Billed_yn='y' and month(Order_date)=01 group by Order_no;

-- 7)------------------------------------------------------------
select c.name,p.description from client_master c 
inner join sales s 
on c.Client_no=s.Client_no 
inner join sales_order_details d
on d.Order_no=s.Order_no
inner join product_master p
on p.product_no=d.product_no
having name='Ivan';

-- 8)------------------------------------------------------------
select p.product_no,description,s.Qty_ordered
from product_master p
join sales_order_details s
on p.product_no= s.product_no
order by s.Qty_ordered ,product_no;

-- 9)------------------------------------------------------------
select c.name,c.client_no,s.order_no from client_master c
join sales_order s 
on c.Client_no=s.client_no
join sales_order_details sod
on s.order_no=sod.order_no
where product_no in
(select Product_no from product_master where description='Cd,Drive');

-- 10)------------------------------------------------------------
select p.product_no,sod.order_no from sales_order_details sod
join product_master p
on sod.product_no=p.product_no
where sod.Qty_ordered < 4 and p.product_no in 
(select p.product_no from product_master p where description='mouse');

-- 11)------------------------------------------------------------
select concat(p.description,' Worth Rs. ', sum(s.Qty_ordered * s.Product_rate) ,' was sold.') as info
from product_master  p
join sales_order_details s
on p.product_no=s.product_no
group by p.product_no;

-- ---------------------TASK 6:--------------------------------------
use Practice_158332;

-- 1 
select Name from client_master where Client_no in(select Client_no from sales_order where month(Order_date) <5 and year(Order_date)=1996);
select * from sales_order;

-- 2
select Name from client_master where client_no in (select client_no from sales_order where order_no in (select order_no from sales_order_details where product_rate*qty_ordered >= 10000));

-- 3
select avg(Qty_ordered) from Sales_order_details where Qty_ordered in(select Qty_ordered from sales_order_details where product_rate*qty_ordered <= 15000);

-- 4
select Qty_ordered,description from sales_order_details inner join Product_master on sales_order_details.product_no = product_master.product_no where order_no in (select Order_no from sales_order where month(dely_date) = month(current_date()));

-- 5
select product_master.product_no,description,order_no from product_master inner join sales_order_details on product_master.product_no=sales_order_details.product_no where Order_no in(select Order_no from sales_order where Client_no in (select Client_no from Client_master where Name in ('Ivan','Vandana')));

-- 6
select p.product_no,p.description,s.Qty_ordered 
from product_master p
inner join sales_order_details s
on p.product_no=s.product_no 
where Order_no in
(select Order_no from sales_order where Client_no in 
(select Client_no from Client_master where Client_no in ('C001','C002')));

-- 7
select concat(p.description,' worth Rs. ',SUM(s.Qty_ordered * s.Product_rate),' was ordered in the month of ',DATE_FORMAT(so.order_date, '%M')) as info
from Sales_order_details s
join Sales_order so ON s.Order_no = so.Order_no
join Product_master p ON s.Product_no = p.Product_no
group by p.description,so.order_date;
select * from sales_order_details;

-- 8 
SELECT CONCAT(client_master.Name, ' has placed order ', Sales_order.Order_no,' on ' , Sales_order.Order_date )as information
from sales_order
inner join client_master on sales_order.Client_no=client_master.Client_no;
 
 -- --------------------------------TASK 7:---------------------------------------------
use humanresource;

-- 1
select FIRST_NAME AS 'first name' , LAST_NAME as 'Last name' from employees;

-- 2
select EMPLOYEE_ID from employees;

-- 3
select * from employees order by FIRST_NAME desc;

-- 4
select FIRST_NAME AS 'first name' , LAST_NAME as 'Last name', salary,(salary *0.15) as PF from employees;

-- 5
select employee_ID,FIRST_NAME AS 'first name' , LAST_NAME as 'Last name', salary from employees order by salary;

-- 6
select sum(salary) from employees;

-- 7
select max(salary) as max,min(salary) as min from employees;

-- 8
select avg(salary), count(employee_ID) from  employees; 

-- 9
select count(employee_ID) from  employees;

-- 10
select count(distinct job_ID) from employees;

-- 11
select upper(first_name) from employees;

-- 12
select SUBSTRING(first_name,1,3) from employees;

-- 13
select concat(first_name,' ',last_name) as Name from employees;

-- 14
select trim(first_name) from employees;

-- 15
select length(first_name),length(last_name) from employees;

-- 16
select round(salary,2) from employees;


-- sorting queries

-- 1
select FIRST_NAME , LAST_NAME  from employees where salary<10000 or salary>15000;

-- 2
select FIRST_NAME,LAST_NAME,Department_ID  from employees where department_id=30 or department_id=100;

-- 3
select FIRST_NAME ,LAST_NAME,salary from employees where salary<10000 or salary>15000 and department_id in(30,100);

-- 4
select FIRST_NAME,LAST_NAME,hire_date from employees where year(hire_date)=1987;

-- 5
select first_name from employees where first_name like'%b%c%';

-- 6
select last_name,job_id,salary from employees where job_id in('it_prog','sh_clerk') and salary not in(4500,10000, 15000); 

-- 7
select last_name from employees where length(first_name)=6;

-- 8
select last_name from employees where first_name like '__e%';

-- 9
select distinct job_id from employees;

-- 10
select FIRST_NAME AS 'first name' , LAST_NAME as 'Last name', salary,(salary *0.15) as PF from employees;

-- 11
select * from employees where last_name in('blake','scott','king','ford');

-- aggregate function queries
-- 1
select count(distinct job_ID) from employees;

-- 2
select sum(salary) from employees;

-- 3
select min(salary) as min from employees;

-- 4 
select max(salary) as max from employees where job_id='it_prog';

-- 5
select avg(salary), count(employee_ID) from  employees where department_id=90; 

-- 6
select min(salary) as Lowest,max(salary) as highest,sum(salary) as sum ,avg(salary)  from employees;

-- 7
select count(employee_id),job_id from employees group by job_id;

-- 8
select (max(salary)-min(salary)) as difference from employees;

-- 9
select manager_id, min(salary) from employees group by manager_id,salary order by salary desc;

-- 10
select department_id,sum(salary) from employees	 group by department_id ;

-- 11
select job_id,avg(salary) from employees where job_id!='IT_Prog' group by job_id ;

-- 12
select sum(salary),min(salary) as Lowest,max(salary) as highest,sum(salary) as sum ,avg(salary) from employees where department_id=90 group by job_id;

-- 13
select job_id,max(salary) from employees where salary>=4000 group by job_id;

-- 14
select avg(salary),job_id from employees group by job_id having count(*)>10;


-- using sub queries
-- 1
select FIRST_NAME, LAST_NAME,salary from employees where salary>(select salary from employees where last_name='Bull');

-- 2
select FIRST_NAME, LAST_NAME,salary from employees where department_id=(select department_id from departments where department_name='IT');

-- 3
SELECT first_name, last_name FROM employees 
WHERE manager_id in (select employee_id 
FROM employees WHERE department_id 
IN (SELECT department_id FROM departments WHERE location_id 
IN (select location_id from locations where country_id='US')));

-- 4
SELECT first_name, last_name FROM employees 
WHERE (employee_id IN (SELECT manager_id FROM employees));

-- 5
SELECT first_name, last_name FROM employees where salary>(select avg(salary) from employees);

-- 6
SELECT first_name, last_name,salary  FROM employees where salary in(select min(salary) from employees group by job_id);

-- 7
SELECT first_name, last_name,salary FROM employees where department_id=60 and salary> (select avg(salary) from employees);

-- 8
SELECT first_name, last_name,salary  FROM employees where salary > (select salary from employees where first_name='Mr.bell');

-- 9
SELECT first_name, last_name,salary  FROM employees where salary in (select min(salary) from employees group by department_id);

-- 10
SELECT first_name, last_name,salary  FROM employees where salary in (select avg(salary) from employees group by department_id);

-- 11
SELECT first_name, last_name,salary  FROM employees where salary in(select max(salary) from employees where job_id='SH_CLERK') order by salary;

-- 12
select first_name, last_name from employees where job_id not in (select manager_id from employees );

-- 13
SELECT employee_id, first_name, last_name,departments.department_name in(select department_name from departments where department_id in(select department_id from employees))FROM employees;

-- 14
SELECT employee_id, first_name FROM employees WHERE salary >(SELECT AVG(salary) FROM employees WHERE department_id =employees.department_id);

-- 15
SET @i = 0; 
SELECT i, employee_id 
FROM (SELECT @i := @i + 1 AS i, employee_id FROM employees)
a WHERE MOD(a.i, 2) = 0;


-- 16
SELECT DISTINCT salary 
FROM employees s1 
WHERE 5 = (SELECT COUNT(DISTINCT salary) 
FROM employees  s2 
WHERE s2.salary >= s1.salary);
 
-- 17
SELECT DISTINCT salary 
FROM employees s1 
WHERE 4 = (SELECT COUNT(DISTINCT salary) 
FROM employees  s2 
WHERE s2.salary <= s1.salary);

-- 18
select * from employees order by employee_id desc limit 10;

-- 19
select * from departments where department_id not in (select department_id FROM employees);

-- 20
select salary from employees order by salary desc limit 3;

-- 21
select salary from employees order by salary limit 3;

-- 22
select name, salary FROM Employee AS e1   
WHERE N-1 = (select COUNT(DISTINCT salary) FROM Employee e2   
WHERE e2.salary > e1.salary) ; 


-- join queries
-- 1
select location_id, street_address, city, state_province, country_name
from locations
inner JOIN countries;

-- 2
select first_name, last_name, employees.department_id, department_name 
from employees 
inner join departments on employees.department_id=departments.department_id;

-- 3
SELECT first_name,last_name, job_id, employees.department_id, departments.department_name 
FROM employees
inner JOIN departments 
ON (employees.department_id = departments.department_id)
where departments.location_id in(select location_id from locations WHERE city='London');

-- 4
SELECT e.employee_id as 'Emp_Id', e.last_name as 'Employee', 
m.employee_id as 'Mgr_Id', m.last_name as 'Manager' 
FROM employees e 
join employees m 
ON (e.manager_id = m.employee_id);

-- 5
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e 
JOIN employees f
ON (f.last_name = 'Jones') 
WHERE f.hire_date < e.hire_date;

-- 6
SELECT department_name AS 'Department Name', 
COUNT(*) AS 'No of Employees' 
FROM departments 
INNER JOIN employees 
ON employees.department_id = departments.department_id 
GROUP BY departments.department_id, department_name 
ORDER BY department_name;

-- 7
select employee_id, job_title, end_date-start_date Days from job_history 
inner join jobs 
where department_id=90;
-- 8

SELECT departments.department_id, departments.department_name, departments.manager_id, employees.first_name 
FROM departments 
INNER JOIN employees  
ON (departments.manager_id = employees.employee_id);

-- 9
SELECT departments.department_name, employees.first_name 
FROM departments  
JOIN employees  
ON (departments.manager_id = employees.employee_id) 
where departments.location_id in(select location_id from locations);

-- 10
select job_title, avg(salary) 
from employees 
natural join jobs 
group by job_title;

-- 11
select job_title, first_name, salary-min_salary 'Salary - Min_Salary' 
from employees 
natural join jobs;

-- 12
select * from job_history 
inner join employees 
on (job_history.employee_id = employees.employee_id) 
where salary > 10000;

-- 13
SELECT first_name, last_name, hire_date, salary, 
(DATEDIFF(now(), hire_date))/365 Experience 
FROM departments d JOIN employees e 
ON (d.manager_id = e.employee_id) 
WHERE (DATEDIFF(now(), hire_date))/365>15;





