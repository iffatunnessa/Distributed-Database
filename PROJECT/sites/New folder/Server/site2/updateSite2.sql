set serveroutput on;

declare
	eid integer;
	ID integer;
	FirstName varchar2(20);
		   LastName varchar2(20);
		   Email1 varchar2(20);
		   PhoneNo varchar2(20);
		   BranchNo integer;
		   Post1 varchar2(20);
		   Sal varchar2(20);
		   db date;
		   addr varchar2(20);
	
	cursor cur is
	select E_ID from Employee@site2ToServer_link; 
  	
	cursor cur1 is
	select E_ID from Employee; 
begin
	ID := &id;
	FirstName:= &first_name;
		   LastName := &last_name;
		   Email1 := &email;
		   PhoneNo := &phone_no;
		   BranchNo := &branch_no;
		   Post1 := &post;
		   Sal := &salary;
		   db := &DOB;
		   addr := &address;
	open cur;
	loop
		fetch cur into eid;
		exit when cur%notfound;
		update Employee@site2ToServer_link
           set First_Name = FirstName,
		   Last_Name = LastName,
		   Email = Email1,
		   Phone_No = PhoneNo,
		   Branch_No = BranchNo,
		   Post = Post1
		where E_ID= ID;
		end loop;	
	close cur;
	
	open cur1;
	loop
		fetch cur1 into eid;
		exit when cur1%notfound;
		update Employee
           set First_Name = FirstName,
		   Last_Name = LastName,
		   salary = Sal,
		   DOB = db,
		   Email = Email1,
		   Phone_No = PhoneNo,
		   address = addr,
		   Branch_No = BranchNo,
		   Post = Post1
		where E_ID= ID;
		end loop;	
	close cur1;
commit;
end;
/

