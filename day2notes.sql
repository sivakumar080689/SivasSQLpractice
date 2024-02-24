select * from superstore_orders 

select* from amazon_orders order by order_date desc, product_name desc, payment_method

desc amazon_orders;

exec sp_columns amazon_orders

alter table amazon_orders alter column order_date datetime;
alter table amazon_orders alter column product_name varchar(20);
alter table amazon_orders alter column order_date datetime;

insert into amazon_orders values(5,'2022-10-01 12:05:12','Shoes',132.5,'UPI');

insert into amazon_orders values(6,'2022-10-01 12:05:12',NULL,132.5,'UPI','Ankit');

insert into amazon_orders values(7,'2022-10-01 12:05:12','null',132.5,'UPI');


alter table amazon_orders add username varchar(20);

alter table amazon_orders add category varchar(20);

alter table amazon_orders drop column category;

drop table a_orders


create table a_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20) check (payment_method in ('UPI','CREDIT CARD')) default 'UPI',
discount integer check (discount <= 20),
category varchar(20) default 'Mens wear'
primary key (order_id, product_name)
);

select * from a_orders

insert into a_orders values (1, '2022-10-01','shirts',132.5,'UPI',20,'kids wear')
insert into a_orders values (3,'2022-10-01','shirts',132.5,'UPI',20,'')

insert into a_orders(order_id,order_date,product_name,total_price,payment_method)
values (7,'2022-10-01','Shirts',132.5,'UPI')


insert into a_orders(order_id,order_date,product_name,total_price,payment_method)
values (null,'2022-10-01','Shirts',132.5,default)       

select * from a_orders


insert into a_orders(order_id,order_date,product_name,total_price,payment_method)
values (1,'2022-10-01','Shirts',132.5,default) 


insert into a_orders(order_id,order_date,product_name,total_price,payment_method)
values (2,'2022-10-01','jeans',132.5,default) 


delete from a_orders where product_name='jeans'

select * from a_orders

update a_orders
set discount = 10;

update a_orders
set discount = 10
where order_id = 2;


update a_orders
set product_name = 'jeans2' , payment_method = 'CREDIT CARD'
where product_name='jeans'

select * from a_orders






