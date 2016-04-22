CREATE DATABASE MATCHMAKER;
USE MATCHMAKER;

CREATE TABLE USER(
	ID VARCHAR(10) NOT NULL PRIMARY KEY,
    PW VARCHAR(60) NOT NULL,
    NAME VARCHAR(10) NOT NULL,
    AGE VARCHAR(3) NOT NULL,
    EMAIL VARCHAR(20) NOT NULL
);
SELECT * FROM USER;

DROP TABLE BOARD;
CREATE TABLE BOARD(
	NUM INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    WRITER VARCHAR(10) NOT NULL,
    TITLE VARCHAR(30) NOT NULL,
    CONTENT TEXT NOT NULL,
    DATE DATETIME NOT NULL DEFAULT NOW(),
    HIT INT NOT NULL DEFAULT 0
);
SELECT * FROM BOARD;
INSERT INTO BOARD(WRITER, TITLE, CONTENT) VALUES(1, 2, 3);
UPDATE BOARD SET DATE = NOW() WHERE NUM = 1;

SELECT WRITER, NUM FROM BOARD ORDER BY NUM DESC;
SELECT NUM, WRITER, TITLE, CONTENT, DATE_FORMAT(NOW(), '%y.%m.%d') 'DATE', HIT FROM BOARD ORDER BY NUM DESC


