declare
	theID money.id%TYPE :=0;
	theName money.name%TYPE :='later';
	theTaka money.taka%TYPE :=100;
begin

	loop
	
		theID := theID + 1;
		insert into money values(theID,theName,theTaka);
		if theID > 10
		then
			exit;
		end if;
	
	end loop;


end;
/
