/* 
1 Do an inner join of countries AS c (left) with populations AS p (right), on code.
Select name and fertility_rate.

2 Chain an inner join with the economies table AS e, on code.
Select year and unemployment_rate from the economies table.*/

-- 1 Answer

-- Select relevant fields
SELECT
    name,
    
    fertility_rate
FROM
    countries AS C
INNER JOIN
    populations AS p
-- Inner join countries and populations, aliased, on code
    ON c.code = p.country_code;
    
-- 2 Answer

-- Select fields
SELECT 
    name,
    e.year,
    fertility_rate,
    unemployment_rate
FROM
    countries AS c
INNER JOIN 
    populations AS p
    ON c.code = p.country_code
-- Join to economies (as e)

INNER JOIN
    economies AS e
-- Match on country code
    ON c.code = e.code;








