--filtering NULL values

select * from superstore_orders
where City is null;

select * from superstore_orders
where City is not null;

--aggregation

select count(*) as cnt,
sum(sales)  as total_sales,
max(sales) as max_sales,
min(profit) as min_profit,
avg(profit) as avg_profit
from superstore_orders

--group by

select Region, count(*) as cnt,
sum(sales) as total_sales,
max(sales) as max_sales,
min(Profit) as min_profit,
avg(Profit) as avg_profit
from superstore_orders
group by Region

select Region,Category,sum(Sales) as total_sales from superstore_orders
group by Region, Category;

select top 2 region,sum(sales) as total_sales from superstore_orders
where Profit >  50
group by Region
order by total_sales desc

select Sub_Category,sum(sales)  as total_sales
from superstore_orders
group by Sub_Category
having sum(Sales) > 10000
order by total_sales desc


select top 5 Sub_Category,sum(Sales) as total_sales
from superstore_orders
where profit > 50
group by Sub_Category
having sum(Sales) > 10000
order by total_sales desc

select top 5 Sub_Category, sum(Sales) as total_sales
from superstore_orders
where Sub_Category = 'Phones'
group by Sub_Category
order by total_sales desc

select Sub_Category,sum(sales) as total_sales
from superstore_orders
group by Sub_Category
having max(Order_Date) > '2020-01-01'
order by total_sales desc

------W,G,H,O
select Sub_Category,min(Order_Date),sum(sales) as total_sales
from superstore_orders
group by Sub_Category
having max(Order_Date) > '2020-01-01'
order by total_sales desc;

select Sub_Category,sum(Sales) as total_sales
from superstore_orders
where Order_Date > '2020-01-01'
group by Sub_Category
order by total_sales desc

select count(distinct region),
count(*),
count(city),
sum(sales)
from superstore_orders


select Region, avg(sales) as avg_sales
,sum(sales)/count(Region)
from superstore_orders 
group by Region










