/* 
CREATED BY: VINAS ZALAVADIYA
DATE: 15/03/2025
DESCRIPTION: Revenue analysis based on customer country (proxy for region-based subscriptions).
*/
SELECT 
    Country,
    COUNT(InvoiceId) AS NumberOfPurchases,
    SUM(Total) AS Revenue
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;