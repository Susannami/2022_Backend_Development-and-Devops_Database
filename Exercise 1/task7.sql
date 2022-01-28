-- Fetch all the tracks which length is less than one minute or more than five minutes.
SELECT *
FROM track
WHERE length < "00:01:00" OR length > "00:05:00"
ORDER BY length;