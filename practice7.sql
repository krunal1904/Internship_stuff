use humanresource;

select first_name as 'First name' , last_name as 'Last name' from employees;

select distinct department_id from departments;

select all * from employees order by first_name desc;

select FIRST_NAME AS 'first name' , LAST_NAME as 'Last name', salary,(salary *0.15) as PF from employees;

select employee_ID,first_name as 'First name' , last_name as 'Last name', salary from employees order by salary;

select sum(salary) from employees;

select max(salary) as max,min(salary) as min from employees;

select avg(salary), count(employee_ID) from  employees; 

select count(employee_id) from employees;

select count(job_id),job_id from employees group by job_id;
select count(distinct job_ID) from employees;

select first_name,upper(first_name) as NAME from employees;

select first_name,substring(first_name,1,3) from employees;

select concat(first_name, ' ', last_name) as NAME  from employees;

select trim(first_name) from employees;

select  length(first_name),length(last_name) from employees ;

select salary from employees;

select round(salary,2) from employees;

-- ------------------------------------------------------
4) Display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
5) Display the first_name of all employees who have both "b" and "c" in their first name.
6) Display the last name, job, and salary for all employees whose job is that of a Programmer or a 
Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
7) Display the last name of employees whose names have exactly 6 characters.
8) Display the last name of employees having 'e' as the third character.
9) Display the jobs/designations available in the employees table.
10) Display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
11) Select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'

select first_name, last_name,salary from employees where salary <10000 or salary > 15000 order by salary;

select FIRST_NAME,LAST_NAME,Department_ID  from employees where department_id=30 or department_id=100;

select FIRST_NAME ,LAST_NAME,salary from employees where salary<10000 or salary>15000 and department_id in(30,100);


















