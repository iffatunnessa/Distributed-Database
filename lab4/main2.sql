set serveroutput on;

declare
	a number;
	b number;
	c number;
	d number;
	y number;

begin
	a:= &enter_value;
	b:= &enter_value;
	c:= &enter_Value;
	d:= &enter_value;

	y:= findmax(a,b,c,d);
	printp(y);
	
end;
/