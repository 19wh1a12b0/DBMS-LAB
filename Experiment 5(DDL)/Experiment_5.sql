CREATE SCHEMA 19WH1A12B0;
USE 19WH1A12B0;
CREATE TABLE passenger(pid INT, name VARCHAR(50) ,age INT,gender CHAR,address VARCHAR(20));
INSERT INTO passenger VALUES(5686, 'Shubham', 21, 'M', 'Hyd');
INSERT INTO passenger VALUES(5792, 'Surya', 32, 'M', 'Hyd');
INSERT INTO passenger VALUES(5667, 'Anushka', 23, 'F', 'Pune');
INSERT INTO passenger VALUES(5089, 'Rajesh', 36, 'M', 'Vizag');
SELECT * FROM passenger;

CREATE TABLE bus(bus_no VARCHAR(20), route VARCHAR(20), bcolor VARCHAR(20));
INSERT INTO bus VALUES('TS321', 'Hyd', 'blue');
INSERT INTO bus VALUES('TS322', 'Hyd', 'red');
INSERT INTO bus VALUES('TS323', 'Pune', 'red');
INSERT INTO bus VALUES('TS324', 'Vizag', 'blue');
SELECT * FROM bus;

DELETE FROM bus b WHERE b.route='Vizag';
SELECT * FROM bus;

UPDATE bus SET bus_no = 'TS320' WHERE bus_no = 'TS321';
SELECT * FROM bus;

CREATE TABLE ticket(tic_num int, from_ VARCHAR(20), destiny VARCHAR(20),bid int);
INSERT INTO ticket VALUES(1,'hyd','pune',1);
INSERT INTO ticket VALUES(2,'pune','chennai',3);
INSERT INTO ticket VALUES(3,'hyd','vizag',2);
select * FROM ticket;
