create table Salesman(
	S_id int Primary key,
	Sname varchar(60),
	City varchar(60),
	Commision int
	);
	
create table Customer(
	C_id int Primary key,
	Cname varchar(60),
	City varchar(60),
	Grade int,
	S_id int,
	Foreign key(S_id) references Salesman(S_id) on delete set null
	);
	
create table Orders(
	Ord_no int Primary key,
	Purchase_amt int,
	Ord_date date,
	C_id int,
	Foreign key(C_id) references Customer(C_id) on delete cascade,
	S_id int,
	Foreign key(S_id) references Salesman(S_id) on delete cascade
	);
