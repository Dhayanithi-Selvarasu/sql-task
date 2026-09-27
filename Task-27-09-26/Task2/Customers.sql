
select Customers.customer_id, Customers.customer_name,sum(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id,Customers.customer_name,count(Orders.order_id) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
having count(Orders.order_id) > 3;

select Customers.customer_id, Customers.customer_name, avg(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id, Customers.customer_name, max(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id, Customers.customer_name, sum(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
order by total_purchase desc;

select Customers.customer_id,  Customers.customer_name, sum(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
having sum(Orders.amount) > 10000;

select Customers.customer_name, count(Orders.order_id) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id, Customers.customer_name,sum(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
order by total_purchase desc 
limit 1;

select Customers.customer_id,Customers.customer_name, count(Orders.order_id) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
order by total_orders desc
limit 1;

select Customers.customer_id, Customers.customer_name, avg(Orders.amount) as average_amount
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
having avg(Orders.amount) > 2000;

select Customers.customer_id,Customers.customer_name,sum(Orders.amount) as total_purchase
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
order by total_purchase desc
limit 5;

select Customers.customer_id, Customers.customer_name, min(Orders.amount) as minimum_order
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id,Customers.customer_name,sum(Orders.amount) as total_purchase
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
having sum(Orders.amount) > 5000;

select Customers.customer_id, Customers.customer_name, count(Orders.order_id) , sum(Orders.amount) 
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name;

select Customers.customer_id, Customers.customer_name, count(Orders.order_id) as total_orders, sum(Orders.amount) as total_purchase
from Customers join Orders
on Customers.customer_id = Orders.customer_id
group by Customers.customer_id, Customers.customer_name
having count(Orders.order_id) > 2 and sum(Orders.amount) > 8000;