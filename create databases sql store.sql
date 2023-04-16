USE sql_store;
SELECT * FROM customers
WHERE CUSTOMER_ID=1
order by first_name;
#QUERY2
SELECT last_name, first_name, points, points + 10 
FROM CUSTOMERS;


#SELECT last_name, first_name, points, (points + 10) as Discount_factor 
#FROM customers;

SELECT last_name, first_name, points, (points + 10) * 100 as Discount_factor 
FROM customers;

#Task2/Write a SQL query to return all the products in our database in the result set. 
#I want you to show columns; name, unit price, and new column called new price which is based on this expression, (unit price * 1.1 ).
#So what you are doing is increasing the product price of each by 10%. 
SELECT name, unit_price, unit_price * 10/100 + unit_price as New_price
FROM products;
#Task3/ In this task create a new query to find all the customers with a birth date of > '1990-01-01'
SELECT first_name, last_name, birth_date FROM customers
WHERE birth_date > '1990-01-01';

#Task4/ Select sql_inventory.
#Write a query to find out the name of the product with most amount in stock.
Use sql_inventory;
SELECT quantity_in_stock FROM products;
SELECT Max(quantity_in_stock) from products;

#TASK5/Select sql_inventory.
#Write a query to find out the name of the most expensive product.
SELECT unit_price FROM products;
SELECT MAX(unit_price) FROM products;

#Task6/Select sql_store.
#Write a query to find out the first name, last name, address and the birthdate of the oldest customer.
USE sql_store;
SELECT first_name, last_name, address, birth_date FROM customers
ORDER BY birth_date; 




