SET SERVEROUTPUT ON;

create or replace trigger Trig_Enrolled
after insert on enrolled
begin
	dbms_output.put_line('A new Row is Inserted');
end;
/