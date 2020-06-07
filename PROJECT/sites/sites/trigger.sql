create or replace trigger medicine_log
after insert on medicine

begin
	dbms_output.put_line('data inserted');
end;
/

create or replace trigger medicine1_log
after update on medicine

begin
	dbms_output.put_line('data updated');
end;
/

