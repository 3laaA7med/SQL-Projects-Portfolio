
use Company_SD

SELECT Dname , Dnum ,Fname ,SSN 
FROM Employee e,Departments d
WHERE e.SSN= d.MGRSSN      -------------------1 

SELECT Dname ,Pname 
FROM Departments d, Project p 
WHERE d.Dnum = p.Dnum      -------------------2 

SELECT Fname , d.* 
from Employee e, Dependent d 
WHERE e.SSN=d.ESSN         -------------------3 

SELECT  Pnumber,Pname, Plocation ,City
FROM Project 
WHERE City='Cairo' or City= 'Alex' -------------4

SELECT * FROM Project
WHERE Pname like 'a%'              -------------5

SELECT e.*  
from Employee e  
inner join Departments d
on  e.Dno =d.Dnum
and e.Dno =30  and Salary between 900 and 2000 ;   -----------6


select Fname ,Hours ,Pname ,Dno
from Employee e inner join Works_for wr 
on e.SSN= wr.ESSn
inner join Project p
on wr.pno=p.Pnumber    
and Dno =10 and Pname ='AL Rabwah' and Hours >=10   ----------7


select x.Fname ,y.Fname as manager_name 
from Employee x,Employee y 
where y.SSN = x.Superssn 
and  y.Fname = 'Kamel' and y.Lname = 'Mohamed' ---------------8



select p.Pname ,e.Fname ,e.Lname 
from Employee e inner join  Works_for wr
on e.SSN = wr.ESSn
inner join Project p 
on wr.Pno = P.Pnumber 
order by Pname                                ---------------9


select Pname ,Dname ,Fname,Plocation  ,Address,Bdate  
from Employee e inner join  Departments d
on e.Dno= d.Dnum
inner join   Project p 
on d.Dnum = p.Dnum 
and Plocation like '%Cairo%'                 ----------------10 


select y.*
from Employee x inner join  Employee y  
on x.Superssn = y.SSN                       --------------------11 


select e.*,d.*
from Employee e left outer join Dependent d
on e.SSN=d.ESSN                             --------------------12

select * from Employee

insert into Employee
values('alaa','ahmed',102672,1999-01-01,'elsamata','M',7000,112233,30) ---------13



insert into Employee (Fname,Lname,SSN,Dno)
values ('mohamed','ahmed',102660,30)              ---------------------14

update Employee 
set Salary=Salary +(Salary/100)*20                   -------------------15








































