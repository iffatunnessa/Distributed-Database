set serveroutput on;

declare
	date1 Sales.Sale_Date%type;
	mid Medicine.M_ID%type;
	name Medicine.Medicine_name%type;
	quan Sales.quantity%type;
begin	
	date1 := &e;
	name := &f;
	quan := &u;
	mid := insertIntoSales(name);

	dbms_output.put_line(mid);
	insert into sales values(Sales_ID.nextval,mid,quan,date1);
end;
/


