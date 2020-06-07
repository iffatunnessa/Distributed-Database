set serveroutput on;

declare
	bran INTEGER;
	are VARCHAR2(30);
	cit VARCHAR2(50);
	postal INTEGER;
	phno VARCHAR2(20);
	cursor cur is
	select Branch_No,Area,City,Postal_Code,Phone_No FROM Store;   	
	
begin
	open cur;
	loop
		fetch cur into bran,are,cit,postal,phno;
		exit when cur%notfound;
		insert into Store@site2ToServer_link values(bran,are,cit,postal,phno);
		end loop;	
	close cur;
commit;
end;
/
