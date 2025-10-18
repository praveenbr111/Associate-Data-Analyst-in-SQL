/* 1 Select the names of all people whose names begin with 'B'.

2 Select the names of people whose names have 'r' as the second letter.

3 Select the names of people whose names don't start with 'A'. */

-- 1 Answer
-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';


-- 2 Answer

SELECT name
FROM people
-- Select the names that have r as the second letter
WHERE NAME LIKE '_r%';

-- 3 Answer

SELECT name
FROM people
-- Select names that don't start with A
WHERE NAME NOT LIKE 'A%';







