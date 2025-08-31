# Write your MySQL query statement below

select name as Customers
from Customers 
where id not IN 
(select distinct customerId from Orders);
