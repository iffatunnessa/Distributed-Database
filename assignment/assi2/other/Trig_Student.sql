SET SERVEROUTPUT ON;

create or replace trigger Trig_Student
after insert on student
begin
	dbms_output.put_line('A new Row is Inserted');
end;
/