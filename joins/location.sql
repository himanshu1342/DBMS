create table location(
    locn_id number Primary Key,
    state varchar(20),
    city varchar(20)
);

create table designation(
    job_id number Primary Key,
    designation varchar(20)
);

create table dept(
    dept_id number Primary Key,
    deptname varchar(20),
    locn_id NUMBER,
    FOREIGN KEY (locn_id) REFERENCES location(locn_id)
);

create table emp(
    emp_id number Primary Key,
    empname varchar(20),
    email varchar(20),
    phoneno varchar(20),
    doj DATE,
    salary number,
    job_id number,
    Foreign Key (job_id) REFERENCES designation,
    dept_id number,
    Foreign Key (dept_id) REFERENCES dept,
    locn_id number,
    Foreign Key (locn_id) REFERENCES location
);

INSERT INTO location  VALUES (1, 'California', 'Los Angeles');
INSERT INTO location  VALUES (2, 'Texas', 'Houston');
INSERT INTO location  VALUES (3, 'New York', 'New York City');
INSERT INTO location  VALUES (4, 'Illinois', 'Chicago');
INSERT INTO location  VALUES (5, 'Florida', 'Miami');


INSERT INTO designation  VALUES (1, 'Software Engineer');
INSERT INTO designation  VALUES (2, 'Data Analyst');
INSERT INTO designation  VALUES (3, 'Project Manager');
INSERT INTO designation  VALUES (4, 'HR Manager');
INSERT INTO designation  VALUES (5, 'Sales Executive');


INSERT INTO dept  VALUES (1, 'IT', 1);
INSERT INTO dept  VALUES (2, 'Sales', 2);
INSERT INTO dept  VALUES (3, 'Human Resources', 3);
INSERT INTO dept  VALUES (4, 'Finance', 4);
INSERT INTO dept  VALUES (5, 'Marketing', 5);


INSERT INTO emp  VALUES (1, 'Alice Smith', 'alice@example.com', '555-1234', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 70000, 1, 1, 1);
INSERT INTO emp  VALUES (2, 'Bob Johnson', 'bob@example.com', '555-5678', TO_DATE('2021-06-01', 'YYYY-MM-DD'), 60000, 2, 2, 2);
INSERT INTO emp  VALUES (3, 'Charlie Brown', 'charlie@example.com', '555-8765', TO_DATE('2020-03-20', 'YYYY-MM-DD'), 80000, 3, 3, 3);
INSERT INTO emp  VALUES (4, 'Diana Prince', 'diana@example.com', '555-4321', TO_DATE('2023-08-30', 'YYYY-MM-DD'), 50000, 4, 4, 4);
INSERT INTO emp  VALUES (5, 'Ethan Hunt', 'ethan@example.com', '555-2468', TO_DATE('2022-11-10', 'YYYY-MM-DD'), 75000, 5, 5, 5);

SELECT e.empname, e.dept_id, d.deptname FROM emp e JOIN dept d ON e.dept_id = d.dept_id;

SELECT d.dept_id, d.deptname, l.state, l.city FROM dept d JOIN location l ON d.locn_id = l.locn_id;

SELECT e.empname, e.emp_id, l.city, l.state FROM emp e JOIN location l ON e.locn_id = l.locn_id;

SELECT e.*, d.* FROM emp e JOIN dept d ON e.dept_id = d.dept_id WHERE e.salary BETWEEN 60000 AND 75000;

SELECT e.* FROM emp e JOIN dept d ON e.dept_id = d.dept_id WHERE d.deptname IN ('IT', 'Human Resources');

SELECT e.empname, d.deptname FROM emp e JOIN dept d ON e.dept_id = d.dept_id JOIN location l ON e.locn_id = l.locn_id WHERE l.city LIKE '%a%';

SELECT d.*, e.* FROM dept d LEFT JOIN emp e ON d.dept_id = e.dept_id;

SELECT e.*, d.* FROM emp e JOIN dept d ON e.dept_id = d.dept_id;

SELECT * FROM emp WHERE salary < (SELECT salary FROM emp WHERE emp_id = 5);

SELECT * FROM emp WHERE salary = (SELECT DISTINCT salary FROM emp ORDER BY salary DESC OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY);

SELECT d.deptname, AVG(e.salary) AS avg_salary FROM emp e JOIN dept d ON e.dept_id = d.dept_id GROUP BY d.deptname ORDER BY avg_salary ASC;

SELECT d.deptname, COUNT(e.emp_id) AS employee_count FROM dept d LEFT JOIN emp e ON d.dept_id = e.dept_id GROUP BY d.deptname;












