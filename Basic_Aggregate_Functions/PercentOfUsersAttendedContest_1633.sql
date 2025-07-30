# Write your MySQL query statement below

select r.contest_id, round(100 * count(r.contest_id)/ (select count(*) from users), 2) percentage
from register r
left join users u
on r.user_id = u.user_id
group by r.contest_id
order by percentage desc,
r.contest_id asc;
