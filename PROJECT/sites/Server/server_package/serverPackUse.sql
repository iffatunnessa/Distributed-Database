set serveroutput on
declare 
	x number;
	y number;
	z number;
	msg varchar2(100); 

begin 
	 
	 dbms_output.put_line('Function for updating salary or phone no. of an employee.'||chr(10));
	z := &employee_ID;
	x := &choice;
	
	y := &specified_field;
	msg := funcUpdate(x,y,z);
	dbms_output.put_line(msg);
	
	 dbms_output.put_line('Procedure for showing employee records of employees.'||chr(10));
	
	IncreasingSalary();
end; 
/