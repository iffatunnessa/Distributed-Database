declare
	theTaka number := 180;
	theInc number := 10;
begin
	theTaka := theTaka + theInc;

	case theTaka
	when 170
		then
		insert into money values(7,'new1',theTaka+10);

	when 180
		then
		insert into money values(8,'new2',theTaka+30);

	else
		insert into money values(9,'new3',theTaka);

	end case;

	commit;

end;
/
