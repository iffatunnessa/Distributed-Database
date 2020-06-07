clear screen;

DROP TABLE Store CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE Medicine CASCADE CONSTRAINTS;
DROP TABLE Sales CASCADE CONSTRAINTS;
DROP TABLE Supply CASCADE CONSTRAINTS;
DROP TABLE Suppliers CASCADE CONSTRAINTS;
DROP TABLE Manage CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;


DROP SEQUENCE Branch_No;
DROP SEQUENCE E_ID;
DROP SEQUENCE Sales_ID;
DROP SEQUENCE Sup_ID;
DROP SEQUENCE Ma_ID;
DROP SEQUENCE Supply_ID;
DROP SEQUENCE Stk_ID;
DROP SEQUENCE M_ID;

CREATE TABLE Store(     
Branch_No INTEGER,
Area VARCHAR2(30),
City VARCHAR2(50),
Postal_Code INTEGER,
Phone_No VARCHAR2(20), 
PRIMARY KEY (Branch_No) 
);   

CREATE SEQUENCE Branch_No minvalue 10 start with 10 increment by 10 cache 50;

CREATE TABLE Employee(     
E_ID INTEGER,   
First_Name VARCHAR2(20),   
Last_Name VARCHAR2(20),
Email VARCHAR2(20),
Phone_No VARCHAR2(20),
Branch_No INTEGER NOT NULL,
Post VARCHAR2(20),
PRIMARY KEY (E_ID)
); 

CREATE SEQUENCE E_ID minvalue 1 start with 1001 increment by 1 cache 50;

CREATE TABLE Medicine(
M_ID INTEGER,
Medicine_Name VARCHAR2(20),
Price numeric (5,2),
Company_Name VARCHAR2(20),
Batch_No VARCHAR2(20),
Exp_Date DATE,
Mfg_Date DATE,
Type VARCHAR2(20),
PRIMARY KEY(M_ID)
);

CREATE SEQUENCE M_ID minvalue 1 start with 1 increment by 1 cache 50;

CREATE TABLE Sales(
Sales_ID INTEGER,
M_ID INTEGER NOT NULL,
Quantity INTEGER,
Sale_Date DATE,
PRIMARY KEY(Sales_ID)
); 

CREATE SEQUENCE Sales_ID minvalue 1 start with 1 increment by 1 cache 50;

CREATE TABLE Suppliers(
Sup_ID INTEGER,
Supplier_Name VARCHAR2(20),
Address VARCHAR2(50),
Company VARCHAR2(50),
Phone VARCHAR2(20),
PRIMARY KEY(Sup_ID)
);

CREATE SEQUENCE Sup_ID minvalue 1 start with 2001 increment by 1 cache 50;

CREATE TABLE Stock(
Stk_ID INTEGER,
M_ID INTEGER NOT NULL,
Available VARCHAR2(5),
Rack_No VARCHAR2(20),
PRIMARY KEY (Stk_ID)
);

CREATE SEQUENCE Stk_ID minvalue 1 start with 1 increment by 1 cache 50;

CREATE TABLE Manage(
Ma_ID INTEGER,
Branch_No INTEGER NOT NULL,
M_ID INTEGER NOT NULL,
Stk_ID INTEGER NOT NULL,
PRIMARY KEY(Ma_ID)
);
 
CREATE SEQUENCE Ma_ID minvalue 1 start with 1 increment by 1 cache 50;

CREATE TABLE Supply(
Supply_ID INTEGER,
Branch_No INTEGER NOT NULL,
Sup_ID INTEGER NOT NULL,
Due_Payment NUMERIC(7,2) NULL ,
Due_Date DATE,
PRIMARY KEY (Supply_ID)
);

CREATE SEQUENCE Supply_ID minvalue 1 start with 1 increment by 1 cache 50;

commit;

SELECT * FROM Store;
SELECT * FROM Employee;
SELECT * FROM Medicine;
SELECT * FROM Stock;
SELECT * FROM Suppliers;
SELECT * FROM Manage;
SELECT * FROM Supply;
