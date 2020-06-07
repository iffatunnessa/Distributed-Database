set serveroutput on;

declare
	mid INTEGER,
	medname VARCHAR2(20);
	pri numeric (5,2);
	comname VARCHAR2(20);
	batchno VARCHAR2(20);
	expdate DATE;
	mfgdate DATE;
	typ VARCHAR2(20);
	cursor cur is
	select M_ID,Medicine_Name,Price,Company_Name,Batch_No,Exp_Date,Mfg_Date,Type FROM Medicine;   	
	
begin
	open cur;
	loop
		fetch cur into mid,medname,pri,comname,batchno,expdate,mfgdate;
		exit when cur%notfound;
		insert into Medicine@site1ToServer_link values(id,mid,avai,rack);
		end loop;	
	close cur;
commit;
end;
/
