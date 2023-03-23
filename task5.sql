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

