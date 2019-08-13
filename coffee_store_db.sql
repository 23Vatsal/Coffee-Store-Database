SHOW DATABASES;
CREATE DATABASE coffee_store;
use coffee_store;
create table products(
		id int auto_increment primary key,
        Name varchar(30),
        Price decimal(3,2)
);
create table customers(
		id int auto_increment primary key,
        FIRST_NAME varchar(30),
        LAST_NAME varchar(30),
        Gender enum('M','F'),
        Phone_Number varchar(11)
);
create table orders(
		id int auto_increment primary key,
        product_id int,
        customer_id int,
        order_time datetime,
        foreign key (product_id) references products(id),
        foreign key (customer_id) references customers(id)
);
show tables;



