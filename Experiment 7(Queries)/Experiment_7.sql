CREATE SCHEMA 19WH1A12B0;
USE 19WH1A12B0;
CREATE TABLE Bus(bus_no VARCHAR(20),Sources VARCHAR(20),Destination VARCHAR(20));
INSERT INTO Bus VALUES('TS121','Hyd','Chennai');
INSERT INTO Bus VALUES('TS122','Pune',   'Mumbai');
INSERT INTO Bus VALUES('TS123','Ooty',  'Chennai');
INSERT INTO Bus VALUES('TS124','Vizag','Banglore');
SELECT * FROM Bus;

DELETE FROM Bus b WHERE b.Sources ='Hyd';
SELECT * FROM Bus;

UPDATE Bus SET Destination ='Tirupati' WHERE bus_no = 'TS121';
SELECT * FROM Bus;

CREATE TABLE Passengers(P_name VARCHAR(20),P_id INT,Gender VARCHAR(20),Age INT,P_destination VARCHAR(20));
INSERT INTO Passengers VALUES('Shila',123,'Female',22,'Bharagiri');
INSERT INTO Passengers VALUES('Raghu',456,'Male',40,'Banglore');
INSERT INTO Passengers VALUES('Geetha',789,'Female',20,'Ooty');
INSERT INTO Passengers VALUES('Ramesh',101,'Male',32,'chennai');

SELECT * FROM Passengers;

DELETE FROM Passengers P  WHERE P_name = 'Geetha';
SELECT * FROM Passengers;

UPDATE Passengers SET P_name ='Ramesh' WHERE P_id = '852';
SELECT * FROM Passengers;

CREATE TABLE Ticket(T_id int, Sources VARCHAR(20),  Destination VARCHAR(20),P_id int);
INSERT INTO Ticket VALUES(1,'Hyd','Banglore',123);
INSERT INTO Ticket VALUES(2,'Pune','Mumbai',456);
INSERT INTO Ticket VALUES(3,'Ooty','Chennai',789);
INSERT INTO Ticket VALUES(4,'Hyd','Vizag',101);

DELETE FROM Ticket T  WHERE Sources = 'Ooty';
SELECT * FROM Ticket;

UPDATE Ticket SET Destination  ='Kodaikanal' WHERE P_id = '789';
SELECT * FROM Ticket;

SELECT DISTINCT P.P_id FROM Passengers P ;

SELECT P.P_name FROM Passengers P WHERE P.Gender = 'male';

SELECT T.T_id,P.P_name FROM Ticket T,Passengers P WHERE P.P_id = T.P_id;

SELECT T.T_id FROM Ticket T ,Passengers P WHERE P.P_name LIKE 'R%h' AND P.P_id = T.T_id ;

SELECT P.P_name FROM Passengers P WHERE  P.Age >= 30 AND  P.Age <= 45;

SELECT P.P_name FROM Passengers P WHERE P.P_name LIKE 'A%';

SELECT P.P_name FROM Passengers P ORDER BY P_name ASC;
