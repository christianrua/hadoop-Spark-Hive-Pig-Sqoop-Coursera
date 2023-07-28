-- Creating a simple role
CREATE ROLE coursera_user WITH LOGIN PASSWORD 'Password1*' CREATEDB SUPERUSER;

CREATE DATABASE coursera_db
WITH
    OWNER = coursera_user
    ENCODING = 'UTF8';

\connect coursera_db;

CREATE TABLE IF NOT EXISTS salaries (gender varchar(32), age int, salary int, zipcode int, id int);

INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('F',66,41000,95103,1);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('M',40,76000,95102,2);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('F',58,95000,95103,3);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('F',68,60000,95105,4);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('M',85,14000,95102,5);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('M',14,0,95105,6);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('M',52,2000,94040,7);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('M',67,99000,94040,8);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('F',43,11000,94041,9);
INSERT INTO salaries (gender,age,salary,zipcode,id) VALUES ('F',37,65000,94040,10);