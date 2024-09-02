REM   Script: Practical -4a
REM   date:26/08/24

create table Sales( 
    cust_id number Primary Key, 
    cust_name varchar(20) NOT NULL, 
    salesman_id number, 
    city varchar(20), 
    order_id number, 
    order_date Date, 
    order_amount number 
);

INSERT INTO Sales VALUES (1, 'Alice', 101, 'Mumbai', 1001, DATE '2024-01-15', 2500), 
;

INSERT INTO Sales (cust_id, cust_name, salesman_id, city, order_id, order_date, order_amount) VALUES 
(1, 'Alice', 101, 'Mumbai', 1001, DATE '2024-01-15', 2500), 
(2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000), 
(3, 'Charlie', 103, 'Mumbai', 1003, DATE '2024-03-25', 1500), 
(4, 'Diana', 101, 'Pune', 1004, DATE '2024-04-30', 3500), 
(5, 'Eve', 104, 'Mumbai', 1005, DATE '2024-05-10', 2200), 
(6, 'Frank', 102, 'Pune', 1006, DATE '2024-06-15', 2700), 
(7, 'Grace', 103, 'Mumbai', 1007, DATE '2024-07-20', 2900), 
(8, 'Hank', 104, 'Pune', 1008, DATE '2024-08-25', 3100), 
(9, 'Ivy', 101, 'Mumbai', 1009, DATE '2024-09-30', 2400), 
(10, 'Jack', 102, 'Pune', 1010, DATE '2024-10-05', 3300);

INSERT INTO Sales (cust_id, cust_name, salesman_id, city, order_id, order_date, order_amount) VALUES 
(1, 'Alice', 101, 'Mumbai', 1001, DATE '2024-01-15', 2500), 
(2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000), 
(3, 'Charlie', 103, 'Mumbai', 1003, DATE '2024-03-25', 1500), 
(4, 'Diana', 101, 'Pune', 1004, DATE '2024-04-30', 3500), 
(5, 'Eve', 104, 'Mumbai', 1005, DATE '2024-05-10', 2200), 
(6, 'Frank', 102, 'Pune', 1006, DATE '2024-06-15', 2700), 
(7, 'Grace', 103, 'Mumbai', 1007, DATE '2024-07-20', 2900), 
(8, 'Hank', 104, 'Pune', 1008, DATE '2024-08-25', 3100), 
(9, 'Ivy', 101, 'Mumbai', 1009, DATE '2024-09-30', 2400), 
(10, 'Jack', 102, 'Pune', 1010, DATE '2024-10-05', 3300) 
;

INSERT INTO Sales VALUES (2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000) 
;

INSERT INTO Sales VALUES (1, 'Alice', 101, 'Mumbai', 1001, DATE '2024-01-15', 2500) 
;

INSERT INTO Sales VALUES (2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000) 
INSERT INTO Sales VALUES (3, 'Charlie', 103, 'Mumbai', 1003, DATE '2024-03-25', 1500) 
INSERT INTO Sales VALUES (4, 'Diana', 101, 'Pune', 1004, DATE '2024-04-30', 3500) 
INSERT INTO Sales VALUES (5, 'Eve', 104, 'Mumbai', 1005, DATE '2024-05-10', 2200) 
INSERT INTO Sales VALUES (6, 'Frank', 102, 'Pune', 1006, DATE '2024-06-15', 2700) 
INSERT INTO Sales VALUES (7, 'Grace', 103, 'Mumbai', 1007, DATE '2024-07-20', 2900) 
INSERT INTO Sales VALUES (8, 'Hank', 104, 'Pune', 1008, DATE '2024-08-25', 3100) 
INSERT INTO Sales VALUES (9, 'Ivy', 101, 'Mumbai', 1009, DATE '2024-09-30', 2400) 
INSERT INTO Sales VALUES (10, 'Jack', 102, 'Pune', 1010, DATE '2024-10-05', 3300) 
;

INSERT INTO Sales VALUES (2, 'Bob', 102, 'Pune', 1002, DATE '2024-02-20', 3000) 
;

INSERT INTO Sales VALUES (3, 'Charlie', 103, 'Mumbai', 1003, DATE '2024-03-25', 1500) 
;

