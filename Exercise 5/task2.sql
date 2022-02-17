-- Add users and roles for the Blog-database. Create roles "author_role" and "commenter_role" and grant those
-- roles appropriate privileges. Add users "author_app" and "commenter_app". The imaginary webapp uses them for
-- adding posts and comments to the blog database. Grant appropriate roles for those users.

CREATE USER author_app IDENTIFIED BY "AuthorPassword";
CREATE USER commenter_app IDENTIFIED BY "CommenterPassword";

CREATE ROLE author_role;
CREATE ROLE commenter_role;

GRANT INSERT, SELECT, UPDATE ON post TO author_role;
GRANT INSERT, SELECT, UPDATE ON comment TO commenter_role;

GRANT author_role, commenter_role TO author_app;
GRANT commenter_role TO commenter_app;

SET DEFAULT ROLE author_role, commenter_role TO author_app;
SET DEFAULT ROLE commenter_role TO commenter_app;