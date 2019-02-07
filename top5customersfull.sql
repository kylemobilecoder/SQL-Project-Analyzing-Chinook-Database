SELECT cx.firstName || " " || cx.lastName as FullName, cx.Country, SUM(i.Total) TotalPurchase
FROM Invoice i
JOIN Customer cx on cx.customerId= i.customerId
GROUP BY FullName, cx.lastname
ORDER BY TotalPurchase DESC
LIMIT 5;