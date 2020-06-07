create or replace package serverPackage as 


	function funcUpdate(choice in number, x in number,eid in employee.E_id%TYPE)
	return varchar2;
	
	procedure IncreasingSalary;
	
end serverPackage;
/