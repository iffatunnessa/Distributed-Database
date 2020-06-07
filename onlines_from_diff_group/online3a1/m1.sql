set serveroutput on;

declare 
	a number(4); 
	n number;
	msg varchar2(50);

begin
	a:=&enter_value;
	n:=findleapyear(a);
	printleap(n,msg);
	dbms_output.put_line(msg);

end;
/