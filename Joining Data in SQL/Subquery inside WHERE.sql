/*

Your goal is to figure out which countries had high average life expectancies in 2015.

You can use SQL to do calculations for you. Suppose you only want records from 2015 with life_expectancy above 1.15 * avg_life_expectancy. You could use the following SQL query. */

SELECT *
FROM populations
WHERE year = 2015
  AND life_expectancy >
    (SELECT 1.15 * AVG(life_expectancy)
     FROM populations
     WHERE year = 2015
    );