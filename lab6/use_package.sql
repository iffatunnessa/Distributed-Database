set serveroutput on
declare 
	par number := 10; 
	res number; 
	avgAge student.age%TYPE; 

begin 
	res := myPackage.isEven(par); 
	dbms_output.put_line(res); 
	myPackage.procAverageAge(1, 9, avgAge); 
	dbms_output.put_line(avgAge); 
	dbms_output.put_line(par); 
end; 
/