create or replace function Greetings(msg out VARCHAR2, pname in varchar2)
	return varchar2
	is

welcome_msg varchar2(50);

begin

welcome_msg := 'Welcome ' || pname ;
msg := 'Procedure Greetings executed successfully';

return welcome_msg;

end;
/