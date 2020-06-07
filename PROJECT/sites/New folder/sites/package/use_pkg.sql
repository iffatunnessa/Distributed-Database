set serveroutput on;

Declare 
   type1 varchar2(50) := &type1;
   mname varchar2(50) := &mname;
   mprice numeric  :=&mprice;
   cname varchar2(50) := &cname;
   bno varchar2(50) := &bno;
   exp1 date :=&exp1;
   mfg date :=&mfg;
   result varchar2(50) ;

   range1 numeric := &range1;
   range2 numeric := &range2;
   result2 varchar2(50) ;
   q1 number := &q1;
     
   result3 varchar2(50) ;

   
   type2 varchar2(50) := &type1;
     
   result4 varchar2(50) ;
  
   mname varchar2(50) := &mname;
      
     
   result7 varchar2(50) ;
  
	
begin 
     result := medicineInsert
	(mname,mprice,cname,bno,exp1,mfg,type1);

	dbms_output.put_line(result);
	     
     result2 := medicinePriceCheck(range1,range2); 
	dbms_output.put_line(result2);
     
     result3 := medicineSales(q1); 
	dbms_output.put_line(result3);

     result4 := medicineTypeCheck(type2); 
	dbms_output.put_line(result4);
     
     result7 := searchMedicine(mname);

	dbms_output.put_line(result7);
     
	
end; 
/
