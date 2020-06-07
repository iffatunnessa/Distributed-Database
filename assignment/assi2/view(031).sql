create or replace view viewstudent(view_snum,view_sname, view_major, view_slevel,view_age) as
select snum,sname, major,slevel,age from student;

create or replace view viewcourse(view_cnum,view_cname, view_meets_at, view_room,view_fid) as
select cnum,cname,meets_at,room,fid from course;

create or replace view viewfaculty(view_fid,view_fname, view_deptid) as
select fid,fname,deptid from faculty;
