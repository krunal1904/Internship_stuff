-- TASK 3:
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


select * from client_master where name like '_a%';

select * from client_master where length(name)=4 and name like '_a__%';

select city from client_master where city like '%a_';

-- Print the information from sales_order table for orders placed in the month of January.

select name,bal_due from client_master where bal_due >= 10000;

select * from client_master;

select * from sales_order where month(Order_date)=1;

select * from sales_order where Client_no='C003' or Client_no='C001';

select * from product_master where  sell_price > 2000  and  sell_price <= 5000;

select description,sell_price, sell_price * 0.15 as new_price 
FROM product_master
WHERE sell_price > 1500;


select name,city, State 
FROM client_master
WHERE State not in ('Maharashtra');

select count(Order_no) from sales_order;

select avg(sell_price) as avrege from product_master;

select min(sell_price) as min_price,max(sell_price) as max_price from product_master;

select count(*) as count
 from product_master
 where sell_price>=1500;
/*select count(description),description
 from product_master
 where sell_price>=1500
 group by description;*/
 
select * from product_master where qty_on_hand < reorder_lvl;

create table cmaster select * from  client_master where 1=0;
select * from cmaster;

insert into cmaster (select * from client_master where city='Bombay');

create table sales
SELECT order_no,client_no
FROM sales_order
where 1=0;

select * from sales;

insert into sales (select order_no,client_no from sales_order); 

select Order_no,dayname(Order_date) from sales_order;

select monthname(Order_date),Order_date from sales_order where Order_status='Fulfilled';

select Order_no,Dely_date-Order_date as days_elapsed from sales_order;
-- SELECT DATEDIFF(delivery_date, order_date) AS days_elapsed
-- FROM sales_order;

select curdate() + 15;

SELECT DATE(DATE_ADD(CURDATE(), INTERVAL 15 DAY));

select curdate() as cur_date ,curtime() as cur_time;

select curtime() as sys_time;


