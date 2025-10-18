/* 
1.Select only the unique authors from the books table.

2.Update the code to return the unique author and genre combinations in the books table. */

-- 1 Ans
SELECT DISTINCT author
FROM books;

-- 2 Ans
SELECT DISTINCT author,genre
FROM books;