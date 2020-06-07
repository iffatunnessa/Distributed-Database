set serveroutput on;
set verify off;

declare
 A number:= &T_No;
 B number:= &A_Val;
	

begin


if(X=1)Then
  Search_Student(B);
  
  elsif(X=2)Then
  Search_Course(B);
  
  elsif(X=3)Then
  Search_Faculty(B);
  
  else  dbms_output.put_line('Invalid');
  
end if;
 
end;
/
