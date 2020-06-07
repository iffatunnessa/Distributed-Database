set serveroutput on;

declare
	num records.sid%type;
	x records.cid%type;
	y cakes.cname%type;
	z cakes.color%type;

	cursor s is 
	select min(cost) from records where sid = num group by sid;
begin
	num := &enter_value;
	open s;
	fetch  cid into x from cakes;
	close s;
	
end;
/

