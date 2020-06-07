create or replace function findmin(a in number, b in number, c in number)
return number is
begin
if (a<b) || (a<c) then
dbms_output.put_line('min'|| a);
elsif (a>b) || (c>b) then
dbms_output.put_line('min'|| b);
else dbms_output.put_line('min'|| c);
end if;
return 1;
end findmin;
/