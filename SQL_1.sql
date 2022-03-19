create database if not exists orders;

drop database orders;

create table orders.customers(
	customers_id INT NOT NULL,
	primary key  customers_id (customers_id)
);

alter table orders.customers
add column customers_name varchar(45) not null after customers_id;

alter table orders.customers
drop column customers_name;
/*
 drop truncate 要小心
*/
drop table orders.customers; 

truncate orders.customers;

select * from orders.customers;

