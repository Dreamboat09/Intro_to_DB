USE alx_book_store;

CREATE TABLE IF NOT EXIST Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
    ); 

CREATE TABLE IF NOT EXIST Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    FOREIGN Key (author_id) REFERENCES Authors (author_id),
    price DOUBLE,
    publication_date DATE
    );

CREATE TABLE IF NOT EXIST Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT
    );

CREATE TABLE IF NOT EXIST Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE NOT NULL
    );

CREATE TABLE IF NOT EXIST Order_Details ( 
    orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
    );