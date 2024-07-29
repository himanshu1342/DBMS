REM   Script: 3025_2b
REM   practical3

create table customer( 
     c_id   float, 
     c_name varchar(200) , 
     city char(50), 
     s_id int, 
     order_amount float, 
     order_date date  
    );

INSERT INTO customer VALUES(1,'Rushabh','mumbai',11,1000,date '2024-01-01');

INSERT INTO customer VALUES(2,'jack','kashmir',22,2000,date '2024-02-02');

INSERT INTO customer VALUES(3,'tina','nagpur',33,3000,date '2024-03-03');

INSERT INTO customer VALUES(4,'tom','aurangaad',44,4000,date '2024-04-04');

INSERT INTO customer VALUES(5,'jerry','pune',55,5000,date '2024-05-05');

INSERT INTO customer VALUES(6,'peter','chennai',66,6000,date '2024-06-06');

select * from customer;

create table Salesman1( 
     s_id   float, 
     s_name varchar(200) , 
     city char(50), 
     commission number  
    );

INSERT INTO Salesman1 VALUES(11,'nobi','pune',100);

INSERT INTO Salesman1 VALUES(22,'alpha','mumbai',200);

INSERT INTO Salesman1 VALUES(33,'tommy','chennai',300);

INSERT INTO Salesman1 VALUES(44,'giyan','kashmir',400);

INSERT INTO Salesman1 VALUES(55,'doremon','thane',500);

INSERT INTO Salesman1 VALUES(66,'nobita','nanded',600);

select * from Salesman1;

select c_id,c_name,city,s_id,order_amount,order_date,null as s_name,null as commission  
    from customer union select null as c_id,null as c_name,city,s_id,null as order_amount,null as order_date,s_name,commission 
    from Salesman1;

select c_id,c_name,city,s_id,order_amount,order_date,null as s_name,null as commission  
    from customer union all select null as c_id,null as c_name,city,s_id,null as order_amount,null as order_date,s_name,commission 
    from Salesman1;

select c_id,c_name,city,s_id,order_amount,order_date,null as s_name,null as commission  
    from customer intersect select null as c_id,null as c_name,city,s_id,null as order_amount,null as order_date,s_name,commission 
    from Salesman1;

select c_id,c_name,city,s_id,order_amount,order_date,null as s_name,null as commission  
    from customer intersect all  select null as c_id,null as c_name,city,s_id,null as order_amount,null as order_date,s_name,commission 
    from Salesman1;

select from salesman,customer where city='Mumbai';

select * from salesman,customer where city='Mumbai';

select * from Salesman1,customer where city='Mumbai';

select * from Salesman1 AND customer where city='Mumbai';

select * from Salesman1 where city='Mumbai';

select * from Salesman1 where city='mumbai';

select * from customer where city='mumbai';

select * from Salesman1,customer where Salesman1.city='mumbai' customer.city='mumbai';

select * from Salesman1,customer where Salesman1.city='mumbai' AND customer.city='mumbai';

select * from  
    Salesman1,customer  
    where Salesman1.city='mumbai' AND customer.city='mumbai';

