set serveroutput on;

Declare 
      mname varchar2(50) := &mname;
      
     
     result7 varchar2(50) ;
	
begin 

	result7 := searchMedicine(mname);

	dbms_output.put_line(result7);

	
end; 
/