create or replace package body myPackage as 

     function medicineInsert
	(mname in varchar2,mprice in numeric,cname in varchar2,bno in varchar2,exp1 in date,mfg in date,type1 in varchar2)
	return varchar2
	IS
	
	m_id number;
	m_name varchar2(30);
	m_price numeric(5,2);
	c_name varchar2(30);
	b_no varchar2(30);
     exp_Date DATE;
	mfg_Date DATE;
	m_type VARCHAR2(20);

	cursor mtype is
		select * from medicine where Type = type1 ;
begin

	open mtype;
	fetch mtype into m_id,m_name,m_price,c_name,b_no,exp_Date,mfg_Date,m_type;
	
	if mtype%notfound then
		insert into medicine values (10,mname,mprice,bno,cname,exp1,mfg,type1) ;
		
		return 'Inserted New Entry in medicine table';
	else
				dbms_output.put_line(m_id|| '  ' || m_name|| '  ' || m_price|| '  ' ||c_name||'  ' || b_no|| '  ' || exp_Date|| '  ' ||mfg_Date||'  ' || m_type);
		return 'Already in table';
	end if;
	close mtype;
	
end medicineInsert;



     function medicinePriceCheck(range1 in numeric,range2 in numeric)
return varchar2
IS

m_id number;
m_name varchar2(20);
m_price numeric(5,2);


cursor price is 
	select M_ID,Medicine_Name,Price from Medicine where
	price between range1 and range2;

BEGIN
open price;
                 LOOP
		fetch price into m_id, m_name,m_price;
		EXIT WHEN price%notfound; 
		DBMS_OUTPUT.PUT_LINE(m_id ||' '|| m_name||' ' || m_price);
		
	  END LOOP;
           return 'function completed!!';
     close price;

end medicinePriceCheck;


function medicineSales(q1 in number)
return varchar2
IS

m_sale date;
m_quan number;



cursor price is 
	 select Sale_Date,Quantity from sales where Quantity>q1;

BEGIN
open price;
       LOOP
		fetch price into m_sale,m_quan;
		EXIT WHEN price%notfound; 
		DBMS_OUTPUT.PUT_LINE(m_sale||' '|| m_quan);
		
	  END LOOP;
           return 'function completed!!';
     close price;

end 	medicineSales;


   function medicineTypeCheck(type2 in varchar2)
return varchar2
IS

m_id number;
m_name varchar2(20);
m_price numeric(5,2);
exp_date date;

cursor mtype is 
	select M_ID,Medicine_Name,Price,Exp_Date 
     from Medicine where Type=type2;

BEGIN
open mtype;
                 LOOP
		fetch mtype into m_id, m_name,m_price,exp_date;
		EXIT WHEN mtype%notfound; 
		DBMS_OUTPUT.PUT_LINE(m_id ||' '|| m_name||' ' || m_price||' ' ||exp_date );
		
	  END LOOP;
           return 'function completed!!';
     close mtype;
end medicineTypeCheck;


function searchMedicine
	(mname in varchar2)
	return varchar2
	IS
	
	m_id number;
	m_name varchar2(30);
	m_price numeric(5,2);
	c_name varchar2(30);
	b_no varchar2(30);
     exp_Date DATE;
	mfg_Date DATE;
	m_type VARCHAR2(20);

	cursor mtype is
		select * from Medicine where Medicine_Name = mname;
 begin

	open mtype;
	fetch mtype into m_id,m_name,m_price,c_name,b_no,exp_Date,mfg_Date,m_type;

	
	if mtype%notfound then
		

          return 'Not Found!!';
	else
		update Medicine
           set price = 100.00
		where Medicine_Name = mname;
          
				
           return 'Found and the previous data is updated';
		
	end if;
	close mtype;
	end searchMedicine;

end;
/