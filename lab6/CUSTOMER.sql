--ID, NAME, AGE ADDRESS, SALARY

DROP TABLE customers;
CREATE TABLE customers(
	id INTEGER,
	name VARCHAR2(10),
	age INTEGER,
	address VARCHAR2(15),
	salary INTEGER
);

INSERT INTO customers VALUES(1, 'A', 22, 'Dhaka', 2000);
INSERT INTO customers VALUES(2, 'B', 25, 'Sylhet', 2500);
INSERT INTO customers VALUES(3, 'C', 33, 'Khulna', 2000);
INSERT INTO customers VALUES(4, 'D', 29, 'Rajshahi', 3000);
INSERT INTO customers VALUES(5, 'E', 21, 'Dhaka', 4500);
INSERT INTO customers VALUES(6, 'F', 29, 'Chittagong', 3000);

COMMIT;