create or replace procedure Search_Course(n1 in number) 
       is
	   
	c number;
	v_cnum COURSE.cnum %TYPE; 
	v_cname COURSE.cname %TYPE;
	v_meets_at COURSE.meets_at %TYPE;
	v_room COURSE.room %TYPE;
	v_Fid COURSE.Fid %TYPE;

	
	
	  a_cname COURSE.cname %TYPE:=&z;
      a_room COURSE.room %TYPE:=&z;
     --a_room COURSE.room %TYPE:=&z;--
   a_Fid COURSE.Fid %TYPE:=&z; 
	 
	
	cursor course_cur is
	select * from COURSE where  cnum=n1 ;
BEGIN

   select count(*) into c from course where  cnum=n1;
   if(c<>0)then
        OPEN course_cur;
		loop
			fetch course_cur into v_cnum,v_cname, v_meets_at, v_room, v_Fid;
			exit when course_cur%notfound;
			DBMS_OUTPUT.PUT_LINE(v_cnum||'	'|| v_cname||'			 '|| v_meets_at||'	'||v_room||' 	'|| v_Fid );
		end loop;
     	CLOSE course_cur;
   else 
   
    	
	

	insert into course values(n1, a_cname, a_meets_at, a_room, a_Fid);
	
	   
      
	   --Search_Faculty(5);
  
   end if;

end Search_Course;
/