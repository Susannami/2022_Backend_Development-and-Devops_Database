-- Insert a new album called "The Final Frontier" and all the tracks for that
-- album. Information of tracks is listed below. The artist is Iron Maiden (id 1).
-- The create_music.sql file will help you to do this task.

-- 1. Satellite 15... The Final Frontier 8.40
-- 2. El Dorado 6.49
-- 3. Mother of Mercy Harris 5.20
-- 4. Coming Home 5.52
-- 5. The Alchemist 4.29
-- 6. Isle of Avalon 9.06
-- 7. Starblind 7.48
-- 8. The Talisman 9.03
-- 9. The Man Who Would Be King 8.28
-- 10. When the Wild Wind Blows 10.59

INSERT INTO album (name, year, artist_id) VALUES ("The Final Frontier", 2010, 1);

SET @album_id = LAST_INSERT_ID();

INSERT INTO track (name, length, track_number, album_id) VALUES
("Satellite 15... The Final Frontier", "00:08.40", 1, @album_id),
("El Dorado", "00:06.49", 2, @album_id),
("Mother of Mercy Harris", "00:05.20", 3, @album_id),
("Coming Home", "00:05.52", 4, @album_id),
("The Alchemist", "00:04.29", 5, @album_id),
("Isle of Avalon", "00:09.06", 6, @album_id),
("Starblind", "00:07.48", 7, @album_id),
("The Talisman", "00:09.03", 8, @album_id),
("The Man Who Would Be King", "00:08.28", 9, @album_id),
("When the Wild Wind Blows", "00:10:59", 10, @album_id);