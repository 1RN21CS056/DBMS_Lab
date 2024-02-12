--1. Retrieve details of all books in the library – id, title, name of publisher, authors, number of copies in each branch, etc.--

select B.Book_id, B.Title, B.Pub_name, A.Author_name, C.no_of_copies, L.Branch_id
from BOOK B, BOOK_AUTHORS A, BOOK_COPIES C, LIBRARY_BRANCH L
where B.Book_id = A.Book_id and 
      B.Book_id = C.Book_id and 
      L.Branch_id = C.Branch_id;	
			
			
--2. Get the particulars of borrowers who have borrowed more than 3 books, but from Jan 2017 to Jun 2017.--			
select Card_no
from BOOK_LENDING
where Date_out Between '2017-01-01' and '2017-06-01'
group by Card_no
Having count(*)>3;

--3. Delete a book in BOOK table. Update the contents of other tables to reflect this data manipulation operation.-- 
Delete from BOOK
where Book_id = 3;
select * from BOOK;
select * from BOOK_AUTHORS;

--4. Partition the BOOK table based on year of publication. Demonstrate its working with a simple query.--				
create view V_PUBLICATION as select Pub_year from BOOK;
select * from V_PUBLICATION;

--5. Create a view of all books and its number of copies that are currently available in the Library.--
create view v_Books as
select B.Book_id, B.Title, C.no_of_copies
from
BOOK B, BOOK_COPIES C, LIBRARY_BRANCH L
where B.Book_id = C.Book_id and 
      C.Branch_id = L.Branch_id;
      
select * from v_Books;     