CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description TEXT,
	availability INT DEFAULT 0,
	price DECIMAL NOT NULL
);

CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	phone VARCHAR(30) NOT NULL
);

CREATE TABLE orders(
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_date TIMESTAMP DEFAULT now(),
	customer_id INT,
	employee_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers(id)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT fk_sold_by FOREIGN KEY (employee_id) REFERENCES employees(id) 
		ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO customers (first_name, last_name, email) VAlUES
("John", "Doe", "abc@email.com");

SET @customer_id = LAST_INSERT_ID();

INSERT INTO employees (first_name, last_name, email, phone) VALUES
("Jane", "Doe", "employee1@company.com", "887896564");

SET @employee_id = LAST_INSERT_ID();

INSERT INTO orders(customer_id, employee_id) VALUES
(@customer_id, @employee_id);

SELECT orders.id, orders.order_date, customers.first_name as customer_name, employees.first_name as employee_name
FROM employees
RIGHT JOIN orders ON orders.employee_id = employees.id
RIGHT JOIN customers ON orders.customer_id = customers.id;


SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM orders;

UPDATE customers SET id=10 WHERE id=1;

DELETE FROM customers WHERE id=10;

DELETE FROM employees;