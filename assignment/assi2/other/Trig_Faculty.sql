SET SERVEROUTPUT ON;

create or replace trigger Trig_Faculty
after insert on faculty
begin
	dbms_output.put_line('A new Row is Inserted');
end;
/