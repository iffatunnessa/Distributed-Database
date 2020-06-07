--displaying specific record from each table using primary key.

set serveroutput on;

create or replace view Search_Store as
select * from Store
where Branch_No = &branch;

select * from Search_Store ;


create or replace view Search_Employee as
select * from Employee
where E_ID = &E_ID;

select * from Search_Employee ;


create or replace view Search_Medicine as
select * from Medicine
where M_ID = &M_ID;

select * from Search_Medicine ;

create or replace view Search_Sales as
select * from Sales
where Sales_ID = &Sales_ID;

select * from Search_Sales ;


create or replace view Search_Suppliers as
select * from Suppliers
where Sup_ID = &Sup_ID;

select * from Search_Suppliers ;

create or replace view Search_Stock as
select * from Stock
where Stk_ID = &Stk_ID;

select * from Search_Stock ;

create or replace view Search_Manage as
select * from Manage
where Ma_ID = &Ma_ID;

select * from Search_Manage ;

create or replace view Search_Supply as
select * from Supply
where Supply_ID = &Supply_ID;

select * from Search_Supply ;




end;
/


