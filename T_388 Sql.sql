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
-- Constraints NOT NULL,UNIQUE,PRIMARY KEY,FOREGIN KEY,CHECK,DEFAULT
CREATE TABLE Kisan_Info (
ID int unique not null, -- if we have use unique and not null together it will take as primary key also we can use unique and not 
                         -- null as many time we want but only First enter will be consider as primary key because primary key cannot be used 2 time in single table 
name varchar(55),
Email_id varchar (44) default "Sample@gmail.com", -- Default onstraint mai we cant enter values manually
Age int check (age>=18));
DESC Kisan_Info;
INSERT INTO Kisan_Info Values (1,"Sakshi",default,24),(2,"Jiya",default,22); 
INSERT INTO Kisan_Info Values (3,"Sakshi",default,15);
delete from Kisan_Info where ID=1;
Select * from Kisan_Info;
alter table Kisan_Info modify age int check (age>=20); 
INSERT INTO Kisan_Info Values (4,"Rubi",default,19);
INSERT INTO Kisan_Info (ID,name,Age) Values (5,"shruti",50);

CREATE TABLE Kisan_Details (
Main_id int unique not null,
ID int Primary key,  
name varchar(55),
Email_id varchar (44) default "Sample@gmail.com", 
Age int check (age>=18));
DESC Kisan_Details;
show create table Kisan_Info;
Select distinct Department from employee; -- whenever we want to know unique value of any column we can use this 
select * from employee where department = "IT" or department = "Finance";
select * from employee where department in ("IT","Finance"); -- another way of using where clauses
select * from employee order by Fullname; -- use to sort the data by alphabetical or by age etc.
select * from employee order by age; -- here if you havent mention asc desc it will by default take asc(we can type if want to)
select * from employee order by age desc; -- here we have sort it by desc where we have to mention desc to see the order
select * from employee where gender= "Female" order by department; -- we can use two clauses to sort thhe data 
select * from employee limit 2; -- limit is to get top number of rows 
select department,count(EmployeeId) from employee group by department; -- whenever we use groupby clause we have to mention the column name after select whatever is mentioned after group by
select department,sum(Salary) from employee group by department; 
select gender,count(EmployeeId) from employee group by gender;
select department,avg(Salary) from employee group by department;
select department,avg(Salary) as AVG_SALARY,sum(Salary) as TOTAL_SALARY from employee group by department; -- we have sorted the column name along with group by
-- count is used anywere whether it is numberical or categorical function eg.
select department,count(Salary) from employee group by department; -- numberical 
select department,count(Gender) from employee group by department; -- categorical
-- having clause is use to filter group by clause also we can only use agregate function in having clause 
select department,count(*) from employee where gender = "male" group by department having sum(Salary) > 150000; 

CREATE TABLE Projects (
    ProjectId INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(200) NOT NULL,
    EmployeeId INT,
    StartDate DATETIME,
    EndDate DATETIME
);
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from
scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company',
1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007,
NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop
application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business
website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to
new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004,
NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001,
NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop
application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my
business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select *,datediff(enddate,startdate) as Duration from Projects;
select now();
select *from Projects where datediff(enddate,startdate) = 45;
ALter table Projects add duration int;
update Projects set duration = datediff(enddate,startdate);
Select duration,count(ProjectName) from Projects group by duration;
Select duration,count(ProjectName) from Projects group by duration having count(ProjectName)>=2;
Select duration,count(ProjectName) from Projects group by duration having count(ProjectName)>=2 limit 2;
Select duration,count(ProjectName) from Projects 
where duration >= 20 -- this is sequence ogf using clauses W G H O
group by duration 
having count(ProjectName)>=2 
order by duration desc 
limit 1;
select * from employee;
select * from employee limit 3;
select * from employee order by EmployeeID desc limit 3;
select * from employee limit 2,3; -- it will leave first 2 record and give next 3 record
select * from employee limit 3,5;
select distinct department from employee; -- use to find unique values without clauses
select distinct Gender from employee; 
select distinct age from employee; 
Select * from projects where employeeid is null; -- use to show null values
Select * from projects where employeeid is not null; -- use to show all values without null
-- Auto increment
update projects set employeeid = 1003 where projectid = 6; -- use to insert the values in column 
-- IN BETWEEN LIKE
select * from employee where age between 25 and 28;
select * from employee where employeeId between 1003 and 1007; -- usen to fin values in range
select * from employee where employeeId in (1003,1005,1007); -- when required specific values but not in range
select * from employee where age in (23,28) and department = "IT" and employeeid in (1008,1001);
-- like operator IMP TOPIC INTERVIEW QUESTION 
select * from employee where Fullname like "M%";  -- names starting with tha character use M%
select * from employee where Fullname like "%M%"; -- having M anywhere in the name 
select * from employee where Fullname like "%M"; -- names ending with the letter M use %M
select * from employee where Fullname like "_a%"; -- name having second character 
select * from employee where Fullname like "%a_"; -- names having second last character 
select * from simple;
select * from simple where fullname like "a%" ;
select * from simple where fullname like "_U%";
select * from Simple where Fullname like "a_%"; -- name start with a but atleast has 1 character 
select * from Simple where Fullname like "A%T"; -- name start with a and ends with table 
-- built in function of SQL
-- sgring math date aggregate 
-- aggregate function (AVG Count MIN MAX SUM)
select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select count(*) from employee;
SELECT count(*) AS Total_EMp, avg(salary) as Average, sum(salary) as Total_Salary from employee;
-- Math Function 
-- absolute function 
select abs (-35); -- return as unsigned number which means it will return only positive values
select (6*(-7));
select abs(datediff(startdate,enddate)) as duration from projects;
-- modulus (mod )
select mod(12,7); -- return the reminder value is called mod value
select ceil(33.8);
select floor (33.8);
-- truncate of math function 
 select truncate(123456789.987456321,4); -- use to get the value after the decimal whatever we want 
 select truncate(123456789.987456321,0); -- shows the number before trhe decimal
 select truncate(123456789.987456321,-1); -- remove the last number before the decimal and shows zero insged of that last number 
