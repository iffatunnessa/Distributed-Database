SET SERVEROUTPUT ON;

create or replace trigger Trig_Course
after insert on course
begin
	dbms_output.put_line('A new Row is Inserted');
end;
/