INSERT INTO Sales VALUES (4, 'Diana', 101, 'Pune', 1004, DATE '2024-04-30', 3500) 
;

INSERT INTO Sales VALUES (6, 'Frank', 102, 'Pune', 1006, DATE '2024-06-15', 2700) 
;

INSERT INTO Sales VALUES (5, 'Eve', 104, 'Mumbai', 1005, DATE '2024-05-10', 2200) 
;

INSERT INTO Sales VALUES (9, 'Ivy', 101, 'Mumbai', 1009, DATE '2024-09-30', 2400) 
;

INSERT INTO Sales VALUES (7, 'Grace', 103, 'Mumbai', 1007, DATE '2024-07-20', 2900) 
;

INSERT INTO Sales VALUES (8, 'Hank', 104, 'Pune', 1008, DATE '2024-08-25', 3100) 
;

INSERT INTO Sales VALUES (10, 'Jack', 102, 'Pune', 1010, DATE '2024-10-05', 3300) 
;

Select * from Sales;

SELECT * FROM Sales ORDER BY order_amount;

SELECT * FROM Sales ORDER BY order_amount ASC;

SELECT * FROM Sales ORDER BY order_amount DESC;

SELECT * FROM Sales ORDER BY cust_name, city;

SELECT * FROM Sales ORDER BY order_date ASC;

SELECT * FROM Sales ORDER BY order_date DESC;

SELECT * FROM Sales ORDER BY salesman_id, order_date DESC;

SELECT * FROM Sales ORDER BY EXTRACT(MONTH FROM order_date);

SELECT * FROM Sales ORDER BY EXTRACT(YEAR FROM order_date);

CREATE SEQUENCE sales_seq 
START WITH 1 
INCREMENT BY 1 
MINVALUE 1 
NOCYCLE;

create table collage( 
    prn number Primary Key, 
    rollno number, 
    name varchar(20), 
    marks number, 
    age (age>18) 
);

create table collage( 
    prn number Primary Key, 
    rollno number, 
    name varchar(20), 
    marks number, 
    age int (age>18) 
);

create table collage( 
    prn number Primary Key, 
    rollno number, 
    name varchar(20), 
    marks number, 
    age int (age>18) DEFAULT 
);

create table collage( 
    prn number Primary Key, 
    rollno number, 
    name varchar(20), 
    marks number, 
    age int Check (age>18) 
);

create table college( 
	PRN int, 
    rollno int, 
    name varchar(40), 
    marks int, 
    age int check(age>18) 
);

CREATE SEQUENCE prn_seq 
    START WITH 1 
    INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_prn 
BEFORE INSERT ON college 
FOR EACH ROW 
BEGIN 
    :NEW.PRN := prn_seq.NEXTVAL; 
END;
/

INSERT INTO college (rollno, name, marks, age) VALUES (1, 'Alice', 85, 20);

INSERT INTO college (rollno, name, marks, age) VALUES (2, 'Bob', 90, 21);

INSERT INTO college (rollno, name, marks, age) VALUES (3, 'Charlie', 75, 22);

INSERT INTO college (rollno, name, marks, age) VALUES (4, 'Diana', 88, 23);

INSERT INTO college (rollno, name, marks, age) VALUES (5, 'Eve', 92, 24);

INSERT INTO college (rollno, name, marks, age) VALUES (6, 'Frank', 78, 25);

INSERT INTO college (rollno, name, marks, age) VALUES (7, 'Grace', 95, 26);

INSERT INTO college (rollno, name, marks, age) VALUES (8, 'Hannah', 80, 27);

INSERT INTO college (rollno, name, marks, age) VALUES (9, 'Ivy', 85, 28);

INSERT INTO college (rollno, name, marks, age) VALUES (10, 'Jack', 90, 29);

CREATE INDEX idx_name ON college (name);

DROP INDEX index_name;

CREATE INDEX idx_name ON college (name);

DROP INDEX index_name;

DROP INDEX idx_name;

SELECT * 
FROM ( 
    SELECT * 
    FROM college 
    ORDER BY marks DESC 
) 
WHERE ROWNUM <= 3;

