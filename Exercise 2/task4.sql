-- Fetch artist name and their albums. Don't include albums without artist information in the
-- result set.
-- Include artist's name, albums name and release year to the result.
SELECT artist.name as artist_name, album.name, album.year
FROM artist
INNER JOIN album ON album.artist_id = artist.id
ORDER BY artist_name;