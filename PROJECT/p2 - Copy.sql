create or replace view viewMedicine(eid,first,last,mail,phone,branch,post1) as
select select E_ID,First_Name,Last_Name,Email,Phone_No,Branch_No,Post from Employee;


create or replace procedure SearchInFaculty(Y in number)
	is

eid integer;
	fname Varchar2(20);
	lname Varchar2(20);
	mail VARCHAR2(20);
	phno VARCHAR2(20);
	branch integer;
	post1 VARCHAR2(20);
begin
	select * into eid,fname,lname,mail,phno,branch,post1 from Employee where = Y;
	dbms_output.put_line(eidfname||'  '||lname||'  '||mail||'  '||phno||'  '||branch||'  '||post1);
end SearchInFaculty;
/

