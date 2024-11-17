CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id PRIMARY KEY INT AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT FOREIGN Key (author_id) REFERENCES Authors (author_id) NOT NULL,
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
    customer_id FOREIGN KEY (customer_id) REFERENCES Customers (customer_id) NOT NULL INT,
    order_date DATE
    );

CREATE TABLE Order_Details ( 
    orderdetail_id PRIMARY KEY INT AUTO_INCREMENT,
    order_id INT FOREIGN KEY (order_id) REFERENCES Orders (order_id) NOT NULL,
    book_id FOREIGN Key(book_id) REFERENCES(book_id) TABLE,
    quantity DOUBLE
    );