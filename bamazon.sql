CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE products (
item_id INT(10) NOT NULL AUTO_INCREMENT,
product_name VARCHAR(250) NULL,
department_name VARCHAR(250) NULL,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
PRIMARY KEY (item_id)
);
  
INSERT INTO products 
(product_name, department_name, price, stock_quantity)
VALUES 
("Nintendo Wii", "Electronics", 100.88, 5),
("Xbox", "Electronics", 300.54, 10),
("Basketball", "Sporting Goods", 30, 23),
("Hockey Stick", "Sporting Goods", 25, 17),
("Samsung Galaxy S7", "Cell Phones & Accessories", 300.27, 50),
("iPhone 7", "Cell Phones & Accessories", 510.33, 3),
("iPhone 7 Case", "Cell Phones & Accessories", 34.99, 20),
("Air Jorden Retro", "Men's Shoes", 150, 12),
("Nerf N-Strike Blaster", "Toys & Games", 19.95, 8),
("Monopoly", "Toys & Games", 25.88, 1);

SELECT * FROM products