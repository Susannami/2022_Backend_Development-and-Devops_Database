-- Try to delete employees Steven Thorpe and Nancy Freehafer from the database.
-- Does the delete operation succeed or not and why?

-- Foreign key constraints prevent the deletion. There are rows in the database which 
-- are refering to those employees. For example there are orders which are sold by 
-- Nancy Freehafer so those orders are preventing deleting her from the system.