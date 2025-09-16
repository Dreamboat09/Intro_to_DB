USE alx_book_store;

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(125) NOT NULL
);

CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL UNIQUE,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE,
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
    order_date DATE
);

CREATE TABLE Order_Details(
    orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE ON UPDATE CASCADE,
    quantity DOUBLE 
);