set serveroutput on;
create or replace trigger trigger1
after update on student
begin
	dbms_output.put_line('data updated in student');
end;
/

set serveroutput on;
create or replace trigger trigger2
after update on faculty
begin
	dbms_output.put_line('data updated in faculty');
end;
/

set serveroutput on;
create or replace trigger trigger3
after update on course
begin
	dbms_output.put_line('data updated in course');
end;
/