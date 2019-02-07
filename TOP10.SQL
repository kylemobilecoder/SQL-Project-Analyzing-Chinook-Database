SELECT Genre.Name, COUNT(Track.TrackId) as Quantity FROM Track
INNER JOIN Genre
ON Track.GenreId = Genre.GenreId
INNER JOIN InvoiceLine 
ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.BillingCountry = 'Germany'
GROUP BY Genre.GenreId
ORDER BY Quantity DESC 
LIMIT 10;