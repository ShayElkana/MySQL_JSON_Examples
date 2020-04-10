CREATE USER 'admin'@'localhost' IDENTIFIED BY 'smellyCat';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';
CREATE USER 'admin'@'%' IDENTIFIED BY 'smellyCat';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
