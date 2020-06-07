create or replace procedure printp(n in number)
       is
	   
begin
	dbms_output.put_line(n);

end printp;
/