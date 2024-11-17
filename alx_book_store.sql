CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id PRIMARY KEY INT AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id FOREIGN Key (author_id) REFERENCES (author_id) table NOT NULL,
    price DOUBLE,
    publication_date DATE,
    );

CREATE TABLE Authors (
    author_id PRIMARY KEY INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    ); 

CREATE TABLE Customers (
    customer_id PRIMARY KEY INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT,
    );

CREATE TABLE Orders (
    order_id PRIMARY KEY INT AUTO_INCREMENT,
    customer_id FOREIGN KEY(customer_id) REFERENCES(customer_id),
    order_date DATE
    );

CREATE TABLE Order_Details ( 
    orderdetail_id PRIMARY KEY INT AUTO_INCREMENT,
    order_id FOREIGN KEY(order_id) REFERENCES(order_id),
    book_id FOREIGN Key(book_id) REFERENCES(book_id),
    quantity DOUBLE
    );