-- Create a database based on last week's task 3. In that task we designed a database for a blog. The database has
-- to follow the plan created last week. If you need to update the plan, include an updated drawing of the
-- database to your return. Add foreign key restrictions for the tables as well.

CREATE TABLE `post`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `headline` VARCHAR(127) NOT NULL,
    `content` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_by` INT NOT NULL,
    PRIMARY KEY(`id`),
		FOREIGN KEY(`created_by`) REFERENCES `user`(`id`)
			ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE `user`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(63),
    `last_name` VARCHAR(63),
    `password` CHAR(192) NOT NULL,
    `email` VARCHAR(255) UNIQUE NOT NULL,
    `role_id` INT NOT NULL,
    PRIMARY KEY(`id`),
		FOREIGN KEY(`role_id`) REFERENCES `role`(`id`)
		ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE `comment`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `headline` VARCHAR(127) NOT NULL,
    `content` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_by` INT NOT NULL,
    `post_id` INT NOT NULL,
    PRIMARY KEY(`id`),
		FOREIGN KEY(`created_by`) REFERENCES `user`(`id`)
			ON UPDATE CASCADE ON DELETE RESTRICT,
		FOREIGN KEY(`post_id`) REFERENCES `post`(`id`)
			ON UPDATE CASCADE ON DELETE RESTRICT,
);

CREATE TABLE `role`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(31) NOT NULL,
    PRIMARY KEY(`id`)
);