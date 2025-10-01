# Write your MySQL query statement below

with cte as(
    select p.product_name, sum(o.unit) as unit from products p 
    join orders o
    on p.product_id = o.product_id and o.order_date like '2020-02-%' 
    group by p.product_id
)
select * from cte where unit >= 100;
