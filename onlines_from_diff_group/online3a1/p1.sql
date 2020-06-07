create or replace procedure printleap(n in number, msg out varchar2)
	is

begin 
	if n = 1 then
		msg := 'Leap year';
	else 
		msg:= 'not a leap year'; 
	end if;
end printleap;
/