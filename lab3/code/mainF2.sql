set serveroutput on;

DECLARE

welcome varchar2(100);
v_msg VARCHAR2(100);

begin

welcome := GREETINGS(v_msg, 'Rajon');
dbms_output.put_line(welcome);
dbms_output.put_line(v_msg);

end;
/