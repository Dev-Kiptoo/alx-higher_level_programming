-- creating a database hbtn_0d_usa
-- creating a table states in this database
-- the table has unique int(id) and name VARCHAR(256)
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.states(id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
       	name VARCHAR(256) NOT NULL);
