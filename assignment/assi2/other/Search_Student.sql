create or replace procedure Search_Student(n1 in number) 
       is
	s number;
	v_snum STUDENT.snum %TYPE;
	v_sname STUDENT.sname %TYPE;

	
	cursor student_cur is
	select * from STUDENT where  snum=n;
begin

        then
        open student_cur;
		loop
                   dbms_output.put_line();
			
		end loop;
     	close student_cur;
   else 
       insert into student values();
     
       
   end if;

end Search_Student;
/