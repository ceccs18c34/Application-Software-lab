
USE lab;
#a
CREATE TABLE Employee (
    `code` CHAR(4) NOT NULL,
`name` CHAR(10) NOT NULL,
`designation` CHAR(30) NOT NULL,
`dob` DATE NOT NULL,
`salary` NUMERIC
);
#b 
INSERT INTO Employee (`code`, `name`, `designation`, `dob`, `salary`)
VALUES
("e2", "Mark", "Accountant", "1992-10-11", 41250),
("e1", "James", "Manager", "1997-5-10", 18500);
#c 
SELECT * FROM Employee;
#d
UPDATE Employee
SET salary = '20000'
WHERE 'code' ="e1";
#e 

DELETE FROM Employee WHERE 'code' ="e2";




















