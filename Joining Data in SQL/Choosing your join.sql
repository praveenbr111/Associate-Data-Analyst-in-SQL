/* 
Complete the join of countries AS c with populations as p.
Filter on the year 2010.
Sort your results by life expectancy in ascending order.
Limit the result to five countries. */

SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM 
    countries AS c
-- Join to populations (alias as p) using an appropriate join
INNER JOIN
    populations as p
    ON c.code = p.country_code
-- Filter for only results in the year 2010
WHERE 
    year = 2010
-- Sort by life_exp
ORDER BY
    life_exp
-- Limit to five records
LIMIT 5;