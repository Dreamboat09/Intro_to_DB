CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Authors (
    author_id PRIMARY KEY INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
    ); 

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    FOREIGN Key (author_id) REFERENCES Authors (author_id),
    price DOUBLE,
    publication_date DATE
    );

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT
    );

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE NOT NULL
    );

    

CREATE TABLE Order_Details ( 
    orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
    );

    