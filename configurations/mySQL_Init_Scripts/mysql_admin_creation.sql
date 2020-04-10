CREATE USER 'admin'@'localhost' IDENTIFIED BY 'p1234';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';
CREATE USER 'admin'@'%' IDENTIFIED BY 'p1234';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
