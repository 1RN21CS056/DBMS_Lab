--1. Count the customers with grades above Bangalore's average.--

select Grade, count(distinct C_id)
from Customer	
where Grade > (
	select avg(Grade)
	from Customer 
	where City='Banglore'
	)
	Group by Grade;

--2. Find the name and numbers of all salesmen who had more than one customer.--

select S_id, Sname
from Salesman S
where 1< (
	select count(*)
	from Customer C
	where C.S_id = S.S_id
	);

--3. List all salesmen and indicate those who have and don’t have customers in their cities (Use UNION operation.)--

select S.S_id, S.Sname, C.Cname
from Salesman S, Customer C
where S.City = C.City
union
select S.S_id,S.Sname, "No match"
from Salesman S 
where City NOT IN
( select City from Customer);

--4. Create a view that finds the salesman who has the customer with the highest order of a day.--

create view Highest_Order as
select O.ord_date, S.S_id, Sname
from Salesman S, Orders O
where S.S_id = O.S_id and 
purchase_amt = (Select max(purchase_amt)
		from Orders ord
		where O.ord_date = ord.or	d_date
		);

--5. Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also be deleted.--

Delete from Salesman where S_id = 1000;	