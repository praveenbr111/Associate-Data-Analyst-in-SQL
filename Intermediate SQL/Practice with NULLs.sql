/* 1 Select the title of every film that doesn't have a budget associated with it and use the alias no_budget_info.
2 Count the number of films with a language associated with them and use the alias count_language_known. */

-- 1 Answer
-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

-- 2 Answer
-- Count the number of films we have language data for
SELECT COUNT(language) AS count_language_known
FROM films;