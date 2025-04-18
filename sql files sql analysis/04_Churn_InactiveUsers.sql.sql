/* 
CREATED BY: VINAS ZALAVADIYA
DATE: 15/03/2025
DESCRIPTION: Identifying inactive users based on last invoice date.
*/
SELECT 
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS FullName,
    MAX(i.InvoiceDate) AS LastPurchaseDate
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY LastPurchaseDate ASC
LIMIT 10;