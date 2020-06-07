set serveroutput on;
set verify off;

declare
a number := &e;
b number := &f;
c number := &g;
x number;

begin
x := findmin(a,b,c);

end;
/
