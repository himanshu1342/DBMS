CREATE TABLE customer (
    cust_id NUMBER PRIMARY KEY,
    cust_name VARCHAR2(100),
    cust_city VARCHAR2(200),
    wallet_amt number(10),
    paid_amt number(10),
    outstanding_amt number(10)
);

INSERT INTO customer VALUES (1, 'mr.John Doe', 'Mumbai',5000,2400,0);
INSERT INTO customer VALUES (2, 'mr.abdul', 'Mumbai',15000,26700,0);
INSERT INTO customer VALUES (3, 'Mr.joshi', 'Pune',50000,8970,0);
INSERT INTO customer VALUES (4, 'Ms.patil', 'Hydrabad',5000,2265,0);
INSERT INTO customer VALUES (5, 'mrs.sonali', 'Pune',9000,2450,55);
INSERT INTO customer VALUES (6, 'Ms.sahahi', 'Hydrabad',15000,6600,0);

select * from customer where cust_city='Mumbai';
select cust_id from customer where cust_city='Pune';
select * from customer where wallet_amt + paid_amt>5000;

select (wallet_amt - paid_amt)as bal_amt from customer ;
update customer set wallet_amt=wallet_amt+(0.1 * wallet_amt);
select * from customer where outstanding_amt<3000;
select * from customer where outstanding_amt>5000;
update customer set paid_amt=paid_amt-(0.05 * paid_amt);
select (paid_amt + outstanding_amt)as bill_amt from customer;
select cust_name from customer where cust_city='Hydrabad';
delete from customer where cust_city='Hydrabad';

select * from customer;
