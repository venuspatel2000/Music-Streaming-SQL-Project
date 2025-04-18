/* 
CREATED BY: VINAS ZALAVADIYA
DATE: 15/03/2025
DESCRIPTION: Top 5 most streamed songs.
*/
SELECT 
    t.Name AS SongName,
    ar.Name AS ArtistName,
    COUNT(il.InvoiceLineId) AS TotalStreams
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY TotalStreams DESC
LIMIT 5;