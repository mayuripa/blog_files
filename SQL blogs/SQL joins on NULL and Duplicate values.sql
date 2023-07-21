CREATE TABLE table1 (
  id1 INT
);

-- Insert values into table1
INSERT INTO table1 (id1) VALUES (1), (1), (1), (2), (NULL), (3),(3);

SELECT * FROM table1;

-- Create table2
CREATE TABLE table2 (
  id2 INT
);

INSERT INTO table2 (id2) VALUES (1), (1), (NULL), (4),(4);

SELECT * FROM table1;
SELECT * FROM table2;


SELECT *
FROM table1 t1 INNER JOIN table2 t2
ON t1.id1 = t2.id2;


SELECT *
FROM table1 t1 LEFT JOIN table2 t2
ON t1.id1 = t2.id2;

SELECT *
FROM table1 t1 RIGHT JOIN table2 t2
ON t1.id1 = t2.id2;


SELECT *
FROM table1 t1 FULL JOIN table2 t2
ON t1.id1 = t2.id2;
