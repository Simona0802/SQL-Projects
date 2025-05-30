CREATE TABLE Countries (
    CountryID INT PRIMARY KEY,
    CountryName NVARCHAR(100),
    CapitalCity NVARCHAR(100),
    Population BIGINT,
    Area DECIMAL(10, 2), -- in square kilometers
    Continent NVARCHAR(50),
    GDP BIGINT -- in USD
);

INSERT INTO Countries (CountryID, CountryName, CapitalCity, Population, Area, Continent, GDP)
VALUES
(1, 'Afghanistan', 'Kabul', 39835428, 652230.00, 'Asia', 20350000000),
(2, 'Albania', 'Tirana', 2837743, 28748.00, 'Europe', 15278000000),
(3, 'Algeria', 'Algiers', 44700000, 2381741.00, 'Africa', 173760000000),
(4, 'Andorra', 'Andorra la Vella', 77265, 468.00, 'Europe', 3150000000),
(5, 'Angola', 'Luanda', 32866272, 1246700.00, 'Africa', 66190000000),
(6, 'Antigua and Barbuda', 'Saint John', 98728, 442.00, 'North America', 1710000000),
(7, 'Argentina', 'Buenos Aires', 45604524, 2780400.00, 'South America', 515900000000),
(8, 'Armenia', 'Yerevan', 2963243, 29743.00, 'Asia', 13678000000),
(9, 'Australia', 'Canberra', 25687041, 7692024.00, 'Australia', 1392687000000),
(10, 'Austria', 'Vienna', 8955102, 83879.00, 'Europe', 446000000000),
(11, 'Azerbaijan', 'Baku', 10139177, 86600.00, 'Asia', 47292000000),
(12, 'Bahamas', 'Nassau', 393248, 13943.00, 'North America', 12680000000),
(13, 'Bahrain', 'Manama', 1701575, 765.00, 'Asia', 39885000000),
(14, 'Bangladesh', 'Dhaka', 166303498, 148460.00, 'Asia', 409620000000),
(15, 'Barbados', 'Bridgetown', 287375, 430.00, 'North America', 5105000000),
(16, 'Belarus', 'Minsk', 9449323, 207600.00, 'Europe', 63650000000),
(17, 'Belgium', 'Brussels', 11589623, 30528.00, 'Europe', 582600000000),
(18, 'Belize', 'Belmopan', 432516, 22966.00, 'North America', 1937000000),
(19, 'Benin', 'Porto-Novo', 12895958, 114763.00, 'Africa', 14869000000),
(20, 'Bhutan', 'Thimphu', 779900, 38394.00, 'Asia', 2581000000),
(21, 'Bolivia', 'Sucre', 11928700, 1098581.00, 'South America', 40431000000),
(22, 'Bosnia and Herzegovina', 'Sarajevo', 3280819, 51197.00, 'Europe', 20853000000),
(23, 'Botswana', 'Gaborone', 2351627, 581730.00, 'Africa', 18450000000),
(24, 'Brazil', 'Brasilia', 213993437, 8515767.00, 'South America', 1839758000000),
(25, 'Brunei', 'Bandar Seri Begawan', 445431, 5765.00, 'Asia', 13264000000),
(26, 'Bulgaria', 'Sofia', 6927288, 110879.00, 'Europe', 78900000000),
(27, 'Burkina Faso', 'Ouagadougou', 21800771, 272967.00, 'Africa', 17090000000),
(28, 'Burundi', 'Gitega', 12601470, 27834.00, 'Africa', 3176000000),
(29, 'Cabo Verde', 'Praia', 555987, 4033.00, 'Africa', 1981000000),
(30, 'Cambodia', 'Phnom Penh', 16718965, 181035.00, 'Asia', 27704000000),
(31, 'Cameroon', 'Yaounde', 26545863, 475442.00, 'Africa', 39674000000),
(32, 'Canada', 'Ottawa', 38005238, 9984670.00, 'North America', 1736426000000),
(33, 'Central African Republic', 'Bangui', 4829767, 622984.00, 'Africa', 2453000000),
(34, 'Chad', 'NDjamena', 17351858, 1284000.00, 'Africa', 11142000000),
(35, 'Chile', 'Santiago', 19212362, 756096.00, 'South America', 282300000000),
(36, 'China', 'Beijing', 1444216107, 9596960.00, 'Asia', 17734000000000),
(37, 'Colombia', 'Bogota', 50882891, 1141748.00, 'South America', 314500000000),
(38, 'Comoros', 'Moroni', 869601, 2235.00, 'Africa', 1200000000),
(39, 'Congo (Congo-Brazzaville)', 'Brazzaville', 5518092, 342000.00, 'Africa', 13890000000),
(40, 'Congo (Democratic Republic of the Congo)', 'Kinshasa', 92378000, 2344858.00, 'Africa', 49120000000);

-- Continue inserting other countries with similar data structure for the rest of the world’s countries.

SELECT * FROM Countries;

SELECT CountryName
FROM Countries
WHERE Continent = 'Europe';

SELECT CountryName, Population
FROM Countries
WHERE Population > 100000000;

SELECT CountryName, GDP
FROM Countries
WHERE GDP > 1000000000000;

SELECT CountryName, Area
FROM Countries
WHERE Area > 300000;

SELECT CountryName, CapitalCity
FROM Countries
WHERE Continent LIKE 'Africa'; 

SELECT CountryName, (GDP / population) 
AS gdp_per_capita
FROM countries
WHERE (GDP / population) > 50000;

SELECT CountryName, Continent, population 
FROM Countries
WHERE Continent LIKE 'Asia'
ORDER BY population DESC;

SELECT CountryName, GDP
FROM Countries
WHERE GDP BETWEEN 1000000000000 AND 2000000000000;

SELECT CountryName, population, Area
FROM Countries
WHERE Population < 10000000
ORDER BY Area;

SELECT TOP(5) CountryName, GDP
FROM Countries
ORDER BY GDP; 

