# Write your MySQL query statement below

select p.project_id, 
ifnull(round(sum(e.experience_years)/count(p.project_id),2), 0.0) 
as average_years
from project p
left join employee e
on p.employee_id = e.employee_id
group by p.project_id;
