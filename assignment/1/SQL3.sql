SET SERVEROUTPUT ON;

DECLARE
	average number;
	
BEGIN
	select avg(age)
	into average 
	FROM STUDENT where snum in 
	(SELECT snum FROM Enrolled where cnum in 
	(SELECT cnum FROM Course where Fid in
	(SELECT cnum FROM Faculty where fName = 'Shariful Islam'  )));


DBMS_OUTPUT.PUT_LINE(average||' ages of students under Shariful Islam');

END;
/
