create or replace function insertIntoSales(name in Medicine.Medicine_name%type)
	return Medicine.M_ID%type
	is

mid Medicine.M_ID%type;
cursor cur is
select M_ID from Medicine where medicine_name = name;

begin
	open cur;
	loop
		fetch cur into mid;
		exit when cur%notfound;	
		end loop;
	close cur;

return mid;
end insertIntoSales;
/

set serveroutput on;

create or replace trigger ifnotfoundinMedicine
after insert on Sales
begin
	dbms_output.put_line('data inserted');

end;
/
