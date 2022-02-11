-- The employee database has a following table:

-- Employee
-- id : INT
-- name : VARCHAR
-- email : VARCHAR
-- supervisor : VARCHAR
-- office : VARCHAR
-- city : VARCHAR

-- Example data:
-- |id |name        |email              |supervisor    |office   |city
-- ------------------------------------------------------------------------------
-- |1  |Andy Smith  |andy@company.com   |Jill Jackson  |B-11     |New York
-- |2  |Rudy Black  |rudy@company.com   |John Doe      |A-22     |San Francisco

-- Normalize the table into the 3rd normal form by dividing columns and tables into smaller ones.
-- Define new tables like the example above. No need to write CREATE statements.
-- Add some example data to your table(s).

-- 1st formal form: (no lists)
-- Example data:
-- |id |first_name |last_name |email              |super_first_name |super_last_name |office   |city
-- -----------------------------------------------------------------------------------------------------------
-- |1  |Andy       |Smith     |andy@company.com   |Jill             |Jackson         |B-11     |New York
-- |2  |Rudy       |Black     |rudy@company.com   |John             |Doe             |A-22     |San Francisco

-- Employee:
-- |id |first_name |last_name |email              |super_id |office_id
-- --------------------------------------------------------------------
-- |1  |Andy       | Smith    |andy@company.com   |3        |1
-- |2  |Rudy       | Black    |rudy@company.com   |4        |2
-- |3  |Jill       | Jackson  |jill@company.com   |NULL     |1
-- |4  |John       | Doe      |john@company.com   |NULL     |2

-- Office:
-- |id |code |city
-- --------------------------
-- |1  |B-11 |New York
-- |2  |A-22 |San Francisco

-- 3rd normal form (No transitional dependencies)
-- Employee:
-- |id |first_name |last_name |email              |super_id |office_id
-- --------------------------------------------------------------------
-- |1  |Andy       | Smith    |andy@company.com   |3        |1
-- |2  |Rudy       | Black    |rudy@company.com   |4        |2
-- |3  |Jill       | Jackson  |jill@company.com   |NULL     |1
-- |4  |John       | Doe      |john@company.com   |NULL     |2

-- Office:
-- |id |code |city_id
-- ------------------
-- |1  |B-11 |1
-- |2  |A-22 |2

-- City:
-- |id |name
-- -------------------
-- |1  |New York
-- |2  |San Francisco