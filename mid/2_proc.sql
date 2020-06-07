create or replace procedure avgcost(n in records.sid%type)
	is
num records.cost%type;

begin
	select avg(cost) into num from records where sid = n group by sid;
	dbms_output.put_line(num);
end avgcost;
/