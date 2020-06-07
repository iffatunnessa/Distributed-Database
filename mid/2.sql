set serveroutput on;

declare
	x records.sid%type;
	num number :=0;
begin	
	
		x:=&enter_value;
		avgcost(x);
		num := num+1;
	
end;
/