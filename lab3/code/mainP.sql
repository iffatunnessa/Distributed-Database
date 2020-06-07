set serveroutput on;

DECLARE

v_msg VARCHAR2(100);
name varchar2(20);
begin
name :=&r;

GREETINGS(name, v_msg);
dbms_output.put_line(v_msg);

end;
/