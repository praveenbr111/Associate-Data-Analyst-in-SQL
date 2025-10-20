/* 1 Select the name of each person in the people table, sorted alphabetically.

2 Select the title and duration for every film, from longest duration to shortest. */

-- 1 Answer

-- Select name from people and sort alphabetically
SELECT name
FROM people
ORDER BY name;

-- 2 Answer

-- Select the title and duration from longest to shortest film
SELECT title,duration
FROM films
ORDER BY duration DESC;