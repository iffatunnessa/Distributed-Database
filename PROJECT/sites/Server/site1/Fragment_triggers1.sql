drop table log_emp1;
create table log_emp1(
E_ID integer;
); 

create or replace trigger log_insert_emp1
after insert
on Employee@site1ToServer_link
for each row

begin
	insert into log_emp1
	values(:new.E_ID,sysdate);
end;
/

drop table log_store1;
create table log_store1(
Branch_No integer;
); 

create or replace trigger log_insert_Store1
after insert
on Store@site1ToServer_link
for each row

begin
	insert into log_Store1
	values(:new.Branch_No,sysdate);
end;
/


drop table log_stock1;
create table log_stock1(
Stk_ID integer;
); 

create or replace trigger log_insert_stock1
after insert
on Stock@site1ToServer_link
for each row

begin
	insert into log_stock1
	values(:new.Stk_ID,sysdate);
end;
/


drop table log_med1;
create table log_med1(
M_ID integer;
); 

create or replace trigger log_insert_med1
after insert
on Medicine@site1ToServer_link
for each row

begin
	insert into log_med1
	values(:new.E_ID,sysdate);
end;
/
