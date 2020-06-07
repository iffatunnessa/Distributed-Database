create or replace procedure SearchInStudent(Y in number)
	is

id student.snum%type;
name student.sname%type;
maj student.major%type;
level student.slevel%type;
a student.age%type;


begin
	select *into id,name,maj,level,a from viewstudent where view_snum = Y;
	dbms_output.put_line(id||'  '||name||'  '||maj||'  '||level||'  '||a);
end SearchInStudent;
/

create or replace procedure SearchInCourse(Y in number)
	is

i course.cnum%type;
n course.cname%type;
m course.meets_at%type;
r course.room%type;
f course.fid%type;


begin
	select *into i,n,m,r,f from viewcourse where view_cnum = Y;
	dbms_output.put_line(i||'  '||n||'  '||m||'  '||r||'  '||f);
end SearchInCourse;
/


create or replace procedure SearchInFaculty(Y in number)
	is

fi faculty.fid%type;
fn faculty.fname%type;
dept faculty.deptid%type;

begin
	select *into fi,fn,dept from viewfaculty where view_fid = Y;
	dbms_output.put_line(fi||'  '||fn||'  '||dept);
end SearchInFaculty;
/


