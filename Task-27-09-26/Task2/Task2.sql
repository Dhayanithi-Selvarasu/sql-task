create database task2;
use task2;

CREATE TABLE Employee (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(30),
salary DECIMAL(10,2),
city VARCHAR(30),
joining_date DATE );

INSERT INTO Employee VALUES
(101,'John','IT',60000,'Chennai','2022-01-15'),
(102,'David','HR',45000,'Bangalore','2021-03-10'),
(103,'Smith','IT',70000,'Chennai','2020-07-12'),
(104,'Mary','Finance',55000,'Mumbai','2023-01-20'),
(105,'James','HR',48000,'Delhi','2022-05-05'),
(106,'Linda','Finance',65000,'Mumbai','2021-08-18');

CREATE TABLE Customers ( 
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
 city VARCHAR(30) );
 
 CREATE TABLE Orders ( 
 order_id INT PRIMARY KEY, 
 customer_id INT,
 amount DECIMAL(10,2),
 order_date DATE, 
 FOREIGN KEY(customer_id) REFERENCES Customers(customer_id) );
 
 CREATE TABLE Students ( 
 student_id INT PRIMARY KEY,
 student_name VARCHAR(50), 
 department VARCHAR(30),
 marks INT );
 
 insert into Customers (customer_id, customer_name, city) values
(1, 'Arun', 'Chennai'),
(2, 'Gokul', 'Madurai'),
(3, 'Karthik', 'Coimbatore'),
(4, 'Dhaya', 'Chennai'),
(5, 'Nithi', 'Salem'),
(6, 'Vijay', 'Bangalore'),
(7, 'Suresh', 'Trichy');

insert into Orders (order_id, customer_id, amount, order_date) values
(101, 1, 2500, '2026-01-10'),
(102, 1, 3000, '2026-01-15'),
(103, 1, 1800, '2026-02-05'),
(104, 1, 3500, '2026-02-20'),
(105, 2, 4500, '2026-01-12'),
(106, 2, 2500, '2026-02-10'),
(107, 3, 6000, '2026-01-20'),
(108, 3, 3500, '2026-02-15'),
(109, 3, 2000, '2026-03-01'),
(110, 4, 1500, '2026-01-25'),
(111, 4, 2200, '2026-02-12'),
(112, 5, 7000, '2026-02-05'),
(113, 5, 1500, '2026-03-10'),
(114, 5, 2500, '2026-03-15'),
(115, 6, 9000, '2026-01-30');


insert into Students (student_id, student_name, department, marks) values
(1, 'Arun', 'IT', 85),
(2, 'Gokul', 'IT', 72),
(3, 'Karthik', 'IT', 91),
(4, 'Dhaya', 'CSE', 88),
(5, 'Vijay', 'CSE', 76),
(6, 'Nithi', 'CSE', 95),
(7, 'Suresh', 'ECE', 68),
(8, 'Divya', 'ECE', 82),
(9, 'Rahul', 'ECE', 74),
(10, 'Kavya', 'IT', 63),
(11, 'Anand', 'CSE', 81),
(12, 'Swetha', 'ECE', 90);