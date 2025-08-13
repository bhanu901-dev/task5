create database customer;
use customer;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50)
);

-- Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    item VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

#INNER JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;

#LEFT JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

#RIGHT JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

#FULL JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
FULL JOIN Orders
ON Customers.customer_id = Orders.customer_id;