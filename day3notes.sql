select top 5 * 
from superstore_orders
order by Order_Date desc

-- to get a distinct value of a column

select distinct Order_Date from superstore_orders 
order by Order_Date

select distinct Ship_Mode,Segment from superstore_orders

select distinct * from superstore_orders

--filters--

select * from superstore_orders
where Ship_Mode = 'First Class'

select * from superstore_orders
where Order_Date='2020-12-08'

select Order_Date,Quantity from superstore_orders
where Quantity != 5
order by Quantity desc

select * from superstore_orders
where Order_Date < '2020-12-08'
order by Quantity desc


select * from superstore_orders
where Order_Date between '2020-12-08' and '2020-12-12'
order by Order_Date desc

select * from superstore_orders
where Quantity between 3 and 5
order by Quantity desc

select distinct ship_mode from superstore_orders
where Ship_Mode in ('First Class','Same Day')

select * from superstore_orders
where Quantity in (3,5,4)
order by Quantity desc;

select distinct Ship_Mode from superstore_orders where Ship_Mode not in ('First class', 'Same Day')

select distinct Ship_Mode from superstore_orders where Ship_Mode >= 'Second Class'

select Order_Date,Ship_Mode,Segment from superstore_orders
where Ship_Mode = 'First Class' and Segment = 'Consumer'

select Order_Date,Ship_Mode,Segment from superstore_orders
where Ship_Mode = 'First Class' or Segment = 'Consumer'

select distinct ship_mode from superstore_orders where Ship_Mode in ('First Class','Same Day')

select * from superstore_orders
where Ship_Mode = 'First Class' or Ship_Mode= 'Same Day' -- or filter always increase rows

select * from superstore_orders
where Quantity>5 and Order_Date<'2020-11-08'

select *,Profit/Sales as ratio,
profit*sales,
GETDATE() as total
from superstore_orders
where Order_Date between '2022-11-01 12:00:00' and '2022-11-01 12:40:00'
order by Order_Date

--patter matching like operator

select Order_ID,Order_Date,Customer_Name from superstore_orders
where Customer_Name like 'Chris%';

select Order_ID,Order_Date,Customer_Name from superstore_orders
where Customer_Name like '%t';

select * from superstore_orders
where Customer_Name like '%ven';

select Order_ID,Order_Date,Customer_Name,upper(Customer_Name) from superstore_orders
where upper(Customer_Name) like 'A%A';

select Order_ID,Order_Date,Customer_Name from superstore_orders
where Customer_Name like '_l%'

select  Order_ID,Order_Date,Customer_Name  from superstore_orders
where Customer_Name like 'C[albo]%'

select order_id,order_date,customer_name
from superstore_orders
where customer_name like 'C[^albo]%';

select order_id,order_date,customer_name
from superstore_orders
where order_id like 'CA-20[][1-2]%'
order by customer_name





