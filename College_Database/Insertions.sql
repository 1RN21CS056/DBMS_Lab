
insert into student (usn, sname, address, phone, gender)values
	("1rn21cs056","s1","bangalore","0000000000","M"),
	("1rn21cs001","s2","Mysure","1111111111","F"),
	("1rn20cs002","s3","bangalore","2222222222","M"),
	("1rn20cs003","s4","Belagivi","3333333333","F"),
	("1rn20cs004","s5","Kolar","4444444444","M");
    
insert into semsec(ssid, sem, sec) values
	(1,4,'C'),
	(2,8,'A'),
	(3,8,'B'),
	(4,8,'C');
    
insert into class (usn, ssid)values
	("1rn21cs056",1),
	("1rn21cs001",1),
	("1rn20cs002",2),
	("1rn20cs003",3),
	("1rn20cs004",4);

insert into subject (subcode, title, sem, credits) values
	(1,"C++",4,4),
	(2,"java",4,4),
	(3,"DSA",8,4);

insert into IAmarks (usn, subcode, ssid, test1, test2, test3, finalIA) values
	("1rn21cs056",1,1,20,19,18,NULL),
	("1rn21cs056",2,1,20,20,19,NULL),
	("1rn21cs001",1,1,10,9,11,NULL),
	("1rn21cs001",2,1,11,5,14,NULL),
	("1rn20cs002",3,2,20,20,19,NULL),
	("1rn20cs003",3,3,15,14,16,NULL),
	("1rn20cs004",3,4,8,9,10,NULL);