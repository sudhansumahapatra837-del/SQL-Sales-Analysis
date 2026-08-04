create table sales_dashboard (order_id int primary key ,customer_name VARCHAR(50),product varchar(50),category varchar(50),city varchar(50),quantity int,unit_price DECIMAL(10,2),sales_date date );
INSERT INTO sales_dashboard VALUES
(1,'Ram','Laptop','Electronics','Bhubaneswar',1,55000,'2026-01-01'),
(2,'Sita','Mobile','Electronics','Cuttack',2,18000,'2026-01-02'),
(3,'Hari','Chair','Furniture','Puri',4,2500,'2026-01-03'),
(4,'Gita','Table','Furniture','Angul',2,5000,'2026-01-04'),
(5,'Mina','Shoes','Fashion','Bhubaneswar',3,2000,'2026-01-05'),
(6,'Rakesh','Monitor','Electronics','Cuttack',1,12000,'2026-01-06'),
(7,'Ajay','Watch','Fashion','Puri',2,4000,'2026-01-07'),
(8,'Rina','Keyboard','Electronics','Angul',2,1500,'2026-01-08'),
(9,'Kiran','Bag','Fashion','Bhubaneswar',3,2500,'2026-01-09'),
(10,'Pooja','Printer','Electronics','Cuttack',1,15000,'2026-01-10');

select * from sales_dashboard;
select SUM(quantity*unit_price) as total_sales from sales_dashboard;
select category, SUM(quantity*unit_price) as total_sales from sales_dashboard group by category ;
select city,sum(quantity*unit_price) as total_sales from sales_dashboard group by city;
select (quantity*unit_price) as sales from sales_dashboard order by sales desc limit 5;
select category, AVG(quantity*unit_price) as avg_sales from sales_dashboard group by category;
select customer_name,(quantity*unit_price) as sales from sales_dashboard order by sales desc limit 1;
select customer_name,(quantity*unit_price) as sales,RANK() over(order by quantity*unit_price desc) as  sales_rank from sales_dashboard;
select * from sales_dashboard where category='Electronics';
select * from sales_dashboard where MONTH(sales_date)=1;