set serveroutput on;

declare
x number;
y char(5);

begin
x := &enter_value;
dbms_output.put_line(x*2);

y := '&enter_value';
dbms_output.put_line(y);
end;
/