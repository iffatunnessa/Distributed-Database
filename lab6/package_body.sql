create or replace package body myPackage as 
	function isEven(n_number in number) 
	return number 
	is 
	begin 
			if remainder(n_number, 2) = 0 
				then return 1; 
			else 
				return 0;
			end if; 
	end isEven; 
		
	procedure procAverageAge( 
		snumX in student.snum%TYPE, 
		snumY in student.snum%TYPE, 
		avgAge out student.age%TYPE)
		IS 
		
	begin 
		select avg(age) 
		into avgAge from student 
		where snum < snumY and snum > snumX;
	end procAverageAge; 

end myPackage; 
/