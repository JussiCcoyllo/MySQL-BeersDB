-- lijst van alle biernamen en hun categorie-naam van alle bieren met 0% alcohol
SELECT C.Category, CategoryId FROM Beers
JOIN Categories C on C.Id = Beers.CategoryId
WHERE Beers.Alcohol = 0;

-- lijst van alle brouwers met prijs van duurste bier
SELECT Brewers.Name, MAX(b.Price) FROM Brewers
JOIN Beers B on Brewers.Id = B.BrewerId
GROUP BY  Brewers.Name;

-- 'alle' bieren met een id tussen 1500 en 1600 met hun eventuele brouwer (naam)
SELECT Beers.Id, B.Name FROM Beers
JOIN Brewers B on B.Id = Beers.BrewerId
WHERE Beers.Id BETWEEN 1500 AND 1601;

-- top 3 bieren (id en naam) met het meeste alcohol samen met de naam van de brouwe en de categorienaam
SELECT Beers.ID, Beers.Name, B.Name, c.Category FROM Beers
JOIN Brewers B on B.Id = Beers.BrewerId
JOIN Categories C on C.Id = Beers.CategoryId
ORDER BY Beers.Alcohol DESC
LIMIT 3





