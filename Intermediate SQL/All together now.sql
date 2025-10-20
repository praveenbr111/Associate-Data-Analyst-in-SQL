/* 
1 Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year.

2 Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.

3 Modify the query once more so that only years with an average budget of greater than 60 million are included.

4 Finally, order the results from the highest average gross and limit to one. */

-- 1 Answer
-- Select the release_year for films released after 1990 grouped by year
SELECT release_year

FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- 2 Answer

-- Modify the query to also list the average budget and average gross
SELECT 
    release_year, 
    AVG(budget) AS avg_budget,
    AVG(gross)  AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- 3 Answer


SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING AVG(budget) > 60000000;

-- 4 Answer

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;


