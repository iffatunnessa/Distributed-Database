INSERT INTO Store VALUES (10,'Niketon','Dhaka',1204, '01912584949');
INSERT INTO Store VALUES (20,'Mohammadpur','Dhaka',1205,' 01612584949');
INSERT INTO Store VALUES (30,'Dhanmondi','Dhaka',1205,' 01712584949');
INSERT INTO Store VALUES (40,'Mirpur','Dhaka',1209, '01512584949');

INSERT INTO Employee VALUES (1001,'Rahim','Khan',10000.00,'12-OCT-1993','rahim@gmail.com','01912584949','Gulshan,Dhaka',20,'Manager');
INSERT INTO Employee VALUES (1002,'Karim','Khan',3000.00,'12-DEC-1990','karim@gmail.com','01512584949','bagerhat,khulna',10,'Salesman');
INSERT INTO Employee VALUES (1003,'Nurul','Islam',4000.00,'12-SEP-1990','nurul@gmail.com','01712584949','rupnagar,pabna',30,'Salesman');
INSERT INTO Employee VALUES (1004,'Sobuj','Islam',3500.00,'02-SEP-1991','sobuj@gmail.com','01612584949','Badda,Dhaka',30,'Salesman');
INSERT INTO Employee VALUES (1005,'Mahi','Khan',20000.00,'12-OCT-1992','mahi@gmail.com','01914484949','Gulshan,Dhaka',10,'Manager');
INSERT INTO Employee VALUES (1006,'Korim','Khan',1000.00,'12-DEC-1990','korim@gmail.com','01512584949','Bagerhat,khulna',20,'Salesman');
INSERT INTO Employee VALUES (1007,'Nujrul','Islam',4000.00,'12-JAN-1980','nujrul@gmail.com','01716584949','rupnagar,pabna',30,'Salesman');
INSERT INTO Employee VALUES (1008,'Atik','Islam',6500.00,'02-FEB-1990','sobuj@gmail.com','01612554949','Badda,Dhaka',40,'Salesman');
INSERT INTO Employee VALUES (1009,'Suruj','Islam',5000.00,'01-JUL-1990','sj12@yahoo.com','01612533449','Gabtoli,Dhaka',20,'Salesman');
INSERT INTO Employee VALUES (1010,'Dola','Rahman',10000.00,'12-OCT-1992','mahi@gmail.com','01914484949','Sadarghat,Dhaka',10,'Accountant');
INSERT INTO Employee VALUES (1011,'Emon','Islam',20000.00,'12-MAY-1992','mahi@gmail.com','01914484949','Motijheel,Dhaka',20,'accountant');

INSERT INTO Medicine VALUES(1,'Cavir 0.5', 481.40,'Square','8E03779','01-JAN-2020','01-JAN-2018','Entecavir');
INSERT INTO Medicine VALUES(2,'Napa', 100.40,'Beximco','8E03410','01-JAN-2020','01-JAN-2018','Paracetamol');
INSERT INTO Medicine VALUES(3,'Maxpro', 80.00,'Renata LTD','0118013A','01-JUL-2020','1-JUL-2018','Esomerprazole');
INSERT INTO Medicine VALUES(4,'Cavir', 500.00,'Square','8E03779','21-JUL-2020','21-JUL-2018','Entecavir');

INSERT INTO Sales VALUES(1,1,10,'12-AUG-2019');
INSERT INTO Sales VALUES(2,2,15,'16-AUG-2019');
INSERT INTO Sales VALUES(2,2,25,'16-AUG-2019');
INSERT INTO Sales VALUES(3,3,20,'15-AUG-2019');
INSERT INTO Sales VALUES(1,1,20,'12-AUG-2019');
INSERT INTO Sales VALUES(5,5,20,'11-AUG-2019');
INSERT INTO Sales VALUES(4,4,30,'11-AUG-2019');
INSERT INTO Sales VALUES(7,7,40,'11-AUG-2019');
INSERT INTO Sales VALUES(4,4,50,'11-AUG-2019');

INSERT INTO Suppliers VALUES (2001,'Rahul','Khilkhet,Dhaka','Royal','01521667890');
INSERT INTO Suppliers VALUES (2002,'asim','dhanmondi,Dhaka','Sharif','01621667890');
INSERT INTO Suppliers VALUES (2003,'Amit','Badda,Dhaka','Diamond','01721667890');
INSERT INTO Suppliers VALUES (2004,'Sojib','Khilkhet,Dhaka','Royal','01921667890');

INSERT INTO Stock VALUES (1,1,'Yes',2);
INSERT INTO Stock VALUES (2,2,'Yes',1);
INSERT INTO Stock VALUES (3,3,'Yes',3);
INSERT INTO Stock VALUES (4,2,'No',2);

INSERT INTO Manage VALUES (1,10,3,2);
INSERT INTO Manage VALUES (2,40,2,3);
INSERT INTO Manage VALUES (3,20,1,4);
INSERT INTO Manage VALUES (4,30,4,1);


INSERT INTO Supply VALUES (1,30,2001,200.00,'10-MAY-2019');
INSERT INTO Supply VALUES (2,10,2001,700.00,'02-JAN-2019');
INSERT INTO Supply VALUES (3,40,2001,100.00,'06-JAN-2019');
INSERT INTO Supply VALUES (4,20,2003,400.00,'09-SEP-2019');

commit;