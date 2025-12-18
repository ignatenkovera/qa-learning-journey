-- =====================================================
-- SQLBolt Lesson 1: SELECT queries 101 -- Date: 2025-12-13
-- =====================================================
/*
Exercise 1: Find the `title` of each film
Exercise 2: Find the `director` of each film
Exercise 3: Find the `title` and `director` of each film
Exercise 4: Find the `title` and `year` of each film
Exercise 5: Find `all` the information about each film;
*/

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
-- Exercise 1: Find the `title` of each film
SELECT title
FROM movies;
/* Result:
|Toy Story|
|A Bug's Life|
|Toy Story 2|
|Monsters, Inc.|
|Finding Nemo|
|The Incredibles|
|Cars|
|Ratatouille|
|WALL-E|
|Up|
|Toy Story 3|
|Cars 2|
|Brave|
|Monsters University|
*/ 

-- Exercise 2: Find the `director` of each film
SELECT director
FROM movies;
 /* Result:
|Director|
|John Lasseter|
|John Lasseter|
|John Lasseter|
|Pete Docter|
|Andrew Stanton|
|Brad Bird|
|John Lasseter|
|Brad Bird|
|Andrew Stanton|
|Pete Docter|
|Lee Unkrich|
|John Lasseter|
|Brenda Chapman|
|Dan Scanlon|
*/

-- Exercise 3: Find the `title` and `director` of each film
SELECT title, director
FROM movies;
/* Results:
|Title|Director|
|Toy Story|John Lasseter|
|A Bug's Life|John Lasseter|
|Toy Story 2|John Lasseter|
|Monsters, Inc.|Pete Docter|
|Finding Nemo|Andrew Stanton|
|The Incredibles|Brad Bird|
|Cars|John Lasseter|
|Ratatouille|Brad Bird|
|WALL-E|Andrew Stanton|
|Up|Pete Docter|
|Toy Story 3|Lee Unkrich|
|Cars 2|John Lasseter|
|Brave|Brenda Chapman|
|Monsters University|Dan Scanlon|
*/

-- Exercise 4: Find the `title` and `year` of each film
SELECT title, year
FROM movies;
/* Results:
|Title|Year|
|Toy Story|1995|
|A Bug's Life|1998|
|Toy Story 2|1999|
|Monsters, Inc.|2001|
|Finding Nemo|2003|
|The Incredibles|2004|
|Cars|2006|
|Ratatouille|2007|
|WALL-E|2008|
|Up|2009|
|Toy Story 3|2010|
|Cars 2|2011|
|Brave|2012|
|Monsters University|2013|
*/

-- Exercise 5: Find `all` the information about each film
SELECT *
FROM movies;
/* Results:
|Id|Title|Director|Year|Length_minutes|
|1|Toy Story|John Lasseter|1995|81|
|2|A Bug's Life|John Lasseter|1998|95|
|3|Toy Story 2|John Lasseter|1999|93|
|4|Monsters, Inc.|Pete Docter|2001|92|
|5|Finding Nemo|Andrew Stanton|2003|107|
|6|The Incredibles|Brad Bird|2004|116|
|7|Cars|John Lasseter|2006|117|
|8|Ratatouille|Brad Bird|2007|115|
|9|WALL-E|Andrew Stanton|2008|104|
|10|Up|Pete Docter|2009|101|
|11|Toy Story 3|Lee Unkrich|2010|103|
|12|Cars 2|John Lasseter|2011|120|
|13|Brave|Brenda Chapman|2012|102|
|14|Monsters University|Dan Scanlon|2013|110|
*/
