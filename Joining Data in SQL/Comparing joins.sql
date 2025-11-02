/* 
1 Perform a full join with countries (left) and currencies (right).
  Filter for the North America region or NULL country names.

2 Repeat the same query as before, turning your full join into a left join with the currencies table.
  Have a look at what has changed in the output by comparing it to the full join result.

3 Repeat the same query again, this time performing an inner join of countries with currencies.
  Have a look at what has changed in the output by comparing it to the full join and left join results! */
  
-- 1 Answer


SELECT 
    name AS country, 
    code, 
    region, 
    basic_unit
FROM 
    countries
FULL JOIN
    currencies
    USING (code)
-- Where region is North America or name is null
WHERE 
    
    region = 'North America'
    OR name IS NULL
ORDER BY region;

-- 2 Answer

SELECT 
	name AS country, 
	code, 
	region, 
	basic_unit
FROM 
	countries
-- Join to currencies
LEFT JOIN
	currencies
	USING (code)
WHERE region = 'North America' 
	  
	OR name IS NULL
ORDER BY 
	region;
    
-- 3 Answer

SELECT 
	name AS country, 
	code, 
	region, 
	basic_unit
FROM 
	countries
-- Join to currencies
INNER JOIN
	currencies
	USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;







