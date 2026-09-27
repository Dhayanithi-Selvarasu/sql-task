-- EMPLOYEE 

select department, count(*) 
from Employee group by department;

select department, avg(salary) 
from Employee group by department;

select department, count(*) 
from Employee group by department
having count(*) > 1;

select department, max(salary) 
from Employee group by department;

select department, min(salary) 
from Employee group by department;

select department, avg(salary) 
from Employee group by department
having avg(salary) > 50000;

select department, sum(salary) 
from Employee group by department;

select * from Employee
order by salary desc;

select * from Employee
order by department asc, salary desc;

select city, count(*) from Employee
group by city having count(*) > 1;

select city, sum(salary) 
from Employee group by city;

select department, sum(salary) as total_salary
from Employee group by department
order by total_salary desc;

select department, count(*) as employee_count
from Employee where salary > 50000
group by department;

select department, max(salary) - min(salary) 
from Employee group by department;

select * from Employee
order by salary desc
limit 3;
