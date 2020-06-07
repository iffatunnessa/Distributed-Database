set serveroutput on;

Declare 
     range1 numeric := &range1;
     range2 numeric := &range2;
     result2 varchar2(30) ;
	
begin 

	result2 := medicinePriceCheck(range1,range2); 
	dbms_output.put_line(result2);

	
end; 
/