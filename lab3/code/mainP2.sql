set serveroutput on;

Declare 

	v_avgAge student.age%TYPE; 
	Y student.snum%TYPE := 10; 
	
begin 

	procAverageAge(3, Y, v_avgAge); 
	dbms_output.put_line(v_avgAge); 
	
end; 
/