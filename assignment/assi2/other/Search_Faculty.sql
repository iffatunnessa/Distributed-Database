create or replace procedure Search_Faculty(n number) 
       is
	   
	s number;
	v_fid FACULTY.Fid%TYPE;   
	v_fName FACULTY.fName%TYPE;


	
	cursor faculty_cur is
	select * from FACULTY where  fid=n;
begin

   
        open faculty_cur;
		loop
                   dbms_output.put_line();
	
		end loop;
     	CLOSE faculty_cur;
   else 
       insert into faculty values();
      
       
   end if;

end Search_Faculty;
/