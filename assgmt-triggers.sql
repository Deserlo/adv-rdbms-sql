/*Eva Najera*/
/*Fall 2018*/

/*

	Assignment Description:

	Given the following two tables, where minSalary is a derived attribute that keeps the minimal salary of each department.  Using MySQL to implement this assignment.
	Department (dnumber, dname, location, minSalary) 
	Employee (ssn, name, address, phone, dno) foreign key (dno) references Department (dnumber)
	You must use the exact same attribute names in your tables as the relational schema above. You can define the type of each attribute by yourself.

	Write three “after triggers” based on insert, delete, and update, respectively, to maintain the derived attribute. 
	1)	Create tables, insert at least two records to Department table, and at least three records to Employee table
	2)	Create the insert trigger, named ins_t 
	3)	Create the delete trigger, named del_t 
	4)	Create the update trigger, name upd_t
	5)	Include your test cases to show each trigger works, at least one test case for each trigger.  For example, show the values before and after an insert operation.   

*/



CREATE TABLE Department(dnumber INTEGER NOT NULL,
					   dname VARCHAR(30),
					   location VARCHAR(30),
                       noOfEmp INTEGER,
					   PRIMARY KEY(dnumber));
                       
CREATE TABLE Employee(ssn varchar(12) NOT NULL,
					  name varchar(30),
                      address varchar(40),
                      phone varchar(30),
                      dno INTEGER,
                      PRIMARY KEY(ssn),
                      FOREIGN KEY(dno) REFERENCES Department(dnumber));
       
       
ALTER TABLE Department
ALTER noOfEmp SET DEFAULT 0;
                      

INSERT INTO Department(dnumber, dname, location) VALUES (01, "DeptA", "LocA");
INSERT INTO Department(dnumber, dname, location) VALUES (02, "DeptB", "LocB");

DELIMITER $
CREATE TRIGGER ins_t
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
	IF (NEW.dno IS NOT NULL) THEN
		UPDATE Department d
        SET d.noOfEmp = d.noOfEmp + 1
        WHERE d.dnumber = NEW.dno;
	END IF;
END$
DELIMITER ;



INSERT INTO Employee(ssn, name, address, phone, dno) VALUES ("123456789", "Eva", "777 Court St", "555-555-5555", 01);
INSERT INTO Employee(ssn, name, address, phone, dno) VALUES ("000000000", "Koolie", "505 Tree Dr", "805-225-0001", 02);

INSERT INTO Employee(ssn, name, address, phone, dno) VALUES ("000000001", "Pete", "1785 Old Rd", "805-699-1225", 01);
INSERT INTO Employee(ssn, name, address, phone, dno) VALUES ("000000002", "Lara", "1655 Elk St", "405-213-7250", 01);


DELETE FROM Employee
WHERE ssn = "000000001";

DELETE FROM Employee
WHERE ssn = "000000002";


DELIMITER $
CREATE TRIGGER del_t
AFTER DELETE ON Employee
FOR EACH ROW
BEGIN
	IF (OLD.dno IS NOT NULL) THEN
		UPDATE Department d
        SET d.noOfEmp = d.noOfEmp - 1
        WHERE d.dnumber = OLD.dno ;
	END IF;
END$
DELIMITER ;



DELETE FROM Employee
WHERE ssn = "000000000";


DELIMITER $
CREATE TRIGGER upd_t
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
	IF ((OLD.dno IS NOT NULL) AND (OLD.dno != NEW.dno)) THEN
		UPDATE Department d
        SET d.noOfEmp = d.noOfEmp -1
        WHERE OLD.dno = d.dnumber;
		UPDATE Department d
        SET d.noOfEmp = d.noOfEmp +1
        WHERE NEW.dno = d.dnumber;
	END IF;
END$
DELIMITER ;


UPDATE EMPLOYEE
SET dno = 2
WHERE ssn= "000000001";