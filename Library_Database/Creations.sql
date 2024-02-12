create table PUBLISHER (
	Name varchar(30) Primary Key,
	Phone int,
	Address varchar(20)
);

create table BOOK (
	Book_id	 int  Primary Key,
	Title varchar(20),
	Pub_year varchar(20),
	Pub_name varchar(20),
	foreign key(Pub_name) references PUBLISHER(Name) on delete cascade
	);
	
	
create table BOOK_AUTHORS(
	Author_name varchar(20),
	Book_id int,
	Foreign key(Book_id)references BOOK(Book_id) on delete cascade,
	Primary Key(Book_id,Author_name)
	);

create table LIBRARY_BRANCH(
        Branch_id int primary key,
        Branch_name varchar(60),
        Address varchar(60));
		

create table BOOK_COPIES(
	no_of_copies int,
	Book_id  int,
	Branch_id int,
	Foreign key(Book_id) references BOOK (Book_id) on delete cascade,
	Foreign key(Branch_id)references LIBRARY_BRANCH(Branch_id) on delete cascade,
	Primary key(Book_id, Branch_id)
	);
	


create table CARD(
	card_no int Primary key
	);
		
create table BOOK_LENDING(
	Book_id int,
	Branch_id int,
	card_no int,
	Date_out date,
	Due_date date,
	Foreign key(Book_id) references BOOK(Book_id) on delete cascade,
	Foreign key(Branch_id) references LIBRARY_BRANCH(Branch_id) on delete cascade,
	Foreign key(card_no) references CARD(card_no) on delete cascade,
	Primary key(Book_id,Branch_id,Card_no)
	);