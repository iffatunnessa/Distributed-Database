set serveroutput on;

create or replace view Search_Store as
select * from Store
where City = &City;

select * from Search_Store;



create or replace view Search_Employee as
select * from Employee
where Post = &post;

select * from Search_Employee;


create or replace view Search_Medicine as
select * from Medicine
where Exp_Date  <= &Exp_Date ;

select * from Search_Medicine ;


create or replace view Search_Sales as
select * from Sales
where Sale_Date = &Sale_Date ;

select * from Search_Sales ;

create or replace view Search_Suppliers as
select * from Suppliers
where Address = &Address ;

select * from Search_Suppliers ;

create or replace view Search_Stock as
select * from Stock
where Available >= &Available ;

select * from Search_Stock ;

create or replace view Search_Supply as
select * from Supply
where Due_Payment  >= &Due_Payment;

select * from Search_Supply ;





begin
   null;
end;
/


