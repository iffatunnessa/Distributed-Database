create or replace function findmax(a in number, b in number, c in number ,
 d in number) 
	return number 
	is 
	

begin 
	if (a>b) and (b>c) and (c>d) then
		return a;

	elsif (a<b) and (b>c) and (c>d) then
	   	return b;

	elsif (a<b) and (b<c) and (c>d) then
		return c;

	elsif (a<b) and (b<c) and (c<d) then
		return d;
	end if;
	
end	findmax; 
/