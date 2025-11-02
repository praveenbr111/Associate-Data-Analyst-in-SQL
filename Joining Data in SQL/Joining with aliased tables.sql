/* Start with your inner join in line 5; join the tables countries AS c (left) with economies (right), aliasing economies AS e.
Next, use code as your joining field in line 7; do not use the USING command here.
Lastly, select the following columns in order in line 2: code from the countries table (aliased as country_code), name, year, and inflation_rate. */

-- Select fields with aliases
SELECT
    c.code AS country_code,
    name,
    year,
    inflation_rate
FROM 
    countries AS c
-- Join to economies (alias e)
INNER JOIN 
    economies AS e
-- Match on code field using table aliases
    ON e.code = c.code;