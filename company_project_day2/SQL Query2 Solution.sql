use Company_SD
select * from Employee; --1
SELECT Fname ,Lname ,Salary ,Dno FROM Employee;  --2
select Pname,Pnumber,Plocation ,Dnum  from Project;   --3
SELECT Fname +' '+Lname as 'Full Name',Salary+(Salary /100*10) as 'ANNUAL COMM'  from Employee ; ----4
SELECT Fname +' '+Lname as 'Full Name' , SSN FROM Employee WHERE Salary > 1000; ---5
SELECT Fname +' '+Lname as 'Full Name' , SSN FROM Employee WHERE Salary*12 > 10000; ---6		
SELECT Fname +' '+Lname as 'Full Name',Salary FROM Employee WHERE Sex ='F'; -----7
SELECT Dname ,Dnum FROM Departments WHERE MGRSSN=968574;---8
SELECT Pname , Pnumber ,Plocation FROM Project WHERE Dnum=10   ----9
/*
select * from Departments; 
select * from Project; 
select * from Employee; 
*/ 