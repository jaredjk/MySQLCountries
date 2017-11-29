
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages on countries.id = country_id
WHERE language = "Slovene"
ORDER BY percentage DESC;

SELECT countries.name, count(*) AS cities
FROM cities
LEFT JOIN countries on cities.country_id = countries.id
GROUP BY countries.id
ORDER BY cities DESC;

SELECT cities.name, cities.population
FROM cities
LEFT JOIN countries on cities.country_id = countries.id
WHERE countries.name = "mexico";

SELECT countries.name, languages.language, languages.percentage
FROM languages 
LEFT JOIN countries on languages.country_id = countries.id
WHERE percentage >  89
ORDER BY percentage DESC;

SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 AND population < 100000
ORDER BY population DESC;

SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form = "Constitutional Monarchy" AND capital > 200 AND life_expectancy > 75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
LEFT JOIN countries on cities.country_id = countries.id
WHERE countries.name = "Argentina";

SELECT region, count(*) AS countries
FROM countries
GROUP BY region
ORDER BY countries DESC;
