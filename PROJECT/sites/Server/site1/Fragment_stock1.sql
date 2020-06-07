set serveroutput on;

declare
	id integer;
	mid integer;
	avai VARCHAR2(5);
	rack VARCHAR2(20);
	cursor cur is
	select S.Stk_ID,S.M_ID,Available,Rack_no from Stock S, manage M where S.Stk_ID = M.Stk_ID and Branch_No = 10;   	
	
begin
	open cur;
	loop
		fetch cur into id,mid,avai,rack;
		exit when cur%notfound;
		insert into Stock @site1ToServer_link values(id,mid,avai,rack);
		end loop;	
	close cur;
commit;
end;
/
