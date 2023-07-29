-- Create the 'sales' table
CREATE TABLE sales (
  order_id INT,
  customer_id INT,
  order_date DATE,
  product VARCHAR(50),
  quantity INT,
  revenue DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO sales (order_id, customer_id, order_date, product, quantity, revenue)
VALUES
  (1001, 101, '2023-07-01', 'Widget A', 5, 100.00),
  (1002, 102, '2023-07-02', 'Widget B', 3, 75.00),
  (1003, 101, '2023-07-03', 'Widget A', 2, 40.00),
  (1004, 103, '2023-07-04', 'Widget C', 4, 120.00),
  (1005, 102, '2023-07-04', 'Widget B', 1, 25.00),
  (1006, 101, '2023-07-05', 'Widget A', 3, 60.00),
  (1007, 104, '2023-07-06', 'Widget D', 2, 50.00),
  (1008, 102, '2023-07-06', 'Widget B', 2, 50.00),
  (1009, 101, '2023-07-07', 'Widget A', 1, 20.00),
  (1010, 103, '2023-07-08', 'Widget C', 5, 150.00),
  (1011, 102, '2023-07-09', 'Widget B', 4, 100.00),
  (1012, 105, '2023-07-10', 'Widget E', 3, 75.00),
  (1013, 101, '2023-07-11', 'Widget A', 4, 80.00),
  (1014, 106, '2023-07-11', 'Widget F', 2, 60.00),
  (1015, 102, '2023-07-12', 'Widget B', 3, 75.00),
  (1016, 101, '2023-07-12', 'Widget A', 1, 20.00),
  (1017, 103, '2023-07-13', 'Widget C', 2, 60.00),
  (1018, 101, '2023-07-14', 'Widget A', 5, 100.00),
  (1019, 107, '2023-07-15', 'Widget G', 3, 90.00),
  (1020, 102, '2023-07-15', 'Widget B', 2, 50.00);



SELECT * FROM sales; 

-- Grouping of customers from order by clause.
SELECT * 
FROM sales
ORDER BY customer_id;



-- window function row_number() with PARTITION BY AND ORDER BY 
SELECT *,
ROW_NUMBER() OVER(PARTITION BY customer_id order by order_date) AS row_no
FROM sales ;


-- window function row_number() with only ORDER BY 
SELECT *,
ROW_NUMBER() OVER(order by order_date) AS row_no
FROM sales
