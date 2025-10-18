-- 1 Select the title and release_year for films released in 1990 or 1999 using only WHERE and OR.
-- 2 Filter the records to only include English or Spanish-language films.
-- 3 Finally, restrict the query to only return films worth more than $2,000,000 gross.


-- 1 Answer
-- Find the title and year of films from the 1990 or 1999
SELECT title,release_year
FROM films
WHERE release_year = 1990
    or release_year = 1999;
    
    
-- 2 Answer

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
	AND (language = 'English' OR language = 'Spanish');
    
-- 3 Answer

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND gross > 2000000;