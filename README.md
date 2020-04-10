# Using JSON in MySQL 8.0

# Prerequisite
Install docker https://www.docker.com/

# How to run
$> sh 0_restart.sh

# MySql credentials
User: Admin

Password: p1234 

# MySql port
In this example we are using a docker container instance of MySQL 8 with MySql default port 3306, 
if you like to change the port goto the the "docker-compose.yml" file and change it e.g.:

```$xslt
  mysql:
    image: mysql:latest
    volumes:
      - ./configurations/mysql_configs:/etc/mysql/conf.d
      # Create admin user and grand all privileges
      - ./configurations/mySQL_Init_Scripts:/docker-entrypoint-initdb.d
    environment:
      MYSQL_ROOT_PASSWORD: p1234
    ports:
      - "3306:3306"
    networks:
      - mysql8
```

Using 3307 instead of 3306
```$xslt
  mysql:
    image: mysql:latest
    volumes:
      - ./configurations/mysql_configs:/etc/mysql/conf.d
      # Create admin user and grand all privileges
      - ./configurations/mySQL_Init_Scripts:/docker-entrypoint-initdb.d
    environment:
      MYSQL_ROOT_PASSWORD: p1234
    ports:
      - "3307:3306"
    networks:
      - mysql8
```