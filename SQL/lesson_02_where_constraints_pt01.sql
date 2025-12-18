-- =====================================================
-- SQLBolt Lesson 2: Queries with constraints (Pt. 1)
-- Date: 2025-12-16
-- =====================================================
-- Exercise 1: Find the movie with a row `id` of 6
-- Exercise 2: Find the movies released in the `year`s between 2000 and 2010
-- Exercise 3: Find the movies **not** released in the `year`s between 2000 and 2010
-- Exercise 4: Find the first 5 Pixar movies and their release `year`;

-- Создаем таблицу для практики
CREATE TABLE Movies (
	id INTEGER PRIMARY KEY,
	title TEXT NOT NULL,
	director TEXT NOT NULL,
	year INTEGER,
	length_minutes INTEGER
);
-- Добавляем тестовые данные
INSERT INTO Movies (title, director, year, length_minutes) VALUES
('Toy Story', 'John Lasseter', 1995, 81),
('A Bug''s Life', 'John Lasseter', 1998, 95),
('Toy Story 2', 'John Lasseter', 1999, 93),
('Monsters, Inc', 'Pete Docter', 2001, 92),
('Finding Nemo', 'Andrew Stanton', 2003, 107),
('The Incredibles', 'Brad Bird', 2004, 116),
('Cars', 'John Lasseter', 2006, 117),
('Ratatouille', 'Brad Bird', 2007, 115),
('WALL-E', 'Andrew Stanton', 2008, 104),
('Up', 'Pete Docter', 2009, 101),
('Toy Story 3', 'Lee Unkrich', 2010, 103),
('Cars 2', 'John Lasseter', 2011, 120),
('Brave', 'Brenda Chapman', 2012, 102),
('Monsters University', 'Dan Scanlon', 2013, 110);

-- =====================================================
-- EXERCISES WITH SOLUTIONS
-- =====================================================
-- Exercise 1: Find the movie with a row id of 6
SELECT *
FROM movies
WHERE id = 6;
-- Result:|The Incredibles|Brad Bird|2004|116|

-- Exercise 2: Find the movies released in the years between 2000 and 2010
SELECT *
FROM movies
WHERE year BETWEEN 2000 AND 2010;
/* Result:
|4|Monsters, Inc.|Pete Docter|2001|92|
|5|Finding Nemo|Andrew Stanton|2003|107|
|6|The Incredibles|Brad Bird|2004|116|
|7|Cars|John Lasseter|2006|117|
|8|Ratatouille|Brad Bird|2007|115|
|9|WALL-E|Andrew Stanton|2008|104|
|10|Up|Pete Docter|2009|101|
|11|Toy Story 3|Lee Unkrich|2010|103|
*/

-- Exercise 3: Find the movies NOT released in the years between 2000 and 2010
SELECT *
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;
/* Results:
|1|Toy Story|John Lasseter|1995|81|
|2|A Bug's Life|John Lasseter|1998|95|
|3|Toy Story 2|John Lasseter|1999|93|
|12|Cars 2|John Lasseter|2011|120|
|13|Brave|Brenda Chapman|2012|102|
|14|Monsters University|Dan Scanlon|2013|110|
*/

-- Exercise 4: Find the first 5 Pixar movies and their release year
SELECT title, year
FROM movies
Limit 5;
/* Results:
Toy Story 1995
A Bug's Life 1998
Toy Story 2 1999
Monsters, Inc. 2001
Finding Nemo 2003
*/
