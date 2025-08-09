# Write your MySQL query statement below

select u.user_id, 
        concat(
            upper(substr(u.name,1,1)), 
            lower(substr(u.name,2,length(u.name)))
            ) as name
from users u 
order by user_id;
