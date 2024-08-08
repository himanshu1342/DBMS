create table Student1(
    s_id int Primary Key,
    s_name varchar(20) NOT NULL,
    dept varchar(20) NOT NULL,
    assign_id int NOT NULL,
    admissiondate timestamp,
    duedate date default date'2024-08-08',
    submissiondate timestamp,
    dob date
);
	insert into Student1 values(1,'john','CSE',001,timestamp '2024-03-01 01:30:20',default,timestamp '2024-05-01 10:13:20',date'2003-05-1');
	insert into Student1 values(2,'morris','ENTC',002,timestamp '2024-03-02 02:30:20',default,timestamp '2024-05-02 10:13:20',date'2003-11-2');
	insert into Student1 values(3,'soul','CIVIL',003,timestamp '2024-03-03 03:30:20',default,timestamp '2024-05-03 10:13:20',date'2003-12-3');
	insert into Student1 values(4,'fredy','CSE',004,timestamp '2024-03-04 04:30:20',default,timestamp '2024-05-04 10:13:20',date'2003-02-4');
	insert into Student1 values(5,'tany','MECH',005,timestamp '2024-03-05 05:30:20',default,timestamp '2024-05-05 10:13:20',date'2003-01-5');
	insert into Student1 values(6,'kayl','ALML',006,timestamp '2024-03-06 06:30:20',default,timestamp '2024-05-06 10:13:20',date'2003-08-6');
	insert into Student1 values(7,'brave','CIVIL',007,timestamp '2024-03-07 07:30:20',default,timestamp '2024-05-07 07:13:20',date'2003-07-7');
	insert into Student1 values(8,'amy','CSE',008,timestamp '2024-03-08 08:30:20',default,timestamp '2024-05-08 08:13:20',date'2003-05-8');
	insert into Student1 values(9,'maddy','ENTC',008,timestamp '2024-03-01 09:30:20',default,timestamp '2024-05-09 09:13:20',date'2003-06-9');
	insert into Student1 values(10,'addy','cse',009,timestamp '2024-03-10 10:30:20',default,timestamp '2024-05-10 10:13:20',date'2003-04-12');


UPDATE Student1
	SET duedate = duedate +interval '5' DAY;


SELECT assign_id
FROM Students
WHERE TRUNC(admissiondate) = TRUNC(SYSDATE);


SELECT TO_CHAR(dob, 'DD-MM-YYYY') AS formatted_dob
FROM Student1;


SELECT s_id, s_name,
       TO_CHAR(admissiondate, 'MM') AS admission_month,
       TO_CHAR(admissiondate, 'YYYY') AS admission_year
FROM Student1;


SELECT s_id, s_name,
       EXTRACT(DAY FROM admissiondate) AS admission_day,
       EXTRACT(MONTH FROM admissiondate) AS admission_month
FROM Student1
WHERE dept = 'CSE';


SELECT TO_CHAR(admissiondate, 'DY') AS day_of_week,
       COUNT(*) AS number_of_students
FROM Student1
GROUP BY TO_CHAR(admissiondate, 'DY')
ORDER BY CASE TO_CHAR(admissiondate, 'DY')
           WHEN 'Sun' THEN 1
           WHEN 'Mon' THEN 2
           WHEN 'Tue' THEN 3
           WHEN 'Wed' THEN 4
           WHEN 'Thu' THEN 5
           WHEN 'Fri' THEN 6
           WHEN 'Sat' THEN 7
         END;


SELECT s_id, s_name,
       EXTRACT(DAY FROM dob) AS dob_day,
       EXTRACT(MONTH FROM dob) AS dob_month,
       EXTRACT(YEAR FROM dob) AS dob_year,
       EXTRACT(DAY FROM submissiondate) AS submission_day,
       EXTRACT(MONTH FROM submissiondate) AS submission_month,
       EXTRACT(YEAR FROM submissiondate) AS submission_year
FROM Student1;


SELECT s_id, s_name,
       FLOOR(MONTHS_BETWEEN(SYSDATE, dob) / 12) AS age
FROM Student1;


select * from student1;
