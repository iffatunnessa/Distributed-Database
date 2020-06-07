create or replace package myPackage as 

	function isEven(n_number in number) 
		return number; 

	procedure procAverageAge( 
		snumX in student.snum%TYPE, 
		snumY in student.snum%TYPE, 
		avgAge out student.age%TYPE); 
end myPackage;
/