-- The Northwind database contains following tables: orders and customers.
-- Analyze the structure of these tables and write a query, which returns all orders,
-- that are ordered to New York. Include customer's first and last name, company and
-- the order's shipping date into the result. Make sure orders which are not shipped yet
-- are included in the result.

SELECT first_name, last_name, company, shipped_date
FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
WHERE ship_city = 'New York';