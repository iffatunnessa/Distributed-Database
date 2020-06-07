create or replace procedure findprice(date1 Sales.Sale_Date%type)
	is
p Medicine.price%type;
quan Sales.quantity%type;
s number := 0;
cursor mul is
select price,quantity from Medicine M, Sales S  where M.M_ID = S.M_ID and sale_date = date1;   	
	
begin
	open mul;
	loop
		fetch mul into p,quan;
		exit when mul%notfound;
		s := s + p*quan;
		end loop;	
	close mul;
	dbms_output.put_line('Total expence in day,'||date1 ||':'||'	'||s);
end findprice;
/
 