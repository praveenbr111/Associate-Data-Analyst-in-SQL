-- 1 Create a view called library_authors.
-- 2 Check that the view was created by selecting all columns from library_authors.

-- 1
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- 2

-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT *
FROM library_authors;