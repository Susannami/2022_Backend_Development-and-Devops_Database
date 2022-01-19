-- Create a new table called review. The table should have the following columns:
-- - id
-- - name of the reviewer, not null
-- - headline
-- - review text
-- - a reference to the album whick is reviewed, not null

CREATE TABLE review(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	headline VARCHAR(75),
	review_text TEXT,
	album_id INT NOT NULL,
	FOREIGN KEY(album_id) REFERENCES album(id) -- This is optional in this exercise
);