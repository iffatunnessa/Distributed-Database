set serveroutput on;

declare
	x char(5);
	y number;


begin
x := '&enter_value';
IF x='CSE' THEN
	select count(*) into y from student where major='CSE';
	DBMS_OUTPUT.PUT_LINE(y);
ELSIF x='EEE' THEN
	select count(*) into y from student where major='EEE';
	DBMS_OUTPUT.PUT_LINE(y);
ELSIF x='ME' THEN
	select count(*) into y from student where major='ME';
	DBMS_OUTPUT.PUT_LINE(y);
END IF;

end;
/