create or replace function searchMedicine
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
	

end;
/






