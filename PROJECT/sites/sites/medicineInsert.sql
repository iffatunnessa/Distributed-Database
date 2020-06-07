create or replace function medicineInsert
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
	

end;
/
