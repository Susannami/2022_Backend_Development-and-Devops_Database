-- Calculate and return the count of albums each band has in the database.
-- Include Artist name and album count into the result.
-- Name the result columns as "Artist" and "Album count".
SELECT artist.name as "Artist", COUNT(album.id) as "Album count"
FROM artist
INNER JOIN album ON album.artist_id = artist.id
GROUP BY artist.id
ORDER BY artist.name;