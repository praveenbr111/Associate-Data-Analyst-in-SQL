/* 
1 Select the release_year and count of films released in each year aliased as film_count.

2 Select the release_year and average duration aliased as avg_duration of all films, grouped by release_year. */

-- 1 Answer

-- Find the release_year and film_count of each year
SELECT release_year,count(*) AS film_count
FROM films
GROUP BY release_year;


-- 2 Answer

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;