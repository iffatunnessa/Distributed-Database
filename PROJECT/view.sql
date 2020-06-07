create or replace view viewEmployee(eid,first,last,mail,phone,branch,post1) as
select E_ID,First_Name,Last_Name,Email,Phone_No,Branch_No,Post from Employee;

create or replace view viewsuppliers(Sup,Sname,Add,Com,Pho) as
select Sup_ID,Supplier_Name,Address,Company,Phone from Suppliers;

create or replace view viewmedicine(mid,medname,pri,comname,batchno,expdate,mfgdate) as
select  M_ID,Medicine_Name,Price,Company_Name,Batch_No,Exp_Date,Mfg_Date,Type from Medicine;


