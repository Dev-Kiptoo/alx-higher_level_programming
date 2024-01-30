CREATE DATABASE IF NOT EXISTS my_db;
USE my_db;
CREATE TABLE IF NOT EXISTS cards (
        id INT NOT NULL AUTO_INCREMENT,
       name VARCHAR(256) NOT NULL,
        PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS stations (
        id INT AUTO_INCREMENT,
        station VARCHAR(256) NOT NULL UNIQUE,
        line VARCHAR(256) NOT NULL,
        PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS swipes (
        id INT,
        card_id INT,
        station_id INT,
        type TEXT NOT NULL CHECK(type IN ("enter","exit","deposit")),
        datetime NUMERIC,
        amount NUMERIC NOT NULL CHECK (amount != 0),
        PRIMARY KEY (id),
        FOREIGN KEY (card_id) REFERENCES cards(id),
        FOREIGN KEY (station_id) REFERENCES stations(id)
);