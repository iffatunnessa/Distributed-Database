SET SERVEROUTPUT ON;

DECLARE
	total number;
	
BEGIN
	select count(*) into total
from student where snum in
(select distinct snum from student where snum 
in(select snum from Enrolled where cnum
in(select cnum from Course where room = 'R126'))
intersect
select distinct snum from student where snum 
in(select snum from Enrolled where cnum
in(select cnum from Course where room = 'R127'))
UNION
select distinct snum from student where snum 
in(select snum from Enrolled where cnum
in(select cnum from Course where room = 'R128'))
intersect
select distinct snum from student where snum 
in(select snum from Enrolled where cnum
in(select cnum from Course where room = 'R127')))
;

DBMS_OUTPUT.PUT_LINE(total||' number of students who got exactly two different room');

END;
/




