-- Fetch album and track information for the artist "Iron Maiden".
-- Select Album name, album year, track name, track number and track length to the result.
-- Sort the result primarily by ablum name and secondarily by track number.

SELECT album.name as album_name, album.year, track.name as track_name, track.track_number, track.length
FROM album
INNER JOIN track ON album.id = track.album_id
ORDER BY album_name, track.track_number;