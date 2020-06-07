create or replace function find_SNUM(Y in number)
	return number
	is

num1 number;
cursor cur is
select snum from Student where snum = Y;   	
	
begin
	open cur;
	loop
		fetch cur into num1;
		exit when cur%notfound;
		end loop;	
	close cur;
return num1;

end find_SNUM;
/

create or replace function find_CNUM(Y in number)
	return number
	is

num1 number;
cursor cur is
select cnum from Course where cnum = Y;   	
	
begin
	open cur;
	loop
		fetch cur into num1;
		exit when cur%notfound;
		end loop;	
	close cur;
return num1;

end find_CNUM;
/

create or replace function find_FID(Y in number)
	return number
	is

num1 number;
cursor cur is
select fid from Faculty where fid = Y;   	
	
begin
	open cur;
	loop
		fetch cur into num1;
		exit when cur%notfound;
		end loop;	
	close cur;
return num1;

end find_FID;
/

