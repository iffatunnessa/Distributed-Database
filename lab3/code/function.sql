create or replace function isEven(n_number in number) 
	return number 
	is 

begin 
	if remainder(n_number, 2) = 0 
	then 
		return 1; 
	else 
		return 0; 
	end if;
	
end	isEven; 
/