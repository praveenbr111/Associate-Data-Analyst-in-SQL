/*
From cities, select the city name, country code, proper population, and metro area population, as well as the field city_perc, which calculates the proper population as a percentage of metro area population for each city (using the formula provided).
Filter city name with a subquery that selects capital cities from countries in 'Europe' or continents with 'America' at the end of their name.
Exclude NULL values in metroarea_pop.
Order by city_perc (descending) and return only the first 10 rows.*/

-- Select fields from cities
SELECT
    name,
    country_code,
    city_proper_pop,
    metroarea_pop,
    
    (city_proper_pop / metroarea_pop * 100) AS city_perc
FROM cities
WHERE name IN(
-- Use subquery to filter city name
    SELECT capital
    FROM countries
    WHERE continent = 'Europe'
    
    OR continent LIKE '%America')
-- Add filter condition such that metroarea_pop does not have null values
AND metroarea_pop IS NOT NULL
-- Sort and limit the result
ORDER BY city_perc DESC
LIMIT 10;