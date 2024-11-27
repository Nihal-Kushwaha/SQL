create database company0;
use company0;

create table employee(
emp_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
department varchar(20),
salary varchar(20),
hire_date date);

insert into employee(emp_id,first_name,last_name,department,salary,hire_date)
values(1,"John","Doe","IT",60000.00,"2019-01-10"),
(2,"Jane","Smith","HR",55000.00,"2018-03-05"),
(3,"Emily","Jones","IT",62000.00,"2020-07-23"),
(4,"Michael","Brown","Finance",70000.00,"2016-05-14"),
(5,"Sarah","Davis","Finance",69000.00,"2017-11-18"),
(6,"David","Johnson","HR",48000.00,"2021-09-10");

select * from employee;

 #----1) Find the average salary of employees in each department. 
 
select department ,avg(salary) as avg_salary from employee group by department;

 #----2) Find the total number of employees hired after 2019.
 
select count(first_name) as total_number_of_employees from employee where hire_date > "2019-12-31"; 

 #----3) List the departments and the total salary of all employees in each department, ordered by the total salary.

select distinct department , sum(salary) as total_salary from employee group by department order by total_salary;

#----4) Find the highest salary in the Finance department.

select max(salary) from employee where department = "Finance";

#----5) Get the top 3 highest-paid employees.

select concat(first_name," ",last_name) as high_paid_employees,salary from employee order by salary desc limit 3;

#----6) Find the department with the minimum average salary.  

select department,avg(salary)as min_avg_salary from employee group by department order by min_avg_salary asc limit 1; 

#----7) Display the total number of employees in each department, ordered by the number of employees.

select department,count(first_name) as total_number from employee group by department order by total_number;

#----8) Find the average salary of employees who were hired before 2020.  

select  avg(salary) as avg_salary from employee  where hire_date < "2020-01-01";

#----9) List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 

select concat(first_name," ",last_name) as employees,department,hire_date from employee where department = "IT" order by hire_date desc;

#----10)  Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 

select sum(salary)as total_salary from employee where hire_date > 2019-01-01 order by salary;

#----11) Get the employee with the lowest salary in the HR department. 

select concat(first_name," ",last_name) as employees,salary from employee where department = "HR" order by salary asc limit 1;

#----12) Find the total salary paid to employees in each department, but limit the result to the top 2 highest paying departments. 

select department,sum(salary) as total_salary from employee group by department order by total_salary desc limit 2;
 
#----13) List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  

select concat(first_name," ",last_name) as employees,salary from employee where hire_date > "2018-12-31" order by salary asc limit 4;

#----14) Find the highest salary in the IT department, but limit the results to the top 1 result.   

select salary,department from employee where department = "IT" order by salary desc limit 1;

#----15) Get the average salary of employees in each department and list only departments with an average salary greater than $60,000. 

select department,avg(salary) as avg_salary from employee group by department having avg_salary > 60000;