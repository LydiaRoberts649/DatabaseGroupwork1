CREATE USER 'PLP'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON bookstore.* TO  'wahu'@'localhost';
GRANT ALL PRIVILEGES ON bookstore.customers TO 'PLP'@'localhost';

ALTER USER 'wahu'@'localhost' IDENTIFIED BY '1234';