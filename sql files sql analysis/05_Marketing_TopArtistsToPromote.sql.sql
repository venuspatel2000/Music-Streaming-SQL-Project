/* 
CREATED BY: VINAS ZALAVADIYA
DATE: 15/03/2025
DESCRIPTION: Identifying artists whose songs are being streamed the most.
*/
SELECT 
    ar.ArtistId,
    ar.Name AS ArtistName,
    COUNT(il.InvoiceLineId) AS TotalStreams
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY ar.ArtistId
ORDER BY TotalStreams DESC
LIMIT 10;