# Basic Queries
# 1
SELECT name FROM students;

# 2
SELECT * FROM students WHERE age > 30;

# 3
SELECT Name FROM students WHERE Gender = 'F' AND age > 30;

#4
SELECT Points FROM students WHERE Name = 'Alex';

# 5
INSERT INTO students
VALUES (7, 'Anass', 33, 'M', 450);

# 6
UPDATE students
SET Points = Points + 75
WHERE name = 'Basma';

# 7
UPDATE students
SET Points = Points - 5
WHERE name = 'Alex';


# CREATING TABLES

CREATE TABLE graduates (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation date
);

# 1
INSERT INTO graduates(Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
where name = 'Layal';

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE name = 'Layal';

# JOIN 

# 1
SELECT employees.Name, employees.Company, companies.Date 
FROM employees
INNER JOIN companies ON companies.Name = employees.Company;

# 2
SELECT employees.Name
FROM employees
INNER JOIN companies ON companies.Name = employees.Company
WHERE companies.Date < 2000;

# 3
SELECT companies.Name
FROM employees
INNER JOIN companies ON companies.Name = employees.Company
WHERE employees.Role = 'Graphic Designer';

# Count&Filter

# 1
SELECT name, MAX(points)
FROM students

# 2
SELECT AVG(Points)
FROM students

# 3
SELECT count(ID) 
FROM students
WHERE points = 500;

# 4
SELECT name
FROM students
WHERE name LIKE '%s%';

# 5
SELECT * 
FROM students
ORDER BY Points DESC;