DROP DATABASE IF EXISTS bamazon_schemaDB;

CREATE DATABASE bamazon_schemaDB;

USE bamazon_schemaDB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(128) NULL,
  department_name VARCHAR(128) NULL,
  price INT(10) NULL,
  stock_quanity INT(10)
  PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0001, "ps4", "gaming", 300, 10000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0002,"xbox1", "gaming",300, 10000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0003, "switch", "gaming",300,10000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0004, "macbook", "computers",2000,15000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0005, "dell", "computers",1050,20000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0006, "lenovo", "computers",1000,25000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0007, "hp", "computers",900,17000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0008, "sony", "computers",1700,15000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0009, "samsung", "computers",1100,15000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES (0010, "microsoft", "computers",2000,25000);
