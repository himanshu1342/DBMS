CREATE TABLE Faculty (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    Designation VARCHAR2(200),
    Salary number(10),
    email varchar2(100),
    joining_date date not null,
    department varchar(100)
);
INSERT ALL
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (1, 'abc', 'professor', 50000, 'abc@gmail.com', DATE '2005-12-14', 'CSE')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (2, 'def', 'asso.professor', 60000, 'def@gmail.com', DATE '2012-11-12', 'IT')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (3, 'ghi', 'lecturer', 40000, 'ghi@gmail.com', DATE '2015-08-01', 'EXTC')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (4, 'jkl', 'professor', 70000, 'jkl@gmail.com', DATE '2010-09-20', 'CSE')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (5, 'mno', 'lecturer', 45000, 'mno@gmail.com', DATE '2018-01-15', 'IT')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (6, 'pqr', 'assi.professor', 65000, 'pqr@gmail.com', DATE '2014-03-30', 'EXTC')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (7, 'stu', 'professor', 75000, 'stu@gmail.com', DATE '2007-05-25', 'CSE')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (8, 'vwx', 'lecturer', 42000, 'vwx@gmail.com', DATE '2019-07-10', 'IT')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (9, 'yz', 'assi.professor', 62000, 'yz@gmail.com', DATE '2016-02-05', 'EXTC')
  INTO Faculty (id, name, Designation, Salary, email, joining_date, department) VALUES (10, 'abcde', 'professor', 80000, 'abcde@gmail.com', DATE '2008-11-17', 'CSE')
SELECT * FROM Faculty;

SELECT * FROM Faculty
WHERE Salary BETWEEN 50000 AND 80000;

SELECT name FROM Faculty
WHERE Salary<50000 ;

SELECT * FROM Faculty
WHERE Designation IN ('assi.professor', 'professor');

SELECT * FROM Faculty
WHERE joining_date IN (DATE '2005-12-14', DATE '2010-09-20', DATE '2007-05-25');

SELECT * FROM Faculty
WHERE Designation = 'assi.professor' AND department IN ('CSE', 'EXTC');

SELECT joining_date FROM Faculty
WHERE department = 'EXTC';

SELECT * FROM Faculty
WHERE name LIKE 's%';

SELECT * FROM Faculty
WHERE name LIKE '%a%';

SELECT name,Salary FROM Faculty
WHERE Designation = 'professor';

UPDATE Faculty SET Salary = Salary * 1.10
WHERE Designation IN ('asso.professor', 'assi.professor');

SELECT * FROM Faculty
WHERE name LIKE '%c';

SELECT DISTINCT Salary FROM Faculty;

DELETE FROM Faculty
WHERE Salary < 50000;

select * from Faculty;
