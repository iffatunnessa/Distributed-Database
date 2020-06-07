set serveroutput on; 

declare 
	par number := 11; 
	res number; 
	
begin 
	res := isEven(par); 
	if res = 1
	then
		dbms_output.put_line('EVEN');
	else
		dbms_output.put_line('Odd');
	end if;
	
end; 
/

select isEven(count(snum)) from student;