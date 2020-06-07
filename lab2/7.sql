declare
	theID money.id%TYPE :=0;
	theName money.name%TYPE :='later';
	theTaka money.taka%TYPE :=100;
	incTaka money.taka%TYPE;
begin
	loop
	theID := theID + 1;
	exit when theID > 15;
		case 
			when theID < 5
			then
			incTaka := theTaka + 10;
			insert into money values(theID,theName,incTaka);
			
			when theID < 10 and theID >=5
			then
			incTaka := theTaka + 2*10;
			insert into money values(theID,theName,incTaka);
			
			else
			insert into money values(theID,theName,theTaka);	
		end case;
	end loop;
end;
/
