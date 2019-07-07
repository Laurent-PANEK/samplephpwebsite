CREATE DATABASE IF NOT EXISTS sampledb;

USE sampledb;

GRANT ALL PRIVILEGES ON *.* TO 'php_user'@'%' IDENTIFIED BY 'sdrugntqqsciur';

-- Table visitors
CREATE TABLE IF NOT EXISTS visitors
( 
    id INT(11) NOT NULL AUTO_INCREMENT,
    value INT(11) NOT NULL,
    date DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    PRIMARY KEY (id)
);
