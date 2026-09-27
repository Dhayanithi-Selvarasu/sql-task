select * from task.accounts;

select * from accounts
where balance > 20000;

select * from accounts
where balance between 20000 and  50000;

select * from accounts
where account_type in ('savings', 'current');

select * from accounts
where account_type != 'savings';

select * from accounts
where balance <= 30000;

select * from accounts
where balance not between 10000 and 40000;

select * from accounts
where balance = 50000;

select * from accounts
where balance > 10000 and balance < 40000;

select * from accounts
where account_type not in ('current');

select * from accounts
order by balance desc;

select * from accounts
order by account_type asc, balance desc;

select sum(balance) from accounts;

select avg(balance) from accounts;

select max(balance) from accounts;

select min(balance) from accounts;

select account_type, sum(balance)
from accounts group by account_type;

select account_type, avg(balance) from accounts
group by account_type;

select account_type, avg(balance) from accounts
group by account_type 
having avg(balance) > 20000;

select customer_id, count(*)
from accounts group by customer_id;

select customer_id, count(*) 
from accounts group by customer_id
having count(*) > 1;

select * from accounts
where balance > (
    select avg(balance) from accounts );
    
select * from accounts
where balance = (
    select max(balance) from accounts);   