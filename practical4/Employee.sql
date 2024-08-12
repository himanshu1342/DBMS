create table employee1(
    emp_id int PRIMARY KEY,
    name varchar(20) NOT NULL,
    doj date,
    salary int NOT NULL,
    email varchar(20) NOT NULL,
    contact_no varchar(15) NOT NULL
);
insert into employee1 values(1,'bhargavi',date '2024-01-10',10000,'bdeshpande',93095869);
insert into employee1 values(2,'tanaya',date '2024-02-02',20000,'htanaya',9309586867);
insert into employee1 values(3,'sakshi',date '2024-03-13',30000,'dsakshi',93095862);
insert into employee1 values(4,'snehhal',date '2024-04-14',40000,'bsnehhal',93095863); 
insert into employee1 values(5,'shruti',date '2024-05-15',50000,'dshruti',93095864);
insert into employee1 values(6,'abhi',date '2024-06-16',60000,'jabhi',93095865);
insert into employee1 values(7,'dhananjay',date '2024-07-17',60000,'gdhanajay',93095866);
insert into employee1 values(8,'kunal',date '2024-08-18',70000,'skunal',93095867); 
insert into employee1 values(9,'sejal',date '2024-09-19',90000,'ksejal',93095868);
insert into employee1 values(10,'himanshu',date '2024-10-11',10000,'himanshuc',9309586);
select * from employee1

SELECT emp_id, name, 
       TO_CHAR(doj, 'YYYY/MM/DD') AS formatted_doj, 
       salary,email,contact_no 
FROM employee1;

select to_char(doj, 'YYYY') from employee1;

select to_char(doj, 'YEAR') from employee1;

UPDATE employee1 SET email = CONCAT(email, '@gmail.com');

UPDATE employee1 SET contact_no = CONCAT('+91', contact_no);

UPDATE employee1 SET contact_no = REPLACE(contact_no, '+91', '999');

SELECT * FROM employee1 WHERE LENGTH(name) > 5;

SELECT TO_CHAR(MAX(salary), 'FM00000') AS max_salary_with_leading_zeros, TO_CHAR(MIN(salary), 'FM00000') AS min_salary_with_leading_zeros FROM employee1;

SELECT 
    name,
    LENGTH(name) AS name_length
FROM 
    employee1
WHERE 
    SUBSTR(name, 1, 1) IN ('A', 'B', 'C');

UPDATE employee1
SET name = UPPER(name);

UPDATE employee1
SET name = LOWER(name);

UPDATE employee1
SET name = INITCAP(name);

