create database company1;
use company1;

create table employees(
id int auto_increment,
name varchar(100),
position varchar(100),
salary decimal(10,2),
date_of_joining date,
primary key (id));

#  Inserting the following data into the employees table:

insert into employees (name, position, salary, date_of_joining)
VALUES('John Doe', 'Manager', 55000.00, '2020-01-15'),
('Jane Smith', 'Developer', 48000.00, '2019-07-10'),
('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
('Bob Brown', 'Developer', 50000.00, '2018-11-01');
select * from employees;

#  A query to retrieve all employees who are Developers.

select * from employees where position = 'Developer';

#  A query to update the salary of Alice Johnson to 46000.00.

set sql_safe_updates=0;
update employees 
set salary=46000.00 where name="Alice Johnson";

#  A query to delete the employee record for Bob Brown.

delete from employees where name = "Bob Brown";
select * from employees;

#  A query to find the employees who have a salary greater than 48000.

select * from employees where salary > 48000;

#  A query to add a new column email to the employees table.

alter table employees 
add email varchar(20);
select * from employees;

#  A query to update the email for John Doe to john.doe@company.com.

UPDATE employees
SET email = "john.doe@company.com"
WHERE name = "john doe";
select * from employees;

#  A query to retrieve only the name and salary of all employees.

select name, salary from employees;

#  A query to count the number of employees who joined after January 1, 2020.

select count(*) from employees
where date_of_joining > '2020-01-01';

#  A query to order the employees by salary in descending order.

select * from employees order by salary desc;

#  A query to drop the email column from the employees table.

alter table employees drop column email;
select * from employees;

#  A query to find the employee with the highest salary.

select * from employees order by salary desc limit 1;