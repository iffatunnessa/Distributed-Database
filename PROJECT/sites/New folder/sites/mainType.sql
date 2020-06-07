set serveroutput on;

Declare 
   type1 varchar2(20) := &type1;
     
     result varchar2(30) ;
	
begin 

	result := medicineTypeCheck(type1); 
	dbms_output.put_line(result);

	
end; 
/