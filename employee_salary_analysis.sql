create database employee_payroll;
use employee_payroll;

create table employee(employee_id int primary key,employee_name varchar(50), department varchar(30),city varchar(50), salary int,experince int );

INSERT INTO employee VALUES
(1,'Rahul','IT','Bhubaneswar',55000,3),
(2,'Priya','HR','Cuttack',42000,2),
(3,'Amit','IT','Puri',65000,5),
(4,'Sneha','Finance','Bhubaneswar',60000,4),
(5,'Rina','HR','Angul',38000,1),
(6,'Ajay','IT','Cuttack',72000,6),
(7,'Pooja','Finance','Puri',52000,3),
(8,'Kiran','Sales','Angul',45000,2),
(9,'Mohan','Sales','Bhubaneswar',58000,4),
(10,'Sita','Finance','Cuttack',68000,5);

select * from employee;
select * from employee where salary > 50000;
select avg(salary) as average_salary from employee;
select max(salary) as highest_salary from employee;
select min(salary) as loest_salary from employee;
select department, count(*) as total_employee from employee group by department;
select department, avg(salary) as average_salary from employee group by department;
select department, sum(salary) as total_salary from employee group by department;
select department, sum(salary) as total_salary from employee group by department having sum(salary) > 100000;
select max(salary) as highest_paid from employee;
select * from employee order by salary desc limit 1;
select * from employee order by salary desc limit 5;
select * from employee order by salary desc;
select city, avg(salary) as average_salary from employee group by city;
select employee_name,salary, rank() over (order by salary desc) as salary_rank from employee;
select employee_id,salary, rank() over (order by salary desc) as salary_rank from employee;
SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 45000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employee;