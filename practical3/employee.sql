Create Table employees(
    employee_id number Primary key,
    employee_name varchar2(200),
    phone number not null,
    salary number(10),
    department varchar2(20),
    designation varchar(50)
);
insert into employees values (1,'John',9874561230,50000,'IT','Developer');
INSERT ALL 
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (2,'harward',6547893210,95000,'HR','manager')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (3,'jesica',987568145,65000,'IT','Developer')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (4,'traver',7856942130,15000,'HR','Intern')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (5,'michel',7895642139,89000,'IT','Manager')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (6,'bellman',8956231470,58000,'HR','Developer')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (7,'henry',8569321470,20000,'IT','intern')
  INTO employees (employee_id,employee_name,phone,salary,department,designation) VALUES (8,'peter',8123456975,75000,'HR','Developer')
select * from employees;
/* get min max salary of employees */
SELECT 
    MIN(salary) AS minimum_sal,
    MAX(salary) AS maximum_sal
FROM 
    employees;

/*total payable of manager */
select sum(salary) AS Total_payable from employees where designation = 'manager';

/*count of designations*/
select count(distinct designation) AS Designations from employees where designation in ('intern','manager','developer');

/*average salary from HR department*/
select avg(salary) as average_hr_salary from employees where department= 'HR';

/*write query for min,max,avg & total salary from IT */
SELECT 
    MIN(salary) AS minimum_sal,
    MAX(salary) AS maximum_sal,
    AVG(salary) AS average_sal,
    sum(salary) AS Total_sal
FROM 
    employees
where department= 'IT';

SELECT * FROM employee WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT 
    MAX(salary) AS maximum_mng
FROM 
    employees
where department= 'HR' and designation ='manager';

SELECT 
    AVG(salary) AS AVG_mng
FROM 
    employees
where designation ='manager' or designation='Manager';

SELECT * From employees 
		where designation ='intern' or designation= 'Intern';

Select abs(salary) from employees;
Select mod(salary) from employees;
Select round(salary) from employees;
Select ceil(salary) from employees;
Select floor(salary) from employees;

