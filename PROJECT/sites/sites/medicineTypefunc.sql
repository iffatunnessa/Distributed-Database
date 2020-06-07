create or replace function medicineTypeCheck(type1 in varchar2)
return varchar2
IS

m_id number;
m_name varchar2(20);
m_price numeric(5,2);
exp_date date;

cursor mtype is 
	select M_ID,Medicine_Name,Price,Exp_Date 
     from Medicine where Type=type1;

BEGIN
open mtype;
                 LOOP
		fetch mtype into m_id, m_name,m_price,exp_date;
		EXIT WHEN mtype%notfound; 
		DBMS_OUTPUT.PUT_LINE(m_id ||' '|| m_name||' ' || m_price||' ' ||exp_date );
		
	  END LOOP;
           return 'function completed!!';
     close mtype;

END;
/
	
