-- Fetch all the albums which are released between 1990 and 2000 (including both years).
SELECT *
FROM album
WHERE year BETWEEN 1990 AND 2000;

SELECT *
FROM album
WHERE year >= 1990 AND year <= 2000;