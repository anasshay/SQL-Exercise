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
