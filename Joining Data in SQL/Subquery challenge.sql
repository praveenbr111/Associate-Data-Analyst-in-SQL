/*
Select country code, inflation_rate, and unemployment_rate from economies.
Filter code for the set of countries which contain the words "Republic" or "Monarchy" in their gov_form. */

-- Select relevant fields
SELECT
  code,
  inflation_rate,
  unemployment_rate
FROM economies
WHERE year = 2015 
  AND code IN (
-- Subquery returning country codes filtered on gov_form
	SELECT code
  FROM countries
  WHERE

    (gov_form LIKE '%Monarchy%')
    OR (gov_form LIKE '%Republic%')
  )
ORDER BY inflation_rate;