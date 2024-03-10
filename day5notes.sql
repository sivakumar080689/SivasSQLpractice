select * from orders

select * from returns


--inner join
select o.Order_ID,o.Product_ID,r.return_reason from orders o
inner join returns r on o.Order_ID = r.order_id
 

select o.Order_ID,o.Product_ID,r.return_reason,r.order_id from orders  o
left join returns r on o.Order_ID=r.order_id


select r.return_reason,sum(o.Sales) as total_sales from orders o
inner join returns r on o.Order_ID=r.order_id
group by r.return_reason



------------------------------

select e.emp_id,e.emp_name,e.dept_id,d.dep_name from employee e
inner join  dept d on e.dept_id = d.dep_id

select e.emp_id,e.emp_name,e.dept_id,d.dep_name from 
employee e
left join dept d on e.dept_id=d.dep_id

select e.emp_id,e.emp_name,e.dept_id,d.dep_id,d.dep_name from 
employee e
right join dept d on e.dept_id=d.dep_id;

select e.emp_id,e.emp_name,e.dept_id,d.dep_name from 
dept d
left join employee e on e.dept_id=d.dep_id;

select e.emp_id,e.emp_name,e.dept_id,d.dep_id ,d.dep_name from 
dept d
full outer join employee e on e.dept_id=d.dep_id;

select o.Order_ID, o.Product_ID,r.return_reason,p.manager from orders o
left join returns r on o.Order_ID = r.order_id
inner join people p on  o.region = p.region

select * from orders
select * from returns


