/* 10筆*/
select * from orders
limit 10;

select * from orders
where orderid = 10248;

/* join  兩張表*/
select * from orders, orderdetails
where orders.OrderID = orderdetails.OrderID ;

/* 排序    desc asc */
select * from employees
order by BirthDate asc;

/* 分組 */  
select supplierid, sum(price)
from products
group by SupplierID;

/* 分組後過濾資料*/  
select products.ProductID, products.ProductName, sum(price)
from orderdetails, products
where orderdetails.ProductID = products.ProductID
group by products.ProductID
having sum(price) > 400
order by sum(price) desc;

/* 別名   as*/
select *
from orders o, orderdetails d
where o.OrderID = d.OrderID;

/* like 找資料 */
select * from employees
where lastname like "D%";

/* 範圍搜尋 */
select * from products
where price between 20 and 30;

/* in   not in  */
select * from products
where CategoryID not in (2,4);


/* 子查詢 */
select * from orders o
where o.OrderID in(
select d.OrderID
from orderdetails d
where o.OrderID = d.OrderID
and d.ProductID = 12
);

/* exists 判斷子查詢    較有效率*/
select * 
from orders o
where exists (
select OrderID
from orderdetails d
where o.OrderID = d.OrderID
and d.ProductID = 12
);

/* 加入資料 */
insert into shippers(shipperid, shippername, phone)
value (4, 'CHT', '02-123456');

insert into shippers(shipperid, shippername, phone)
select 5, suppliername, phone
from suppliers
where SupplierID = 2 ;

/* 修改資料  */
update shippers
set shippername = 'ABC'
where  shipperid = 5 ;

/* 刪除 */
delete from shippers
where shipperid = 5;

/* distinst 不重複的資料*/
select count(distinct productid)
from orderdetails;



