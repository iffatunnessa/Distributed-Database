SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE

X number:= &Table_No;
Y number:= &Attr_Val;


Begin

  if(X=1)Then
 
  Search_Student(Y);
  
  elsif(X=2)Then
  Search_Course(Y);
  
  elsif(X=3)Then
  Search_Faculty(Y);
  
  else  DBMS_OUTPUT.PUT_LINE('Invalid Input');
  
end if;
 
end;
/
