# Write your MySQL query statement below

(
    select name as results 
    from movieRating 
    join users using(user_id)
    group by name
    order by count(*) desc, name
    limit 0, 1
)

UNION ALL

(
    select title as results 
    from movieRating 
    join movies using(movie_id)
    where extract(YEAR_MONTH from created_at) = 202002
    group by title
    order by AVG(rating) desc, title
    limit 0, 1
)
