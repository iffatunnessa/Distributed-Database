set serveroutput on
declare
	theId money.id%TYPE;
	theTaka money.taka%TYPE;
	
	cursor money_cur is
	select id,taka from money; 
begin
	open money_cur;

		for i in 1..3 loop
			fetch money_cur into theId,theTaka;
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(theId)||' '||TO_CHAR(theTaka));
		end loop;

	close money_cur;
end;
/