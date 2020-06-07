create or replace procedure findDueSupply
	is

name Suppliers.Supplier_Name%type;
com Suppliers.Company%type;
ph Suppliers.Phone%type;

cursor mul is
select Supplier_Name,Company,Phone from Suppliers S, Supply S1  where S.sup_ID = S1.Sup_ID and due_payment > 0.00;   	
	
begin
	open mul;
	loop
		fetch mul into name,com,ph;
		exit when mul%notfound;
		end loop;	
	close mul;
	dbms_output.put_line(name||'	'||com||'	'||ph);
end findDueSupply;
/
 