Use sys;
DROP TABLE IF EXISTS mealExperience;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS customer;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE customer(
CustomerID varchar(50),
Fname varchar(200),
Lname varchar(200),
phone varchar(15),
email varchar(50),
PRIMARY KEY(CustomerID)
)
;

CREATE TABLE location(
LocationID varchar(50),
locationName varchar(50),
category varchar(50),
manager varchar(50),
PRIMARY KEY(LocationID)
)
;

CREATE TABLE mealExperience(
ExperienceID varchar(50),
FeedbackScore varchar(50),
ItemOrdered varchar(50),
ArrivalTime TIMESTAMP(0),
DepartureTime TIMESTAMP(0),
GroupSize int NOT NULL,
LocationID varchar(50),
CustomerID varchar(50),
PRIMARY KEY(ExperienceID),
FOREIGN KEY (LocationID) REFERENCES location(LocationID),
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)
)
;

INSERT INTO customer(CustomerID, Fname, Lname, phone,email) 
VALUES('C009', 'John','Doe','404.968.5181','jdoe7@lsu.edu');

INSERT INTO location(LocationID,locationName,category,manager) 
VALUES('L003','City Slice','Pub','Greg Penn III');

INSERT INTO mealExperience
(ExperienceID,FeedbackScore,ItemOrdered,
ArrivalTime,DepartureTime,
GroupSize,LocationID,CustomerID) 

VALUES
('E009','Great','Pepperoni Pizza',
'2022-09-10 12:12:10','2022-09-10 12:28:41',
'1','3','1');

#SELECT * FROM mealExperience;

#select CURRENT_USER();

#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Tootie2001';
#FLUSH PRIVILEGES;

#SELECT user,authentication_string,plugin,host FROM mysql.user;


