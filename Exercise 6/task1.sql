/*
Create a transaction which transfers 500€ from Checking account to Savings account. 
After this create another transaction which transfers 2000€ from Checking account to Saving account.
Why is it important to execute these commands as transactions? Why declaring statements as a
transaction is not usually enough to properly implement this feature?
Note! MariaDB supports variables. You can define the transfered amount as a variable e.g. like
this: SET @amount = 500.00;
*/

CREATE TABLE `shop`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `amount` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
);

INSERT INTO `account` (`name`, `amount`) VALUES ("Savings", 500.00);
INSERT INTO `account` (`name`, `amount`) VALUES ("Checking", 2000.00);
------------------------------------------------------------------

2)Why is it important to execute these commands as transactions? Why declaring statements as a
transaction is not usually enough to properly implement this feature?

Answer:
Because of Atomicity feauture of TRANSACTION:
Transaction is a set of sql quiries that should be performed altogether. 
During for ex., money transfer session, when we transfer money from one acc to another, money should
be deducted from one acc and add to final destination's acc. That is, money should arrive, money cannot be lost
on the middle of session.
If for ex. internet connection lost, and we are in the did half of transaction: transfered money,
deducted from one acc, internet lost, then ROLLBACK operation is acting, the deduction action is cancelled
and money go back to it acc. We start from beginning of transaction, from transaction's original state as 
it was before transaction. So all the quiries included in TRANSACTION have to be executed successfully.

It is not enough because we should COMMIT each transaction, like in github, it means it saves, makes it permanently
in database. It is good always to COMMIT or ROLLBACK after each TRANSACTION.

1)
Answer:
table account:
id      name       amount       
1      Savings      500
2      Checking     2000

START TRANSACTION;
SET @amount = 500;
SELECT @amount FROM account WHERE ID=1;
if @amount > = 500;
UPDATE account SET @amount=@amount-500 WHERE ID=1;
COMMIT;

UPDATE account SET @amount=@amount+500 WHERE ID=2;
COMMIT;


table account:
id      name       amount       
1      Savings      0
2      Checking     2500

//2nd transcaction:
UPDATE account SET @amount=@amount-2000 WHERE ID=2;
COMMIT;
UPDATE account SET @amount=@amount+2000 WHERE ID=1;
COMMIT;

output aacount table:
id      name       amount       
1      Savings      2000€
2      Checking     500€


----------------1st transaction-------------------------------------------------------------
before 1st transaction:
table account:
id      name       amount       
1      Savings      500
2      Checking     2000

after 1st transaction and before 2nd transaction:
if amount of Saving acc >=500  if there is at least 500€->
table account:
id      name       amount       
1      Savings      0
2      Checking     2000
-----------------------------------
if succesfull, then add that  500€ to Checking acc:
final output of 1st transaction:

table account:
id      name       amount       
1      Savings      0
2      Checking     2500
Successfull! Saving: 0, Checking: 2500, deducted from Checking and Added to Saving successfully!

-----------2nd transaction----------------------------------------------------------------------

deduct -2000€ from Checking acc and add to Saving acc +2000€:
id      name       amount       
1      Savings      2000€
2      Checking     500€
