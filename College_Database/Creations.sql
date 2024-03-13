
create table student
(
    usn varchar(10) Primary key,
    sname varchar(25),
    address varchar(25),
    phone varchar(20),
    gender varchar(1)
);

desc student;


create table semsec
(
    ssid varchar(5) Primary key,
    sem int,
    sec varchar(1)
);

desc semsec;



create table class
(
    usn varchar(10) Primary key,
    ssid varchar(5),
    Foreign key(usn) references student(usn),
    Foreign key(ssid) references semsec(ssid)
);

desc class;


create table subject
(
    subcode varchar(8) Primary key,
    title varchar(20),
    sem int,
    credits int
);

desc subject;



create table IAmarks
(       
    usn varchar(10),
    subcode varchar(8),
    ssid varchar(5),
    test1 int,
    test2 int,
    test3 int,
    finalIA int,
    Primary key(subcode,usn,ssid),
    Foreign key(usn) references student(usn),
    Foreign key(subcode) references subject(subcode),
    Foreign key(ssid) references semsec(ssid)
);

desc IAmarks;