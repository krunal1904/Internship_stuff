CREATE database krunal;

SHOW databases

use krunal;

CREATE TABLE emp_details(id int(3)  not null,name varchar(20),city varchar(15));
CREATE TABLE student(roll_no int(3)  not null,name varchar(20),standard int(1));
CREATE TABLE Persons(ID int,FirstName varchar(255),Address varchar(255),City varchar(255));
CREATE TABLE CUSTOMERS(ID   INT NOT NULL,NAME VARCHAR (20)  NOT NULL,AGE  INT ,SALARY DECIMAL (18, 2), PRIMARY KEY (ID));
CREATE TABLE Companies (id int not null,name varchar(50),address text,email varchar(50),phone varchar(10));
            
show tables;
select * from emp_details;

 alter  table emp_details
 add column salary int(10); 
            
insert into emp_details values(101,'krunal','anand',100000),
(102,'bhargav','ahmedabad',10000),
(103,'darsh','rajkot',20000),
(104,'virat','delhi',20000),
(105,'siraj','mumbai',25000);

insert into student values(1,'krunal',8),
(2,'jay',8),
(3,'vipul',9),
(4,'darshit',7),
(5,'rolins',9);

insert into Persons values(10,'krunal','sagar society','anand'),
(11,'sangita','100 ft road','vadodara'),
(12,'gaurav','sagar society','anand'),
(13,'dharmesh','ganesh colony','bakrol'),
(14,'pooja','sivsakti park','surat');

insert into CUSTOMERS values(1,'krunal',22,70000),
(2,'krupa',21,60000),
(3,'kriya',20,50000),
(4,'sanjay',18,65000),
(5,'dhaval',23,45000);

insert into Companies values(101,'krunal','sagar society','kb@gmail.com',9988776655),
(102,'gaurav','siv society','gk12@gmail.com',9985676655),
(103,'darsh','om society','dp12@gmail.com',998845655),
(104,'jyoti','bhnika society','jyoti193@gmail.com',9548776655),
(105,'richa','ganesh society','rch.1903@gmail.com',8788776655);

show tables

select * from CUSTOMERS;

desc CUSTOMERS;

delete from emp_details where id=103;
delete from Companies where name='richa';
select * from Companies;
delete from student where name='krunal';
delete from CUSTOMERS where age=18;
select * from CUSTOMERS;
delete from student where name='krunal';
select * from student;

update student set name='krunal' where standard=7;
update emp_details set name='krunal' where standard=7;
update Persons set name='krunal' where standard=7;
update CUSTOMERS set age=22 where SALARY>=5000;
update Companies set name='krunal' where standard=7;


create table stud(id int,lastname text not null,firstname text not null,city varchar(35));
select * from stud
insert into stud values(1,'kb','prajapati','anand');
insert into stud values(2,null,'patel','surat');

create table shirt(id int,brandname varchar(40) unique,size varchar(30));
select * from shirt
insert into shirt values(1,'pantaloons',38);
insert into shirt values(2,'raymond',40);
insert into shirt values(2,'pantaloons',42);

create table per(id int,name varchar(40),age int check(age>=18));
select * from per
insert into per values(1,'kb',28),(2,'gk',23),(3,'jiks',17);

create table st(id int,lastname text,firstname text,city varchar(35) default 'anand');
select *from st
insert into st values(1,'kb','prajapati','dubai'),(2,'gk','patel','ahmedabad');
insert into st values(1,'kb','prajapati',default);
insert into st(id,lastname,firstname) values(4,'kl','ok');

create table animal(id int,name text);
select * from animal
insert into animal(name) values('yash'),('yash2'),('yash3');

alter table animal
modify column id int(3) auto_increment;

create table animales(id int auto_increment,name text, primary key(id));
select * from animales
insert into animales(name) values('yash'),('yash2'),('yash3');


create table shirts(id int auto_increment,name varchar(30),size enum('small','medium','large','x-large'),primary key(id));
select * from shirts
insert into shirts(id,name,size) values(1,'t-shirt','medium'),(2,'casual-shirt','large');
insert into shirts(id,name,size) values(1,'t-shirt','m');



-- foreign key concept

create table tb1(id int,name text);
create table tb2(id int,oeder_id int);
select * from tb1;
select * from tb2;

desc tb1;
desc tb;

create table tb3(id int primary key,name text);


create table tb(
id int not null primary key,
o_num int not null,
fk_tb3_id int,
foreign key (fk_tb3_id) references tb3(id)
ON DELETE CASCADE
);


insert into tb3 values(1,5),(2,6),(3,7);
select * from tb3;

insert into tb values(1,9,2),(2,2,1);
select * from tb;

delete from tb3 where id=1;



drop table tb3

