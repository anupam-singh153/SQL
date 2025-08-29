# Write your MySQL query statement below

SELECT s.score, (
    SELECT count(distinct score)
    FROM scores
    where score >= s.score)
    AS `rank`
FROM scores s
ORDER BY s.score DESC;
