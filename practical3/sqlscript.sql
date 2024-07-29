REM   Script: 3025_2a
REM   practical 3

create table Faculty( 
    id number PRIMARY KEY, 
    name varchar(20) unique, 
    designation varchar(20) not null, 
    salary number, 
    email varchar(20) not null,  
    doj DATE,  
    department varchar(20) not null 
    );

INSERT ALL 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (1, 'agh', 'professor', 50000, 'agh@gmail.com', DATE '2005-12-14', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (2, 'bef', 'asso.professor', 60000, 'bef@gmail.com', DATE '2012-11-12', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (3, 'ccd', 'asst.professor', 40000, 'ccd@gmail.com', DATE '2015-08-01', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (4, 'dab', 'professor', 70000, 'bad@gmail.com', DATE '2010-09-20', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (5, 'eyz', 'asst.professor', 40000, 'mno@gmail.com', DATE '2018-01-15', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (6, 'fvwx', 'asso.professor', 60000, 'pqr@gmail.com', DATE '2014-03-30', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (7, 'gstu', 'professor', 70000, 'stu@gmail.com', DATE '2007-05-25', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (8, 'hpqr', 'asst.professor', 42000, 'vwx@gmail.com', DATE '2019-07-10', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (9, 'imno', 'asso.professor', 60000, 'yz@gmail.com', DATE '2016-02-05', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (10, 'jkl', 'professor', 80000, 'abcde@gmail.com', DATE '2008-11-17', 'CSE') 
SELECT * FROM Faculty;

INSERT ALL 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (1, 'agh', 'professor', 50000, 'agh@gmail.com', DATE '2005-12-14', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (2, 'bef', 'asso.professor', 60000, 'bef@gmail.com', DATE '2012-11-12', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (3, 'ccd', 'asst.professor', 40000, 'ccd@gmail.com', DATE '2015-08-01', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (4, 'dab', 'professor', 70000, 'bad@gmail.com', DATE '2010-09-20', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (5, 'eyz', 'asst.professor', 40000, 'mno@gmail.com', DATE '2018-01-15', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (6, 'fvwx', 'asso.professor', 60000, 'pqr@gmail.com', DATE '2014-03-30', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (7, 'gstu', 'professor', 70000, 'stu@gmail.com', DATE '2007-05-25', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (8, 'hpqr', 'asst.professor', 42000, 'vwx@gmail.com', DATE '2019-07-10', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (9, 'imno', 'asso.professor', 60000, 'yz@gmail.com', DATE '2016-02-05', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (10, 'jkl', 'professor', 80000, 'abcde@gmail.com', DATE '2008-11-17', 'CSE') 
SELECT * FROM Faculty dual;

INSERT ALL 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (1, 'agh', 'professor', 50000, 'agh@gmail.com', DATE '2005-12-14', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (2, 'bef', 'asso.professor', 60000, 'bef@gmail.com', DATE '2012-11-12', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (3, 'ccd', 'asst.professor', 40000, 'ccd@gmail.com', DATE '2015-08-01', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (4, 'dab', 'professor', 70000, 'bad@gmail.com', DATE '2010-09-20', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (5, 'eyz', 'asst.professor', 40000, 'mno@gmail.com', DATE '2018-01-15', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (6, 'fvwx', 'asso.professor', 60000, 'pqr@gmail.com', DATE '2014-03-30', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (7, 'gstu', 'professor', 70000, 'stu@gmail.com', DATE '2007-05-25', 'CSE') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (8, 'hpqr', 'asst.professor', 42000, 'vwx@gmail.com', DATE '2019-07-10', 'IT') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (9, 'imno', 'asso.professor', 60000, 'yz@gmail.com', DATE '2016-02-05', 'EXTC') 
  INTO Faculty (id, name, Designation, Salary, email, doj, department) VALUES (10, 'jkl', 'professor', 80000, 'abcde@gmail.com', DATE '2008-11-17', 'CSE') 
SELECT * FROM dual;

SELECT * FROM Faculty 
WHERE Salary BETWEEN 40000 AND 80000;

SELECT name FROM Faculty 
WHERE Salary<50000 ;

SELECT * FROM Faculty 
WHERE Designation IN ('asso.professor', 'professor');

SELECT * FROM Faculty 
WHERE doj IN (DATE '2005-12-14', DATE '2010-09-20', DATE '2007-05-25');

SELECT * FROM Faculty 
WHERE Designation = 'asso.professor' AND department IN ('CSE', 'EXTC');

SELECT joining_date FROM Faculty 
WHERE department = 'EXTC';

SELECT doj FROM Faculty 
WHERE department = 'EXTC';

SELECT * FROM Faculty 
WHERE Designation = 'asso.professor' AND department IN ('CSE', 'EXTC');

SELECT * FROM Faculty 
where name like 'a%';

SELECT * FROM Faculty 
where name like '%a%';

SELECT * FROM Faculty 
where name like '%a%';

SELECT name,Salary FROM Faculty 
WHERE Designation = 'professor';

SELECT * FROM Faculty 
where name like 's%';

SELECT * FROM Faculty 
where name like '%f';

SELECT DISTINCT salary from Faculty;

UPDATE Faculty SET Salary = Salary * 1.10 
WHERE Designation IN ('asso.professor', 'assi.professor');

SELECT * FROM Faculty;

SELECT DISTINCT salary from Faculty;

DELETE from Faculty where salary <50000;

SELECT * FROM Faculty;

