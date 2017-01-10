CREATE DATABASE Bamazon,
USE Bamazon

CREATE TABLE products (
item_id VARCHAR(10) NOT NULL AUTO_INCREMENT,
product_name VARCHAR(250) NULL,
department_name VARCHAR(250) NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY (item_id)
);
    
SELECT * FROM products

INSERT INTO products (