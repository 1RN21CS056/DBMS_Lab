Create table Employee
(
    Ssn varchar(60) ,
    Name varchar(60),
    Address varchar(70),
    Sex varchar(60),
    Salary int,
    Superssn varchar(60),
    Dno int,        
    constraint pk1 Primary key(Ssn)
);

create table Department
(

    Dno int,
    Dname varchar(60),
    Mgrssn varchar(60),
    MgrStartDate date,
    constraint pk2 Primary key(Dno),
    constraint fk1 Foreign key(Mgrssn) references Employee(Ssn)
);

Alter table Employee add constraint fk2 Foreign key(Dno) references Department(Dno);

Alter table Employee add constraint fk3 Foreign key(Superssn) references Employee(Ssn);

create table Dlocation
(
    Dno int,
    Dloc varchar(60),
    constraint pk3 Primary key(Dno),
    constraint fk4 Foreign key(Dno) references Department(Dno)
);


create table Project
(
    Pno int,
    Pname varchar(60),
    Plocation varchar(60),  
    Dno int,
    constraint pk4 Primary key(Pno),
    constraint fk5 Foreign key(Dno) references Department(Dno)
);


create table Works_on
(
    Ssn varchar(60),
    Pno int,
    Hours int,
    constraint pk5 Primary key(Ssn, Pno),
    constraint fk6 Foreign key(Ssn) references Employee(Ssn),
    constraint fk7 Foreign key(Pno) references project(Pno)
);