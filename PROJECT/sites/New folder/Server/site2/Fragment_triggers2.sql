drop table log_emp2;
create table log_emp2(
E_ID integer;
); 

create or replace trigger log_insert_emp2
after insert
on Employee@site2ToServer_link
for each row

begin
	insert into log_emp2
	values(:new.E_ID,sysdate);
end;
/


drop table log_stock2;
create table log_stock2(
Stk_ID integer;
); 

create or replace trigger log_insert_stock2
after insert
on Stock@site2ToServer_link
for each row

begin
	insert into log_stock2
	values(:new.Stk_ID,sysdate);
end;
/


drop table log_med2;
create table log_med2(
M_ID integer;
); 

create or replace trigger log_insert_med2
after insert
on Medicine@site2ToServer_link
for each row

begin
	insert into log_med2
	values(:new.M_ID,sysdate);
end;
/

