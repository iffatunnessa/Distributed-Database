declare
	theID money.id%TYPE :=0;
	theName money.name%TYPE :='later';
	theTaka money.taka%TYPE :=100;
begin

	loop
	
		theID := theID + 1;
		insert into money values(theID,theName,theTaka);
		exit when theID > 10;
	
	end loop;


end;
/
