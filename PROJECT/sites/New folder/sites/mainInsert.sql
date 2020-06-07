set serveroutput on;

Declare 
   type1 varchar2(20) := &type1;
   mname varchar2(20) := &mname;
   mprice numeric  :=&mprice;
   cname varchar2(20) := &cname;
   bno varchar2(20) := &bno;
   exp1 date :=&exp1;
   mfg date :=&mfg;
   
     
     result varchar2(30) ;
	
begin 

	result := medicineInsert
	(mname,mprice,cname,bno,exp1,mfg,type1);

	dbms_output.put_line(result);

	
end; 
/