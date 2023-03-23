-- TASK 4
use practice_158332;

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

