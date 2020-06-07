set serveroutput on;

declare 
	X number := &x;
	Y number := &y;
	n1 number;
	n2 number;
	n3 number;
begin
	IF (X=1) THEN 
		SearchInStudent(Y);
		n1:= find_SNUM(Y);
		update student set age = 30 where snum = Y;
	ELSIF X=2 THEN 
		SearchInCourse(Y);
		n2:= find_CNUM(Y);
		update Course set room = 'R200' where cnum = Y;
	ELSIF X=3 THEN 
		SearchInFaculty(Y);
		n3:= find_FID(Y);
		update faculty set fname = 'Karim' where fid = Y;
	ELSE dbms_output.put_line('Input of x should be 1,2 or 3');
	END IF;
end;
/