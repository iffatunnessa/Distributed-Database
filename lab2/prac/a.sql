set serveroutput on;

declare

id student.snum%type;
nid student.snum%type;
name student.sname%type;
major student.major%type;
level student.slevel%type;
age student.age%type;
num number:= 0;

cursor s is 
select snum,sname,major,slevel,age from student where snum = (select max(ROWNUM) from student);

begin

open s;

fetch s into id,name,major,level,age;
dbms_output.put_line(id||' '||name||' '||major||' '||level||' '||age);

while num<10
loop
	num :=num+1;
	dbms_output.put_line(num);
	nid := num+id;
	insert into student values(nid, name, major, level,age);
end loop;

close s;


end;
/