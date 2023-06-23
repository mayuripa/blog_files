-- Create the table
CREATE TABLE sales (
    Product VARCHAR(50),
    Region VARCHAR(50),
    Price INT,
    Quantity INT
);

-- Insert the data entries
INSERT INTO sales (Product, Region, Price, Quantity)
VALUES ('CPU', 'New York', 200, 5),
       ('GPU', 'Chicago', 350, 3),
       ('CPU', 'Chicago', 220, 7),
       ('RAM', 'New York', 150, 4),
       ('GPU', 'New York', 400, 2),
       ('RAM', 'New York', 180, 6),
       ('SSD', 'Chicago', 250, 8),
       ('CPU', 'Chicago', 230, 9),
       ('SSD', 'New York', 300, 1),
       ('GPU', 'Chicago', 380, 3);
--summary of sales based on products (product-wise).

-- Creating groups of product
SELECT product
FROM sales
GROUP BY product

--Using the Aggregation function (SUM) 
SELECT product,SUM(price) AS total_sales
FROM sales
GROUP BY product

-- summary of sales based on the product and region (product-region-wise).

 -- Creating groups of a unique set of products and region 
SELECT product,region
FROM sales
GROUP BY product,region

--Using the Aggregation function (SUM)  
SELECT product,region,SUM(Price) AS total_sales
FROM sales
GROUP BY product,region

