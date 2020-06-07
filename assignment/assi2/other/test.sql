create or replace procedure Search_Student(n1 in number) 
       is
	c number;

	
	cursor student_cur is
	select * from STUDENT where  snum=n1 ;
BEGIN

   select count(*) into c from student where  snum=n1;
   if(c<>0)then
    StudentView
       
   else 
       insert into student values(n1,'NSD','CSE',1,23);
     
       
   end if;

end Search_Student;
/