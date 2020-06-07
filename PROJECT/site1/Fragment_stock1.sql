set serveroutput on;

declare
	id integer;
	mid interger;
	avai varchar2(5);
	rack varchar2(20);
	cursor cur is
	select S.Stk_ID,S.M_ID,Available,Rack_no from Stock S, manage M where S.Stk_ID = M.M_ID and Branch_No = 20;   	
	
begin
	open cur;
	loop
		fetch cur into id,mid,avai,rack;
		exit when cur%notfound;
		insert into Stock@site2ToServer_link values(id,mid,avai,rack);
		end loop;	
	close cur;
end;
/
