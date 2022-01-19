-- Retrieve name and length for tracks which length is less than one minute.
-- Sort the result primarily in ascending order by the name and secondarily 
-- in descending order by the length.
SELECT name, length
FROM track
WHERE length < "00:01:00"
ORDER BY name ASC, length DESC;
