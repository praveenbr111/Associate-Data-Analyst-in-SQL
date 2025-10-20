/* 1 Select the release_year, duration, and title of films ordered by their release year and duration, in that order.

2 Select the certification, release_year, 
and title from films ordered first by certification (alphabetically)
and second by release year, starting with the most recent year. */

-- 1 Answer
-- Select the release year, duration, and title sorted by release year and duration
SELECT release_year,duration,title
FROM films
ORDER BY release_year,duration;


-- 2 Answer
-- Select the certification, release year, and title sorted by certification and release year
SELECT certification,release_year,title
FROM films
ORDER BY certification,release_year DESC;