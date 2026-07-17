CREATE DATABASE imdb;
USE imdb;
SELECT Director, AVG(IMDB_Rating) AS avg_rating, COUNT(*) AS movie_count
FROM imdb_top1000
GROUP BY Director
HAVING movie_count >= 3 AND avg_rating >= 7.5
ORDER BY avg_rating DESC
LIMIT 10;

SELECT 
    CASE 
        WHEN Runtime < 90 THEN 'Under 90 min'
        WHEN Runtime BETWEEN 90 AND 120 THEN '90-120 min'
        WHEN Runtime BETWEEN 121 AND 150 THEN '121-150 min'
        ELSE 'Above 150 min'
    END 
    AS runtime_bucket,
    AVG(Gross) AS avg_gross,
    COUNT(*) AS movie_count
FROM imdb_top1000
GROUP BY runtime_bucket
ORDER BY avg_gross DESC;

SELECT *FROM imdb_top1000
LIMIT 10 ;
SELECT Actor, COUNT(*) AS movie_count
FROM (
  SELECT Star1 AS Actor FROM imdb_top1000
  UNION ALL
  SELECT Star2 FROM imdb_top1000
  UNION ALL
  SELECT Star3 FROM imdb_top1000
  UNION ALL
  SELECT Star4 FROM imdb_top1000
) AS all_actors
GROUP BY Actor
ORDER BY movie_count DESC;

SELECT Series_Title ,IMDB_Rating
FROM imdb_top1000
WHERE IMDB_Rating > 8.5 AND
No_of_Votes < (SELECT AVG(No_of_votes) FROM imdb_top1000 )
ORDER BY IMDB_Rating;
