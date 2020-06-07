set serveroutput on;

declare
	supid integer;
	sname VARCHAR2(20);
	address VARCHAR2(50);
	company VARCHAR2(50);
	phn VARCHAR2(20);
	

	cursor cur is
	select * from Suppliers where Address ='Khilkhet,Dhaka';   	
	
begin
	open cur;
	loop
		fetch cur into supid,sname,address,company,phn;

		exit when cur%notfound;
		insert into Suppliers@site1ToServer_link values(supid,sname,address,company,phn);
		end loop;	
	close cur;
commit;
end;
/

