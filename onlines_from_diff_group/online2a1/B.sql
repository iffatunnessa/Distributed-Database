set serveroutput on;

declare
id student.snum%type;
name student.sname%type;
major student.major%type;
level student.slevel%type;
age student.age%type;

cursor s is
select snum,sname,major,slevel,age from student where snum = id;


begin

id:=&enter_value;

open s;

if s%found then
	insert into student values(id,'ok', 'ok' , '3', 20);

else
	fetch s into id,name,major,level,age;
	dbms_output.put_line(id||' '||name||' '||major||' '||level||' '||age);
end if;
close s;
end;
/