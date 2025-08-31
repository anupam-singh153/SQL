# Write your MySQL query statement below

with cte as(
    select e.departmentId, d.name, max(salary) as Salary
    from Employee e
    join Department d
    on e.departmentId = d.id
    group by e.departmentId
)

select c.name as Department, e.name as Employee, e.salary from employee e
join cte c
on e.departmentId = c.departmentId 
and e.salary = c.salary;
