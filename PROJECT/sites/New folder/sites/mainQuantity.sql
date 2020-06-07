set serveroutput on;

Declare 
    q1 number := &q1;
     
     result3 varchar2(30) ;
	
begin 

	result3 := medicineSales(q1); 
	dbms_output.put_line(result3);
     

	
end; 
/