-- exponent function
select exp(2); -- use to find the exponent value that is e^2
select exp(5);
-- power fuction
select power(3,2); -- use to find the square root of the first numver enter in the bracket i.e 3*3 as it is given 2 in the second position it will multiple the fisrt number two 
select power(4,4);
-- square root function 
select sqrt(244); -- use  to find the square root number 
select sqrt(169);
select *,sqrt(salary)from employee; -- query to find anything from the table 
-- string function (CONCAT,LOWER,UPPER,REPLACE,REVERSE,LENGHT,SUBSTRING,LTRIM,RTRIM,TRIM)
-- CONCAT FUNCTION
select concat("good"," ","Morning"); -- use to jooin twoo string 
select concat(fullname,"-"," ",department) as updatedName from employee; 
alter table employee add email varchar(50);
update employee set email=concat(fullname,"@itvedant");
select * from employee;
-- lower function 
select lower(fullname) as LOWERNAME from employee; -- use to get lower case character in the table 
-- upper function 
select upper(fullname) as UPPERNAME from employee; -- use  tp get upper case character in the table
-- replace() = replace(text, texttoreplace, replacingtext), replaces text --
select replace("Hello Everyone Good Morning","Morning","Night") as Replaced; -- used to replaced the text from the table
select *, replace(fullname, "Mohanty", "Patil") from employee;
-- reverse function
select reverse(fullname) from employee; -- use to reverse the character in the column 
-- lenght function
select length(fullname)from employee; -- use to count the length odf the character incldin space
-- substring(string,start,end) 
select substring("Maharashtra",3,5); -- use to count the the string from 3rd character till 5th character
-- trim ltrim rtim 
select *, length(fullname), ltrim(fullname) as lefttrim, length(ltrim(fullname)) as lefttrimlen from trim; -- use to trim the unwanted space from left of the characters
select *, length(fullname), rtrim(fullname) as Refttrim, length(Rtrim(fullname)) as Refttrimlen from trim; -- use to trim the unwanted space from right of the characters
select *, length(fullname), trim(fullname) as All_trim, length(trim(fullname)) as All_Trim_Length from trim; -- use to trim the unwanted space from both side of the characters
select *, length(fullname), ltrim(fullname) as lefttrim, length(ltrim(fullname)) as lefttrimlen,rtrim(fullname) as Refttrim, length(Rtrim(fullname)) as Refttrimlen from trim;
-- inserted two query in single line to sort the table
-- single row subquery ** do not use orderby in inner query** ** inner querry executed gives only one value













-- multi row sub query (inner querry when executed gives more than two values) 
select age from employee where employeeId in (1002,1003); 
select * from employee where age in(select age from employee where employeeid in (1002,1003)); -- use to get info of all employee whoes employeeid is 1002,1003
-- Any subquerry
select * from employee where salary>any(select Salary from employee where EmployeeId in ("1001","1002","1003")); -- any uses greater than minimum and less then maximum also it uses "or" logic
select * from employee where salary<any(select Salary from employee where EmployeeId in ("1001","1002","1003"));
select * from employee where salary>=any(select Salary from employee where EmployeeId in ("1001","1002","1003"));
-- all subquerry
select * from employee where salary>All(select Salary from employee where EmployeeId between 1001 and 1003); -- All uses greater than maximum and less than minimum also it usses "and" logic 
select * from employee where salary<All(select Salary from employee where EmployeeId between 1001 and 1003);
-- joins subquerry







