select * from task.customers;

select * from customers 
where city = 'chennai';

select * from customers 
where name like 'j%';

select * from customers 
where name like '%a%';

select * from customers
where city != 'madurai';

select * from customers
where name like '%i';

select * from customers
where city in ('chennai', 'salem');

select * from customers
order by name asc;

select count(*) as total_customers
from customers;

select customers.name, accounts.balance
from customers join accounts
on customers.customer_id = accounts.customer_id;

select customers.name, accounts.account_type, accounts.balance
from customers left join accounts on customers.customer_id = accounts.customer_id;

select accounts.account_id, accounts.account_type,accounts.balance,customers.name, customers.city
from accounts join customers
on accounts.customer_id = customers.customer_id;

select customers.name, accounts.account_type from customers
join accounts on customers.customer_id = accounts.customer_id
where accounts.balance > 20000;

select customers.name, sum(accounts.balance) 
from customers join accounts
on customers.customer_id = accounts.customer_id
group by customers.customer_id, customers.name;

select customers.name, accounts.balance
from customers join accounts
on customers.customer_id = accounts.customer_id
order by accounts.balance desc;

select customers.city, count(accounts.account_id)
from customers join accounts
on customers.customer_id = accounts.customer_id
group by customers.city;

select * from customers
where customer_id in (
    select customer_id from accounts );
    
 select * from customers
where customer_id not in (
select customer_id from accounts);

select * from customers
where customer_id in (
    select customer_id from accounts
    group by customer_id having sum(balance) > 40000 );   