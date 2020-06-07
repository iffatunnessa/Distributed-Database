create or replace procedure Greetings(pname in varchar2, msg out VARCHAR2)
       is
	   
begin

dbms_output.put_line('Welcome ' || pname);
msg := 'Procedure Greetings executed successfully';

end Greetings;
/