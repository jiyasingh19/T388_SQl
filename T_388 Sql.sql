Create database T388;
use T388;
Show databases;
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL); 
Select * from Employee;
insert into Employee values
(1000,"Jiya jitendra Singh","IT",50000,"Female",21),
(1001,"Sakshi Buddeshwar Jadhav","IT",55000,"Female",24),
(1002,"Sahil Yakub Tamboli","Sales",23000,"Male",22);
Delete from Employee; -- Deletes the Content of the table
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
Delete from Employee Where Gender="Male"; -- in this 
Delete from Employee Where age > 25;
Alter table Employee Add Location varchar (10); -- use to update or make changes/Add in the table
Alter table Employee Add Bonus float after salary; -- in sql before commande is not describe so we only use first,last,after 
Alter table Employee Add Title VArchar (10) First; 
Desc Employee; -- use to describe the table eg-Varchar,char of the title
Alter table employee Modify Fullname varchar(35); -- use to modify the table
Alter table Employee change column location Address varchar(35); -- use to change the Column of the table
-- to change the recode of the column 
Update Employee Set Address="Thane"; -- to update the record SET is compulsary to use 
Update Employee Set Address ="Dombivli" WHERE department ="IT"; -- Also can include Clauses
Update Employee Set Title = "MRS" Where Gender ="Female";
Update Employee Set Title = "MR" Where Gender ="Male";
Update Employee Set Bonus = Salary*0.5;
Truncate table Employee; -- use to delet the table but keeps the column name  
Drop Table Employee; -- use to delet the entire table 
Select * from employee;