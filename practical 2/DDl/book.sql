CREATE TABLE BOOKS (
    acc_no NUMBER PRIMARY KEY, 
    title VARCHAR2(100) UNIQUE, 
    category VARCHAR2(200) NOT NULL, 
    publications VARCHAR2(200) NOT NULL,
    price INT DEFAULT 500,  
    Year_of_publication DATE NOT NULL, 
    Page_count INT CHECK (Page_count > 0),
    author VARCHAR2(100) NOT NULL
);

INSERT INTO BOOKS VALUES (1, 'Dunk', 'Sci_fi', 'Two brother publication',default,date'1999-05-21', 157, 'frank houfer');
INSERT INTO BOOKS VALUES (2, 'The lonely city', 'Novel', 'EAST BRITO COMPANY',854,date'2008-08-16', 754, 'Olivia Glen');
INSERT INTO BOOKS VALUES (3, 'inhumanly human', 'Comic', 'Two brother publication',default,date'2006-11-06', 256, 'clover gill');
INSERT INTO BOOKS VALUES (4, 'ITs rattle of human', 'Novel', 'Amrican novel publication',default,date'1982-07-18', 985, 'Tylor galy');
INSERT INTO BOOKS VALUES (5, 'The notebook', 'sci_fi', 'Drama company',755,date'1986-09-07', 369, 'frank delvin');

select category from BOOKS ;
SELECT DISTINCT author FROM BOOKS;

alter table BOOKS modify title varchar(100) not null;
create index sr on BOOKS (acc_no,title);
