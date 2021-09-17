CREATE USER 'user'@'%' IDENTIFIED BY 'secretpassword';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';
CREATE DATABASE prod_db;
USE prod_db;
CREATE Table task
(
    id          INTEGER not null primary key AUTO_INCREMENT,
    text        VARCHAR(255),
    is_archived BOOLEAN,
    check (is_archived IN (0, 1))
);
INSERT INTO task (text, is_archived) VALUES ("milk", False);
INSERT INTO task (text, is_archived) VALUES ("sugar", False);
INSERT INTO task (text, is_archived) VALUES ("whiskey", False);
INSERT INTO task (text, is_archived) VALUES ("cigarettes", False);
INSERT INTO task (text, is_archived) VALUES ("bread", False);
