SELECT i.BillingCountry Country, COUNT(g.Name) JazzTracks
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
JOIN Track t
ON t.TrackId = il.TrackId 
JOIN Genre g
ON g.GenreId = t.GenreId 
WHERE g.Name = "Jazz"
GROUP BY Country
ORDER BY JazzTracks DESC;