# Task 3 – Basic SELECT Queries (SQL Developer Internship)

In this task, I worked on retrieving data from the `library_management_system` database using different variations of the `SELECT` statement.  
The main idea was to practice how to filter, sort, and present data in a way that’s both useful and easy to read.

---

## What I Did
I wrote a set of SQL queries that cover the basics:
- Getting all columns with `SELECT *`
- Selecting only the columns I actually need
- Filtering results with `WHERE`, and combining conditions using `AND` / `OR`
- Searching for patterns with `LIKE`
- Using `BETWEEN` for numeric ranges
- Sorting results in ascending or descending order
- Limiting output with `LIMIT`
- Checking the difference between `=` and `IN`
- Renaming columns in the output using aliases
- Finding unique values with `DISTINCT`
- Understanding the default sort order in SQL

---

## Example Queries
```sql
-- Show all readers
SELECT * FROM Readers;

-- Show only first name, last name, and phone number
SELECT first_name, last_name, phone_no FROM Readers;

-- Find all programming books
SELECT * FROM Books WHERE category = 'Programming';

-- MCA readers who have a phone number
SELECT * FROM Readers 
WHERE class_name = 'MCA' AND phone_no IS NOT NULL;

-- Books priced between 200 and 400
SELECT * FROM Books WHERE price BETWEEN 200 AND 400;

-- Readers whose names start with 'A'
SELECT * FROM Readers WHERE first_name LIKE 'A%';

-- Sort books from highest to lowest price
SELECT * FROM Books ORDER BY price DESC;

-- Show first 3 readers only
SELECT * FROM Readers LIMIT 3;
# SQL_internship_task3
