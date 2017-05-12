CREATE DATABASE workerdb;
CREATE USER 'workerdbuser'@'localhost' IDENTIFIED BY 'workerdbpassword';
GRANT ALL PRIVILEGES ON * . * TO 'workerdbuser'@'localhost';