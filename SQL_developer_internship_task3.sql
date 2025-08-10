-- Task 3: Writing Basic SELECT Queries
-- Database: library_management_system

USE library_management_system;

-- 1. SELECT * from a table
SELECT * FROM Readers;

-- 2. SELECT specific columns
SELECT first_name, last_name, phone_no FROM Readers;

-- 3. WHERE condition
SELECT * FROM Books WHERE category = 'Programming';

-- 4. WHERE with AND
SELECT * FROM Readers WHERE class_name = 'MCA' AND phone_no IS NOT NULL;

-- 5. WHERE with OR
SELECT * FROM Readers WHERE class_name = 'BCA' OR class_name = 'MSC IT';

-- 6. LIKE operator
SELECT * FROM Readers WHERE first_name LIKE 'A%'; -- names starting with A

-- 7. BETWEEN
SELECT * FROM Books WHERE price BETWEEN 200 AND 400;

-- 8. ORDER BY ascending
SELECT * FROM Books ORDER BY price ASC;

-- 9. ORDER BY descending
SELECT * FROM Books ORDER BY price DESC;

-- 10. LIMIT output rows
SELECT * FROM Readers LIMIT 3;

-- 11. = vs IN example (=)
SELECT * FROM Books WHERE category = 'Programming';

-- 12. = vs IN example (IN)
SELECT * FROM Books WHERE category IN ('Programming', 'Education');

-- 13. Aliasing
SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM Readers;

-- 14. DISTINCT
SELECT DISTINCT class_name FROM Readers;

-- 15. Default sort order
SELECT * FROM Books ORDER BY title; -- default ASC
