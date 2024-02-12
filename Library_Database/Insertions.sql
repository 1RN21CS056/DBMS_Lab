insert into PUBLISHER(Name,Phone,Address)values
	('p1',912121212,'Banglore'),		
	('p2',921212121,'Hyderabad'),
	('p3',913131313,'chenai'),
	('p4',931313131,'Banglore'),
	('p5',914141414,'Banglore');
		
		
insert into BOOK(Book_id, Title, Pub_year, Pub_name) values
	(1, 'SQL' , 'SEP-2016' , 'p1'),
	(2, 'Excel' , 'JAN-2017' , 'p2'),
	(3, 'DBMS' , 'SEP-2015' , 'p3'),
	(4,  'c'  , 'JUN-2018' , 'p2'),
	(5, 'Python' , 'MAY-2017' , 'p4');


	
insert into BOOK_AUTHORS(Author_name, Book_id) values
	('leftin', 1),
	('Pramod', 2),
	('charan', 3),
	('Abhiram', 4),
	('Bharath', 5);

	
	
insert into LIBRARY_BRANCH(Branch_id, Branch_name, Address) values
	(100, 'HSR Layout' , 'Banglore'),
	(101, 'Kengeri' , 'Banglore'),
	(102, 'Banashankari' , 'Banglore'),
	(103, 'Manipal' , 'Manglore'),
	(104, 'Shankara Nagar' , 'udupi');

	
	
insert into BOOK_COPIES(no_of_copies, Book_id, Branch_id) values
	(10, 1, 100),
	(16, 1, 101),
	(20, 2, 102),
	(6, 2, 103),
	(4, 3, 104);


insert into CARD(Card_no) values
	(500),
	(501),
	(502),
	(503),
	(504);
			
	
insert into BOOK_LENDING(Book_id, Branch_id, Card_no, Date_out, Due_date) values
	(1, 100, 501, '2017-01-01', '2017-01-31'),
	(3, 104, 501, '2017-01-11', '2017-03-01'),
	(2, 103, 501, '2017-02-11', '2017-04-21'),
	(4, 101, 501, '2017-03-11', '2017-06-11'),
	(1, 101, 504, '2017-04-07', '2017-07-07');
							
			
			
