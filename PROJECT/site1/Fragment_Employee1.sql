set serveroutput on;

declare
	eid integer;
	fname Varchar2(20);
	lname Varchar2(20);
	mail VARCHAR2(20);
	phno VARCHAR2(20);
	branch integer;
	post1 VARCHAR2(20);

	cursor cur is
	select E_ID,First_Name,Last_Name,Email,Phone_No,Branch_No,Post from Employee;   	
	
begin
	open cur;
	loop
		fetch cur into eid,fname,lname,mail,phno,branch,post1;
		exit when cur%notfound;
		insert into Employee@site1ToServer_link values(eid,fname,lname,mail,phno,branch,post1);
		end loop;	
	close cur;
commit;
end;
/

