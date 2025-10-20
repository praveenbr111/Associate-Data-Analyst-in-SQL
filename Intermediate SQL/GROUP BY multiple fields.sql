/* Select the release_year, country, and the maximum budget aliased as max_budget for each year and each country; 
sort your results by release_year and country.*/

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT
    release_year,
    country,
    MAX(budget) AS max_budget
FROM films
GROUP BY release_year,country
ORDER BY release_year,country;