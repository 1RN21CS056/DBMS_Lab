--List the titles of all movies directed by ‘Hitchcock’.

select Mov_title
from Movies
where Dir_id = (select Dir_id
from Director
where Dir_name='Hitchcock');


--Find the movie names where one or more actors acted in two or more movies.

select Mov_title
from Movies M,Movie_cast MC
where M.Mov_id=MC.Mov_id AND Act_id IN (select Act_id
from Movie_cast group by Act_id
having COUNT(Act_id)>1)
group by Mov_title
having COUNT(*)>1;


--List all actors who acted in a movie before 2000 and also in a movie after 2015 (use JOIN operation).

select Act_name
from Actor A
JOIN Movie_cast C
ON A.Act_id=C.Act_id
JOIN Movies M
ON C.Mov_id=M.Mov_id
where M.Mov_year NOT BETWEEN 2000 AND 2015;


--Find the title of movies and number of stars for each movie that has at least one rating 
--and find the highest number of stars that movie received. Sort the result by
--movie title.

select Mov_title,MAX(Rev_stars)
from Movies
INNER JOIN Rating USING (Mov_id)
group by Mov_title
having MAX(Rev_stars)>0
ORDER BY Mov_title;


--Update rating of all movies directed by ‘Steven Spielberg’ to 5.

UPDATE Rating
SET Rev_stars=5
where Mov_id IN (select Mov_id from Movies
where Dir_id IN (select Dir_id
from Director
where Dir_name='Steven spielberg'));