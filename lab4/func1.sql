create or replace function distribution(n_cho in number, n_pep in number) 
	return number 
	is 

begin 
	if remainder(n_cho, n_pep) = 0 
	then 
		return 1; 
	else 
		return 0; 
	end if;
	
end	distribution; 
/