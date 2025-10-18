/* Add an alias to the SQL query to rename the author column to unique_author in the result set. */

-- Alias author so that it becomes unique_author
SELECT DISTINCT author AS unique_author
FROM books;