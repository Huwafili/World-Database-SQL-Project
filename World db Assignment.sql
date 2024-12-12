#Task1



#Task2

Use world;

-- 1. Using count, get the number of cities in the USA
SELECT Count(*) As Cities_In_USA
FROM city;

-- 2. Find out what the population and life expectancy for people in Argentina (ARG) is
SELECT Name, Population, LifeExpectancy
FROM country
Where code = 'ARG';

-- 3. Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY 'LifeExpectancy' Desc
LIMIT 1;

-- 4. Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT (Name) As Cities
FROM city
WHERE Name like 'F%'
LIMIT 25;

-- 5. Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT id, Name, Population
FROM city
LIMIT 10;

-- 6. Create a SQL statement to find only those cities from city table whose population is larger than 2000000
SELECT *
FROM city
WHERE Population > 2000000;

-- 7. Create a SQL statement to find all city names from city table whose name begins with “Be” prefix
SELECT Name
FROM city
WHERE Name like 'Be%';

-- 8. Create a SQL statement to find only those cities from city table whose population is between 500000-1000000
SELECT Name, Population
FROM city
WHERE Population Between 500000 and 1000000;

-- 9. Create a SQL statement to find a city with the lowest population in the city table
SELECT Name, Population
FROM city
ORDER BY Population Asc
LIMIT 1;

-- 10. Create a SQL statement to show the population of Switzerland and all the languages spoken there
SELECT Name, Language, Population
FROM countrylanguage
INNER JOIN country
ON countrylanguage.CountryCode = country.Code
WHERE Name = 'Switzerland';

-- 11. Create a SQL statement to find the capital of Spain (ESP).
SELECT Code, city.Name AS Capital
FROM country
JOIN city 
ON country.Capital = city.ID
WHERE Code = 'ESP';

-- 12. Create a SQL statement to find the country with the highest life expectancy
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy Desc
LIMIT 1;

-- 13. Create a SQL statement to find all cities from the Europe continent
SELECT Name, Continent
FROM country
WHERE Continent = 'Europe';

-- 14. Create a SQL statement to find the most populated city in the city table
SELECT Name, Population
FROM city
ORDER BY Population Desc
LIMIT 1;

-- 15. Create a SQL statement to find the total population of each continent
SELECT Continent, Sum(Population) As Total_Population
FROM country
GROUP BY Continent;

-- 16. Create a SQL statement to find the average life expectancy by continent 
SELECT Continent, avg(LifeExpectancy) AS average_life_expectancy
FROM country
GROUP BY Continent;

-- 17. Create a SQL statement to list the number of cities in each country
SELECT country.Name, COUNT(city.ID) AS number_of_cities 
FROM country
INNER JOIN city
ON country.code = city.countrycode
GROUP BY country.name
ORDER BY number_of_cities DESC;

-- 18. Create a SQL statement to find the total population of each country based on its cities
SELECT country.Name, SUM(city.Population) AS Total_Population 
FROM country
INNER JOIN city
ON country.code = city.countrycode
GROUP BY country.name
ORDER BY Total_Population DESC;

-- 19. Create a SQL statement to find the most spoken language in each continent
Select  Continent, Language, Population
From countrylanguage
join country
On countrylanguage.countryCode = country.code
Order by Population Desc;

-- 20. Create a SQL statement to find countries where the official language is either 'English', 'Spanish', or 'French'
SELECT Name, Language
FROM country
JOIN countrylanguage 
ON country.Code = countrylanguage.countryCode
WHERE language IN ('English', 'Spanish', 'French');

-- 21. Write a query to display the total population for each continent.
SELECT Continent, Count(Continent) AS Total_Population
FROM country
GROUP BY Continent;

-- 22. Write a query to list countries that have more than three official languages. (joins, group by, having)
SELECT Name AS Country, COUNT(Language) AS Number_of_Official_Languages
FROM country
JOIN countrylanguage 
ON country.Code = countrylanguage.CountryCode
WHERE IsOfficial = 'T'
GROUP BY Name
HAVING COUNT(Language) > 3;

-- 23. Find countries whose population is greater than the average population of all countries.
SELECT Name AS Country, Population
FROM country
WHERE Population > (SELECT AVG(Population) FROM country)
ORDER BY country.Population DESC;














