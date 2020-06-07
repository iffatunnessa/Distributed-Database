create or replace package body serverPackage as 
	
	function funcUpdate(choice in number, x in number,eid in employee.E_id%TYPE)
	return varchar2
	is


msg varchar(50);

begin

if choice = 1
		then
		msg := 'Salary has been updated.' ;
		UPDATE employee
		SET salary = x
		where E_ID = eid;

	else
		msg := 'Phone No. has been updated.' ;
		UPDATE employee
		SET phone_no = x
		where E_ID = eid;

	end if;

	commit;

return msg;

end funcUpdate;

procedure IncreasingSalary is
	cursor cur is select first_name,salary,post from employee where salary >all(select avg(salary) from employee);
	 temp cur%ROWTYPE;  
begin

	open cur;
	DBMS_OUTPUT.put_line('First Name'||chr(9)||'Salary'||chr(9)||'Post');
	loop
       fetch cur into temp;
       exit when cur%NOTFOUND;

        DBMS_OUTPUT.put_line(temp.first_Name ||chr(9)||chr(9)||temp.salary||chr(9)||temp.post);
       end loop;
      close cur;
   end IncreasingSalary;
	
	
end serverPackage; 
/