create or replace function medicinePriceCheck(range1 in numeric,range2 in numeric)
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
          return 'done!!';
     close price;

END;
/
	
