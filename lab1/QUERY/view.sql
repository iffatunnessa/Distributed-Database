create or replace view myview as
select S.id, S.name, R.cgpa
from student S, student_result R
where S.id = R.id;

select * from myview;

create or replace view myview2 as 
select S1.id,s1.name,s.b_group from student s1 inner join
student_blood_group s on s1.id = s.id;