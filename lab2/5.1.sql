declare
	theTaka money.taka%TYPE := 180;
	theInc money.taka%TYPE := 10;
begin
	theTaka := theTaka + theInc;

	if theTaka < 170
		then
		insert into money values(7,'A',theTaka+10);

	elsif theTaka < 210 and theTaka >=170
		then
		insert into money values(7,'B',theTaka+30);

	else
		insert into money values(7,'C',theTaka);

	end if;

	commit;

end;
/
