CREATE DATABASE EmployeeDB;
GO
CREATE DATABASE UserDB;
GO
CREATE DATABASE PassengerDB;
GO

USE EmployeeDB;
GO
DROP TABLE IF EXISTS EmployeeDetails;
GO
CREATE TABLE EmployeeDetails
(EmpId int NOT NULL,
EmpName varchar(max) NOT NULL,
Email varchar(max) NULL,
Department varchar(max) NOT NULL);
GO

USE UserDB;
GO
DROP TABLE IF EXISTS UserDetails;
GO
CREATE TABLE UserDetails
(Username varchar(max) NOT NULL,
Passwd varchar(max) NOT NULL,
UserRole varchar(200) NOT NULL);
GO

USE PassengerDB
GO
DROP TABLE IF EXISTS PassengerDetails;
GO
CREATE TABLE PassengerDetails
(PassengerName varchar(max) NOT NULL,
Age int NOT NULL,
Passport varchar(200) NOT NULL,
UserImage varchar(max) NOT NULL);
GO