# Write your MySQL query statement below

select query_name,
round(sum(1.0 * rating / position) / count(*), 2) as quality,
round(100.0 * sum(case when rating < 3 then 1 else 0 end) / count(*),2) as poor_query_percentage
from queries
group by query_name;
