create database T388_FK_Pk;
use T388_FK_Pk;

CREATE TABLE Employee (
ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Age INT,
Salary DECIMAL(10, 2)
);

CREATE TABLE Project (
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(100) NOT NULL,
ID INT,
FOREIGN KEY (ID) REFERENCES Employee(ID)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO Employee (ID, Name, Age, Salary) VALUES
(101, 'Alice Smith', 29, 75000.00),
(102, 'Bob Jones', 34, 82000.50),
(103, 'Charlie Brown', 41, 95000.00),
(104, 'Diana Prince', 26, 68000.00);

INSERT INTO Project (ProjectID, ProjectName, ID) VALUES
(1, 'Website Redesign', 101),
(2, 'Cloud Migration', 101),
(3, 'Mobile App Launch', 102),
(4, 'Data Analytics Pipeline', 103);

select * from employee;
select * from project;

update employee set id=500 where id=101;
insert into employee values (666,"Kamlesh",34,300000);
insert into project values (6,"New Airpot",666);
delete from employee where id=666;

-- Normalization ** decompose of the data to reduce redundancy**
-- purpose **eliminate repeated data
-- 1NF **first normal form tackles the problem of atomicity
-- (atomicity means value in the table should not be future divided)
-- 2NF ** no partial dependency 

