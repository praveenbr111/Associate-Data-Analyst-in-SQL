-- Calculate the average budget from the films table, aliased as avg_budget_thousands, and round to the nearest thousand.

-- Calculate the average budget rounded to the thousands
SELECT ROUND(AVG(budget),-3)AS avg_budget_thousands
FROM films;