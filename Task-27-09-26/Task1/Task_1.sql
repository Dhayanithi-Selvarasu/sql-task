use task;
create database task;
CREATE TABLE customers ( customer_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50), city VARCHAR(50) );
CREATE TABLE accounts ( account_id INT PRIMARY KEY AUTO_INCREMENT, customer_id INT, account_type VARCHAR(20), balance DECIMAL(10,2), FOREIGN KEY (customer_id) REFERENCES customers(customer_id) );

INSERT INTO customers (name, city) VALUES ('Janani','Chennai'), ('Arun','Coimbatore'), ('Priya','Madurai'), ('Karthik','Salem');
 INSERT INTO accounts (customer_id, account_type, balance) 
 VALUES (1,'Savings',50000),
 (1,'Current',20000),
 (2,'Savings',30000), 
 (3,'Savings',15000),
 (4,'Current',40000);
 
 CREATE TABLE trains ( train_id INT PRIMARY KEY AUTO_INCREMENT,

train_name VARCHAR(50), source VARCHAR(50), destination VARCHAR(50) );

CREATE TABLE bookings 
( booking_id INT PRIMARY KEY AUTO_INCREMENT, train_id INT, 
passenger_name VARCHAR(50), fare DECIMAL(10,2), status VARCHAR(20),
 FOREIGN KEY (train_id) REFERENCES trains(train_id) );
 
 INSERT INTO trains (train_name, source, destination)
 VALUES ('Express1','Chennai','Madurai'),
 ('Express2','Coimbatore','Salem'), 
 ('Express3','Madurai','Chennai');
 
 INSERT INTO bookings (train_id, passenger_name, fare, status)
 VALUES (1,'Janani',500,'Confirmed'), 
 (1,'Arun',500,'Waiting'),
 (2,'Priya',300,'Confirmed'),
 (3,'Karthik',450,'Cancelled'), 
 (2,'Meena',300,'Confirmed');