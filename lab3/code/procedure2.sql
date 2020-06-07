create or replace procedure procAverageAge
	( snumX in student.snum%TYPE, 
	  snumY in out student.snum%TYPE, 
	  avgAge out student.age%TYPE) 
	IS
	
begin 

	snumY := snumY + 10; 
	select avg(age) into avgAge
	from student 
	where snum<snumY and snum>snumX; 
	
end procAverageAge; 
/