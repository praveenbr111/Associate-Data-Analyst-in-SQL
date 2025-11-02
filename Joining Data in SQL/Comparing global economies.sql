/*

Begin your query by selecting all fields from economies2015.
Create a second query that selects all fields from economies2019.
Perform a set operation to combine the two queries you just created, ensuring you do not return duplicates. */

-- Select all fields from economies2015
SELECT *
FROM economies2015
-- Set operation
UNION
-- Select all fields from economies2019
SELECT *
FROM economies2019;