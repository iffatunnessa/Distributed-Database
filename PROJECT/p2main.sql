set serveroutput on;

declare
	date1 Sales.Sale_Date%type;

begin	
	date1 := &e;
	findprice(date1);
	
end;
/
