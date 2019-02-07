SELECT Genre.Name, COUNT(Track.TrackId) FROM Track 
INNER JOIN Genre 
ON Track.GenreId = Genre.GenreId
AND Genre.Name != "TV Shows" 
AND Genre.Name != "Comedy" 
AND Genre.Name != "Science Fiction"
AND Genre.Name != "Sci Fi & Fantasy"
GROUP BY Genre.GenreId 
ORDER BY COUNT(Track.TrackId) DESC;