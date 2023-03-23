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