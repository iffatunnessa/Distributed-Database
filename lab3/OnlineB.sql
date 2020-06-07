set serveroutput on;

declare
	x number;
	id faculty.fid%TYPE;
	name faculty.fname%TYPE;
	dept faculty.deptid%TYPE;

	idc course.cnum%TYPE;
	namec course.cname%TYPE;
	meet course.meets_at%TYPE;
	roomn course.room%TYPE;
	idf course.fid%TYPE;

	cursor f_cur is
	select fid,fname,deptid from faculty;

	cursor c_cur is
	select * from course;

begin
x := &enter_value;
IF MOD(x,2)=0 THEN
	open f_cur;

	loop
		fetch f_cur into id,name,dept;
		exit when f_cur%notfound;
		DBMS_OUTPUT.PUT_LINE(id||' '||name||' '||dept);
		end loop;
	
	close f_cur;
ELSE
	open c_cur;

	loop
		fetch c_cur into idc,namec,meet,roomn,idf;
		exit when c_cur%notfound;
		DBMS_OUTPUT.PUT_LINE(idc||' '||namec||' '||meet||' '||roomn||' '||idf);
		end loop;
	
	close c_cur;
	
END IF;

end;
/