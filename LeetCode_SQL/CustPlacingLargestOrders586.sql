# Write your MySQL query statement below

with cte as (
    select customer_number, count(customer_number) as cnt
    from Orders 
    group by customer_number
)
select customer_number from cte c
where c.cnt = (select max(cnt) from cte);
