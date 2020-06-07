declare
	theTaka money.taka%TYPE := 180;
	theInc money.taka%TYPE := 10;
begin
	theTaka := theTaka + theInc;

	case
	when theTaka < 170
		then
		insert into money values(7,'new1',theTaka+10);

	when theTaka < 210 and theTaka >=170
		then
		insert into money values(8,'new2',theTaka+30);

	else
		insert into money values(9,'new3',theTaka);

	end case;

	commit;

end;
/
