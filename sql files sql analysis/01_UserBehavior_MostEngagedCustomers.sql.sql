/* 
CREATED BY: VINAS ZALAVADIYA
DATE: 15/03/2025
DESCRIPTION: Identifying the most engaged users based on total number of purchases.
*/
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS FullName,
    COUNT(i.InvoiceId) AS TotalPurchases,
    SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY TotalPurchases DESC
LIMIT 10;