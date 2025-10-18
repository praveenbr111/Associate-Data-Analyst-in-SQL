/*  Let's use BETWEEN with AND on the films database
 to get the title and release_year of all Spanish-language films released between
 1990 and 2000 (inclusive) with budgets over $100 million. */
 
 SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Amend the query to include Spanish or French-language films
	AND(language = 'Spanish' or language = 'French');