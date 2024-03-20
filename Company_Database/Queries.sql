-- 1. Make a list of all project numbers for projects that involve an employee whose last name is 'Scott', either as a worker or as a manager of the department that controls the project. --

select distinct P.Pno
from Project P, Department D, Employee E
where E.Dno=D.Dno
and D.Mgrssn = E.Ssn
and E.Name like '%Scott'
union
select distinct P1.Pno
from Project P1, Works_on W, Employee E1
where P1.Pno = W.Pno
and E1.Ssn = W.Ssn
and E1.Name like '%Scott';


--2. Show the resulting salaries if every employee working on the 'IoT' project is given 10 percent raise.--

select E.Name, 1.1*E.Salary as incr_sal
from Employee E, Works_on W, Project P
where E.Ssn = W.Ssn
AND W.Pno=P.Pno
AND P.Pname='IOT';

--3. Find the sum of the salaries of all employees of the ‘Accounts’ department, as well as the maximum salary, the minimum salary, and the average salary in this department --

select Sum(E.Salary), Max(E.Salary), Min(E.Salary), Avg(E.Salary)
from Employee E, Department D
where E.Dno = D.Dno
and D.Dname='Accounts';

--4. Retrieve the name of each employee who works on all the projects Controlled by department number 5 (use NOT EXISTS operator).--

select E.Name
From Employee E
where not exists
(select Pno from Project where Dno ='5' and Pno not in 
(select Pno from Works_on where E.Ssn = Ssn));

--5. For each department that has more than five employees, retrieve the department number and the  number of its employees who are making more than Rs. 6, 00,000.-- 

select D.Dno, COUNT(*)
from Department D, Employee E
where D.Dno=E.Dno
and E.Salary > 600000
and D.Dno IN (select E1.Dno
from Employee E1
group by E1.Dno
having COUNT(*)>5)
group by D.Dno;
