create or replace package myPackage as 
     function medicineInsert
	(mname in varchar2,mprice in numeric,cname in varchar2,bno in varchar2,exp1 in date,mfg in date,type1 in varchar2)
	return varchar2;

     function medicinePriceCheck(range1 in numeric,range2 in         numeric)
return varchar2;

     function medicineSales(q1 in number)
return varchar2;
     function medicineTypeCheck(type2 in varchar2)
return varchar2;



	
end myPackage;
/
