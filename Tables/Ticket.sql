CREATE SCHEMA 19WH1A12B0;
USE 19WH1A12B0;
CREATE TABLE passenger(pid INT, name VARCHAR(50) ,age INT,gender CHAR,address VARCHAR(20));
INSERT INTO passenger VALUES(5686, 'Shubham', 21, 'M', 'Hyderabad');
INSERT INTO passenger VALUES(5792, 'Surya', 32, 'M', 'Hyderabad');
INSERT INTO passenger VALUES(5667, 'Anushka', 23, 'F', 'Banglore');
INSERT INTO passenger VALUES(5089, 'Rajesh', 36, 'M', 'Vishakapatnam');
SELECT * FROM passenger;

CREATE TABLE bus(bus_no VARCHAR(20), route VARCHAR(20), bcolor VARCHAR(20));
INSERT INTO bus VALUES('TS321', 'Hyderabad', 'blue');
INSERT INTO bus VALUES('TS322', 'Hyderabad', 'red');
INSERT INTO bus VALUES('TS323', 'Banglore', 'red');
INSERT INTO bus VALUES('TS324', 'Vishakapatnam', 'blue');
SELECT * FROM bus;

DELETE FROM bus b WHERE b.route='Vishakapatnam';
SELECT * FROM bus;

UPDATE bus SET bus_no = 'TS320' WHERE bus_no = 'TS321';
SELECT * FROM bus;

CREATE TABLE ticket(ticket_num int, from_place VARCHAR(20), destiny VARCHAR(20),bid int);
INSERT INTO ticket VALUES(1,'hyderabad','banglore',1);
INSERT INTO ticket VALUES(2,'banglore','chennai',3);
INSERT INTO ticket VALUES(3,'hyderabad','vizag',2);
select * FROM ticket;
