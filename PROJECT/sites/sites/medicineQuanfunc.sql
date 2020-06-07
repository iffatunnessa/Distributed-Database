create or replace function medicineSales(q1 in number)
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
           return ' function completed!!';
     close price;

END;
/
	
