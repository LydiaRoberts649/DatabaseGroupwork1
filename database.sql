CREATE DATABASE bookStore;
CREATE TABLE Books(
BookId INT auto_increment primary KEY,
Name VARCHAR(100),
publisher_Id INT,
Book_Language VARCHAR(100),
status VARCHAR(100),
FOREIGN KEY (publisher_Id) REFERENCES PUBLISHER (publisher_Id),
FOREIGN KEY (Address) REFERENCES cust_Address (Address));


CREATE TABLE Book_Author(
Author_Id INT primary KEY,
BookId INT,
Name VARCHAR(100),
FOREIGN KEY(BookId) REFERENCES Books(BookId)
);

CREATE TABLE AUTHORS(
Author_Id INT,
Name VARCHAR(100),
FOREIGN KEY(Author_Id) REFERENCES Book_Author(Author_id)
);
 CREATE TABLE PUBLISHER (
 publisher_Id INT PRIMARY KEY AUTO_INCREMENT,
 Name VARCHAR(100),
 Address VARCHAR(100)
 );
 
 CREATE TABLE customer(
 cust_Id VARCHAR(100) PRIMARY KEY,
 name VARCHAR(100),
 FOREIGN KEY(Address) REFERENCES cust_Address(Address)
 );
 
 CREATE TABLE cust_Address(
 Address VARCHAR(100) PRIMARY KEY,
 country VARCHAR(100)
 );
 
 CREATE TABLE Address_Status(
 Address_status VARCHAR(100) NOT NULL CHECK (STATUS IN('old','current'))
 );
 
 CREATE TABLE addresses(
 address VARCHAR(100),
 country_Id INT,
 FOREIGN KEY(country_Id) REFERENCES COUNTRIES(country_Id)
 );
 
 CREATE TABLE COUNTRIES(
 country_Id INT PRIMARY KEY,
 name VARCHAR(100)
 );
 
 CREATE TABLE cust_order(
 order_Id VARCHAR(100) PRIMARY KEY,
 cust_Id VARCHAR(100),
 created_at DATE DEFAULT current_timestamp,
 FOREIGN KEY(cust_Id) REFERENCES customer(cust_Id)
 );
 
 CREATE TABLE order_line(
 order_line VARCHAR(100)
 );
 
 CREATE TABLE shipping_method(
 shipping_method VARCHAR(100)
 );
 
 CREATE TABLE order_History(
 order_Id VARCHAR(100),
 cust_Id VARCHAR(100),
 FOREIGN KEY(cust_Id) REFERENCES customer(cust_Id),
 FOREIGN KEY(order_Id) REFERENCES cust_order(order_Id)
 );
 
 CREATE TABLE order_status(
 order_status VARCHAR(100) CHECK (STATUS IN('delivered','pending','shipped'))
 );
 
 CREATE USER wahu@localhost IDENTIFIED BY '1234';
 
 
 
