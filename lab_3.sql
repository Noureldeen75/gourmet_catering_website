/* 1 */
select Dname, Dnum, Fname, SSN
from Departments, Employee
where MGRSSN = SSN;


/* 2 */
select Dname, Pname
from Departments d, Project p
where d.Dnum = p.Dnum;


/* 3 */
select Dependent_name, Fname, Lname
from Dependent d
join Employee e
on d.ESSN = e.SSN;


/* 4 */
select d.Dependent_name, d.Sex, e.Fname, e.Sex
from Dependent d, Employee e
where d.ESSN = e.SSN and d.Sex = 'F' and e.Sex = 'F'
union
select d.Dependent_name, d.Sex, e.Fname, e.Sex
from Dependent d, Employee e
where d.ESSN = e.SSN and d.Sex = 'M' and e.Sex = 'M';


/* 5 */
select Pname, Pnumber, Plocation
from Project
where City in ('Alex', 'Cairo');


/* 6 */
select *
from Project
where Pname LIKE 'a%';


/* 7 */
select Fname, Lname, salary
from Employee
where Dno = 30 and Salary between 1000 and 2000;


/* 8 */
select e.Fname, e.Lname
from Employee e, Works_for w, Project p
where e.SSN = w.ESSN and w.Pno = p.Pnumber
and e.Dno = 10 and p.Pname = 'Al Rabwah' and w.Hours >= 10;


/* 9 */
select e.Fname , s.Fname
from Employee e
join Employee s
on e.SSN = s.Superssn;


/* 10 */
select p.Pname, sum(w.Hours) as Total_Hours
from Project p, Works_for w
where p.Pnumber = w.Pno
group by p.Pname;


/* 11 */
select e.Fname, e.Lname, p.Pname
from Employee e, Works_for w, Project p
where e.SSN = w.ESSN and w.Pno = p.Pnumber
order by p.Pname;


/* 12 */
select * from Departments
where Dnum = (select Dno from Employee where SSN = (select MIN(SSN) from Employee));


/* 13 */
select Dname, max(Salary) as Max_Salary, min(Salary) as Min_Salary, avg(Salary) as Avg_Salary
from Departments d, Employee e
where d.Dnum = e.Dno
group by Dname;


/* 14 */
select e.Lname
from Employee e, Departments d
where e.SSN = d.MGRSSN
and e.SSN not in (select ESSN from Dependent);


/* 15 */
select d.Dnum, d.Dname, count(e.SSN) as Num_Employees
from Departments d, Employee e
where d.Dnum = e.Dno
group by d.Dnum, d.Dname
having avg(e.Salary) < (select avg(Salary) from Employee);


/* 16 */
select e.Fname, e.Lname, d.Dname, p.Pname
from Employee e, Departments d, Works_for w, Project p
where e.Dno = d.Dnum and e.SSN = w.ESSN and w.Pno = p.Pnumber
order by d.Dname, e.Lname, e.Fname;


/* 17 */
select p.Pnumber, d.Dname, m.Lname, m.Addresss, m.BDATE
from Project p, Departments d, Employee m
where p.Dnum = d.Dnum and d.MGRSSN = m.SSN
and p.City = 'Cairo';
