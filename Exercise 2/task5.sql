-- Fetch artist name and their albums. Include albums without artist information in the
-- result set.
-- Include artist's name, albums name and release year to the result.
SELECT artist.name as artist_name, album.name, album.year
FROM artist
RIGHT JOIN album ON album.artist_id = artist.id
ORDER BY artist_name;

SELECT artist.name as artist_name, album.name, album.year
FROM album
LEFT JOIN artist ON album.artist_id = artist.id
ORDER BY artist_name;
