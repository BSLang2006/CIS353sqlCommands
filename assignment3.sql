CREATE TABLE customers ( 
    customer_name VARCHAR(20) PRIMARY KEY, 
    email_id VARCHAR(40) NOT NULL, 
    phone_num NUMERIC(10) UNIQUE, 
    height NUMERIC(4,3) CHECK(height > 2 AND height < 8), 
    weight NUMERIC(5,2) CHECK(weight > 50 AND weight < 250), 
    age INT default(25) 
)

CREATE TABLE orders ( 
    order_id INT PRIMARY KEY, 
    name VARCHAR(20) REFERENCES customers(customer_name), 
    order_items VARCHAR(100) default('Cart is Empty'), 
    amount NUMERIC(8,2) default(0), 
    date_time_info TIMESTAMP 
)

CREATE TABLE orders2 ( 
    order_id INT PRIMARY KEY, 
    customer_name VARCHAR(20),  
    order_items VARCHAR(100) default('Cart is Empty'), 
    amount NUMERIC(8,2) default(0), 
    date_time_info TIMESTAMP 
)

insert into customers values('sam', 'sam@gmail.com', 9876543210, 5.6, 183.5, 34);
insert into customers values('tom', 'tom@gmail.com', 9998887776, 5.11, 170.5, 44);
insert into customers values('kim', 'kim@gmail.com', 4443332221, 5.8, 153.5, 38);
insert into customers values('john', 'john@gmail.com', 4447771111, 6.1, 203.5, 22);

insert into orders values(111, 'sam', 'bread, ketchup, potatoes, tomatoes', 15.43, to_date('2021-02-17 14:08:25', 'yyyy-mm-dd hh24:mi:ss'));
insert into orders values(222, 'tom', 'mixer, tv, sofa', 3100.80, to_date('2020-07-26 08:43:51', 'yyyy-mm-dd hh24:mi:ss'));
insert into orders values(333, 'sam', 'laptop, chair, table', 2054.78, to_date('2020-01-04 11:50:41', 'yyyy-mm-dd hh24:mi:ss'));
insert into orders values(444, 'sam', 'shirt, hoodie, xbox', 981.93, to_date('2019-03-06 15:09:01', 'yyyy-mm-dd hh24:mi:ss'));
insert into orders values(555, 'kim', 'indoor cycle, watch, iphone', 1500.22, to_date('2020-10-10 06:12:18', 'yyyy-mm-dd hh24:mi:ss'));
insert into orders values(666, 'kim', 'ipod, ipad, treadmill', 3500.22, to_date('2019-08-21 21:31:41', 'yyyy-mm-dd hh24:mi:ss'));

select * from customers;
select * from orders;

SELECT NAME, avg(amount) 
FROM ORDERS
GROUP BY NAME;

SELECT NAME, avg(amount) 
FROM ORDERS
GROUP BY NAME
HAVING AVG(amount)>3000

insert into orders2 values(111, 'sam', 'bread, ketchup, potatoes, tomatoes', 15.43, '2021-02-17 14:08:25');
insert into orders2 values(222, 'tom', 'mixer, tv, sofa', 3100.80, '2020-07-26 08:43:51');
insert into orders2 values(333, 'sam', 'laptop, chair, table', 2054.78, '2020-01-04 11:50:41');
insert into orders2 values(444, 'sam', 'shirt, hoodie, xbox', 981.93, '2019-03-06 15:09:01');
insert into orders2 values(555, 'kim', 'indoor cycle, watch, iphone', 1500.22, '2020-10-10 06:12:18');
insert into orders2 values(666, 'kim', 'ipod, ipad, treadmill', 3500.22, '2019-08-21 21:31:41');
insert into orders2 values(777, 'Vince', 'shoes, toys', 500.22, '2021-03-02 09:12:31');