insert into Employee (Ssn, Name, Address, Sex, Salary) VALUES
 ('RN01', 'Avinash Scott', 'Bangalore', 'M', 450000),
 ('RN02', 'Dhanush M', 'Bangalore', 'M', 500000),
 ('RN03', 'Dilip m', 'Bangalore', 'M', 700000),
 ('RN04', 'Martin Scott', 'Mysore', 'M', 500000),
 ('RN05', 'charan GS', 'Mangalore', 'M', 650000),
 ('RN06', 'Girish J', 'Mysore', 'M', 450000),
 ('RN07', 'Harsh RG', 'Bangalore', 'M', 800000),
 ('RN08', 'Alan Jimcy', 'Mangalore', 'M', 350000),
 ('RN09', 'Bharath Sindhe', 'Mangalore', 'M', 300000),
 ('RN10', 'Virat Kohli', 'Mysore', 'F', 600000),
 ('RN11', 'Rohit Sharma', 'Bangalore', 'F', 500000);



insert into Department (Dno, Dname, MgrSsn, MgrStartDate) values
    (1, 'Finance', 'RN09', '2004-08-31'),
    (2, 'Sales', 'RN11', '2004-05-1'),    
    (3, 'Marketing', 'RN01', '2004-06-23'),    
    (4, 'Research', 'RN10', '2004-07-13'),    
    (5, 'Accounts', 'RN06', '2004-02-20');  


update Employee set
Superssn=NULL, Dno='3'
where Ssn='RN01';

update Employee set
Superssn='RN03', Dno='5'
where Ssn='RN02';

update Employee set
Superssn='RN04', Dno='5'
where Ssn='RN03';

update Employee set
Superssn='RN06', Dno='5'
where Ssn='RN04';

update Employee set
Dno='5', Superssn='RN06'
where Ssn='RN05';

update Employee set
Dno='5', Superssn='RN07'
where Ssn='RN06';

update Employee set
Dno='5', Superssn=NULL
where Ssn='RN07';

update Employee set
Dno='1', Superssn='RN09'
where Ssn='RN08';

update Employee set
Dno='1', Superssn=NULL
where Ssn='RN09';

update Employee set
Dno='4', Superssn=NULL
where Ssn='RN10';

update Employee set
Dno='2', Superssn=NULL
where Ssn='RN11';


insert into Dlocation ( Dno, Dloc) values
    (1, 'Banglore'),
    (2, 'Banglore'),
    (3, 'Banglore'),
    (4, 'Mysore'),
    (5, 'Mysore');

insert into Project (Pno, Pname, Plocation, Dno) values 
    (100, 'IoT', 'Banglore', 5),              
    (101, 'Cloud', 'Banglore', 5),       
    (102, 'Bigdata', 'Banglore', 5),       
    (103, 'Sensors', 'Banglore', 3),       
    (104, 'Bank Management', 'Banglore', 1),       
    (105, 'Salary Management', 'Bangalore', 1),       
    (106, 'Openstack', 'Banglore', 4),       
    (107, 'Smart City', 'Banglore', 2);



INSERT INTO Works_on (Ssn, Pno, Hours) VALUES 
    ('RN02', 100, 4),
    ('RN02', 101, 6),
    ('RN02', 102, 8),
    ('RN03', 100, 10),
    ('RN05', 100, 3),
    ('RN06', 101, 4),
    ('RN07', 102, 5),
    ('RN04', 102, 6),
    ('RN01', 103, 7),
    ('RN08', 104, 5),
    ('RN09', 105, 6),
    ('RN10', 106, 4),
    ('RN11', 107, 10);




  
