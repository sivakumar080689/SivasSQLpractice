
--1- write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909

select * from superstore_orders where Order_ID='CA-2020-161389' 

Update superstore_orders
Set city = NULL
where Order_ID='CA-2020-161389'

Update superstore_orders
Set city = NULL
where Order_ID='US-2021-156909'

--2.write a query to find orders where city is null (2 rows)

select * from superstore_orders Where City IS  NULL

--3.write a query to get total profit, first order date and latest order date for each category

--WGHO
-- total profit - Profit
-- first order date - Order_Date
-- latest order date - Order_Date
-- category 

--category	First_order_date	Last_order_date	total_profit
--Furniture	1-Jan	31-Jan	400

select Category,min(Order_Date) as First_Order_Date,max(Order_Date) as Last_Order_Date,sum(Profit) as total_profit 
from superstore_orders
group by Category

/*4- write a query to find sub-categories where average profit is more 
than the half of the max profit in that sub-category */


select Sub_Category 
from superstore_orders
group by Sub_Category
having  avg(Profit) > max(Profit) / 2


/*5- create the exams table with below script;
create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

write a query to find students who have got same marks in Physics and Chemistry.  */

select * from exams

select student_id , marks
from exams
where subject in ('Physics','Chemistry')
group by student_id , marks
having count(*)>1



/*6- write a query to find total number of products in each category.*/

select * from superstore_orders

select count(distinct Product_ID) as total_products_count,Category  from superstore_orders
group by Category


/*7- write a query to find top 5 sub categories in west region by total quantity sold*/

select * from superstore_orders

select top 5 Sub_Category,sum(Quantity) as total_quantity from superstore_orders
where Region='West'
group by Sub_Category
order by total_quantity desc

/*8- write a query to find total sales for each region and ship mode combination for orders in year 2020  */

select sum(Sales) as total_sales,Region,Ship_Mode from superstore_orders
where Order_Date between '2020-01-01' and '2020-12-31'
group by Region,Ship_Mode









