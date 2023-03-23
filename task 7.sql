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

