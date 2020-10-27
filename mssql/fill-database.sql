USE EmployeeDB;
GO
INSERT INTO EmployeeDetails (EmpId, EmpName, Email, Department) VALUES
(1, "John Doe", "johnDoe@test.com", "Development")
GO 100
INSERT INTO EmployeeDetails (EmpId, EmpName, Email, Department) VALUES
(1, "Lisa Ray", "lisaRay@testcompany.com", "Sales")
GO 50


USE UserDB;
GO
INSERT INTO UserDetails (Username, Passwd, UserRole) VALUES
("Akash Sharma", "akash_1234$", "Admin")
GO 20
INSERT INTO UserDetails (Username, Passwd, UserRole) VALUES
("Robin Singh", "robbie@4321@", "User")
GO 50


USE PassengerDB;
GO
INSERT INTO PassengerDetails (PassengerName, Age, Passport, UserImage) VALUES
("Kathryn Bosche", 35, "N8143567", "fdslfjlkdsjfdsjfdsjf12343543645765865938fjdsjfjdsflkjdsf1223345566djfdsjfdsjfsj33")
GO 100
INSERT INTO PassengerDetails (PassengerName, Age, Passport, UserImage) VALUES
("Milind Gaurav", 42, "N8143137", "fdslfjlkdsdsfdff12343543645765865938f43545222fdfddskjdsf1223345566djfdsjfdsjfsj33")
GO 100