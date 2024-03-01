create table Actor(
    Act_id int Primary key,
    Act_name varchar(60),
    Act_gender varchar(1)
    );

desc Actor;


create table Director(
    Dir_id int Primary key,
    Dir_name varchar(60),
    Dir_phone int
    );

desc Director;


create table Movies(
    Mov_id int Primary key,
    Mov_title varchar(60),
    Mov_year int,
    Mov_lang varchar(60),
    Dir_id int,
    Foreign key (Dir_id) references Director(Dir_id)
    );

desc Movies;


create table Movie_cast(
    Act_id int,
    Mov_id int,
    Role varchar(20),
    Primary key (Act_id, Mov_id),
    Foreign key (Act_id) references Actor(Act_id),
    Foreign key (Mov_id) references Movies(Mov_id)
    );

desc Movie_cast;


create table Rating(
    Mov_id int Primary key,
    Rev_stars varchar(25),
    Foreign key (Mov_id) references Movies(Mov_id)
    );

desc Rating;