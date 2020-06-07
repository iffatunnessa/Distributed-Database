set serveroutput on;

declare
	num records.sid%type;
	x cakes.cid%type;
	y cakes.cname%type;
	z cakes.color%type;

	cursor s is 
	select cid, cname, color from cakes where cid in (select min(cost) from records where sid = num group by sid);
begin
	num := &enter_value;
	open s;
	fetch  cid, cname, color into x,y,z from cakes;
	dbms_output.put_line(x|| ' ' || y ||' ' || z);
	close s;
	
end;
/

