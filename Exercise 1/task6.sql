-- Fetch all the tracks which name starts with the word "The" and are at least one minute long.
SELECT *
FROM track
WHERE name LIKE "The%" AND length >= "00:01:00";