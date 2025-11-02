-- Select name fields (with alias) and region 
SELECT 
    city.name,
    country.name,
    country.region
FROM 
    cities AS city
INNER JOIN 
    countries AS country
    ON city.country_code = country.code;



