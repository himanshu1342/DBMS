CREATE TABLE employeess(
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    contact_info VARCHAR2(200),
    Designation VARCHAR(50),
    department VARCHAR(20)
);

INSERT INTO employeess VALUES (1, 'John Doe', 'john.doe@example.com','Manager','IT');
INSERT INTO employeess VALUES (2, 'Jane Smith', 'jane.smith@example.com','Designer','cse');
INSERT INTO employeess VALUES (3, 'Michael Johnson', 'michael.johnson@example.com','data analyzer','cse');
INSERT INTO employeess VALUES (4, 'Emily Brown', 'emily.brown@example.com','Dvelopere','IT');
INSERT INTO employeess VALUES (5, 'David Lee', 'david.lee@example.com','Asst.manager','finance');
select * from employeess;
SELECT * from employeess WHERE DEPARTMENT='cse';
ALTER TABLE employeess DROP COLUMN designation;
