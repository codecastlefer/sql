create database example;
use example;
create table dim_product (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255),
category VARCHAR(100),
subcategory VARCHAR(100),
brand VARCHAR(100),
price INT
);

create table dim_customer (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
gender VARCHAR(50),
birth_date VARCHAR(100),
city VARCHAR(100),
region VARCHAR(100)
);

create table dim_store(
store_id INT AUTO_INCREMENT PRIMARY KEY,
store_name VARCHAR(255),
city VARCHAR(100),
region VARCHAR(100)
);

create table dim_date (
date_id INT auto_increment primary key,
date_d varchar(100),
day_d int,
month_d int,
month_name varchar(50),
quarter INT,
year int);

create table facts_sales(
sale_id INT AUTO_INCREMENT PRIMARY KEY,
product_id INT,
customer_id INT,
store_id INT,
date_id INT,
quantity INT,
total_price INT,
discount INT,
profit INT,
FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (date_id) REFERENCES dim_date (date_id));

