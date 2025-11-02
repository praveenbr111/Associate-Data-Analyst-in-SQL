-- Return the name, country_code and urbanarea_pop for all capital cities (not aliased).

-- Select relevant fields from cities table
SELECT
    name,
    country_code,
    urbanarea_pop
FROM cities
WHERE name IN (
-- Filter using a subquery on the countries table
    SELECT capital
    FROM countries
    )
ORDER BY urbanarea_pop DESC;