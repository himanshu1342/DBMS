create table Sales( 
    cust_id number Primary Key, 
    cust_name varchar(20) NOT NULL, 
    salesman_id number, 
    city varchar(20), 
    order_id number, 
    order_date Date, 
    order_amount number 
);
INSERT INTO Sales VALUES (1, 'Alice', 101, 'Mumbai', 1001, DATE '2024-01-15', 2500); 
INSERT INTO Sales VALUES (2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000);
INSERT INTO Sales VALUES (3, 'Charlie', 103, 'Mumbai', 1003, DATE '2024-03-25', 1500);
INSERT INTO Sales VALUES (4, 'Diana', 101, 'Pune', 1004, DATE '2024-04-30', 3500);
INSERT INTO Sales VALUES (6, 'Frank', 102, 'Pune', 1006, DATE '2024-06-15', 2700);
INSERT INTO Sales VALUES (5, 'Eve', 104, 'Mumbai', 1005, DATE '2024-05-10', 2200);
INSERT INTO Sales VALUES (9, 'Ivy', 101, 'Mumbai', 1009, DATE '2024-09-30', 2400);
INSERT INTO Sales VALUES (7, 'Grace', 103, 'Mumbai', 1007, DATE '2024-07-20', 2900);
INSERT INTO Sales VALUES (8, 'Hank', 104, 'Pune', 1008, DATE '2024-08-25', 3100);
INSERT INTO Sales VALUES (10, 'Jack', 102, 'Pune', 1010, DATE '2024-10-05', 3300);

--1
select * from Sales;
--2
SELECT COUNT(DISTINCT salesman_id) AS num_unique_salespersons FROM Sales;
--3
SELECT COUNT(DISTINCT cust_id) AS num_distinct_customers FROM Sales;
--4
SELECT DISTINCT order_date FROM Sales; 
--5
SELECT cust_id, order_date, MAX(order_amount) AS highest_amount FROM Sales GROUP BY cust_id, order_date ORDER BY cust_id, order_date;
--6
SELECT salesman_id, MIN(order_amount) AS least_purchase_amount
FROM Sales
WHERE order_date = DATE '2024-09-30'
GROUP BY salesman_id;
--7
WITH CustomerHighest AS (
    SELECT cust_id, MAX(order_amount) AS highest_amount
    FROM Sales
    GROUP BY cust_id
    HAVING MAX(order_amount) > 2000
),
DateHighest AS (
    SELECT order_date, MAX(order_amount) AS highest_amount
    FROM Sales
    GROUP BY order_date
    HAVING MAX(order_amount) > 2000
)
--7
SELECT 'Customer' AS type, cust_id AS id, NULL AS order_date, highest_amount
FROM CustomerHighest
UNION ALL
SELECT 'Date' AS type, NULL AS id, order_date, highest_amount
FROM DateHighest
ORDER BY type, id, order_date;
--8
SELECT cust_id, order_date, MAX(order_amount) AS max_amount
FROM Sales
GROUP BY cust_id, order_date
HAVING MAX(order_amount) IN (2000, 3000, 4000);
--9
SELECT cust_id, MAX(order_amount) AS max_amount
FROM Sales
WHERE cust_id BETWEEN 1 AND 8
GROUP BY cust_id
HAVING MAX(order_amount) > 2000;
--10
SELECT order_date, MAX(order_amount) AS max_amount
FROM Sales
WHERE order_amount BETWEEN 1500 AND 3500
GROUP BY order_date
ORDER BY order_date;

--11
WITH CustomerCountPerCity AS (
    SELECT city, COUNT(DISTINCT cust_id) AS customer_count
    FROM Sales
    GROUP BY city
    HAVING COUNT(DISTINCT cust_id) > 3
),
SalespersonCountPerCity AS (
    SELECT city, COUNT(DISTINCT salesman_id) AS salesperson_count
    FROM Sales
    WHERE city IN (SELECT city FROM CustomerCountPerCity)
    GROUP BY city
)

SELECT SUM(salesperson_count) AS total_salespersons
FROM SalespersonCountPerCity;

