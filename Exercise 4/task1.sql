-- Give an example of an unnormalized table. Describe why it is problematic to have 
-- an unnormalized table in the database. Include some example data in your answer.
-- The data should show clearly the problem (or problems) unnormalized table causes.

-- Music
-- |Artist        |Ablum            |Track               |Number |Year |Length 
-- ------------------------------------------------------------------------------
-- |Iron Maiden   |Fear of the Dark |Be Quick or Be Dead |1      |1992 |00:03:24
-- |Iron Maiden   |Fear of the Dark |Childhood's End     |5      |1992 |00:04:40
-- |Iron Maiden   |Fear of the Dark |Weekend Warrior     |11     |1992 |00:05:39
-- |Dio           |Holy Diver       |Holy Diver          |2      |1983 |00:05:54
-- |Dio           |Holy Diver       |Invisible           |7      |1983 |00:05:26

-- The problem with unnormalized tables is duplication of data which is shown in the example above.
-- Duplication causes a lot of problems from unnesessary data stored (takes more space) to the difficulty
-- to update or delete data. Also deleting the last track of an album from the table above removes the
-- album information as well