CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    contact_info VARCHAR2(200)
);

INSERT INTO employees VALUES (1, 'John Doe', 'john.doe@example.com');
INSERT INTO employees VALUES (2, 'Jane Smith', 'jane.smith@example.com');
INSERT INTO employees VALUES (3, 'Michael Johnson', 'michael.johnson@example.com');
INSERT INTO employees VALUES (4, 'Emily Brown', 'emily.brown@example.com');
INSERT INTO employees VALUES (5, 'David Lee', 'david.lee@example.com');

RENAME employees TO HR_Faculty;
ALTER TABLE HR_Faculty RENAME COLUMN employee_name TO full_name;
ALTER TABLE HR_Faculty MODIFY contact_info VARCHAR2(300);
select * from HR_Faculty;
