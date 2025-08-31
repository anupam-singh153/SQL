WITH cte AS (
  SELECT class, COUNT(*) AS no_of_stud
  FROM courses 
  GROUP BY class
)

select class from cte
where no_of_stud >= 5;
