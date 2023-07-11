CREATE TABLE customers (
  customer_id INT,
  name VARCHAR(255) ,
  email VARCHAR(255) ,
  PRIMARY KEY (customer_id)
  
);

INSERT INTO customers (customer_id, name, email) VALUES
  (1, 'John', 'john@example.com'),
  (2, 'Jane', 'jane@example.com'),
  (3, 'Michael', 'michael@example.com'),
  (4, 'Emily', 'emily@example.com'),
  (5, 'David', 'david@example.com'),
  (6, 'Sarah', 'sarah@example.com'),
  (7, 'Lisa', 'lisa@example.com'),
  (8, 'Mark', 'mark@example.com'),
  (9, 'Olivia', 'olivia@example.com'),
  (10, 'James', 'james@example.com'),
  (11, 'Clerk', 'clerk@example.com'),
  (12, 'Mecca', 'mecca@example.com');


SELECT * FROM customers;

CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  product VARCHAR(255) ,
  quantity INT,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
  
);

INSERT INTO orders (order_id, customer_id, product, quantity) VALUES
(1, 3, 'Product A', 2),
(2, 6, 'Product B', 5),
(3, 4, 'Product A', 1),
(4, 7, 'Product A', 2),
(5, 1, 'Product B', 4),
(6, 8, 'Product C', 1),
(7, 5, 'Product A', 3),
(8, 9, 'Product C', 5),
(9, 21, 'Product A', 3),
(10, 27, 'Product B', 8);


SELECT * FROM customers;
SELECT * FROM orders;

SELECT * 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id


SELECT * 
FROM customers c LEFT JOIN orders o 
ON c.customer_id = o.customer_id

SELECT * 
FROM customers c RIGHT JOIN orders o 
ON c.customer_id = o.customer_id


SELECT * 
FROM customers c FULL JOIN orders o 
ON c.customer_id = o.customer_id;


SELECT * 
FROM customers c CROSS JOIN orders o 




