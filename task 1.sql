-- TASK 1:
CREATE DATABASE practice_158332;

use practice_158332;

create TABLE client_master( 
	Client_no VARCHAR(6),
    Name VARCHAR(20),
    City VARCHAR(15),
    Pincode int(8),
    State VARCHAR(8),
    Bal_due decimal(10,2)
);

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
    
describe Salesman_master;

alter table client_master
modify State VARCHAR(15);

insert into client_master(Client_no,Name,City,Pincode,State,Bal_due) 
values('C001',"Ivan","Bombay",400054,"Maharashtra",15000);

insert into client_master(Client_no,Name,City,Pincode,State,Bal_due) 
values('C002',"Vandana","Madras",780001,"Tamil Nadu",0),
('C003',"Pramada","Bombay",400057,"Maharashtra",5000),
('C004','Basu','Bombay',400056,"Maharashtra",0),
('C005',"Ravi","Delhi",100001,"Gujarat",2000),
("C006","Rukmani","Bombay",400050,"Maharashtra",0);

select * from client_master;

insert into product_master(Product_No,Description,P_percent,U_Measure,Qty_on_hand,Reorder_lvl,sell_price,Cost_price) 
values('P001','Floppies',5,'Piece',100,20,525,500),
('P002','Monitor',6,'Piece',10,3,12000,11280),
('P003','Mouse',5,'Piece',20,5,1050,1000),
('P004','Floppies',5,'Piece',100,20,525,500),
('P005','Keyboards',2,'Piece',10,3,3150,3050),
('P006','Cd,Drive',2.5,'Piece',10,3,5250,5100),
('P007','1.44 Drive',4,'Piece',10,3,8400,8000);

select * from product_master;

insert into Salesman_master values
('S001','Kiran','Bombay',400002,'Maharashtar',3000,100,50,'Excellent'),
('S002','Manish','Bombay',400001,'Maharashta',3000,200,100,'Good'),
('S003','Ravi','Bombay',400032,'Maharashta',3000,200,100,'Average'),
('S004','Ashish','Bombay',400044,'Maharashta',3500,200,150,'Good');

select * from Salesman_master;

select product_no,sell_price,cost_price from  product_master;

select s_no,s_name,remarks,sal_amt from salesman_master;

show tables;
