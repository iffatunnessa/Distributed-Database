INSERT INTO Store VALUES (Branch_no.nextval,'Niketon','Dhaka',1204, '01912584949');
INSERT INTO Store VALUES (Branch_no.nextval,'Mohammadpur','Dhaka',1205,' 01612584949');
INSERT INTO Store VALUES (Branch_no.nextval,'Dhanmondi','Dhaka',1205,' 01712584949');
INSERT INTO Store VALUES (Branch_no.nextval,'Mirpur','Dhaka',1209, '01512584949');

INSERT INTO Employee VALUES (E_ID.nextval,'Rahim','Khan',10000.00,'12-OCT-93','rahim@gmail.com','01912584949','Gulshan,Dhaka',20,'Manager');
INSERT INTO Employee VALUES (E_ID.nextval,'Karim','Khan',3000.00,'12-DEC-90','karim@gmail.com','01512584949','bagerhat,khulna',10,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Nurul','Islam',4000.00,'12-SEP-90','nurul@gmail.com','01712584949','rupnagar,pabna',30,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Sobuj','Islam',3500.00,'02-SEP-91','sobuj@gmail.com','01612584949','Badda,Dhaka',30,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Mahi','Khan',20000.00,'12-OCT-92','mahi@gmail.com','01914484949','Gulshan,Dhaka',10,'Manager');
INSERT INTO Employee VALUES (E_ID.nextval,'Korim','Khan',1000.00,'12-DEC-90','korim@gmail.com','01512584949','Bagerhat,khulna',20,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Nujrul','Islam',4000.00,'12-JAN-80','nujrul@gmail.com','01716584949','rupnagar,pabna',30,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Atik','Islam',6500.00,'02-FEB-90','sobuj@gmail.com','01612554949','Badda,Dhaka',40,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Suruj','Islam',5000.00,'01-JUL-90','sj12@yahoo.com','01612533449','Gabtoli,Dhaka',20,'Salesman');
INSERT INTO Employee VALUES (E_ID.nextval,'Dola','Rahman',10000.00,'12-OCT-92','mahi@gmail.com','01914484949','Sadarghat,Dhaka',10,'Accountant');
INSERT INTO Employee VALUES (E_ID.nextval,'Emon','Islam',20000.00,'12-MAY-92','mahi@gmail.com','01914484949','Motijheel,Dhaka',20,'accountant');

INSERT INTO Medicine VALUES(M_ID.nextval,'Cavir 0.5', 481.40,'Square','8E03779','01-JAN-2020','01-JAN-18','Entecavir');
INSERT INTO Medicine VALUES(M_ID.nextval,'Napa', 100.40,'Beximco','8E03410','01-JAN-2020','01-JAN-18','Paracetamol');
INSERT INTO Medicine VALUES(M_ID.nextval,'Maxpro', 80.00,'Renata LTD','0118013A','01-JUL-2020','1-JUL-18','Esomerprazole');
INSERT INTO Medicine VALUES(M_ID.nextval,'Cavir', 500.00,'Square','8E03779','21-JUL-2020','21-JUL-18','Entecavir');

INSERT INTO Sales VALUES(Sales_ID.nextval,1,10,'12-AUG-19');
INSERT INTO Sales VALUES(Sales_ID.nextval,2,15,'16-AUG-19');
INSERT INTO Sales VALUES(Sales_ID.nextval,3,20,'15-AUG-19');
INSERT INTO Sales VALUES(Sales_ID.nextval,4,14,'11-AUG-19');

INSERT INTO Suppliers VALUES (Sup_ID.nextval,'Rahul','Khilkhet,Dhaka','Royal','01521667890');
INSERT INTO Suppliers VALUES (Sup_ID.nextval,'asim','dhanmondi,Dhaka','Sharif','01621667890');
INSERT INTO Suppliers VALUES (Sup_ID.nextval,'Amit','Badda,Dhaka','Diamond','01721667890');
INSERT INTO Suppliers VALUES (Sup_ID.nextval,'Sojib','Khilkhet,Dhaka','Royal','01921667890');

INSERT INTO Stock VALUES (Stk_ID.nextval,1,'Yes',2);
INSERT INTO Stock VALUES (Stk_ID.nextval,2,'Yes',1);
INSERT INTO Stock VALUES (Stk_ID.nextval,3,'Yes',3);
INSERT INTO Stock VALUES (Stk_ID.nextval,2,'No',2);

INSERT INTO Manage VALUES (Ma_ID.nextval,10,3,2);
INSERT INTO Manage VALUES (Ma_ID.nextval,40,2,3);
INSERT INTO Manage VALUES (Ma_ID.nextval,20,1,4);
INSERT INTO Manage VALUES (Ma_ID.nextval,30,4,1);


INSERT INTO Supply VALUES (Supply_ID.nextval,10,2002,00.00,'20-JUL-19');
INSERT INTO Supply VALUES (Supply_ID.nextval,30,2001,200.00,'10-MAY-19');
INSERT INTO Supply VALUES (Supply_ID.nextval,10,2001,700.00,'02-JAN-19');
INSERT INTO Supply VALUES (Supply_ID.nextval,40,2001,100.00,'06-JAN-19');
INSERT INTO Supply VALUES (Supply_ID.nextval,20,2003,400.00,'09-SEP-19');

commit;