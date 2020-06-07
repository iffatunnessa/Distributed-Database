create or replace view supplySupplierInfo as
select 
supl.Supplier_Name,
supl.Address,
supl.Company,
supl.Phone,
sup.Supply_ID,
sup.Due_Payment,
sup.Due_Date
 from suppliers supl, supply sup 
where sup.sup_ID = supl.sup_ID;

select * from supplySupplierInfo ;

