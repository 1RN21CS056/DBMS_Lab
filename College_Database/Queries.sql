
--List all the student details studying in fourth semester 'c' section.

select s.*, ss.sem, ss.sec
from student s, semsec ss, class c
where s.usn = c.usn and
ss.ssid = c.ssid and
ss.sem = 4 and ss.sec='c';


--compute the total number of male and female students in each semester and in each section.

select ss.sem, ss.sec, s.gender, count(s.gender) as count
from student s, semsec ss, class c
where s.usn = c.usn and
ss.ssid = c.ssid
group by ss.sem, ss.sec, s.gender
order by sem;


--create a view of Test1 marks of student usn ‘1BI15cs101’ in all courses.

create view student_test1_marks as
select Test1, subcode
from IAmarks
where usn = '1rn21cs001';

select * from student_test1_marks;


--calculate the FinalIA (average of best two test marks) and update the corresponding table for all students.

update IAmarks 
set finalIA=(test1+test2+test3-least(test1,test2,test3))/2
where usn is not NULL;


-- categorize students based on the following criterion:
-- If FinalIA = 17 to 20 then cAT = ‘Outstanding’
-- If FinalIA = 12 to 16 then cAT = ‘Average’
-- If FinalIA< 12 then cAT = ‘Weak’
-- Give these details only for 8th semester A, B, and c section students.

select m.usn,m.subcode,m.finalIA,
	case 
		when (finalIA<=20 and finalIA>=17) then 'Outstanding'
		when finalIA>=12 then 'Average'
		else 'Weak'
    end as CAT
from IAmarks m,class c,semsec s
where m.usn=c.usn and s.ssid=c.ssid and s.sem=8;