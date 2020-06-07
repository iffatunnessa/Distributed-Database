create or replace function leapyear(y in number)
	return number is

begin 
	if reminder(y,4) = 0 then
		return 1;
	else 
		return 0;
	end if;
end leapyear;
/ 