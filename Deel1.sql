USE Beersdb;

-- alle biercategorieen
SELECT * FROM Categories;

-- lijst van  categorieen in dalende alfabetische volgorde zonder categorie-id's
SELECT Category FROM Categories
ORDER BY Category DESC;

-- lijst van alle brouwerijen die meer dan 5000 euro turnover hebben
SELECT * FROM Brewers
WHERE Turnover > 5000;

-- toon enkel naam en de stad van brouwerijen die minder 5000 euro turnover, maar niet 0
SELECT Name, City FROM Brewers
WHERE  Turnover BETWEEN 1 AND 4999
ORDER BY Turnover;

-- lijst van alle mogelijke alocholgehaltes, geen dubbels, gesoorteerd van groot naar klein
SELECT DISTINCT Alcohol FROM Beers
ORDER BY Alcohol DESC;

-- namen van bieren waarvan de naam "wit" bevat zonder gebruik logische operatoren
SELECT Name FROM Beers
WHERE Name LIKE '%wit%';

-- alle bieren met meer alcohol dan 3 en minder dan 7
SELECT Name, Alcohol FROM Beers
WHERE Alcohol BETWEEN 4 AND 6;

-- geef de top 3 v an de sterkste bieren
SELECT * FROM Beers
ORDER BY Alcohol DESC
LIMIT 3;

-- lijst van de naam, straat, postcode, stad van alle brouwers in 3 kolommen voor een adressenlijst
SELECT Name, Address, CONCAT_WS(' - ',ZipCode, City) AS City FROM Brewers;