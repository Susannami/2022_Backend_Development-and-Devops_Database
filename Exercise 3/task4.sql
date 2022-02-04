-- Northwind company has many products for sale. Find out how many orders include
-- each of the products. Write a query which returns all company's products 
-- (the name of the product) and the number of orders. Include the products which are 
-- not part of any order in the result.

SELECT products.product_name, COUNT(order_details.order_id) as order_count
FROM products
LEFT JOIN order_details ON order_details.product_id = products.id
GROUP BY(products.id)
ORDER BY order_count DESC;