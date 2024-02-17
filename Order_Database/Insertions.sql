insert into Salesman(S_id,Sname,City,Commision) values
	(1000, 's1', 'Banglore', 100),
	(1001, 's2', 'Shivamogga', 200),
	(1002, 's3', 'Gulbargha', 300),
	(1003, 's4', 'Banglore', 400),
	(1004, 's5', 'Raichur', 500);
	

insert into Customer(C_id, Cname, City, Grade, S_id)values
	(500, 'c1', 'Kalena_Agrahara', 1, 1000),	
	(501, 'c2', 'Banglore', 2, 1000),
	(502, 'c3', 'Gottigere', 3, 1002),
	(503, 'c4', 'Hulimavu', 4, 1002),
	(504, 'c5', 'chennasandra', 5, 1004);

	
insert into Orders(Ord_no, Purchase_amt, Ord_date, C_id, S_id) values
	(2, 200, '2024-01-05', 500, 1000),
	(3, 300, '2024-01-06', 501, 1001),
	(4, 400, '2024-01-07', 502, 1002),
	(5, 500, '2024-02-05', 503, 1003),
	(6, 600, '2024-02-06', 504, 1004);