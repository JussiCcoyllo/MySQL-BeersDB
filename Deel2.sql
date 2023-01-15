-- verschillende brouwers
SELECT DISTINCT Name FROM Brewers;

-- bereken de gemiddelde turnover van alle brouwers
SELECT AVG(Turnover) FROM Brewers;

-- het laagste, gemiddelde en hoogste alcoholgehalte
SELECT MIN(Alcohol),
    AVG(Alcohol),
    MAX(Alcohol)
FROM Beers;

-- gemiddelde turnover van alle brouwers in de provincie Brabant (postcodes 1..) maar negeer brouwerij 'Palm'
SELECT AVG(Turnover) FROM Brewers
WHERE ZipCode LIKE '1%' AND Name NOT LIKE 'Palm';

-- bereken het gemiddelde alcohol per categorie(id)
SELECT  AVG(Alcohol) FROM Beers
GROUP BY BrewerId;

-- hoogste bier prijs per categorie maar negeer alle bieren die niet in stock zijn
SELECT CategoryId, MAX(Price) FROM Beers
    GROUP BY CategoryId
    HAVING MIN(Stock) > 0 AND MAX(Price) > 3
    ORDER BY CategoryId;
