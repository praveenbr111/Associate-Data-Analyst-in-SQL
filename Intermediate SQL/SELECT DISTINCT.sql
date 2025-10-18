-- 1 Return the unique countries represented in the films table using DISTINCT.

-- 2 Return the number of unique countries represented in the films table, aliased as count_distinct_countries.

-- 1 Answer
-- Return the unique countries from the films table
SELECT DISTINCT country
FROM films;





-- 2 Answer
-- Count the distinct countries from the films table
SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;