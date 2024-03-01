insert into Actor(Act_id, Act_name, Act_gender) values
    (101,'Sudeep','M'),
    (102,'Darshan','M'),
    (103,'Ganesh','M'),
    (104,'Yash','M'),
    (105,'Radhika','F');

select * from Actor;    


insert into Director(Dir_id, Dir_name, Dir_phone) values
    (201,'Prashanth','911111111'),
    (202,'Hitchcock','922222222'),
    (203,'Puneeth','933333333'),
    (204,'Steven spielberg','944444444'),
    (205,'Upendra','955555555');

select * from Director;


insert into Movies(Mov_id, Mov_title, Mov_year, Mov_lang, Dir_id) values
    (1001,'Vilan',2021,'English',201),
    (1002,'Katera',2022,'Kannada',202),
    (1003,'RRR',2015,'Telugu',201   ),
    (1004,'KGF',2011,'Kannada',204),
    (1005,'Jack',1998,'English',205);

select * from Movies;    


insert into Movie_cast(Act_id, Mov_id, Role) values
    (101,1002,'Hero'),
    (101,1001,'Hero'),
    (103,1003,'Heroine'),
    (103,1002,'Guest'),
    (104,1004,'Hero');

select * from Movie_cast;


insert into Rating(Mov_id, Rev_stars) values
    (1001,4),
    (1002,2),
    (1003,3),
    (1004,4),
    (1005,2);
  
  select * from Rating;  
  